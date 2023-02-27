import QtQuick 2.15
import QtQuick.Window 2.15
//
import QtQuick.Controls 2.4
//

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Text Area Demo")

    Column {
        spacing: 40
        width: parent.width

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "Text Area is a multi-line text editor."
        }

        ScrollView {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 600
            height: 150
            TextArea {
                id: textAreaId
                background: Rectangle {
                    color: "black"
                }

                color: "white"
                wrapMode: TextArea.Wrap
                placeholderText: "Type in your query"
//                text: "A poor Brahmin lived in a village all alone. He had no friends or relatives. He was known for being stingy and he used to beg for a living. The food he got as alms were kept in an earthen pot which was hung beside his bed. This allowed him to easily access the food when he got hungry. On one day, he got so much rice gruel that even after completing his meal, there was so much leftover in his pot. That night, he dreamt that his pot was overflowing with rice gruel and that if a famine came, he could sell the food and earn silver from it. This silver could then be used to buy a pair of goats who would soon have kids and create a herd. This herd in turn could be traded for buffaloes who would give milk from which he could make dairy products. These products could be sold in the market for more money. This money would help him get married to a rich woman and together they would have a son who he could scold and love in equal measure. He dreamt that when his son wouldn’t listen, he would run after him with a stick.Wrapped up in his dream the Brahmin picked up the stick near his bed and started hitting  the air with the stick. While flailing about, he hit the earthen pot with the stick, the pot broke and all the contents spilled over him. The Brahmin woke up with a start only to realize that everything was a dream."
            }

        }
        Button {
            text: "Submit"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                console.log("The text inside the TextArea is :"+ textAreaId.text)
            }
        }

    }
}
