package ;

import haxe.ui.containers.dialogs.CollapsibleDialog;
import haxe.ui.containers.Box;
import haxe.ui.containers.dialogs.Dialog;
import haxe.ui.containers.dialogs.Dialogs;
import haxe.ui.containers.dialogs.MessageBox.MessageBoxType;
import haxe.ui.events.MouseEvent;
import haxe.ui.containers.VBox;

using haxe.ui.animation.AnimationTools;

@:build(haxe.ui.macros.ComponentMacros.build("assets/learningcenterpanel.xml"))
class DialogsView extends VBox {
    public function new() {
        super();
    }
    
    @:bind(collapsibleDialog, MouseEvent.CLICK)
    private function onCollapsibleDialog(e) {
        var dialog = new MyCustomCollapsibleDialog();
        dialog.onDialogClosed = function(e:DialogEvent) {
            trace(e.button);
        }
        dialog.showDialog(false);
    }
    
}


@:build(haxe.ui.macros.ComponentMacros.build("assets/languagecomparisons.xml"))
class MyCustomCollapsibleDialog extends CollapsibleDialog {
    public function new() {
        super();
        buttons = DialogButton.CANCEL;
    }
}
