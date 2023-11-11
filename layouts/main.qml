import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12


Window {
    id: win
    width: 480
    height: 700
    visible: true
    title: qsTr("layout")

    ColumnLayout{
        id: container
        anchors.fill:parent
        spacing:10

        RowLayout{
            id:header
            anchors.top:parent.top
            Comp{
                ctext:"Header"
                height: win.height/9
                Layout.fillWidth: true
            }

        }
        RowLayout{
            id: content
            //anchors.leftMargin: 20
            Comp{
                ctext:"content"
                cborder:"lightgrey"
                ccolor:"white"
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }
        RowLayout{
            id: footer
            anchors.bottom:parent.bottom
            spacing:5
            Comp{
                ctext:"1"
                height: win.height/9
                width: win.width/3
                Layout.alignment: Qt.AlignLeft
            }
            Comp{
                ctext:"2"
                height: win.height/9
                width: win.width/3
                Layout.alignment: Qt.AlignCenter
            }
            Comp{
                ctext:"3"
                height: win.height/9
                width: win.width/3
                Layout.alignment: Qt.AlignRight
            }

        }
    }


}
