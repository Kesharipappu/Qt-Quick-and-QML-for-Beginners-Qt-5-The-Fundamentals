import QtQuick 2.15
import QtQuick.Window 2.15
//
import QtQuick.Controls 2.4
//

Window {
    width: 640
    height: 900
    visible: true
    title: qsTr("Page Indocator and Swipe View Demo")

    SwipeView {
        id: swipeViewId
        anchors.fill: parent
        currentIndex: pageIndicatorId.currentIndex

        Image {
            id: image1
//            source: "https://1.bp.blogspot.com/-1YXf4IrL6zw/XRd1eEzkwtI/AAAAAAAAAec/ea4cc_QJwyAmoUAGjS2k1Cpofb-CdQlSwCLcBGAs/s1600/Hanuman-Image-In-Hd.jpg"
              source: "images/20191112_075223.jpg"
        }
        Image {
            id: image2
//            source: "https://i.pinimg.com/564x/f1/fe/35/f1fe35da532ce546ad9b3d6da8692ea6.jpg"
              source: "images/sai baba.jpg"
        }
        Image {
            id: image3
//            source: "https://i.pinimg.com/750x/23/56/54/2356549d827daeb05b6692d42d515e5d.jpg"
                source: "images/IMG-20191112-WA0046.jpg"
        }

    }

    PageIndicator {
        id: pageIndicatorId
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horozontalCenter

        //Page indicator specific properties
        currentIndex: swipeViewId.currentIndex
        interactive: true
        count: swipeViewId.count
    }
}
