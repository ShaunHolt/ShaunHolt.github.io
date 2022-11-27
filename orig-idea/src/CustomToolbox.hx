package;

import haxe.ui.containers.dialogs.Dialog;

@:build(haxe.ui.macros.ComponentMacros.build("assets/custom/custom-toolbox.xml"))
class CustomToolbox extends Dialog {
    public function new() {
        super();
        title = "Toolbox";
        modal = false;
        buttons =  DialogButton.APPLY | DialogButton.CANCEL;
    }
}
