import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Page{
    id:root
    property alias backgroundColor:back_fon.color
    property alias buttonText1:batton_nav1.text
    property alias buttonText2:batton_nav2.text

    signal buttonClicked1();
    signal buttonClicked2();

    background: Rectangle{
        id:back_fon
    }
    Button {
        id:batton_nav1
        anchors.right: parent.right
        anchors.bottom: batton_nav2.top
        anchors.margins: defMargin // look into main.qml
        onClicked: {
            root.buttonClicked1()
        }
    }
    Button {
        id:batton_nav2
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: defMargin // look into main.qml
        onClicked: {
            root.buttonClicked2()
        }
    }
}
