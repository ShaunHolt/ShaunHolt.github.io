package;

import haxe.ui.containers.dialogs.Dialog;

@:build(haxe.ui.macros.ComponentMacros.build("assets/custom/custom-robotics.xml"))
class CustomRobotics extends Dialog {
    public function new() {
        super();
        title = "Robotics";
        modal = false;
        buttons =  DialogButton.APPLY | DialogButton.CANCEL;
    }
}
