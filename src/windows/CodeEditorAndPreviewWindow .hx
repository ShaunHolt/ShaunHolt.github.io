package windows;


import haxe.ui.containers.windows.Window;
import haxe.ui.components.TextArea;
import haxe.ui.components.Label;
import haxe.ui.containers.Box;

@:xml('
    <window title="Code Editor" width="700" height="500">

    <menubar width="100%">
        <menu text="Normal">
            <menuitem text="Item 1" shortcutText="Shortcut" />
            <menuitem text="Item 2 (disabled)" disabled="true" shortcutText="Ctrl+A" />
            <menu text="Sub Menu">
                <menuitem text="Item 1" />
                <menuitem text="Item 2" />
                <menuitem text="Item 3" />
                <menuseparator />
                <menucheckbox text="Item 4" selected="true" />
                <menucheckbox text="Item 5" />
                <menucheckbox text="Item 6" selected="true" />
                <menuseparator />
                <menuoptionbox text="Item 7" />
                <menuoptionbox text="Item 8" />
                <menuoptionbox text="Item 9" selected="true" />
                <menuseparator />
                <menuoptionbox text="Item 10" group="somegroup" />
                <menuoptionbox text="Item 11" group="somegroup" selected="true" />
                <menuoptionbox text="Item 12" group="somegroup" />
            </menu>
            <menuitem text="Item 3" shortcutText="Ctrl+B" />
            <menuitem text="Item 4" shortcutText="Ctrl+C" />
            <menuseparator />
            <menuitem text="Item 5" shortcutText="Ctrl+D" />
        </menu>

        <menu text="Settings">
            <vbox width="100%">
                <listview id="lv2" width="100%" height="150" selectedIndex="1" style="border:none;">
                    <item-renderer layoutName="horizontal" width="100%">
                        <checkbox id="complete" />
                        <label width="100%" id="item" />
                        <image id="image" />
                    </item-renderer>
                    <data>
                        <item complete="false" item="Item 1" image="haxeui-core/styles/default/haxeui_tiny.png" />
                        <item complete="true" item="Item 2" image="haxeui-core/styles/default/haxeui_tiny.png" />
                        <item complete="true" item="Item 3" image="haxeui-core/styles/default/haxeui_tiny.png" />
                        <item complete="false" item="Item 4" image="haxeui-core/styles/default/haxeui_tiny.png" />
                        <item complete="true" item="Item 5" image="haxeui-core/styles/default/haxeui_tiny.png" />
                        <item complete="true" item="Item 6" image="haxeui-core/styles/default/haxeui_tiny.png" />
                        <item complete="false" item="Item 7" image="haxeui-core/styles/default/haxeui_tiny.png" />
                        <item complete="true" item="Item 8" image="haxeui-core/styles/default/haxeui_tiny.png" />
                        <item complete="false" item="Item 9" image="haxeui-core/styles/default/haxeui_tiny.png" />
                    </data>
                </listview>
            </vbox>     
        </menu>    

        
        
        <spacer width="100%" />
        
        <button text="Live Preview" />
        <menu text="Help">
            <menuitem text="Item 1" />
            <menuitem text="Item 2" />
            <menuitem text="Item 3" />
            <menuitem text="Item 4" />
            <menuitem text="Item 5" />
        </menu>
    </menubar>


    <splitter direction="vertical" width="100%" height="100%" verticalAlign="center" horizontalAlign="center">
        <splitter direction="horizontal" width="100%" height="100%">
            <box width="50%" height="100%" style="background-color: #FFAAAA;background-opacity:.3;clip:true;">
                <label text="Html" verticalAlign="center" horizontalAlign="center" />
            <textarea id="body" className="body" width="100%" height="100%" text="" />
            </box>
                <box width="50%" height="100%" style="background-color: #AAFFAA;background-opacity:.3;clip:true;">
                    <label text="IFrame Live Preview" verticalAlign="center" horizontalAlign="center" />
                </box>
        </splitter>
    </splitter>     

    </window>
')
class CodeEditorAndPreviewWindow extends Window {

}    
