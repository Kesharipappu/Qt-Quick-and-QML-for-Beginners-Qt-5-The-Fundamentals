import QtQuick 2.15
import QtQuick.Window 2.15

Window {

    visible: true
    width: 640
    height: 480
    title: qsTr("External Components with signals and slots")

    Notifier{
        id: notifierId
        rectColor: "yellowgreen"
        target: receiverId
    }

    Receiver {
        id: receiverId
        rectColor: "dodgerblue"
        anchors.right: parent.right

    }

//    Component.onCompleted: {
//        notifierId.notify.connect(receiverId.receiveInfo) //Connect signal to slot
//    }
}
