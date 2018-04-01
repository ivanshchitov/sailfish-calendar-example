# sailfish-calendar-example
The example of retrieving data about calendar events in Sailfish OS.

Working with a calendar API requires the nemo-qml-plugin-calendar-qt5 plugin. Actually the plugin should be installed automatically during the application instalation because the dependency is described in the yaml-file:

```
PkgBR:
  - nemo-qml-plugin-calendar-qt5
```

But on emulator it is not happened and it needs to install the plugin manually.

To run the application with privileges (which are needed to work with the calendar API) using Qt Creator you need go to Projects -> Run and set up:
'Alternate executable on device' as 'invoker' and 'Arguments' as '--type=silica-qt5 -s /usr/bin/calendar-example'.
