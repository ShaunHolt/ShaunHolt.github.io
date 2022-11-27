package;

import haxe.ui.containers.dialogs.Dialog;

@:build(haxe.ui.macros.ComponentMacros.build("assets/custom-terminal.xml"))
class CustomTerminal extends Dialog {
    public function new() {
        super();
        title = "Terminal";
        modal = false;
        buttons =  DialogButton.APPLY | DialogButton.CANCEL;
    }
}
