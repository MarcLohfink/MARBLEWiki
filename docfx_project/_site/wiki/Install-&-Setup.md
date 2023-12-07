# Visual Studio
To properly deploy new app versions you need to follow the instructions from: [Microsoft Learn - Mixed Reality](https://learn.microsoft.com/en-us/windows/mixed-reality/develop/install-the-tools#installation-checklist).

# Unity 
## Version
MARBLE runs on 2020.3.13f1. Make sure to also install the UWP module.

## Scene
The main scene of MARBLE is the "HoloLens2Setup" scene. Make sure that this scene is the first scene executed (File > Build Settings > Scenes in Build).
You need at least the following three scenes at their indices: Scenes/Setup at 1, Scenes/ShowcaseRoom/ShowcaseRoom at 3 andScenes/ShowcaseRoom/MainMenu_NoUpdater at 8.