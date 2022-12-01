package ;
import haxe.ui.containers.SideBar;
import haxe.ui.containers.VBox;
import haxe.ui.containers.*;
import haxe.ui.events.MouseEvent;
import haxe.ui.containers.dialogs.Dialog;
import haxe.ui.containers.dialogs.Dialogs;
import haxe.ui.containers.dialogs.Dialog.DialogButton;
import haxe.ui.containers.dialogs.MessageBox.MessageBoxType;
import haxe.ui.containers.dialogs.CollapsibleDialog;
import haxe.ui.containers.ScrollView;
import haxe.ui.Toolkit;
import haxe.ui.ComponentBuilder.fromFile;
import haxe.ui.components.Button;
import haxe.ui.components.CheckBox;
import haxe.ui.core.Component;

@:build(haxe.ui.macros.ComponentMacros.build("assets/main-view.xml"))
class MainView extends VBox {
    public function new() {
        super();
    }
    
    @:bind(showSideBar1, MouseEvent.CLICK)
    private function onShowSideBar1(_) {
        var sidebar:SideBar = null;
        
            sidebar = new MySideBar1();
            sidebar.position = "left";
            sidebar.method = "float";
            sidebar.modal = true;
            sidebar.show();
    }
}

@:build(haxe.ui.macros.ComponentMacros.build("assets/views/mysidebar.xml"))
class MySideBar1 extends SideBar {
    public function new() {
        super();
        width = 250;
        percentHeight = 100;
    }
    @:bind(validatingDialog, MouseEvent.CLICK)
    private function onValidatingDialog(e) {
        var dialog = new SimpleLoginDialog();
        dialog.onDialogClosed = function(e:DialogEvent) {
            trace(e.button);
        }
        dialog.showDialog();
    }
    @:bind(showLearnPanel, MouseEvent.CLICK)
    private function onLearningPanel(e) {
        var dialog = new LearningCenterView();
        dialog.onDialogClosed = function(e:DialogEvent) {
            trace(e.button);
        }
        dialog.showDialog();
    }
}

@:build(haxe.ui.macros.ComponentMacros.build("assets/views/simple-login-dialog.xml"))
class SimpleLoginDialog extends Dialog {
    public function new() {
        super();
        buttons = DialogButton.CANCEL | "Login";
    }
    
    public override function validateDialog(button:DialogButton, fn:Bool->Void) {
        var valid = true;
        if (button == "Login") {
            if (username.text == "" || username.text == null) {
//                username.flash();
                valid = false;
            } 
            if (password.text == "" || password.text == null) {
//                password.flash();
                valid = false;
            }

            if (valid == false) {
//                this.shake();
            }
        }
        fn(valid);
    }

}

@:build(haxe.ui.macros.ComponentMacros.build("assets/views/learningcenterpanel.xml"))
class LearningCenterView extends Dialog {
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

