# roblox-morpher-module
> 🌲⚡️ A simple roblox *modulescript* that let's you morph the player to any existing model / object

### Demo
<img src="https://media2.giphy.com/media/WVkBAKQFeoqZZoJsWt/giphy.gif">

## Pre-requisites
### Model Structure
In order for players to move in models, your model need to have a `Humanoid` component, as well as a `Head`, `HumanoidRootPart`, `Torso` that is properly welded.

#### Example Structure
<img width="214" alt="image" src="https://user-images.githubusercontent.com/6020066/178522621-a2fc72bf-00d3-46bb-beb0-21e409c049a7.png">

## Usage
Copy over the script to your target folder, directory.

### Within a Script
Use this in the context of when you may want to directly call the morphing function such as a localscript for a GUI or for an event trigger.

```lua
-- Import the location of the module --
local morpher = require(workspace["Helper Scripts"].Morpher)

-- Pass along the parameters -- 
morpher.select(playerToMorph, ParentOfMorphingModel)
```

### Bind with a Proximity Prompt
This is a convenience method for when there is a proximity prompt on the model
```lua
-- Import the location of the module --
local morpher = require(workspace["Helper Scripts"].Morpher)

-- Pass along the parameters -- 
morpher.bindPrompt(model)
```

## License
MIT - Use it as you please :) - have fun scripting!
