import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Positioners Demo")

    Rectangle {
        id: containerRectId
        width: 300
        height: width
        border.color: "black"
//        anchors.centerIn: parent
        //        anchors.horizontalCenter: parent.horizontalCenter
        //        anchors.verticalCenter: parent.verticalCenter

//        Column
        //Row

      Grid  {
            columns: 3
//            spacing: 10
//            rowSpacing: 10
//            columnSpacing: 10

            horizontalItemAlignment: Grid.AlignRight
            verticalItemAlignment: Grid.AlignVCenter

            LayoutMirroring.enabled: true
            LayoutMirroring.childrenInherit: true

            Rectangle {
                id: topLeftRectId
                width: 60
                height: width
                color: "magenta"

                Image {
                    anchors.centerIn: parent
                    width: 50
                    height: 50
                    source: "images/ILTQq.png"
                //    source: "C:/Users/PAPPU KUMAR KESHARI/OneDrive/Documents/QTProjects/6-2PositionersDemo/images"
                }
            }

            Rectangle {
                id: topCenterRectId
                width: 100
                height: width
                color: "yellowgreen"
            }

            Rectangle {
                id: topRightRectId
                width: 100
                height: width
                color: "dodgerblue"
            }

            Rectangle {
                id: centerLeftRectId
                width: 100
                height: width
                color: "beige"
            }

            Rectangle {
                id: centerCenterRectId
                width: 100
                height: width
                color: "green"


            }


            Rectangle {
                id: centerRightRectId
                width: 100
                height: width
                color: "blue"

            }

            Rectangle {
                id: bottomLeftRectId
                width: 100
                height: width
                color: "royalblue"

            }

            Rectangle {
                id: bottomCenterRectId
                width: 100
                height: width
                color: "yellow"

            }

            Rectangle {
                id: bottomRightRectId
                width: 100
                height: width
                color: "pink"

            }

        }
    }
}
