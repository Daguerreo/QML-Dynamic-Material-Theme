import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Button {
    id: root

    property var color: Material.accent

    flat: false
    Material.accent: Material.Amber
    Material.background: color
    checkable: true
    checked: false
    autoExclusive: true
    Layout.preferredWidth: 32
}
