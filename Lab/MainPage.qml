import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Page {
    id: root

    signal labOneButtonClicked();
    signal labTwoButtonClicked();
    signal labThirdButtonClicked();
    signal labFourthButtonClicked();
    signal labFiveButtonClicked();

    background: Rectangle {
        id: mainBackground
        color: "#3c3c3c"

    }
    Grid {
        id: buttonPicker
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        rows: 5; columns: 1; spacing: 7

        Button{
            id: lab1Button
            text: "Смена фона и вывод dmesg в файл"
            onClicked:{
                root.labOneButtonClicked();
            }
        }

        Button{
            id: lab2Button
            text: "Файловая система proc"
            onClicked:{
                root.labTwoButtonClicked();
            }
        }

        Button {
            id: lab3Button
            text: "Эмуляция клавиатурных действий"
            onClicked:{
                root.labThirdButtonClicked();
            }
        }

        Button {
            id: lab4Button
            text: "Проектор"
            onClicked:{
                root.labFourthButtonClicked();
            }
        }

        Button {
            id: lab5Button
            text: "RS-232"
            onClicked: {
                root.labFiveButtonClicked();
            }
        }
    }


}
