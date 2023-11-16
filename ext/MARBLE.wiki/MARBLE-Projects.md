The heart of a MARBLE session (or seminar/ lecture) are the MARBLE projects. In a MARBLE project all necessary information is gathered and can be exported as _AssetBundle_.

# MARBLE Project Content
A MARBLE Project consists of the following components:
| *Component* | *Description* |
|---|---|
| **Author Name** | Name of the author. |
| **Project Name** | Name of the project. <img src="https://user-images.githubusercontent.com/77617650/232796844-1789eeab-5bb9-4b2e-b7be-162fee8c4959.png" width="10" /> Be aware that changing this name also changes the project's file name. |
| **Selected Models** | All shown models for the project/ session are managed in a database. Add a specific model database to the project to be able to show its models during a session. |
| **Selected Tools** | All usable tools in the project/ session are managed in a database. Add a specific tool database to the project to be able to use its tools during a session.|
| **Authority Settings** | Add a database for all the authority settings which are used to determine what the user is allowed to do.|
| **Config Files** | Configuration files can be used to configure different areas of the application depending on the use case of the session. <ul> <li>Main Config - General settings, e.g. whether to skip the main menu.</li> <li>Network Config - Network-related settings like ip-adress of the server or asset update parameters.</li> <li>Menu Config - Which features should be shown in the main and hand menus.</li> <li>Feature Config - Which features should be enabled during the session.</li> <li>Pointer Config - How pointers are presented during the session, e.g. whether they are enabled from the beginning of the session for everyone.</li></ul>|

<img src="https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/M/Assets/_MARBLECreator/Data/Images/Warning_Texture.png" width="10" /> 
Be aware that changing settings can cause unpredictable behavior or even cause an application to stop launching.

# Navigate to MARBLE Projects
Navigate to the menu item "Edit MARBLE Projects" to manage your projects (see below).
Here you can either create or edit a project.

![grafik](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/01_Features_Project_00_Highlighted.JPG)


# Create a new project
To create a new project enter a project name in the project name field and click on the "Create new Project" button (see figure).

![grafik](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/01_Features_Project_01_CreatedProjectShortHighlighted.JPG)


# Open an existing project
To open an existing project just click on the "Select Project" button (see figure) and select a project from the pop up.

![grafik](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/01_Features_Project_01_OpenProjectShortHighlighted.JPG)

Open projects do not have any references. The Creator will indicate which references are missing by displaying a little warning sign (<img src="https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/M/Assets/_MARBLECreator/Data/Images/Warning_Texture.png" width="10" />) next to it. It is also recommended to change the author name.

![](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/01_Features_Project_01_CreatedProject.JPG)

# Project Meta
You can change the project meta in the work area. While changing the author has no significant effect, changing the project name causes the file in which the project is stored to be renamed as well.

![](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/01_Features_Project_02_ChangeProjectMetaDetail.JPG)

# Databases
In the section "Databases" you are able to link model and tool databases with all the models and tools you want to use in the session.

<img src="https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/M/Assets/_MARBLECreator/Data/Images/Warning_Texture.png" width="10" /> You can reference databases with the prefix "Default" but you should not edit them.<br>
<img src="https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/M/Assets/_MARBLECreator/Data/Images/Warning_Texture.png" width="10" /> You should never reference databases with the prefix "Runtime"!

## Showcase Model DB
The showcase model db contains all models which can be displayed in one session. Either create a new database by clicking "Create DB" or reference a already existing one. You can use a database in as many project as you want. Editing an existing database will also change it for all other projects in which it is referenced.
In the following image the models database name is changed. After clicking "Create DB" a new Showcase-Model-DB will be created with the respective name.

![](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/01_Features_Project_02_ChangeModelToolDBDetail.JPG)

<img src="https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/M/Assets/_MARBLECreator/Data/Images/Warning_Texture.png" width="10" /> Even there is no restriction in the amount of models in a database, I recommend not to over do it.

## Tool DB
A tool db contains all tools which can be spawned in the scene next to the main showcase model. As this is still work in progress and there is no good tool editor you should relay on the existing tool db with the prefix "Default".

# Select Authoriy Settings
Authrority Settings are abstract concept for giving clients the possibility to interact with the features of MARBLE. For more information see [Concept & Architecture - Layers of Configurations](https://github.com/FUSEEProjectTeam/MARBLE/wiki/Concept-&-Architecture#layers-of-configurations).
To create a new authority settings database you should first select a database from which you want to create your new one. 

<img src="https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/M/Assets/_MARBLECreator/Data/Images/Warning_Texture.png" width="10" /> It is highly recommended not to add or remove existing authority levels!
<img src="https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/M/Assets/_MARBLECreator/Data/Images/Warning_Texture.png" width="10" /> You can reference databases with the prefix "Default" but you should not edit them.<br>
<img src="https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/M/Assets/_MARBLECreator/Data/Images/Warning_Texture.png" width="10" /> You should never reference databases with the prefix "Runtime"!

# Select Configs
In order to export a project you have to assign config files. By default you can enter a name and click on "Create" to create a new config file which will hold its own settings. You can also assign an existing config file.
In the figure below the Main Config file was created with the unique name "TestingMainConfig". For the Network Config the default config file was assigned. The Feature, Menu and Pointer Configs are neither assigned nor created. 
 
![grafik](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/01_Features_Project_04_ChangeConfigs.JPG)<br>
After having created or assigned a config file, the editing of those files is available by clicking on "Edit" on the right side of each config.

The button "Copy" will create a deep copy of the current assigned config file.

<img src="https://user-images.githubusercontent.com/77617650/232796844-1789eeab-5bb9-4b2e-b7be-162fee8c4959.png" width="10" /> 
If you are unsure what to assign or how to configure the files, just assign the default files and copy them by pressing the "Copy"-button on the right. From there on you can change the settings of the file.<br>
<img src="https://user-images.githubusercontent.com/77617650/232796844-1789eeab-5bb9-4b2e-b7be-162fee8c4959.png" width="10" /> 
Be aware that you assign the correct files to the correct fields. For example, assigning a main config file to the menu config reference field can lead to unpredictable behaviour.<br>
<img src="https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/M/Assets/_MARBLECreator/Data/Images/Warning_Texture.png" width="10" /> You can reference databases with the prefix "Default" but you should not edit them.<br>
<img src="https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/M/Assets/_MARBLECreator/Data/Images/Warning_Texture.png" width="10" /> You should never reference databases with the prefix "Runtime"!

# Paths
While not recommended you can change the paths where the project should be exported to. Foldout the "Show Paths" and enter a absolute path you want the export to be saved at. The path which is displayed is the absolute path to the assets in the unity folder.

![](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/01_Features_Project_06_PathEditHighlight.JPG)

# What's Next?
* Edit a Showcase Database
* [Edit a Showcase Model](https://github.com/FUSEEProjectTeam/MARBLE/wiki/Edit-Showcase-Models) 
* Edit a Config
* Export the project.