pragma Singleton
import QtQuick 2.15
import QtQuick.Controls.Material 2.12

Item {
    id: root

    property var theme:      Material.theme
    property var primary:    Material.primary
    property var accent:     Material.accent
    property var background: Material.background
    property var foreground: Material.foreground

    readonly property var primaryColor:      Material.color(primary)
    readonly property var accentColor:       Material.color(accent)
    readonly property var backgroundColor:   Material.color(background)
    readonly property var foregroundColor:   Material.color(foreground)

    function toggleTheme(){
        root.theme = (root.theme === Material.Light ? Material.Dark : Material.Light)
    }

    function setDarkMode(enable){
        // avoid binding loop
        var mode = (enable ? Material.Dark : Material.Light)
        if(root.theme !== mode) root.theme = mode
    }

    function isDarkMode(){
        return root.theme === Material.Dark
    }

    property var colors: [
        Material.Red	    ,
        Material.Pink	    ,
        Material.Purple	    ,
        Material.DeepPurple	,
        Material.Indigo	    ,
        Material.Blue	    ,
        Material.LightBlue	,
        Material.Cyan	    ,
        Material.Teal	    ,
        Material.Green	    ,
        Material.LightGreen	,
        Material.Lime	    ,
        Material.Yellow	    ,
        Material.Amber	    ,
        Material.Orange	    ,
        Material.DeepOrange	,
        Material.Brown	    ,
        Material.Grey	    ,
        Material.BlueGrey
    ]
    property var shades: [
        Material.Shade50,
        Material.Shade100,
        Material.Shade200,
        Material.Shade300,
        Material.Shade400,
        Material.Shade500,
        Material.Shade600,
        Material.Shade700,
        Material.Shade800,
        Material.Shade900,
        Material.ShadeA100,
        Material.ShadeA200,
        Material.ShadeA400,
        Material.ShadeA700
    ]
    property var colorNames: [
        "Red"         ,
        "Pink"        ,
        "Purple"      ,
        "Deep Purple" ,
        "Indigo"      ,
        "Blue"        ,
        "Light Blue"  ,
        "Cyan"        ,
        "Teal"        ,
        "Green"       ,
        "Light Green" ,
        "Lime"        ,
        "Yellow"      ,
        "Amber"       ,
        "Orange"      ,
        "Deep Orange" ,
        "Brown"       ,
        "Grey"        ,
        "Blue Grey"
    ]
    property var shadeNames: [
        "Shade50",
        "Shade100",
        "Shade200",
        "Shade300",
        "Shade400",
        "Shade500",
        "Shade600",
        "Shade700",
        "Shade800",
        "Shade900",
        "ShadeA100",
        "ShadeA200",
        "ShadeA400",
        "ShadeA700"
    ]
}

