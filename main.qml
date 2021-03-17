import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import Style 1.0

ApplicationWindow {
    id: root
    width: 700
    height: 800
    visible: true

    Material.primary: Style.primary
    Material.accent:  Style.accent
    Material.theme:   Style.theme

    header: ToolBar {
        width: parent.width
        Label {
            anchors.fill: parent
            text: qsTr("This is a ToolBar")
            verticalAlignment: "AlignVCenter"
        }
    }

    ThemeDrawer {
        id: drawer
        width: root.width * 0.6
        height: root.height
        enabled: true
    }

    Page {
        id: pane
        anchors.fill: parent
        padding: 2

        header: ToolBar {
            width: parent.width

            RowLayout {
                anchors.fill: parent

                ToolButton {
                    text: qsTr("color")
                    hoverEnabled: true
                    onClicked: drawer.open()
                    ToolTip.text: qsTr("click to change color")
                    ToolTip.visible: hovered

                }

                ToolButton {
                    checkable: true
                    ToolTip.text:  qsTr("check to change theme")
                    ToolTip.visible: hovered

                    text: Style.isDarkMode() ? qsTr("Dark Theme") : qsTr("Light Theme")
                    checked: Style.isDarkMode()
                    onCheckedChanged: Style.setDarkMode(checked)
                }
            }
        }

        GridLayout {
            id: grid
            anchors.fill: parent
            columns: 4

            Label { text: "Text Field" ;Layout.fillWidth: true }
            TextField {
                hoverEnabled: false
                placeholderText: qsTr("Write...")
                Layout.fillWidth: true
                selectByMouse: true
            }
            Label { text: "Text Area" ;Layout.fillWidth: true }
            TextArea {
                text: qsTr("Click ToolBar buttons to change colors")
                placeholderText: "Write Text Area..."
                Layout.fillWidth: true
                selectByMouse: true
            }


            Label {
                id: label
                text: qsTr("Button")
                Layout.fillWidth: true
            }

            Button {
                id: button
                text: qsTr("Button")
            }

            Label {
                id: label5
                text: qsTr("Button")
                Layout.fillWidth: true
            }

            Button {
                id: button1
                text: qsTr("checked")
                checkable: true
                checked: true
                flat: false
            }

            Label {
                id: label6
                text: qsTr("Button")
                Layout.fillWidth: true
            }

            Button {
                id: button2
                text: qsTr("highlighted")
                highlighted: true
            }

            Label {
                id: label7
                text: qsTr("Button")
                Layout.fillWidth: true
            }

            Button {
                id: button3
                text: qsTr("checked highlighted")
                checkable: true
                checked: true
                highlighted: true
            }


            Label {
                id: label9
                text: qsTr("Button")
                Layout.fillWidth: true
            }

            Button {
                id: button4
                text: qsTr("flat")
                flat: true
            }

            Label {
                id: label10
                text: qsTr("Button")
                Layout.fillWidth: true
            }

            Button {
                id: button5
                text: qsTr("checked flat")
                checked: true
                highlighted: false
                checkable: true
                flat: true
            }

            Label {
                id: label11
                text: qsTr("Button")
                Layout.fillWidth: true
            }

            Button {
                id: button6
                text: qsTr("flat highlighted")
                highlighted: true
                flat: true
            }

            Label {
                id: label12
                text: qsTr("Button")
                Layout.fillWidth: true
            }

            Button {
                id: button7
                text: qsTr("checked highlighted")
                checked: true
                highlighted: true
                checkable: true
                flat: true
            }

            Label {
                id: label3
                text: qsTr("Round")
                Layout.fillWidth: true
            }

            RoundButton {
                id: roundButton
                text: "+"
                flat: false
                highlighted: false
            }


            Label {
                id: label8
                text: qsTr("Round")
                Layout.fillWidth: true
            }

            RoundButton {
                id: roundButton1
                text: "+"
                flat: false
                checkable: false
                highlighted: true
            }

            Label {
                id: label1
                text: qsTr("Slider")
                Layout.fillWidth: true
            }

            Slider {
                id: slider
                value: 0.5
            }

            Label {
                id: label2
                text: qsTr("Switch")
                Layout.fillWidth: true
            }

            Switch {
                id: switch1
                checked: true
            }


            Label {
                id: label4
                text: qsTr("Radio Buttons")
                Layout.fillWidth: true
            }

            RowLayout {
                id: rowLayout
                width: 100
                height: 100
                Layout.fillWidth: false
                Layout.columnSpan: 3

                RadioButton {
                    id: radioButton2
                    text: qsTr("Radio")
                    checked: true
                }

                RadioButton {
                    id: radioButton1
                    text: qsTr("Radio")
                }

                RadioButton {
                    id: radioButton
                    text: qsTr("Radio")
                }


            }

            Label {
                id: label13
                text: qsTr("Check Box")
            }

            RowLayout {
                id: rowLayout1
                width: 100
                height: 100
                Layout.columnSpan: 3

                CheckBox {
                    id: checkBox
                    text: qsTr("Check Box")
                    checked: true
                }

                CheckBox {
                    id: checkBox1
                    text: qsTr("Check Box")
                }

                CheckBox {
                    id: checkBox2
                    text: qsTr("Check Box")
                }
            }

            Label {
                id: label14
                text: qsTr("Dial")
            }

            Dial {
                id: dial
            }

        }



    }


    footer: TabBar {
        width: root.width
        TabButton { text: "tab 1" }
        TabButton { text: "tab 2" }
        TabButton { text: "tab 3" }
    }
}
