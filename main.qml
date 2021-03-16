import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

ApplicationWindow {
    id: root
    width: 700
    height: 800
    visible: true
    title: qsTr("Hello World")

    menuBar: MenuBar {
        Menu {
            title: "File"
            MenuItem { text: "Open" }
            MenuItem { text: "Save" }
            MenuSeparator {}
            MenuItem { text: "Quit" }
        }

        Menu { title: "&Color" }
        Menu {
            title: "&Theme"
            MenuItem {
                text: "Light"
                checkable: true
                autoExclusive: true
            }
            MenuItem {
                text: "Dark"
                checkable: true
                autoExclusive: true
            }
        }

    }

    header: ToolBar {
        width: parent.width

        RowLayout {
            anchors.fill: parent

            ToolButton {
                text: "tool button"
            }

            ToolButton {
                text: "tool button checkable"
                checked: true
                checkable: true
            }
        }
    }

    Pane {
        id: pane
        anchors.fill: parent
        padding: 2
        ScrollView {
            anchors.fill: parent
            padding: 0
            contentWidth: grid.implicitWidth
            contentHeight: grid.implicitHeight

            GridLayout {
                id: grid
                width: pane.width
                height: pane.height
                columns: 4

                Label { text: "Text Field" }
                TextField {
                    hoverEnabled: false
                    placeholderText: "Write..."
                    Layout.fillWidth: true
                }
                Label { text: "Text Area" }
                TextArea {
                    placeholderText: "Write Text Area..."
                    hoverEnabled: false
                    Layout.fillWidth: true
                }


                Label {
                    id: label
                    text: qsTr("Button")
                }

                Button {
                    id: button
                    text: qsTr("Button")
                }

                Label {
                    id: label5
                    text: qsTr("Button")
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
                }

                Button {
                    id: button2
                    text: qsTr("highlighted")
                    highlighted: true
                }

                Label {
                    id: label7
                    text: qsTr("Button")
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
                }

                Button {
                    id: button4
                    text: qsTr("flat")
                    flat: true
                }

                Label {
                    id: label10
                    text: qsTr("Button")
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
                }

                Slider {
                    id: slider
                    value: 0.5
                }

                Label {
                    id: label2
                    text: qsTr("Switch")
                }

                Switch {
                    id: switch1
                    checked: true
                }


                Label {
                    id: label4
                    text: qsTr("Radio Buttons")
                }

                RowLayout {
                    id: rowLayout
                    width: 100
                    height: 100
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
    }


    footer: TabBar {
        width: root.width
        TabButton { text: "tab 1" }
        TabButton { text: "tab 2" }
        TabButton { text: "tab 3" }
    }
}
