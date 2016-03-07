import QtQuick 2.4
import Ubuntu.Components 1.2

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "qmlcolors.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    //    useDeprecatedToolbar: false

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("qmlcolors")

        ListView {
            anchors.fill: parent
            model: colors
            delegate: Item {
                width: parent.width
                height: units.gu(5)

                Label {
                    text: modelData
                    fontSize: "large"
                    anchors.left: parent.left
                    anchors.leftMargin: units.gu(1)
                    anchors.verticalCenter: parent.verticalCenter
                }

                Rectangle {
                    anchors.right: parent.right
                    height: parent.height
                    width: parent.width / 2
                    color: modelData
                }
            }
        }
    }
}

