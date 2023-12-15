import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    height: 600
    width: 480
    title: 'Login_Page'
    visible: true
    Column{
        id: column
        anchors.centerIn:parent
        spacing:10
        TextField {
            id: usernameField
            placeholderText: "Username"
            font.pixelSize: 16
        }
        TextField {
            id: passwordField
            placeholderText: "Password"
            font.pixelSize: 16
            echoMode: TextInput.Password
        }

        Row{
            id: row
            spacing: 10
            Button {
                text: "Log In"
                width: usernameField.width/2-5
                font.pixelSize: 16
            }
            Button {
                text: "Clear"
                width: usernameField.width/2-5
                font.pixelSize: 16
                onClicked: {
                    usernameField.text = ""
                    passwordField.text = ""
                }
            }
        }
    }
}
