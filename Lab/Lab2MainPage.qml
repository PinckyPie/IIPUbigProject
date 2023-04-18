import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Page {
    id: root
    signal backButtonClicked();
    signal cpuButtonClicked();
    signal memoryButtonClicked();
    signal deviceButtonClicked();

    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "#3c3c3c"
    }
    Grid{
        id: infoButtons
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        rows: 1; columns: 3; spacing: 7
        Button
        {
            id: cpuButton
            text: "CPU info"
            onClicked: root.cpuButtonClicked()

        }
        Button
        {
            id: memoryButton
            text: "Memory info"
            onClicked: root.memoryButtonClicked()
        }
        Button
        {
            id: deviceButton
            text: "Devices info"
            onClicked: root.deviceButtonClicked()
        }
    }
    BackButton
    {
        onBackButtonClicked:
        {
            root.backButtonClicked();
        }
    }
}
