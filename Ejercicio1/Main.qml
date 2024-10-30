import QtQuick
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    RowLayout {
        id: rowLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0

        ColumnLayout {
            id: columnLayout

            width: 96
            height: 479
            Layout.minimumWidth: 100
            Layout.fillHeight: true
            Layout.fillWidth: false
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Layout.leftMargin: 10
            Layout.margins: 10
            Button {
                id: button1
                text: qsTr("Button")
            }
            Button {
                id: button2
                text: qsTr("Button")
            }
            Button {
                id: button3
                text: qsTr("Button")
            }
            Button {
                id: button4
                text: qsTr("Button")
            }
        }



    }



}
