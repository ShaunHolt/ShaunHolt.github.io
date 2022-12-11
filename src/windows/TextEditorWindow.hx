package windows;

import haxe.ui.core.Screen;
import haxe.ui.events.MouseEvent;
import haxe.ui.containers.menus.Menu;
import haxe.ui.containers.VBox;
import hxe.ui.styles.*;
import haxe.ui.containers.windows.Window;

@:build(haxe.ui.macros.ComponentMacros.build("assets/views/texteditorwindow.xml"))
class TextEditorWindow extends Window {
    public function new() {
        super();

    }

    @:bind(textArea1, MouseEvent.RIGHT_MOUSE_DOWN)
    private function onMenuTarget(e:MouseEvent) {
        var menu = new RightClickMenu();
        menu.left = e.screenX;
        menu.top = e.screenY;
        Screen.instance.addComponent(menu);
    }
   
}

@:xml('
<menu>
    <menu-item text="Cut" />
    <menu-item text="Copy" />
    <menu text="Style">
        <menu-item text="Left Align" />
        <menu-item text="Center Align" />
        <menu-item text="Right Align" />
        <menu-item text="Bold" />
        <menu-item text="Italic" />
        <menu-item text="Uppercase" />
        <menu-item text="Lowercase" />
        <menu-item text="Underline" />
        <menu-item text="Link URL" />
    </menu>
    <menu-item text="Paste" />
    <menu-item text="Delete" />
</menu>
')
class RightClickMenu extends Menu {
}

