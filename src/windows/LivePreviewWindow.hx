package windows;

import haxe.ui.containers.windows.Window;
import haxe.ui.components.Label;
import haxe.ui.containers.Box;

@:xml('
    <window title="Code Editor" width="500" height="500">

                <box width="100%" height="100%" style="background-color: #AAFFAA;background-opacity:.3;clip:true;">
                    <label text="IFrame Live Preview" verticalAlign="center" horizontalAlign="center" />
                </box>

    </window>
')
class LivePreviewWindow extends Window {

}    
