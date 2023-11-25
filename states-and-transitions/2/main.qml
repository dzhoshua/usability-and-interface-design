import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12


Window {
    id: win
    width: 480
    height: 700
    visible: true
    title: qsTr("states and transitions")

    property int dur: 800

    ColumnLayout{
        id: container
        anchors.fill:parent
        spacing:10

        states:[
            State{
                name:"start"
                PropertyChanges {
                    target: btn1
                    opacity: 1;
                }
                PropertyChanges {
                    target: btn2
                    opacity: 1;
                }
                PropertyChanges {
                    target: btn2
                    opacity: 1;
                }
                PropertyChanges {
                    target: back
                    opacity: 0;
                }
                PropertyChanges {
                    target: header_item
                    ctext: "Header";
                }
                PropertyChanges {
                    target: content_item
                    ctext: "Content";
                }
            },
            State{
                name:"item1"
                PropertyChanges {
                    target: btn1
                    opacity: 1;
                }
                PropertyChanges {
                    target: btn2
                    opacity: 0.5;
                }
                PropertyChanges {
                    target: btn3
                    opacity: 0.5;
                }
                PropertyChanges {
                    target: back
                    opacity: 1;
                }
                PropertyChanges {
                    target: header_item
                    ctext: "Header 1";
                }
                PropertyChanges {
                    target: content_item
                    ctext: "Item 1 content";
                }
            },
            State{
                name:"item2"
                PropertyChanges {
                    target:btn1
                    opacity: 0.5;
                }
                PropertyChanges {
                    target: btn2
                    opacity: 1;
                }
                PropertyChanges {
                    target: btn3
                    opacity: 0.5;
                }
                PropertyChanges {
                    target: back
                    opacity: 1;
                }
                PropertyChanges {
                    target: header_item
                    ctext: "Header 2";
                }
                PropertyChanges {
                    target: content_item
                    ctext: "Item 2 content";
                }
            },
            State{
                name:"item3"
                PropertyChanges {
                    target: btn1
                    opacity: 0.5;
                }
                PropertyChanges {
                    target: btn2
                    opacity: 0.5;
                }
                PropertyChanges {
                    target: btn3
                    opacity: 1;
                }
                PropertyChanges {
                    target: back
                    opacity: 1;
                }
                PropertyChanges {
                    target: header_item
                    ctext: "Header 3";
                }
                PropertyChanges {
                    target: content_item
                    ctext: "Item 3 content";
                }
            }
        ]
        state:"start"
        transitions:[
            Transition {
                from: "start"
                to: "item1"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item2"
                to: "item1"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item3"
                to: "item1"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "start"
                to: "item2"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item1"
                to: "item2"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item3"
                to: "item2"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "start"
                to: "item3"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item1"
                to: "item3"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item2"
                to: "item3"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item1"
                to: "start"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item2"
                to: "start"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item3"
                to: "start"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            }
        ]


        RowLayout{
            id:header
            Layout.minimumHeight: win.height/9
            Layout.minimumWidth: parent.width
            Comp{
                id:header_item
                ctext:"Header"
                Layout.fillWidth: true
                Layout.fillHeight: true

                Comp{
                    id:back
                    ctext:"<-"
                    cborder:"lightgray"
                    ccolor:"grey"
                    fontSize:15
                    width: 30
                    height: 30
                    anchors.verticalCenter: parent.verticalCenter
                    x: 10
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            container.state = "start"
                        }
                    }

                }

            }

        }
        RowLayout{
            id: content
            Layout.minimumHeight: (parent.height/9)*7-2*container.spacing
            Layout.minimumWidth: parent.width-2*container.spacing
            Layout.leftMargin: container.spacing
            Layout.rightMargin: container.spacing
            Comp{
                id:content_item
                ctext:"content"
                cborder:"lightgrey"
                ccolor:"white"
                Layout.fillHeight: true
                Layout.fillWidth: true

                }
            }
        RowLayout{
            id: footer
            Layout.minimumHeight: win.height/9
            spacing:5
            Comp{
                id:btn1
                ctext:"1"
                Layout.minimumWidth: win.width/3
                Layout.fillHeight: true
                MouseArea{
                    anchors.fill:parent
                    onClicked:{
                        container.state = "item1"
                    }

                }
            }
            Comp{
                id:btn2
                ctext:"2"
                Layout.minimumWidth: win.width/3-2*footer.spacing
                Layout.fillHeight: true
                MouseArea{
                    anchors.fill:parent
                    onClicked:{
                        container.state = "item2"
                    }

                }
            }
            Comp{
                id:btn3
                ctext:"3"
                Layout.minimumWidth: win.width/3
                Layout.fillHeight: true
                MouseArea{
                    anchors.fill:parent
                    onClicked:{
                        container.state = "item3"
                    }

                }
            }

        }
    }

}

