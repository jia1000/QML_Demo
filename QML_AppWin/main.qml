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


}
