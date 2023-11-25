import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:win
    width: 480
    height: 640
    visible: true
    title: qsTr("светофор")

    Rectangle{
        id:rect
        anchors.centerIn: parent
        color:"lightgrey"
        width: 380; height: 540;

        states:[
            State {
                name: "stop"
                PropertyChanges {target: rect_red; color:"red"}
                PropertyChanges {target:rect_yellow; color:"black"}
                PropertyChanges {target:rect_green; color:"black"}
            },
            State {
                name: "caution"
                PropertyChanges {target: rect_red; color:"black"}
                PropertyChanges {target:rect_yellow; color:"yellow"}
                PropertyChanges {target:rect_green; color:"black"}
            },
            State {
                name: "go"
                PropertyChanges {target: rect_red; color:"black"}
                PropertyChanges {target:rect_yellow; color:"black"}
                PropertyChanges {target:rect_green; color:"green"}
            }
        ]
        state:"stop" // Задаём начальное состояние системы

        MouseArea{
            anchors.fill:parent
            onClicked: {
                if (parent.state == "stop") {
                    parent.state = "caution";
                } else if (parent.state == "caution") {
                    parent.state = "go";
                } else {
                    parent.state = "stop";
                }
            }
        }

        transitions:[
            Transition {
                from: "stop"
                to: "caution"
                PropertyAnimation {
                    id: anim;
                    target: rect_red;
                    properties: "color";
                    to: "black";
                    duration: 1000
                }
            },
            Transition {
                from: "caution"
                to: "go"
                PropertyAnimation {
                    id: anim_2;
                    target: rect_yellow;
                    properties: "color";
                    to: "black";
                    duration: 1000
                }
            },
            Transition {
                from: "go"
                to: "stop"
                PropertyAnimation {
                    id: anim_3;
                    target: rect_red;
                    properties: "color";
                    to: "black";
                    duration: 1000
                }
            }
        ]

        Rectangle{
            id:rect_red
            anchors.bottom: rect_yellow.top
            anchors.right: rect_yellow.right
            anchors.bottomMargin: 20
            color:"red"
            width: parent.height/4; height: parent.height/4;
        }
        Rectangle{
            id:rect_yellow
            anchors.centerIn: parent
            color:"yellow"
            width: parent.height/4; height: parent.height/4;
        }
        Rectangle{
            id:rect_green
            anchors.top: rect_yellow.bottom
            anchors.right: rect_yellow.right
            anchors.topMargin: 20
            color:"green"
            width: parent.height/4; height: parent.height/4;
        }
    }
}
