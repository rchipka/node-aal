# node-aal

Node AAL (accessibility abstraction layer) provides cross-platform bindings for
the OS's native accessibility API, which allows interaction with various on-screen
UI elements (windows, menus, etc).

This library uses the cross-platform [AAL](https://github.com/mysql/mysql-workbench/tree/8.0/tools/mga/src/aal)
code written for "MySQL GUI Automator" ([MGA](https://github.com/mysql/mysql-workbench/tree/8.0/tools/mga)),
which is used for the [MySQL Workbench](https://github.com/mysql/mysql-workbench) project.

# Support

 * Linux / Node v4 - v11
 * Windows / Node v4 - v11
 * macOS / Node v6 - v11

### Node v12

This library depends on [SWIG](http://www.swig.org/) to generate native bindings
from source header files.

Unfortunately, SWIG doesn't yet support node v12, so node-aal won't work under
node v12 [until then](https://github.com/swig/swig/issues/1520).

# Exports

```javascript
module.exports = {
  Accessible:
   { [Function: Accessible]
     accessibilitySetup: [Function],
     getByPid: [Function],
     fromPoint: [Function],
     handleUnsupportedError: [Function] },
  Utilities:
   { [Function: Utilities]
     formatTime: [Function],
     toLower: [Function],
     hasPrefix: [Function],
     hasSuffix: [Function],
     splitBySet: [Function],
     split: [Function],
     concat: [Function],
     replaceStringInplace: [Function],
     ws2s: [Function],
     s2ws: [Function],
     getLastError: [Function],
     trimRight: [Function],
     trimLeft: [Function],
     trim: [Function],
     format: [Function],
     normalize: [Function],
     readFile: [Function],
     writeFile: [Function],
     escapeJSONString: [Function] },
  SerializableObject: [Function: SerializableObject],
  Point: [Function: Point],
  Size: [Function: Size],
  Rectangle: [Function: Rectangle],
  TextRange: [Function: TextRange],
  AccessibleProperty: [Function: AccessibleProperty],
  AccessibleAction: [Function: AccessibleAction],
  AccessibleDetails: [Function: AccessibleDetails],
  Hidden: 0,
  Normal: 1,
  Maximized: 2,
  HideOthers: 3,
  SPACES: ' \t\r\n',
  NormalizationForm_NFC: 0,
  NormalizationForm_NFD: 1,
  NormalizationForm_NFKC: 2,
  NormalizationForm_NFKD: 3,
  CheckState_Unchecked: 0,
  CheckState_Checked: 1,
  CheckState_Indeterminate: 2,
  MouseButton_NoButton: 0,
  MouseButton_Left: 1,
  MouseButton_Right: 2,
  MouseButton_Middle: 3,
  Key_NoKey: 0,
  Key_Key0: 1,
  Key_Key1: 2,
  Key_Key2: 3,
  Key_Key3: 4,
  Key_Key4: 5,
  Key_Key5: 6,
  Key_Key6: 7,
  Key_Key7: 8,
  Key_Key8: 9,
  Key_Key9: 10,
  Key_KeyPlus: 11,
  Key_KeyMinus: 12,
  Key_KeyA: 13,
  Key_KeyB: 14,
  Key_KeyC: 15,
  Key_KeyD: 16,
  Key_KeyE: 17,
  Key_KeyF: 18,
  Key_KeyG: 19,
  Key_KeyH: 20,
  Key_KeyI: 21,
  Key_KeyJ: 22,
  Key_KeyK: 23,
  Key_KeyL: 24,
  Key_KeyM: 25,
  Key_KeyN: 26,
  Key_KeyO: 27,
  Key_KeyP: 28,
  Key_KeyQ: 29,
  Key_KeyR: 30,
  Key_KeyS: 31,
  Key_KeyT: 32,
  Key_KeyU: 33,
  Key_KeyV: 34,
  Key_KeyW: 35,
  Key_KeyX: 36,
  Key_KeyY: 37,
  Key_KeyZ: 38,
  Key_KeyTab: 39,
  Key_KeyBackspace: 40,
  Key_KeyReturn: 41,
  Key_KeyDot: 42,
  Key_KeyComma: 43,
  Key_KeyColon: 44,
  Key_KeySlash: 45,
  Key_KeyBackslash: 46,
  Key_KeyBraceLeft: 47,
  Key_KeyBraceRight: 48,
  Key_KeyDelete: 49,
  Key_KeyUp: 50,
  Key_KeyEscape: 51,
  Key_KeyDown: 52,
  Key_KeyLeft: 53,
  Key_KeyRight: 54,
  Key_KeyPageUp: 55,
  Key_KeyPageDown: 56,
  Key_KeyEnd: 57,
  Key_KeyHome: 58,
  Key_KeySpace: 59,
  Key_KeyF1: 60,
  Key_KeyF2: 61,
  Key_KeyF3: 62,
  Key_KeyF4: 63,
  Key_KeyF5: 64,
  Key_KeyF6: 65,
  Key_KeyF7: 66,
  Key_KeyF8: 67,
  Key_KeyF9: 68,
  Key_KeyF10: 69,
  Key_KeyF11: 70,
  Key_KeyF12: 71,
  Key_Sentinel: 72,
  Modifier_NoModifier: 0,
  Modifier_ShiftLeft: 1,
  Modifier_ShiftRight: 2,
  Modifier_ControlLeft: 4,
  Modifier_ControlRight: 8,
  Modifier_AltLeft: 16,
  Modifier_AltRight: 32,
  Modifier_MetaLeft: 64,
  Modifier_MetaRight: 128,
  Role_Unknown: 0,
  Role_Any: 1,
  Role_Application: 2,
  Role_Window: 3,
  Role_Button: 4,
  Role_RadioButton: 5,
  Role_RadioGroup: 6,
  Role_CheckBox: 7,
  Role_ComboBox: 8,
  Role_Expander: 9,
  Role_Grid: 10,
  Role_TextBox: 11,
  Role_TreeView: 12,
  Role_Label: 13,
  Role_Pane: 14,
  Role_Menu: 15,
  Role_MenuBar: 16,
  Role_MenuItem: 17,
  Role_Separator: 18,
  Role_SplitContainer: 19,
  Role_Splitter: 20,
  Role_GroupBox: 21,
  Role_Image: 22,
  Role_TabView: 23,
  Role_TabPage: 24,
  Role_DatePicker: 25,
  Role_Row: 26,
  Role_Column: 27,
  Role_Cell: 28,
  Role_ScrollBox: 29,
  Role_Slider: 30,
  Role_Stepper: 31,
  Role_List: 32,
  Role_IconView: 33,
  Role_ProgressIndicator: 34,
  Role_BusyIndicator: 35,
  Role_ScrollBar: 36,
  Role_ScrollThumb: 37,
  Role_HyperLink: 38,
  Role_Sentinel: 39,
  Success: 0,
  ScriptError: 1,
  RunLoopError: 2,
  Other: 3,
  CompletionFailure: 4,
  highlightWindow: null,
  attributeToPropertyMap: SwigProxy {},
  ignoredAttributes: SwigProxy {},
  subRoleMap: SwigProxy {},
  references: SwigProxy {},
  actionMap: SwigProxy {},
  keyCodeMap: SwigProxy {},
  keyToString: [Function],
  modifierToString: [Function],
  containsModifier: [Function],
  modifierFromNumber: [Function],
  methodNotImplemented: [Function],
  roleToString: [Function],
  roleToFriendlyString: [Function],
  roleToJSType: [Function],
  _AXUIElementGetWindow: [Function],
  getNativeRole: [Function],
  nativeRoleIsOneOf: [Function],
  eventTypeFromButton: [Function],
  sendMouseEvent: [Function],
  modifierToFlags: [Function],
  };
  ```
  
## Accessible

```c++

static bool accessibilitySetup()
static AccessibleRef getByPid(const int pid)

AccessibleRef clone()

bool isRoot()
bool isValid()
size_t getHash()

bool canFocus()
bool isFocused()
void setFocused()

bool isEnabled()
void setEnabled(bool value)

bool isEditable()
bool isReadOnly()
bool isSecure()
bool isHorizontal()

CheckState getCheckState()
void setCheckState(CheckState state)

bool isExpandable()
bool isExpanded()
void setExpanded(bool value)

double getValue()
double getMaxValue()
double getMinValue()
void setValue(double value)
double getRange()

std::string getActiveTabPage()
void setActiveTabPage(std::string& name)
void activate()
bool isActiveTab()

bool isSelected()
void setSelected(bool value)

double getScrollPosition()
void setScrollPosition(double value)

void showMenu()
bool menuShown()

bool equals(Accessible *other)

AccessibleRef getParent()
AccessibleRef getContainingRow()
AccessibleRef getHorizontalScrollBar()
AccessibleRef getVerticalScrollBar()
AccessibleRef getHeader()
AccessibleRef getCloseButton()

void children(AccessibleList &result, bool recursive)
AccessibleList children()
AccessibleList windows()
AccessibleList tabPages()
AccessibleList rows()
AccessibleList rowEntries()
AccessibleList columns()
AccessibleList columnEntries()

static AccessibleRef fromPoint(geometry::Point point, Accessible *application)

std::string getID()
std::string getName()
std::string getHelp()
aal::Role getRole() { return _role; }
bool isInternal()

geometry::Rectangle getBounds(bool screenCoordinates)
void setBounds(geometry::Rectangle& bounds)

size_t getCaretPosition()
void setCaretPosition(size_t position)

size_t getCharacterCount()

std::set<size_t> getSelectedIndexes()
void setSelectedIndexes(std::set<size_t>& indexes)

std::string getText(); // For text *content* only (edits, labels etc.).
void setText(std::string& text)

std::string getTitle(); // For all captions (buttons, menu items, windows etc.).
void setTitle(std::string& text)

void insertText(const std::size_t offset, std::string &text)
std::string getDescription()

std::string getSelectedText()
void setSelectedText(std::string& text)

aal::TextRange getSelectionRange()
void setSelectionRange(TextRange range)

std::string getDate()
void setDate(std::string& date)

void mouseDown(geometry::Point pos, MouseButton button = MouseButton::Left)
void mouseUp(geometry::Point pos, MouseButton button = MouseButton::Left)
void mouseMove(geometry::Point pos)
void mouseMoveTo(geometry::Point pos)
void mouseDrag(geometry::Point source, geometry::Point target, MouseButton button = MouseButton::Left)
geometry::Point getMousePosition()

void keyDown(aal::Key k, aal::Modifier modifier)
void keyUp(aal::Key k, aal::Modifier modifier)
void keyPress(aal::Key k, aal::Modifier modifier)
void typeString(std::string& input)

void click()
void confirm(bool checkError = true)
void stepUp()
void stepDown()
void scrollLeft()
void scrollRight()
void scrollUp()
void scrollDown()
void increment()
void decrement()

void show()
void bringToFront()
void highlight(NSColor *color)
void removeHighlight()
bool isHighlightActive()

std::string getPlatformRoleName()
std::string dump(bool recursive = false, std::string& indentation = "")
void printNativeInfo()
AccessibleDetails getDetails()

void takeScreenShot(std::string& path, bool onlyWindow, geometry::Rectangle rect)
void saveImage(std::string& path)

static void handleUnsupportedError(AXError error, std::string& attribute)
```
  
## Roles
```c++
enum class Role {
    Unknown = 0,
    Any,
    Application,
    Window,
    Button,
    RadioButton,
    RadioGroup,
    CheckBox,
    ComboBox,
    Expander, // A disclosure triangle or similar to expand/collapse an area.
    Grid,
    TextBox,
    TreeView,
    Label,
    Pane, // A plain box with no decoration.
    Menu,
    MenuBar, // Also known as Toolbar.
    MenuItem,
    Separator,
    SplitContainer,
    Splitter, // The draggable area between 2 split areas.
    GroupBox,
    Image,
    TabView,
    TabPage,
    DatePicker,
    Row,    // A row in a treeview, icon or grid view.
    Column, // A column in a multi column treeview or grid view.
    Cell,   // A cell in a row.
    ScrollBox,
    Slider,
    Stepper, // Also known as up/down or spinner control.
    List,    // An element consisting of equally structured items, often in custom layouts.
    IconView, // A control with icons + text in a grid like manner (list view on Windows).
    ProgressIndicator, // A determinate progress indicator.
    BusyIndicator,     // A indeterminate progress indicator.
    ScrollBar,
    ScrollThumb,
    HyperLink,
    Sentinel // The last entry, for iteration.
 };
 ```
