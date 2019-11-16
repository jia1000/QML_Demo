import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    header: Label {
        text: qsTr("Series 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        id:labeltext
        text: qsTr("You are on Series 1.")
        anchors.centerIn: parent
    }

    Button {
        id: button
        text:qsTr("点击修改文本")
        x: 30
        y: 10
        anchors.left: button.left
        anchors.leftMargin: 10
        onClicked: labeltext.text = qsTr("点击了")
    }
}
