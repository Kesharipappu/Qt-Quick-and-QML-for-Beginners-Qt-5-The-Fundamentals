import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Focus Scope Demo")

    Column {
        MButton{
            focus: true
        }

        MButton{
            focus: true
            color: "green"
        }

    }


}
