A tool database is a list holding all tools which should be available during a session.
Basically you can add as many tools as you want but be aware that this can cause long export times and also lead to memory exceptions.

## Navigation
Via "Edit MARBLE Project" > "Edit ToolDB" the model database of the currently selected project can be edited.
![grafik](https://user-images.githubusercontent.com/77617650/232829477-49bc5fa8-2e73-453d-9fbf-3e6b37889a95.png)

## Add & Remove Tools
Currently, adding tools is implemented, but not supported in a user-friendly manner.
In order to add a new tool, you have to create a new tool by deriving a new prefab from the "TB_Tool_grabbable_network" and one from "TB_Tool_grabbable". In prefab mode you have to add the desired model and functionality to both prefabs! After this process you can add a new tool to the tool database and reference the derived "TB_Tool_grabbable" in the "Offline Tool" field and the derived "TB_Tool_grabbable_network" in the "Online Tool" field. 
Further you have to find the "MARBLE_NetworkManager" in the project panel, which controls the network session at runtime. Add the online representative of the new tool to the "Registered Spawnable Prefabs" list. Finally, add the position of the new tool in the "Registered Spawnable Prefabs" list (starting at 0) to the newly added tool in the tool database under "Net Manager Id".
![grafik](https://user-images.githubusercontent.com/77617650/232827111-ee9fd7af-b76a-4b70-8220-dae0d9987d45.png)