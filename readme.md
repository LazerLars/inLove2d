# inLove2d
## Templates for love2d projects

This project aims to provide easy to dive into tempaltes for starting various love2d projects wihtout having to reinvent the deep plate :D  

Under the samlples folder you find various structures to use, you should copy the content of the subfolder baseline you want "sample1", "sample2" and copy it to your base project. This means in this project if would be placing the files at the root folder.

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
## 


