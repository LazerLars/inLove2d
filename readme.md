# inLove2d
## Templates for love2d projects

This project aims to provide easy to dive into templates for starting various love2d projects wihtout having to reinvent the deep plate :D  

## Quick start
Copy content of desired sample folder etc "sample4_maid64_eventSystem" to the root folder of your project. 
If this was your project folder. Copy all content of sample4_maid64_eventSystem and paste it in inLove2d and replace everything, if there are existing files.

# Getting started.
Install VSCode  

Install [LOVE2D](https://love2d.org/)  

Make sure Love2d is added to the path:  
### Add love2d to path
windows key + env  

select path -> edit -> new -> add the love folder C:\Program Files\LOVE  

![add to path1](/img/documentation/env_var_1.png)
![add to path2](/img/documentation/env_var_2.png)

open cmd check if love is installed by writing  
love .  
or  
love --version  


Install these extensions in VS CODE
### Extensions 
Lua by Sumneko  

Love2D Support by Pixelbyte Studios

Local Lua Debugger by Tom Blind

![vscode](/img/documentation/vscode_extensions.png)


### Print to termnial
windows
Make terminal prints work:  
Make a conf.lua file with the below in
REMEMBER TO SET conf.lua: 

```lua
function love.conf(t)
	t.console = true
end
```  

for mac:  
if you set t.console = true then a external terminal window will open

In the top of the main.lua file you need to add this, in order to make debugging in VS Code with breakpoints work :  
```lua
if arg[2] == "debug" then
    require("lldebugger").start()
end
```


## Package dependencies
scaling:  
[maid64](https://github.com/adekto/maid64)


# Overview
- UtillityFunctions
  - Helper functions, etc: colorpalettes
- sample2_eventSystem
  - base setup with eventSystem where you can publish/notify events and from desired place subscibe to event to trigger a action
- sample3_maid64_textbasic
  - maid64 scaling for pixel art projects, font is set to look nice to avoid blurred letters, base for text input, work well for textbased game/writing games
- sample4_maid64_eventSystem
  - maid64 scaling for pixel art projects, font is set to look nice to avoid blurred letters,, base setup with eventSystem where you can publish/notify events and from desired place subscibe to event to trigger a action


