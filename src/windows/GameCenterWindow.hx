package windows;

import haxe.ui.containers.windows.WindowManager;
import haxe.ui.containers.windows.Window;
import haxe.ui.events.MouseEvent;
import haxe.ui.containers.Box;

import haxe.ui.containers.dialogs.CollapsibleDialog;
import haxe.ui.containers.dialogs.Dialog;
import haxe.ui.containers.dialogs.Dialogs;
import haxe.ui.containers.dialogs.MessageBox.MessageBoxType;


@:build(haxe.ui.macros.ComponentMacros.build("assets/views/gamecenterwindow.xml"))
class GameCenterWindow extends Window {
    public function new() {
        super();
    }

    @:bind(playSnakeGame, MouseEvent.CLICK)
    private function onCollapsibleDialog(e) {
        var window = new LetsPlaySnake();
        window.left = 200;
        window.top = 100;
        WindowManager.instance.addWindow(window);    
    }
}

@:build(haxe.ui.macros.ComponentMacros.build("assets/views/snakegame.xml"))
class LetsPlaySnake extends Window {
    public function new() {
        super();
    }
}

