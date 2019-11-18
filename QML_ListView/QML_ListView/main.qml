import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1

Window {
    visible: true
    width: 360
    height: 300
    title: qsTr("Hello World")
    color: "#EEEEEE"


    Component{
        id: phoneDelegate
        Item {
            id: wrapper
            width: parent.width
            height: 30

            MouseArea {
                anchors.fill: parent
                onClicked: wrapper.ListView.view.currentIndex = index
            }

            RowLayout {
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                spacing: 8
                Text {
                    id: col1
                    text: qsTr("name11")
                    color: wrapper.ListView.isCurrentItem ?"red" : "black"
                    font.pixelSize:  wrapper.ListView.isCurrentItem ?22 :18
                    Layout.preferredWidth: 120
                }
                Text {
                    id:  cost
                    text:qsTr("name12")
                    color: wrapper.ListView.isCurrentItem ?"red" : "black"
                    font.pixelSize:  wrapper.ListView.isCurrentItem ?22 :18
                    Layout.preferredWidth: 80
                }
                Text {
                    id: manufacturer
                    color: wrapper.ListView.isCurrentItem ?"red" : "black"
                    font.pixelSize:  wrapper.ListView.isCurrentItem ?22 :18
                    Layout.fillWidth: true
                }
            }
        }
    }

    ListView {
        id: listView
        anchors.fill: parent
        delegate: phoneDelegate

        model: ListModel {
            id:phoneModel
            ListElement {
                text:"hella"
                name:"iPhone 3"
                cost:"1000"
                manufacturer:"apple"
            }
            ListElement {
                name:"iPhone 4"
                cost:"1001"
                manufacturer:"apple"
            }
            ListElement {
                name:"iPhone 5"
                cost:"10021"
                manufacturer:"apple"
            }
        }
        focus: true
        highlight: Rectangle {
            color: "lightblue"
        }
    }
}
