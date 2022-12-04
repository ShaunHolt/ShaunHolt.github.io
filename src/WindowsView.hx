package;

import windows.InlineDialogsWindow;
import windows.SimpleGraphWindow;
import windows.CodeEditorWindow;
import haxe.ui.containers.windows.WindowManager;
import windows.SimpleFormWindow;
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

    @:bind(openSimpleFormLink, MouseEvent.CLICK)
    private function onOpenSimpleForm(_) {
        var window = new SimpleFormWindow();
        window.left = 10;
        window.top = 80;
        WindowManager.instance.addWindow(window);
    }

    @:bind(openSimpleGraphLink, MouseEvent.CLICK)
    private function onOpenSimpleGraph(_) {
        var window = new SimpleGraphWindow();
        window.left = 200;
        window.top = 100;
        WindowManager.instance.addWindow(window);
    }

    @:bind(openCodeEditorLink, MouseEvent.CLICK)
    private function onOpenCodeEditor(_) {
        var window = new CodeEditorWindow();
        window.left = 200;
        window.top = 100;
        WindowManager.instance.addWindow(window);
    }



    @:bind(openInlineDialogsLink, MouseEvent.CLICK)
    private function onOpenInlineDialogs(_) {
        var window = new InlineDialogsWindow();
        window.left = 300;
        window.top = 10;
        WindowManager.instance.addWindow(window);
    }
}