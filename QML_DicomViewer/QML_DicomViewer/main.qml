import QtQuick 2.12
import QtQuick.Window 2.12


import QtQuick.Controls 2.5  // 引入ApplicationWindow
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Dicom View")
    color: "#646464"

    menuBar: MenuBar {
        id:menu_bar

        font.pixelSize: 10

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

    header: ToolBar {
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



}
