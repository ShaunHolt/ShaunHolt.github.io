package;

import haxe.ui.containers.dialogs.Dialog;

@:build(haxe.ui.macros.ComponentMacros.build("assets/custom/custom-sensors.xml"))
class CustomSensors extends Dialog {
    public function new() {
        super();
        title = "Sensors";
        modal = false;
        buttons =  DialogButton.APPLY | DialogButton.CANCEL;
    }
}
