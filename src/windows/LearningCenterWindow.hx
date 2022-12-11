package windows;

import haxe.ui.containers.dialogs.CollapsibleDialog;
import haxe.ui.containers.Box;
import haxe.ui.containers.windows.Window;
import haxe.ui.containers.dialogs.Dialog;
import haxe.ui.containers.dialogs.Dialogs;
import haxe.ui.containers.dialogs.MessageBox.MessageBoxType;
import haxe.ui.events.MouseEvent;
import haxe.ui.containers.VBox;
import haxe.ui.containers.windows.WindowManager;


using haxe.ui.animation.AnimationTools;

@:build(haxe.ui.macros.ComponentMacros.build("assets/views/learningcenterpanel.xml"))
class LearningCenterWindow extends Window {
    public function new() {
        super();

    }
    
    @:bind(collapsibleDialog, MouseEvent.CLICK)
    private function onCollapsibleDialog(e) {
        var window = new LanguageComparisonWindow();
        window.left = 200;
        window.top = 100;
        WindowManager.instance.addWindow(window);
        }
//    }
    




}


@:build(haxe.ui.macros.ComponentMacros.build("assets/views/languagecomparisons.xml"))
class LanguageComparisonWindow extends Window {
    public function new() {
        super();
    }
}
