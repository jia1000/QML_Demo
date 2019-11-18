import QtQuick 2.12
import QtQuick.Window 2.12


import QtQuick.Controls 1.4  // 引入ApplicationWindow
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Dicom View")
    color: "#646464"

    menuBar: MenuBar {
        id:menu_bar

        //font.pixelSize: 10

        Menu {
            id: file_menu
            title: qsTr("文件")
            MenuItem {
                id: file_menu_open
                text: qsTr("打开")
            }
            MenuItem {
                id: file_menu_save
                text: qsTr("保存")
            }
        }
        Menu {
            id: help_menu
            title: qsTr("帮助")
            MenuItem {
                id: help_menu_upgrade
                text: qsTr("升级")
            }
            MenuItem {
                id: help_menu_about
                text: qsTr("关于")
            }
        }
    }


    toolBar:ToolBar {
        RowLayout {
            ///anchors.fill: parent
            ToolButton {
                id: toolbar_file_open
                text: qsTr("open")
            }
            ToolButton {
                id: toolbar_file_save
                text: qsTr("save")
            }
        }
    }

    TabView {
        id: tabs
        anchors.fill: parent
        anchors.margins: UI.margin

        Layout.minimumWidth: 360
        Layout.minimumHeight: 360
        Layout.preferredWidth: 480
        Layout.preferredHeight: 640

        width: 640
        height: 480

        Tab {
            title: "Buttons"
            ButtonPage {
            }
        }
        Tab {
            title: "Progress"
            ProgressPage {
            }
        }
        Tab {
            title: "Input"
            InputPage {
            }
        }
    }


    statusBar: StatusBar {
        RowLayout {
            anchors.fill: parent
            Label {
                text:"read only"
            }
        }
    }
}
