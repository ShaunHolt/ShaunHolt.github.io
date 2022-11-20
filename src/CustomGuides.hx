package;

import haxe.ui.containers.dialogs.Dialog;

@:build(haxe.ui.macros.ComponentMacros.build("assets/custom/custom-guides.xml"))
class CustomGuides extends Dialog {
    public function new() {
        super();
        title = "Guides";
        modal = false;
        buttons =  DialogButton.APPLY | DialogButton.CANCEL;
    }
}
