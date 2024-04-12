# RequireSystem
Create by Nishikoto

### How do you use the system?
Create your module file.
`myModule.lua`
```lua
local myTable = {}

function myTable.test()
    print('Coucou justgod!')
end

return myTable
```

`myModule_2.lua`
```lua
function myFirstFunction(param1, param2, ...)
    print(('myFirstFunction say: [param1: %s|param2: %s|args: %s]'):format(param1, param2, ...))
end

return myFirstFunction
```

And now in a file that you declare in your fxmanifest, called the system like that.
`server.lua`
```lua
RequireSystem = exports['RequireSystem']:nrequire();

local myTable = RequireSystem.require('yourScriptName', 'myModule');
local myFunction = RequireSystem.require('yourScriptName', 'myModule_2');

myTable.test() --output: Coucou justgod!
myFunction('Nishi', 'Koto', 'args1', 'args2', 'args3') --output: myFirstFunction say: [param1: Nishi|param2: Koto|args: args1 args2 args3]
```

This script can be used and modified by anyone who wishes.