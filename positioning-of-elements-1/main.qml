import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:win
    width: 800
    height: 800
    visible: true
    title: qsTr("Сущность в виде гномика")

    Comp{
        id: beard
        bcolor:"#673923"
        height: 220; width: 280;
        anchors.centerIn: parent;
        Comp {
            id: face
            bcolor: "antiquewhite";
            height: 180; width: 180;
            anchors.horizontalCenter: parent.horizontalCenter;
            Comp {
                id: nose
                bcolor:"darksalmon"
                height: 60; width: 40;
                anchors.topMargin: 70;
                anchors.top: parent.top;
                anchors.horizontalCenter: parent.horizontalCenter;
            }
            Comp {
                id: l_eyebrow
                bcolor:beard.bcolor
                height: 25; width: 65;
                anchors.topMargin: 45;
                anchors.leftMargin: 5;
                anchors.left: parent.left
                anchors.top: parent.top;
            }
            Comp {
                id: r_eyebrow
                bcolor:beard.bcolor
                height: 25; width: 65;
                anchors.topMargin: 45;
                anchors.rightMargin: 5;
                anchors.right: parent.right
                anchors.top: parent.top;
            }
            Comp {
                id: l_eye
                height: 50; width: 50;
                anchors.topMargin: 70;
                anchors.leftMargin: 10;
                anchors.left: parent.left
                anchors.top: parent.top;
                Comp {
                    height: 25; width: 25;
                    bcolor:"black"
                    anchors.topMargin: 50;
                    anchors.centerIn: parent;
                }
            }
            Comp {
                id: r_eye
                height: 50; width: 50;
                anchors.topMargin: 70;
                anchors.rightMargin: 10;
                anchors.right: parent.right
                anchors.top: parent.top;
                Comp {
                    height: 25; width: 25;
                    bcolor:"black"
                    anchors.topMargin: 50;
                    anchors.centerIn: parent;
                }
            }


            Comp {
                id: moustache
                bcolor:beard.bcolor
                height: 40; width: 120;
                //anchors.bottomMargin: 10;
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter;
            }

        }
    }
    Comp{
        id:hat_bottom
        bcolor:"red"
        height: 50; width: 320;
        anchors.bottom: beard.top
        anchors.horizontalCenter: parent.horizontalCenter;
    }
    Comp{
        id:hat_center
        bcolor:hat_bottom.bcolor
        height: 60; width: 200;
        anchors.bottom: hat_bottom.top
        anchors.horizontalCenter: parent.horizontalCenter;
    }
    Comp{
        id:hat_top
        bcolor:hat_bottom.bcolor
        height: 150; width: 150;
        anchors.bottom: hat_center.top
        anchors.horizontalCenter: parent.horizontalCenter;
    }
    Comp{
        id:hat_right
        bcolor:hat_bottom.bcolor
        height: 30; width: 50;
        anchors.left: hat_top.right
        anchors.top: hat_top.top
    }
    Comp{
        id: body;
        height: 120; width: 320;
        bcolor: "cornflowerblue";
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: beard.bottom
        Comp{
            height: 30; width: 30;
            bcolor: "brown";
            anchors.horizontalCenter: parent.horizontalCenter;
            anchors.topMargin: 15;
            anchors.top: parent.top;
        }
        Comp{
            height: 30; width: 30;
            bcolor: "brown";
            anchors.horizontalCenter: parent.horizontalCenter;
            anchors.topMargin: 75;
            anchors.top: parent.top;
        }

    }
    Comp{
        id:l_arm
        bcolor:face.bcolor
        height: 30; width: 50;
        anchors.left: body.left
        anchors.top:body.bottom;
    }
    Comp{
        id:r_arm
        bcolor:face.bcolor
        height: 30; width: 50;
        anchors.right: body.right
        anchors.top:body.bottom;
    }


    Comp{
        id: popa;
        height: 60; width: 220;
        bcolor: "black";
        anchors.horizontalCenter:parent.horizontalCenter;
        anchors.top: body.bottom
    }

    Comp{
        id:legs;
        bcolor:win.color
        height: 60; width: 220;
        anchors.horizontalCenter:parent.horizontalCenter;
        anchors.top: popa.bottom

        Comp{
            id: lleg;
            height: 60; width: 60;
            bcolor: "black";
            anchors.bottom:parent.bottom;
            anchors.left: parent.left
        }
        Comp{
            id: rleg;
            height: 60; width: 60;
            bcolor: "black";
            anchors.bottom:parent.bottom;
            anchors.right: parent.right
        }
    }
    Comp{
        id: lfoot;
        height: 30; width: 20;
        bcolor: "black";
        anchors.right: legs.left
        anchors.bottom: legs.bottom
    }
    Comp{
        id: rfoot;
        height: 30; width: 20;
        bcolor: "black";
        anchors.left: legs.right
        anchors.bottom: legs.bottom
    }

   }
