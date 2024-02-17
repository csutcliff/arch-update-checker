import QtQuick
import QtQuick.Controls
import org.kde.kirigami as Kirigami
Rectangle {
    id: badge
    smooth: true
    property alias text: label.text
    Behavior on opacity {NumberAnimation{}}

    anchors.right: parent.right
    anchors.bottom: parent.bottom
    color: plasmoid.configuration.dotColor
    radius: width / 2
    height: parent.height/2
    width: parent.width/2
    Label {
        id: label
        color: Kirigami.Themes.TextColor
        font.pixelSize: 12
        anchors.fill: parent
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        visible: plasmoid.configuration.numberAvailable
        anchors.margins: parent.anchors.margins
    }
}