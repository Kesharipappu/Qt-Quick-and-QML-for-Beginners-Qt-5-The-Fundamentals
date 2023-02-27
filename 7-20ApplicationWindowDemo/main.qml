import QtQuick 2.15
import QtQuick.Window 2.15
//
import QtQuick.Controls 2.4
//

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Application Window Demo")

    menuBar: MenuBar {

        Menu {
            title: qsTr("&File")
            Action {
                id: newActionId
                text: qsTr("&New")
                icon.source: "images/new-folder.png"
                onTriggered: {console.log("Clicked on New")}
            }
            Action {
                id: openActionId
                text: qsTr("&Open..")
                icon.source: "images/share.png"
            }
            Action {
                id: saveActionId
                text: qsTr("&Save")
                icon.source: "images/save.png"
            }
            Action {
                id: saveAsActionId
                text: qsTr("Save & as..")
                icon.source: "images/save-as.png"
            }
            MenuSeparator {}
            Action {
                id: quitActioId
                text: qsTr("Quit")
                icon.source: "images/remove.png"
                onTriggered: Qt.quit()
            }
        }
        Menu {
            title: qsTr("&Edit")
            Action {
                id: cutMenuId
                icon.source: "images/scissors.png"
                text: qsTr("Cut")
            }
            Action {
                text: qsTr("Copy")
                icon.source: "images/copy.png"
            }
            Action {
                text: qsTr("Paste")
                icon.source: "images/paste.png"
            }
            MenuSeparator{}
            Action {
                text: qsTr("Undo")
                icon.source: "images/undo.png"
            }
            Action {
                text: qsTr("Redo")
                icon.source: "images/redo.png"
            }
        }
        Menu {
            title: qsTr("&Help")
            Action {
                text: qsTr("&About")
                icon.source: "images/information-button.png"
            }
        }
    }
    header: ToolBar {
        Row {
            anchors.fill: parent
            ToolButton {
                action: newActionId
            }
            ToolButton {
                action: saveActionId
            }
            ToolButton {
                action: saveAsActionId
            }
            ToolButton {
                action: quitActioId
            }
        }
    }

    footer: TabBar {
        id: mTabBar
        width: parent.width

        TabButton {
            text: qsTr("Page1")
            onClicked: {
                mStackId.pop()
                mStackId.push("qrc:/Page1.qml")
                console.log("Number of items : " + mStackId.depth)
            }
        }
        TabButton {
            text: qsTr("Page2")
            onClicked: {
                mStackId.pop()
                mStackId.push("qrc:/Page2.qml")
                console.log("Number of items : " + mStackId.depth)
            }
        }
        TabButton {
            text: qsTr("Page3")
            onClicked: {
                mStackId.pop()
                mStackId.push("qrc:/Page3.qml")
                console.log("Number of items :" + mStackId.depth)
            }
        }
    }

    StackView {
        id: mStackId
        anchors.fill: parent
        initialItem: Page1 {

        }
    }
}
