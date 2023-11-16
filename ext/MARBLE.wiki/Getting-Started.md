# Open MARBLE Creator

If the Creator panel does not pop up automatically call it from the top menu.
The figure illustrates that you can find the Creator panel under "MARBLE Creator > Windows > Creator":
![](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/00_Creator_General_07_WindowsCreatorTotalHighlighted.JPG)

As the Creator panel is a simple unity panel you can dock it as any other panel.
See the next figure:
![](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/00_Creator_General_03_CreatorDropdownTotalHighlighted.JPG)

# Create A Project
MARBLE is based on MARBLE Projects. Those are data structures which contain and reference all important data for your session. In order to use MARBLE synchronized on the HoloLense2 devices you need at least one MARBLE Project which you distribute as package (see _[Concept & Architecture - AssetBundles And Updates](https://github.com/FUSEEProjectTeam/MARBLE/wiki/Concept-&-Architecture#asset-bundles-and-updates)_).
To create a MARBLE Project enter a unique name and click "Create New Project". For more information read [MARBLE Projects](https://github.com/FUSEEProjectTeam/MARBLE/wiki/MARBLE-Projects).

# Fill The Project
In order to use your imported models you have to create a new model database and also reference all the necessary configs and settings. Read [MARBLE Projects - Select Configs](https://github.com/FUSEEProjectTeam/MARBLE/wiki/MARBLE-Projects#select-configs) and [Edit Showcase Models](https://github.com/FUSEEProjectTeam/MARBLE/wiki/Edit-Showcase-Models). For the sake of this tutorial reference the "Selected Tools:" and the "Authority Settings:" with the default references starting with the prefix "Default".

# Export Project
After finishing all the steps at [MARBLE Projects](https://github.com/FUSEEProjectTeam/MARBLE/wiki/MARBLE-Projects) you can export the project into a package by pressing the "Export Project" button in the work area.

![](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/01_Features_Project_07_Export.JPG)

When finished Unity will show you the following prompt indicating that the export has finished.

![](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/01_Features_Project_08_FinishedPrompt.JPG)

# Distribute Project
After the project has been successfully exported, it can be selected for distribution in the Session Control window. Select it from the dropdown at "Package Selection:" > "Chose Bundle:". The name of the bundle is always _"marble\_*author name*\_*project name*\_*creation date*\_*creation time*\_*build version*_.
For more information read [Concept & Architecture - AssetBundles And Updates](https://github.com/FUSEEProjectTeam/MARBLE/wiki/Concept-&-Architecture#asset-bundles-and-updates).

![](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/02_SessionControl_00_SelectedBundle.JPG)

# Run Session
Make sure that "Auto Distribution" is enabled or the distribution server is started with the right package and that "Update Assets" is selected.
Then click "Start MARBLE As Host".

![](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/02_SessionControl_01_StartedSession.JPG)

After successfully started the distribution and the session you should see something like in the following image. Clients are now able to join.

![](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/02_SessionControl_03_RunningSession.JPG)

# Clients Connect
Now clients will download the asset package with your configured session/ seminar. Head over to "Session" > "User Overview" to see all connected clients.

![](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/03_Runtime_00_TotalUserOverviewHighlighted.JPG)

First there will only be the "User: admin". This is the host client on the server which serves as an controlling instance. When a client connects it will appear in the overview. 

![](https://github.com/FUSEEProjectTeam/MARBLE/blob/StateServiceProfileRestructure/00_Doku/Images/03_Runtime_00_ConncetedClientOverview.JPG)

# Whats Next?
Now you are free to investigate the model. To manage the session in the creator see XYZ Missing Reference