package;

import haxe.ui.containers.dialogs.Dialog;

@:build(haxe.ui.macros.ComponentMacros.build("assets/custom-servo.xml"))
class CustomServo extends Dialog {
    public function new() {
        super();
        title = "Custom Servo";
        modal = false;
        buttons =  DialogButton.APPLY | DialogButton.CANCEL;
    }
}
