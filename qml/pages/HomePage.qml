// ekke (Ekkehard Gentz) @ekkescorner
import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtGraphicalEffects 1.0

import "../common"

Flickable {
    id: homePage
    contentHeight: root.implicitHeight
    // StackView manages this, so please no anchors here
    // anchors.fill: parent
    property string name: "HomePage"

    Pane {
        id: root
        anchors.fill: parent
        ColumnLayout {
            anchors.right: parent.right
            anchors.left: parent.left
            LabelHeadline {
                leftPadding: 10
                bottomPadding: 16
                text: qsTr("The Home Page")
            }
            RowLayout {
                IconInactive {
                    imageName: modelData.icon
                    imageSize: 48
                }
                LabelSubheading {
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("Welcome to ekke's QtQuickControls2 Apps")                }
                Item {
                    implicitWidth: 96
                    implicitHeight: 96
                    Image {
                        // scale: Image.PreserveAspectFit
                        anchors.fill: parent
                        // anchors.verticalCenterOffset: -50
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/images/extra/qt-logo.png"
                    }
                }
            }

            HorizontalDivider {}
            RowLayout {
                LabelSubheading {
                    topPadding: 6
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("Example APP demonstrating Qt Quick Controls 2\n\n")
                }
            }
            RowLayout {
                LabelSubheading {
                    topPadding: 6
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("Navigation Drawer can be opened swiping from left or tapping on Menu Button.\nHome Page is marked as Favority, so you can also navigate from Bottom (in Portrait Mode)\n")
                }
            }
            RowLayout {
                LabelBodySecondary {
                    topPadding: 6
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("Activation Policy: ")
                }
                LabelBody {
                    topPadding: 6
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("IMMEDIATELY")
                }
            }
            HorizontalDivider {}
            RowLayout {
                LabelSubheading {
                    topPadding: 6
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("Have FUN playing around with the App\nPlease remember: this is only an EXAMPLE App demonstrating HowTo use QtQuickControls 2\nA full featured Business App of course will have some more logic behind the scene.\n")
                }
            }
            RowLayout {
                LabelSubheading {
                    topPadding: 6
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("Please follow my blog to understand the concepts.\n")
                }
            }
            HorizontalDivider {}
        } // col layout
    } // root
    ScrollIndicator.vertical: ScrollIndicator { }

    // emitting a Signal could be another option
    Component.onDestruction: {
        cleanup()
    }

    // called immediately after Loader.loaded
    function init() {
        console.log(qsTr("Init done from Home Page"))
    }
    // called from Component.destruction
    function cleanup() {
        console.log(qsTr("Cleanup done from Home Page"))
    }
} // flickable
