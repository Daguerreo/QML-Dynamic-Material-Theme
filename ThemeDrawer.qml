import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls.Material 2.15

import Style 1.0

Drawer {
    id: root

    Column {
        anchors.fill: parent

        SwitchDelegate {
            id: themeDelegate
            width: parent.width
            font.pointSize: 10
            font.capitalization: Font.Capitalize

            text: Style.isDarkMode() ? qsTr("Dark Theme") : qsTr("Light Theme")
            checked: Style.isDarkMode()
            onCheckedChanged: {
                Style.setDarkMode(checked)
            }
        }

        ToolSeparator {
            orientation: "Horizontal"
            width: parent.width
        }

        ItemDelegate {
            id: primaryDelegate
            width: root.width
            height: primaryGrid.implicitHeight
            rightPadding: 16

            RowLayout {
                anchors.fill: parent
                spacing: 6
                clip: true

                Label {
                    text: qsTr("primary")
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 10
                    font.capitalization: Font.Capitalize
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    padding: 16
                    clip: true
                }

                GridLayout {
                    id: primaryGrid
                    Layout.margins: 4
                    columns: 8

                    Repeater {
                        model: Style.colors

                        ColorButton {
                            color: modelData
                            onClicked: if(checked) Style.primary = color
                            ToolTip.text: Style.colorNames[index]
                            ToolTip.visible: hovered
                        }
                    }
                }
            }
        }

        ToolSeparator {
            orientation: "Horizontal"
            width: parent.width
        }

        ItemDelegate {
            id: accentDelegate
            width: root.width
            height: accentGrid.implicitHeight
            rightPadding: 16
            bottomPadding: 16

            RowLayout {
                anchors.fill: parent
                spacing: 6
                clip: true

                Label {
                    text: qsTr("accent")
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 10
                    font.capitalization: Font.Capitalize
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    padding: 16
                    clip: true
                }

                GridLayout {
                    id: accentGrid
                    Layout.margins: 4
                    columns: 8

                    Repeater {
                        model: Style.colors

                        ColorButton {
                            color: modelData
                            hoverEnabled: true
                            ToolTip.text: Style.colorNames[index]
                            ToolTip.visible: hovered

                            onClicked: if(checked) Style.accent = color
                        }
                    }
                }
            }
        }
    }
}
