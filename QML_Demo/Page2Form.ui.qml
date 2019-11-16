import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    header: Label {
        text: qsTr("Series 2")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("You are on Series 2.")
        anchors.verticalCenterOffset: -159
        anchors.horizontalCenterOffset: 0
        anchors.centerIn: parent
    }

    Image {
        id: image
        x: 138
        y: 62
        width: 400
        height: 300
        source: "qrc:/bmp/2.bmp"
        fillMode: Image.PreserveAspectFit
    }
}
