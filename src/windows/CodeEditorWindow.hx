package windows;

import haxe.ui.containers.windows.Window;
import haxe.ui.components.*;
import haxe.ui.containers.*;

@:xml('
    <window title="Code Editor" width="700" height="500">

    <splitter direction="vertical" width="100%" height="100%" verticalAlign="center" horizontalAlign="center">
        <splitter direction="horizontal" width="100%" height="100%">
            <box width="50%" height="100%" style="background-color: #FFAAAA;background-opacity:.3;clip:true;">
                <label text="Html" verticalAlign="center" horizontalAlign="center" />
            <textarea width="100%" height="100%" text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam laoreet felis sit amet vulputate gravida. Duis ac neque aliquam, aliquet justo eu, malesuada sapien. Vestibulum aliquam lorem eu diam vestibulum vulputate. Fusce erat arcu, rutrum at mattis quis, vestibulum hendrerit erat. Sed nec velit lacinia, posuere sem ut, interdum diam. Praesent faucibus dignissim libero non pulvinar. In finibus, tellus et consectetur scelerisque, neque lacus lobortis lorem, ac consectetur ipsum nulla placerat turpis. Proin blandit, odio ut fermentum malesuada, enim eros ultricies quam, ut cursus eros dolor eu eros. Nam interdum consequat mi, ut sodales turpis. Morbi euismod, libero sit amet ultrices venenatis, eros libero blandit arcu, eu pharetra neque leo eget ligula. Pellentesque quis mattis ante. Ut ac odio ullamcorper, bibendum nisi eu, placerat ante. Donec in quam non felis pulvinar vehicula non non dui. Aliquam erat volutpat. Phasellus a vehicula quam, at posuere nisl. Sed nulla nulla, placerat sed arcu non, tincidunt pretium erat." />

            </box>
                <box width="50%" height="100%" style="background-color: #AAFFAA;background-opacity:.3;clip:true;">
                    <label text="IFrame Live Preview" verticalAlign="center" horizontalAlign="center" />
                </box>
        </splitter>
    </splitter>     

    </window>
')
class CodeEditorWindow extends Window {
    
}