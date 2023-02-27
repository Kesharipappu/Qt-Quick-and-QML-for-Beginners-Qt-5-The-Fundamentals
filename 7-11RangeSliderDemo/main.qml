import QtQuick 2.15
import QtQuick.Window 2.15
//
import QtQuick.Controls 2.4
//

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Range Slider Demo")

    Row {
        spacing: 40
        width: parent.width

        RangeSlider {
            orientation: Qt.Vertical  // Bydefault orientation is Horizontal
            from: 1
            to: 100
            first.value: 25

            second.value: 75

            first.onValueChanged: {
                console.log("First value changed to : "+first.value)
            }
            second.onValueChanged: {
                console.log("Second value changed to :"+ second.value)
            }
        }
    }
}
