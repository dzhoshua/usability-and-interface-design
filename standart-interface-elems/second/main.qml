import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

ApplicationWindow {
    height: 600
    width: 480
    title: 'Password'
    visible: true

    background: Rectangle {
        anchors.fill: parent
        color: 'white'
    }
    TextField {
        id: passwordField
        visible: false
    }
    ColumnLayout{
        id: column
        anchors.centerIn:parent
        spacing:10
        Text {
            text: "Enter your password:"
            font.pixelSize: 16
            Layout.alignment: Qt.AlignCenter
        }
        Rectangle {
            id: passwordField1
            color: "white"
            border.width: 2
            border.color: "black"
            width: parent.width
            height: 50
            Layout.alignment: Qt.AlignCenter
            Row {
                spacing: 6
                anchors.centerIn: parent
                // Добавляем 6 элементов Label для отображения введенных символов
                Repeater {
                    model:6
                    Label {
                        width: 20
                        height: 20
                        font.pixelSize: 36
                        text: "*"
                        Layout.alignment: Qt.AlignCenter
                        color:index <passwordField.text.length ? "black" : "light grey"
                    }
                }
            }
        }

        GridLayout {
            id: keypad
            rows: 4
            columns: 3
            width: parent.width
            Repeater {
                model:["1", "2", "3", "4", "5", "6", "7", "8", "9", "", "0", "Clear"]
                Button {
                    text: modelData
                    onClicked: {
                        if (text === "Clear") {
                            passwordField.text = ""
                        }else {
                            passwordField.text += text
                        }
                    }
                    Layout.fillWidth: true
                    Layout.preferredHeight: 50
                }
            }
        }
    }
}
