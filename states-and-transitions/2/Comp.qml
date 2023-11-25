import QtQuick 2.0

Item {
    property alias ccolor: rect.color
    property alias ctext: text.text
    property alias cborder:rect.border.color
    property alias fontSize: text.font.pointSize

    Rectangle {
        id:rect
        anchors.fill: parent
        color:"lightgrey"
        border.color:"white"
        Text{
            id: text
            anchors.centerIn: parent
        }
    }
}
