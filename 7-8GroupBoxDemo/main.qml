import QtQuick 2.15
import QtQuick.Window 2.15
//
import QtQuick.Controls 2.4
//

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("GroupBox Demo")

    Column {
        spacing: 10
        anchors.fill: parent

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "A GroupBox wrapping around RadioButtons."
        }

        GroupBox {
            title: "Choose bonus"
            anchors.horizontalCenter: parent.horizontalCenter
            Column {
                RadioButton {
                    text: "Coke"
                    onCheckedChanged: {
                        if(checked === true)
                        {
                            console.log("Coke Button Clicked")
                        }
                        else {
                            console.log("Coke Button is not Clicked")
                        }
                    }
                }
                RadioButton {
                    text: "Green Tea"
                }
                RadioButton {
                    text: "Ice Cream"
                }
            }
        }

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "A GroupBox wrapping around CheckBoxes"
        }

        GroupBox {
            title: "Choose Qt Supported Desktop Platform"
            anchors.horizontalCenter: parent.horizontalCenter
            Column {
                CheckBox {
                    text: "Window"
                    onCheckedChanged: {
                        if(checked === true)
                        {
                            console.log("Window Button Clicked")
                        }
                        else {
                            console.log("Window Button is not Clicked")
                        }
                    }
                }
                CheckBox {
                    text: "Mac"
                }
                CheckBox {
                    text: "Linux"
                }
            }
        }

    }
}
