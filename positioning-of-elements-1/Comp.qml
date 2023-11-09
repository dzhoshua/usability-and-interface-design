import QtQuick 2.0

Item {
    property alias bcolor: rect.color
    Rectangle{
        id:rect
        anchors.fill: parent
    }
}
