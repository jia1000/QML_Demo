import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.12

// ApplicationWindow会有menuBar  toolBar  StatusBar等属性
ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Rectangle {
        width: 640
        height: 480
        rotation: 90
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
}
