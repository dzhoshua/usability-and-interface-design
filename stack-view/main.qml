import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
     width: 360
     height: 640
     visible: true
     title: qsTr("StackView_test")

     property int defMargin:10

     StackView{
         id:stack_view
         anchors.fill: parent
         initialItem: page1
     }

     MyPage {
         id:page1
         backgroundColor: "red"
         buttonText1: "To_Yellow"
         buttonText2: "To_Green"
         onButtonClicked1: {
            stack_view.replace(page2)
         }
         onButtonClicked2: {
            stack_view.replace(page3)
         }
     }
     MyPage {
         id:page2
         visible: false
         backgroundColor: "yellow"
         buttonText1: "To_Red"
         buttonText2: "To_Green"
         onButtonClicked1: {
            stack_view.replace(page1)
         }
         onButtonClicked2: {
            stack_view.replace(page3)
         }
     }
     MyPage {
         id:page3
         visible: false
         backgroundColor: "green"
         buttonText1: "To_Yellow"
         buttonText2: "To_Red"
         onButtonClicked1: {
            stack_view.replace(page2)
         }
         onButtonClicked2: {
            stack_view.replace(page1)
         }
     }
}
