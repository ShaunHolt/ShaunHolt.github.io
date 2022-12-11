package windows;

import haxe.ui.containers.dialogs.CollapsibleDialog;
import haxe.ui.containers.Box;
import haxe.ui.containers.windows.Window;
import haxe.ui.containers.dialogs.Dialog;
import haxe.ui.containers.dialogs.Dialogs;
import haxe.ui.containers.dialogs.MessageBox.MessageBoxType;
import haxe.ui.events.MouseEvent;
import haxe.ui.containers.VBox;

using haxe.ui.animation.AnimationTools;

@:build(haxe.ui.macros.ComponentMacros.build("assets/views/learningcenterpanel.xml"))
class LearningCenterWindow extends Window {
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


@:build(haxe.ui.macros.ComponentMacros.build("assets/views/languagecomparisons.xml"))
class MyCustomCollapsibleDialog extends CollapsibleDialog {
    public function new() {
        super();
        buttons = DialogButton.CANCEL;
    }
}
