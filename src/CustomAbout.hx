package;

import haxe.ui.containers.dialogs.Dialog;

@:build(haxe.ui.macros.ComponentMacros.build("assets/custom/custom-about.xml"))
class CustomAbout extends Dialog {
    public function new() {
        super();
        title = "About";
        modal = false;
        buttons =  DialogButton.APPLY | DialogButton.CANCEL;
    }
}
