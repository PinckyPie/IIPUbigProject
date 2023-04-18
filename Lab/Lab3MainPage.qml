import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import com.lab3.event

Page {
    id: root
    signal backButtonClicked();
    signal firstPageButtonClicked();
    signal secondPageButtonClicked();
    signal thirdPageButtonClicked();
    signal fourthPageButtonClicked();


    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "#3c3c3c"
    }
    Grid
    {
        id: infoButtons
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        rows: 1; columns: 4; spacing: 7
        Button
        {
            id: dEventButton
            text: "D key event"
            onClicked: root.firstPageButtonClicked()

        }
        Button
        {
            id: pageUpKeyButton
            text: "Page Up Key Event"
            onClicked: root.secondPageButtonClicked()
        }
        Button
        {
            id: funcKeyButton
            text: "Func Key Event"
            onClicked: root.thirdPageButtonClicked()
        }

        Button
        {
            id: dAndPageUpKeyButton
            text: "D & Page up key Event"
            onClicked: root.fourthPageButtonClicked()
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
