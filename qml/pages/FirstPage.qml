import QtQuick 2.0
import Sailfish.Silica 1.0
import org.nemomobile.calendar 1.0

Page {

    AgendaModel {
        id: agendaModel
        startDate: new Date()
        endDate: new Date(2018, 0)
    }
    SilicaListView {
        anchors.fill: parent
        spacing: Theme.paddingMedium
        header: PageHeader {title: "Calendar events"}
        model: agendaModel
        delegate: ListItem {
            width: parent.width
            contentHeight: column.height
            Column {
                id: column
                width: parent.width
                Label {
                    text: eventDateTimeToString(event)
                    font.pixelSize: Theme.fontSizeSmall
                    color: Theme.highlightColor
                }
                Label {text: event.displayLabel}
                Label {
                    text: "Location: " + event.location
                    visible: event.location
                }
            }
            menu: ContextMenu {
                MenuItem {
                    text: "Delete"
                    onClicked: Calendar.remove(event.uniqueId)
                }
            }
        }
    }
    function eventDateTimeToString(event) {
        return Qt.formatTime(event.startTime, "HH:mm") + " – "
                + Qt.formatTime(event.endTime, "HH:mm") + "\t"
                + Qt.formatDate(event.startTime, Qt.SystemLocaleShortDate)
    }
}
