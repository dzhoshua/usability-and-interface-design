import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: win
    width: 480
    height: 700
    visible: true
    title: qsTr("task2")

    Comp{
        id: header
        ctext:"Header"
        height: win.height/9
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right:parent.right

    }
    Comp{
        id: main
        ccolor:"white"
        ctext:"Content"
        cborder:"lightgray"
        anchors.top: header.bottom
        anchors.left: parent.left
        anchors.right:parent.right
        anchors.bottom: footer.top
        anchors.margins: 10
    }
    Comp{
        id: footer
        ccolor:"white"
        anchors.left: parent.left
        anchors.right:parent.right
        anchors.bottom: parent.bottom
        height:win.height/9

        Comp{
            id:elem1
            ctext:"1"
            height: footer.height
            width:footer.width/3
            anchors.left: parent.left
        }
        Comp{
            id:elem2
            ctext:"2"
            height: footer.height
            width:footer.width/3
            anchors.leftMargin: 6
            anchors.rightMargin: 6
            anchors.centerIn: parent
        }
        Comp{
            id:elem3
            ctext:"3"
            height: footer.height
            width:footer.width/3
            anchors.right:parent.right
        }
    }
}
