# My GVim Configuration
Here's my entire vim configuration. I use Plug as my plugin manager, and my &lt;leader&gt; key is the spacebar.

### How to use it:
(I use windows. If you're on a unix system, this might not work smoothly.)
1. In your home directory, rename or remove your existing ```_vimrc``` file, and make a backup of your ```/vimfiles``` folder under a different name. 
2. Paste the contents of this repo into your existing ```/vimfiles``` folder, and accept any prompts to replace files. Naming conventions must be accurate in vimfiles, so there should be no "foldername - Copy" instances. If there are, correct them. 
3. Remove my .gitignore file. Create the folder ```/tmp``` inside ```/vimfiles``` (In the ```vimrc``` I tell Vim to store swap files in ```/tmp```).
4. As soon as you open GVim, run ```:PlugInstall``` to install the plugins listed in the vimrc.
- The ```CheatSheet.md``` file will be VERY helpful for learning my key commands. You can access access it at any time by typing ```<Space>cheat```.
- In addition to my vimrc, I do a lot of my configuration in my ```/plugin``` folder, where you'll find ```sets.vim```, ```maps.vim```, and more. Keep in mind, vim reads your vimrc BEFORE reading the files in your plugin folder.
- At the bottom of the vimrc, my personal mappings for quick access directories and files are custom to my workflow. You'll want to change these to meet your needs!
