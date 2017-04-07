# The name of your application
TARGET = calendar-example

CONFIG += sailfishapp

SOURCES += src/calendar-example.cpp

OTHER_FILES += qml/calendar-example.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    rpm/calendar-example.changes.in \
    rpm/calendar-example.spec \
    rpm/calendar-example.yaml \
    translations/*.ts \
    calendar-example.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 256x256

CONFIG += sailfishapp_i18n

TRANSLATIONS += translations/calendar-example-de.ts

DISTFILES += \
    qml/pages/EditEventDialog.qml
