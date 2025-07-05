import "root:/modules/common"
import "root:/modules/common/widgets"
import "../"
import Quickshell.Io
import Quickshell

QuickToggleButton {
    id: nightLightButton
    property bool enabled: false
    toggled: enabled
    buttonIcon: "nightlight"
    onClicked: {
        nightLightButton.enabled = !nightLightButton.enabled
        if (enabled) {
            nightLightOn.startDetached()
        } 
        else {
            nightLightOff.startDetached()
        }
    }
    Process {
        id: nightLightOn
        command: ["hyprsunset", "-t", "3000"]
    }
    Process {
        id: nightLightOff
        command: ["pkill", "hyprsunset"]
    }
    Process {
        id: updateNightLightState
        running: true
        command: ["pidof", "hyprsunset"]
        stdout: SplitParser {
            onRead: (data) => { // if not empty then set toggled to true
                nightLightButton.enabled = data.length > 0
            }
        }
    }
    StyledToolTip {
        content: qsTr("Night Light")
    }
}
