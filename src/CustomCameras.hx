package;

import haxe.ui.containers.dialogs.Dialog;

@:build(haxe.ui.macros.ComponentMacros.build("assets/custom-cameras.xml"))
class CustomCameras extends Dialog {
    public function new() {
        super();
        title = "Cameras";
        modal = false;
        buttons =  DialogButton.APPLY | DialogButton.CANCEL;
    }
}
