import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Application")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
        }

        Page2Form {
        }

        Page3Form {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Series 1")
        }
        TabButton {
            text: qsTr("Series 2")
        }
        TabButton {
            text: qsTr("Series 3")
        }
    }
}
