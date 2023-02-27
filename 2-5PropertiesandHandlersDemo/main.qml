import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Properties and Handlers Demo")

    property string mFirstName: "Pappu"
    onMFirstNameChanged: {
        console.log("The First Name changed to :"+ mFirstName)
    }

    Rectangle {
        width: 300
        height: 100
        color: "greenyellow"
        anchors.centerIn: parent

        MouseArea{
            anchors.fill: parent
            onClicked: {
                mFirstName ="Keshari"

            }
        }
    }
    Component.onCompleted: {
        console.log("The First Name is :"+mFirstName)
    }
}
