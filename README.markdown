# Preferences Test

Mac OSX project that demonstrates how to use a separate nib and window
controller for Preferences.

# Interface Builder

Add a new window xib named "Preferences".

### MainMenu.xib

* Add NSObject to document
  * 6 Class - PreferencesController

* Main Menu -> Menu Item (Preferences)
  * 5 Sent Actions - PreferencesController -> showWindow:

### Preferences.xib

* File's Owner
  * 6 Class - PreferencesController (if not set, will not focus on load)
  * 5 window - this nib

* Window
  * 5 window - File's Owner

* NSTableView
  * 1 Highlight - Source List
  * 1 Empty - unchecked
  * 1 Headers - unchecked
  * 5 delegate - File's Owner: Preferences Controller
  * 5 data source - File's Owner: Preferences Controller

* NSTableColumn
  * 1 Editable - unchecked

* NSTabView (add pref panes to NSTabViewItem children)
  * 1 Style - tabless
  * 1 Default Tab - Twitter (or whatever your default tab should be)

* NSTabViewItem (as many as you need, edit in NSTableView inspect)
  * 1 Title - rename each title to be more descriptive

# Code

* Add PreferencesController
  * inherit NSWindowController
  * adopt NSTableViewDataSource, NSTableViewDelegate protocols
  * override -(id) init to initWithWindowNibName:@"Preferences"
  * when tableViewSelectionDidChange:, tell tabless NSTabView to switch to
    corresponding tab.