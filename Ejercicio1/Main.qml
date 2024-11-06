import QtQuick
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Gestión")



        ColumnLayout {
            id: columnLayout
            width: 100
            height: 465
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 11
            layer.wrapMode: ShaderEffectSource.ClampToEdge
            Layout.preferredHeight: 491
            Layout.preferredWidth: 100

            Layout.maximumWidth: 3000
            Layout.minimumWidth: 100
            Layout.fillHeight: true
            Layout.fillWidth: false
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Layout.leftMargin: 10
            Layout.margins: 10
                Button {
                    id: button1
                    text: qsTr("Elementos")
                    anchors.verticalCenter: rectangle2.verticalCenter
                    anchors.leftMargin: -87
                    anchors.rightMargin: -86
                    anchors.topMargin: -155
                    anchors.bottomMargin: -335
                    Layout.topMargin: 0
                    Layout.rightMargin: 1
                    Layout.fillWidth: true
                    Layout.preferredHeight: 13
                    Layout.preferredWidth: 26
                    Layout.fillHeight: false
                    anchors.horizontalCenter: rectangle2.horizontalCenter
                    focus: false
                    icon.color: "#d1e22121"
                    highlighted: true
                    flat: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    onClicked: stackLayout.currentIndex = 0
                    background: Rectangle{
                        radius: 5
                        border.width: 1
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: -5
                        anchors.rightMargin: -1
                        anchors.topMargin: -5
                        anchors.bottomMargin: -12
                        color: "#868585"

                    }
                    
                }
            Button {
                    id: button2
                    text: qsTr("Edición")
                    anchors.verticalCenter: rectangle2.verticalCenter
                    anchors.leftMargin: -87
                    anchors.rightMargin: -86
                    anchors.topMargin: -155
                    anchors.bottomMargin: -335
                    Layout.topMargin: 0
                    Layout.rightMargin: 1
                    Layout.fillWidth: true
                    Layout.preferredHeight: 13
                    Layout.preferredWidth: 26
                    Layout.fillHeight: false
                    anchors.horizontalCenter: rectangle2.horizontalCenter
                    focus: false
                    icon.color: "#d1e22121"
                    highlighted: true
                    flat: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    onClicked: stackLayout.currentIndex = 1
                    background: Rectangle{
                        radius: 5
                        border.width: 1
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: -5
                        anchors.rightMargin: -1
                        anchors.topMargin: -5
                        anchors.bottomMargin: -12
                        color: "#868585"

                    }
                }
            Button {
                    id: button3
                    text: qsTr("Usuarios")
                    anchors.verticalCenter: rectangle2.verticalCenter
                    anchors.leftMargin: -87
                    anchors.rightMargin: -86
                    anchors.topMargin: -155
                    anchors.bottomMargin: -335
                    Layout.topMargin: 0
                    Layout.rightMargin: 1
                    Layout.fillWidth: true
                    Layout.preferredHeight: 13
                    Layout.preferredWidth: 26
                    Layout.fillHeight: false
                    anchors.horizontalCenter: rectangle2.horizontalCenter
                    focus: false
                    icon.color: "#d1e22121"
                    highlighted: true
                    flat: true
                    onClicked: stackLayout.currentIndex = 2
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    background: Rectangle{
                        radius: 5
                        border.width: 1
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: -5
                        anchors.rightMargin: -1
                        anchors.topMargin: -5
                        anchors.bottomMargin: -12
                        color: "#868585"

                    }
                }

                Button {
                    id: button4
                    text: qsTr("Configuración")
                    anchors.verticalCenter: rectangle2.verticalCenter
                    anchors.leftMargin: -87
                    anchors.rightMargin: -86
                    anchors.topMargin: -155
                    anchors.bottomMargin: -335
                    Layout.topMargin: 0
                    Layout.rightMargin: 1
                    Layout.fillWidth: true
                    Layout.preferredHeight: 13
                    Layout.preferredWidth: 26
                    Layout.fillHeight: false
                    anchors.horizontalCenter: rectangle2.horizontalCenter
                    onClicked: stackLayout.currentIndex = 3
                    focus: false
                    icon.color: "#d1e22121"
                    highlighted: true
                    flat: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    background: Rectangle{
                        radius: 5
                        border.width: 1
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: -5
                        anchors.rightMargin: -1
                        anchors.topMargin: -5
                        anchors.bottomMargin: -12
                        color: "#868585"

                    }
                }


        }

        Rectangle {
            id: rectangle
            height:400
            color: "#b9b6b6"
            anchors.left: columnLayout.right
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 15
            anchors.rightMargin: 0
            anchors.topMargin: 0
            anchors.bottomMargin: 0
            
            StackLayout {
                id: stackLayout
                anchors.fill: parent
                currentIndex: 0
                            Item {
                                anchors.fill: parent


                                GridLayout {
                                    id: gridLayout
                                    columns: 3
                                    rowSpacing: 10
                                    columnSpacing: 10
                                    anchors.fill: parent
                                    anchors.margins: 20
                                    anchors.bottomMargin: 80


                                    Text {
                                        text: qsTr("Elementos")
                                        font.pixelSize: 42
                                        horizontalAlignment: Text.AlignHCenter
                                        Layout.row: 0
                                        Layout.columnSpan: 3
                                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    }


                                    Repeater {
                                        model: 8 //How many elements should be produced
                                        delegate: ColumnLayout {
                                            Layout.alignment: Qt.AlignCenter
                                            Layout.row: (index / 3) + 1
                                            Layout.column: index % 3

                                            Text {
                                                text: qsTr("Elemento %1").arg(index + 1)
                                                font.pixelSize: 16
                                                horizontalAlignment: Text.AlignHCenter
                                                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                            }

                                            Rectangle {
                                                width: 80
                                                height: 60
                                                color: "#e0e0e0"
                                                radius: 5
                                                border.width: 1
                                                Layout.fillHeight: true
                                                Layout.fillWidth: true
                                                Layout.bottomMargin: 0
                                                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                                Layout.maximumHeight: 250
                                                Layout.maximumWidth: 350
                                                Layout.minimumHeight: 50
                                                Layout.minimumWidth: 100
                                                Layout.preferredHeight: 250
                                                Layout.preferredWidth: 200
                                            }
                                        }
                                    }
                                }

                                RoundButton {
                                    text: "+"
                                    anchors.bottom: parent.bottom
                                    anchors.right: parent.right
                                    anchors.margins: 20
                                    width: 50
                                    height: 50
                                    font.pixelSize: 24
                                    background: Rectangle {
                                        color: "#e0e0e0"
                                        radius: width / 2
                                        border.width: 1
                                        border.color: "black"
                                    }
                                    onClicked: {
                                        console.log("RoundButton clicked")
                                    }
                                }
                            }

                            Item {
                                anchors.fill: parent
                                Text {
                                    text: qsTr("Edición")
                                    anchors.centerIn: parent
                                    font.pixelSize: 24
                                }
                            }
                            Item {
                                anchors.fill: parent
                                Text {
                                    text: qsTr("Usuarios")
                                    anchors.centerIn: parent
                                    font.pixelSize: 24
                                }
                            }
                            Item {
                                anchors.fill: parent
                                Text {
                                    text: qsTr("Configuración")
                                    anchors.centerIn: parent
                                    font.pixelSize: 24
                                }
                            }
            }
        }
}
