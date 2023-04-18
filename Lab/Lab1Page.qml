import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import com.lab.cont 1.0

Page {
    id: root
    signal backButtonClicked();

    Rectangle
    {
        id: page
        anchors.fill: parent
    }

        Grid
        {
            id: colorPicker
            x: 4; anchors.bottom: root.bottom; anchors.bottomMargin: 4
            rows: 3; columns: 3; spacing: 3

            Cell
            {
                cellColor: "red"
                onCellClicked:
                {
                    console.log("hey");
                    page.color = cellColor;
                }

            }
            Cell
            {
                cellColor: "green"
                onCellClicked:
                {
                    page.color = cellColor
                }
            }
            Cell { cellColor: "blue"; onCellClicked: page.color = cellColor }
            Cell { cellColor: "yellow"; onCellClicked: page.color = cellColor }
            Cell { cellColor: "steelblue"; onCellClicked: page.color = cellColor }
            Cell { cellColor: "black"; onCellClicked: page.color = cellColor }
            Cell { cellColor: "#3c3c3c"; onCellClicked: page.color = cellColor }

        }



    Button {
        text: "Get device info"
        anchors.centerIn: parent
        onClicked:{ cont.writeUSBDevicesToFile();}
    }
    BackButton
    {
        onBackButtonClicked:
        {
            root.backButtonClicked();
        }
    }

    USBInfo {
        id: cont
    }
}
