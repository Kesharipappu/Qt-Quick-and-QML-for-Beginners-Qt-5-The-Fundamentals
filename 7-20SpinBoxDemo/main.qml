import QtQuick 2.15
import QtQuick.Window 2.15
//
import QtQuick.Controls 2.4
//

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("SpinBox Demo")

    Column {
        spacing: 20
        width: parent.width

        SpinBox {
            id: spinBoxId
            from: 1
            to: 100
            value: 20
            stepSize: 5
            editable: true
            anchors.horizontalCenter: parent.horizontalCenter
            onValueChanged: {
                console.log("Current Value changed to :"+ value)
            }
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Capture value"
            onClicked: {
                console.log("The Current value in the spinbox is :" + spinBoxId.value)
            }
        }
    }
}
