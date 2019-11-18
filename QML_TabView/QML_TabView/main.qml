import QtQuick 2.12
import QtQuick.Window 2.12
//import QtQuick.Controls 2.12
import QtQuick.Controls 1.4   // TabView 只在1.4里， 不在2.12里
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.4  // 包含 TabViewStyle

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Component.onCompleted:  {
        tabview.addTab("Origin", tabContent)
    }

    Component {
        id:tabContent
        Rectangle {
            implicitWidth: 100
            implicitHeight: 100
            anchors.fill: parent
            color: Qt.rgba(Math.random(), Math.random(), Math.random())
        }
    }
    Button {
        id:addTab
        x:8
        y:8
        width: 60
        height: 24
        text: "AddTab"
        onClicked: {
            tabview.addTab("Tab-" + tabview.count, tabContent);
        }
    }


    TabView {
        id:tabview
        anchors.top: addTab.bottom
        anchors.margins: 8
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        style: TabViewStyle {
            // tab页标签
            tab: Item {
                implicitWidth: 60//Math.max(text.width + 8, 80)
                implicitHeight: 48
                Rectangle {
                    width: 30
                    height: parent.height - 4
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.leftMargin: 1
                    visible: true//styleData.selected
                    color: "green"
                }
                Rectangle {
                    width:12
                    height: parent.height - 4
                    anchors.top: parent.top
                    anchors.right: parent.right
                    visible: true//styleData.index < control.count - 1
                    color: "blue"
                }
                RowLayout {
                    implicitWidth: Math.max(text.width, 72)
                    height: 48
                    anchors.centerIn:  parent
                    z:1
                    Text {
                        id: text
                        text: styleData.title
                        color: "red"
                    }
                }
            }

            // tab页标签 和 tab内容 之间的区域
            tabBar: Rectangle {
                height: 56
                Rectangle {
                    width: parent.width
                    height: 4
                    color: "red"
                    anchors.bottom: parent.bottom
                    border.width: 2
                    border.color: "green"//"#c7c7c7"
                }
            }

        }

    }
}
