import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12


Window {
    id: win
    width: 480
    height: 700
    visible: true
    title: qsTr("swipe view")

    SwipeView {
        id: view
        currentIndex: 1
        anchors.fill: parent
        Rectangle{
            id: firstPage
            color:"red"
        }
        Rectangle {
            id: secondPage
            color:"yellow"
        }
        Rectangle {
            id: thirdPage
            color:"green"
        }
    }
    PageIndicator {
        id: indicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
