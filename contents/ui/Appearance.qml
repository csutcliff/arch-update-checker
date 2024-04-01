import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as QQC2
import org.kde.plasma.plasmoid as Plasmoid
import org.kde.plasma.extras as PlasmaExtras
import org.kde.plasma.core as PlasmaCore
import org.kde.plasma.components as PlasmaComponents
import org.kde.kirigami as Kirigami

Kirigami.Page {
    id: appearancePage
    readonly property int margins: Kirigami.Units.gridUnit
    title: i18nc("@title", "Appearance")
    topPadding: 0
    leftPadding: margins
    rightPadding: margins
    bottomPadding: margins
    header: Item {
        anchors{
            topMargin: Kirigami.Units.smallSpacing * 2
            bottomMargin: anchors.topMargin
            leftMargin: anchors.topMargin
            rightMargin: anchors.topMargin
        }
        ColumnLayout {
            anchors.fill: parent
            PlasmaExtras.Heading {
                Layout.alignment: Qt.AlignCenter
                text: i18n("\n\nAppearance Settings\n\n")
                wrapMode: Text.WordWrap
            }
            PlasmaExtras.Heading {
                Layout.alignment: Qt.AlignCenter
                text: i18n("Indicator Position")
                wrapMode: Text.WordWrap
                level: 2
            }
            Item {
                clip: false
                Layout.alignment: Qt.AlignCenter
                Layout.minimumWidth : 100
                Layout.minimumHeight: 100
                QQC2.RadioButton{
                    anchors.left: parent.right
                    anchors.top: parent.top
                    LayoutMirroring.enabled: true
                    text: i18n("Top-Left")
                }
                QQC2.RadioButton{
                    anchors.left: parent.right
                    anchors.top: parent.top
                    text: i18n("Top-Right")
                }
                Kirigami.Icon {
                    height: 100
                    width: 100
                    anchors.centerIn: parent
                    source: "update-none-symbolic"
                }
                QQC2.RadioButton{
                    anchors.left: parent.right
                    anchors.bottom: parent.bottom
                    LayoutMirroring.enabled: true
                    text: i18n("Bottom-Left")
                }
                QQC2.RadioButton{
                    anchors.left: parent.right
                    anchors.bottom: parent.bottom
                    text: i18n("Bottom-Right")
                }
            }
            PlasmaExtras.Heading {
                Layout.alignment: Qt.AlignCenter
                text: i18n("\nVersion Seperator")
                wrapMode: Text.WordWrap
                level: 2
            }
            QQC2.TextField{
                id: sprtrText
                horizontalAlignment: TextInput.AlignHCenter
                Layout.alignment: Qt.AlignCenter
                text: "→"
            }
            RowLayout {
                Layout.alignment: Qt.AlignCenter
                QQC2.Label{
                    text: "v6.9"+sprtrText.text+"v9.6"
                }
            }
        }
    }
}
