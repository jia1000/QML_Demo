import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    header: Label {
        text: qsTr("Series 3")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("You are on Series 3.")
        anchors.verticalCenterOffset: -143
        anchors.horizontalCenterOffset: 0
        anchors.centerIn: parent
    }

    Image {
        id: image
        x: 141
        y: 65
        width: 400
        height: 300
        source: "qrc:/bmp/3.bmp"
        fillMode: Image.PreserveAspectFit
    }
}
