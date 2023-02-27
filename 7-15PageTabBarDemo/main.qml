import QtQuick 2.15
import QtQuick.Window 2.15
//
import QtQuick.Controls 2.4
//

Window {
    width: 640
    height: 900
    visible: true
    title: qsTr("Page and TabBar Demo")

    Page {
        id: pageId
        anchors.fill: parent

//        header: Label {
//            text: "Page and TabBar Demo"
//            horizontalAlignment: Text.AlignHCenter
//        }

        header: Rectangle {
            width: parent.width
            height: 50
            color: "red"

        }

        SwipeView {
            id: swipeViewId
            anchors.fill: parent
            currentIndex: tabBarId.currentIndex

            Image {
                source: "https://1.bp.blogspot.com/-1YXf4IrL6zw/XRd1eEzkwtI/AAAAAAAAAec/ea4cc_QJwyAmoUAGjS2k1Cpofb-CdQlSwCLcBGAs/s1600/Hanuman-Image-In-Hd.jpg"

            }

            Image {
                source: "https://i.pinimg.com/originals/65/dd/22/65dd22cbaa3bfb671507380aeeb82369.jpg"
            }

            Image {
                source: "https://www.bhaktiphotos.com/wp-content/uploads/2018/04/Maa-Durga-Sherawali-Devi-Images.jpg"
            }
        }
        footer: TabBar {
            id: tabBarId
            currentIndex: swipeViewId.currentIndex

            TabButton {
                text: "First"
            }
            TabButton {
                text: "Second"
            }
            TabButton {
                text: "Third"
            }
        }
    }
}
