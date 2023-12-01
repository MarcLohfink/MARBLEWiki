# Creator Environment
## Back Button does not react
It might occure that you hit the "Back" button but nothing happens. The cause is often Unitys behaviour when exporting or building packages or apps. The static Creator loses the window instance and can not execute commands on it.
1. close the Creator Window (right click on the tab and click "close tab").
2. if step 1. does not work restart Unity.

# Configurations
## Malfunction at first start
If the app does not apply any configs on the first start the app might not initialized its configuration data correctly. MARBLE uses some space in the picture library to store data like configs. On the first start it might happen that it does not get access to write all the data to disk before starting the experience. 
Steps to fix:
make sure that:
1. the directory structure is created correctly --> on the device manager head to "File Explorer > User Folders > Pictures". There has to be the following path: MARBLE > Data > Configs.
2. there are seven config files (config, debugconfig, featureConfig, menuConfig, netconfig, pointerconfig, studyconfig).
3. these config files are not empty (0 bytes).

If one of those issues occure do the following:
1. create the folders stated in step 1.
2. upload all files manually. Therefore chose the "Upload" button, head to the Unity project folder "Assets/_MARBLECreator/Data/Configs" and upload the configs one by one.
3. make sure that the uploaded configs have the right names (config, debugconfig, featureConfig, menuConfig, netconfig, pointerconfig, studyconfig).
4. restart the MARBLE app.