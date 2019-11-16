import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Qml自定义复选框")

    CheckBox {
        id: checkBox
        text: qsTr("复选框")
        checked: true
        anchors.centerIn: parent
        spacing: 0
        enabled: true

        indicator:
        Image {
              id: image
              height: 16
              width: 16
              anchors.verticalCenter: parent.verticalCenter
              source: checkBox.checked ? "qrc:/images/checked.png" : "qrc:/images/unchecked.png"
        }

        contentItem: Text {
            id: text
            text: checkBox.text
            font: checkBox.font
            opacity: enabled ? 1.0 : 0.3
            color: checkBox.down ? "#AA0000" : "#148014"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            leftPadding: checkBox.indicator.width + checkBox.spacing
        }
    }
}
