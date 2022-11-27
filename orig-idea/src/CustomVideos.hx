package;

import haxe.ui.containers.dialogs.Dialog;

@:build(haxe.ui.macros.ComponentMacros.build("assets/custom/custom-videos.xml"))
class CustomVideos extends Dialog {
    public function new() {
        super();
        title = "Videos";
        modal = false;
        buttons =  DialogButton.APPLY | DialogButton.CANCEL;
    }
}
