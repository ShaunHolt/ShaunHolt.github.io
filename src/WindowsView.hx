package;

import windows.InlineDialogsWindow;
import windows.CodeEditorWindow;
import windows.GameCenterWindow;
import windows.LearningCenterWindow;
import haxe.ui.containers.windows.WindowManager;
import haxe.ui.events.MouseEvent;
import haxe.ui.containers.VBox;
import haxe.ui.containers.SideBar;
import haxe.ui.containers.dialogs.Dialog;
import haxe.ui.containers.dialogs.Dialogs;
import haxe.ui.containers.dialogs.Dialog.DialogButton;

@:build(haxe.ui.macros.ComponentMacros.build("assets/views/windows.xml"))
class WindowsView extends VBox {
    public function new() {
        super();
        // normally will default to "Screen" but lets change that to our container
        WindowManager.instance.container = windowContainer;
    }

    @:bind(showSideBar1, MouseEvent.CLICK)
    private function onShowSideBar1(_) {
        var sidebar:SideBar = null;
        
            sidebar = new MySideBar1();
            sidebar.position = "right";
            sidebar.method = "float";
            sidebar.modal = false;
            sidebar.show();
    }



    private  function onHidden() {
        WindowManager.instance.reset();
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


    @:bind(openCodeEditorLink, MouseEvent.CLICK)
    private function onOpenCodeEditor(_) {
        var window = new CodeEditorWindow();
        window.left = 200;
        window.top = 100;
        WindowManager.instance.addWindow(window);
    }

    @:bind(openGameCenterLink, MouseEvent.CLICK)
    private function onOpenGameCenter(_) {
        var window = new GameCenterWindow();
        window.left = 200;
        window.top = 100;
        WindowManager.instance.addWindow(window);
    }

    @:bind(openLearningCenterLink, MouseEvent.CLICK)
    private function onOpenLearningCenter(_) {
        var window = new LearningCenterWindow();
        window.left = 200;
        window.top = 100;
        WindowManager.instance.addWindow(window);
    }


}