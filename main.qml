import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Qt.labs.qmlmodels 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Table View Example")


    property var myApiModelData: [
        {
            checked: false,
            amount: 1,
            fruitType: "Apple",
            fruitName: "Granny Smith",
            fruitPrice: 1.50,
        },
        {
            checked: true,
            amount: 4,
            fruitType: "Orange",
            fruitName: "Navel",
            fruitPrice: 2.50,
        },
        {
            checked: false,
            amount: 1,
            fruitType: "Banana",
            fruitName: "Cavendish",
            fruitPrice: 3.50,
        },
        {
            checked: true,
            amount: 4,
            fruitType: "Orange",
            fruitName: "Navel",
            fruitPrice: 2.50,
        },
        {
            checked: false,
            amount: 1,
            fruitType: "Banana",
            fruitName: "Cavendish",
            fruitPrice: 3.50,
        },
        {
            checked: true,
            amount: 4,
            fruitType: "Orange",
            fruitName: "Navel",
            fruitPrice: 2.50,
        },
        {
            checked: false,
            amount: 1,
            fruitType: "Banana",
            fruitName: "Cavendish",
            fruitPrice: 3.50,
        },
        {
            checked: true,
            amount: 4,
            fruitType: "Orange",
            fruitName: "Navel",
            fruitPrice: 2.50,
        },
        {
            checked: false,
            amount: 1,
            fruitType: "Banana",
            fruitName: "Cavendish",
            fruitPrice: 3.50,
        },
        {
            checked: true,
            amount: 4,
            fruitType: "Orange",
            fruitName: "Navel",
            fruitPrice: 2.50,
        },
        {
            checked: false,
            amount: 1,
            fruitType: "Banana",
            fruitName: "Cavendish",
            fruitPrice: 3.50,
        },
        {
            checked: true,
            amount: 4,
            fruitType: "Orange",
            fruitName: "Navel",
            fruitPrice: 2.50,
        },
        {
            checked: false,
            amount: 1,
            fruitType: "Banana",
            fruitName: "Cavendish",
            fruitPrice: 3.50,
        }
    ]

    TableViewComponent {
        anchors.fill: parent
        anchors.margins: 30

        title.text: qsTr("Fruits")

        headers: [
            {
                text: ""
            },
            {
                text: qsTr("Amount")
            },
            {
                text: qsTr("Type")
            },
            {
                text: qsTr("Name")
            },
            {
                text: qsTr("Price")
            }]

        model: TableModel {
            id: tableModels

            TableModelColumn { display: "checked"}
            TableModelColumn { display: "amount"}
            TableModelColumn { display: "fruitType"}
            TableModelColumn { display: "fruitName"}
            TableModelColumn { display: "fruitPrice"}

            rows: myApiModelData
        }

        delegate: DelegateChooser {
            DelegateChoice {
                column: 0
                delegate: Switch {
                    checked: model.display
                    onToggled: model.display = checked
                }
            }

            DelegateChoice {
                column: 1
                delegate: SpinBox {
                    value: model.display
                    onValueModified: model.display = value
                }
            }


            DelegateChoice {
                delegate: ItemDelegate {
                    Text {
                        text: model.display
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }
        }
    }
}
