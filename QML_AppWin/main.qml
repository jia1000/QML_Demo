import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.12

// ApplicationWindow会有menuBar  toolBar  StatusBar等属性
ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    // 学习Rectangle的渐变色
    Rectangle {
        width: 100
        height: 80
       // rotation: 90
        gradient: Gradient{
            GradientStop {
                position: 0.0
                color: "#202020"
            }
            GradientStop {
                position: 0.33
                color: "blue"
            }
            GradientStop {
                position: 1.0
                color: "#FFFFFF"
            }
        }
    }

    // 学习Rectangle的z轴属性
    Rectangle {
        width: 300
        height: 200

        x:100
        y:0

        Rectangle {
            x:20
            y:20
            width: 150
            height: 100
            color: "#000080"
            z:0.5
        }
        Rectangle {
            x:100
            y:70
            width: 100
            height: 100
            color: "#00c000"
            z:1
            //opacity: 0.6
        }
    }

    // 学习按键响应
    Rectangle {
        width: 100
        height: 80

        x:400
        y:0

        color: "yellow"
        focus: true
        Keys.enabled: true
        Keys.onEscapePressed:  Qt.quit()
        Keys.onBackPressed: Qt.quit()
        Keys.onPressed: {
            switch(event.key) {
            case Qt.Key_0:
            case Qt.Key_1:
            case Qt.Key_2:
            case Qt.Key_3:
            case Qt.Key_4:
            case Qt.Key_5:
            case Qt.Key_6:
            case Qt.Key_7:
            case Qt.Key_8:
            case Qt.Key_9:
                event.accepted=true;
                keyView.text = event.key - Qt.Key_0;
                break;
            }
        }
        Text {
            id: keyView
            text: qsTr("text")
            font.bold: true
            font.pixelSize: 24
            anchors.centerIn: parent
        }
    }
    // 学习Image 加载在线图片
    Rectangle {
        width:300
        height: 240

        x:0
        y:200

        color: "red"

        BusyIndicator {
            id:busy
            running: true
            anchors.centerIn: parent
            z:2
        }

        Text {
            id: statelabel
            text: qsTr("text")
            visible: false
            anchors.centerIn: parent
            z:3
        }
        Image {
            id:imageViewer
            asynchronous: true
            cache:false
            anchors.fill:parent
            fillMode: Image.PreserveAspectFit
            onStateChanged: {
                if(imageViewer.status === Image.Loading) {
                    busy.running = true;
                    statelabel.visible = false;
                    console.log("Image... ");
                }
                else if(imageViewer.status === Image.Ready) {
                    busy.running = false;
                }
                else if(imageViewer.status === Image.Error) {
                    busy.running = false;
                    statelabel.visible = true;
                    statelabel.text = "Error";
                }
            }
        }
        Component.onCompleted: {
            imageViewer.source = "http://172.16.20.187/static/img/logo_viewer.png";
            //imageViewer.source = "https://www.baidu.com/img/bd_logo1.png";
        }

    }
    // 学习附加信号处理器---Connections
    Rectangle {
        width:300
        height: 240

        x:300
        y:200

        color: "grey"


        Text {
            id: text1
            text: qsTr("text1")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 20
            color: "blue"
            font.pixelSize: 28
        }
        Text {
            id: text2
            text: qsTr("text2")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: text1.bottom
            anchors.topMargin: 8
            color: "blue"
            font.pixelSize: 28
        }
        Button {
            id:changeButton
            anchors.top: text2.bottom
            anchors.topMargin: 8
            anchors.horizontalCenter: parent.horizontalCenter
            text:"change"
        }
        Connections {
            target: changeButton
            onClicked:{
                text1.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1);
                text2.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1);
            }
        }
    }
}
