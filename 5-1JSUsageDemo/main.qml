import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("JS Usage Demo")

    Rectangle {
        id: containerRectId
        width: getHeight() //JS in function
        height: 100
//        color: "green"
        color: x > 300 ? "red" : "green" // property  binding

        //JS in signal handler
        onXChanged: {
            console.log("Current value of x :" + x)
        }

       // anchors.centerIn: parent

        //custom function
        function getHeight()
        {
            return height * 2
        }
    }

    MouseArea {
        anchors.fill : parent
        drag.target: containerRectId
        drag.axis: Drag.XAxis
        drag.minimumX: 0
        drag.maximumX: parent.width - containerRectId.width
    }

}
