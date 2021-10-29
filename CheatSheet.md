# CHEAT SHEET FOR KEY MAPPINGS
- Use the command, "<Space>cheat" to quickly access this file at any time.
- The following commands are defined in vimrc and maps.vim. NOTE: 4 of the following maps conflict with Vim commands you're used to: mm, mM, mn, mN

# Leader Key: <Space> 
- Leader key is a globally defined key which will be the first key you press for any custom mappings you see here. Vim's own commands take up almost the entire keyboard, so by having the leader key be the first thing pressed in all your mappings, you've freed up unlimited real estate! The leader key is defined near line 30 in the vimrc (press "<Space>vrc" to see it).

# ------- NORMAL MODE -------
# <Leader>q         Quit     
# <Leader>s         Save      
# <Leader>2         Save and source file (use when editing vimrc for changes to take effect)
# <Leader>a         Open new split with empty file
# <Leader>A         Open new tab with empty file (swap tabs with "gt")
# <Leader>t         Open Powershell in current directory
# <Leader>cur       Change working dir. of CURRENT WINDOW to current file
# <Leader>cg        Change GLOBAL working dir. to current file
# <Leader> {h j k l}    Move cursor to adjacent windows. (Example: "<Leader>h")
# <Leader> {H J K L}    Move windows left, down, up, or right. (Example: "<Leader>H")
# <Leader> {- = [ ]}    Resize current window. (Example: "<Leader>=")
# <Leader>w         Access window commands not already mapped here. (Example: "<Leader>w=")
# <Leader>pa        Paste from system clipboard
# <Leader>co        Copy to system clipboard
# <Leader>f         Decrease font size
# <Leader>F         Increase font size
# <Leader>cc        Explore files in dir. of current file
# <Leader>cx        Explore files in working directory
# <Leader>u         Show UndoTree (this is a plugin)
# <Leader>1l        Light background
# <Leader>1d        Dark background
# <Leader>b         Select from buffered files (all files prev. opened in current session)
# <Leader>cd        Select recently used files
# <Leader>cn        Open fzf to select a file
These are for my Smart Marks plugin: (see smartmarks.vim for explanation on how to use)
# mm                Set Global Smart Mark 1
# mM                Set Global Smart Mark 2
# mn                Set Local Smart Mark 1
# mN                Set Local Smart Mark 2

# ------- VISUAL MODE -------
# <Leader>J         Shift current line down
# <Leader>K         Shift current line up

# ------- INSERT MODE -------
# <C-k>,            Expand an Emmet abbreviation in html or css file (See Emmet documentation)
# <Tab>             When pressed in front of a closing ), ", ], }, you'll exit the enclosure
# <Tab>             Auto pair braces/parentheses. (See PearTree documentation)

# ------- QUICK ACCESS -------
Files:
# <Leader>?         Open this cheat sheet in a new split
# <Leader>vrc       vimrc in current window
# <Leader>maps      maps.vim in current window
# <Leader>sets      sets.vim in current window
Directories:
# <Leader>.home     Change working dir. to home
# <Leader>.files    Change working dir. to vimfiles


