MARBLE and the current version are experimental research versions. There is no guarantee that they will properly work and may cause a lot of troubleshooting to get it to work. MARBLE depends on a lot of settings, plugins and third party libraries. The following guide will lead you through the most important installation steps. The core of the MARBLE app is the current package »_marble_mordor_1.0.0_« which you have to [request from the author](mailto:marc-alexander.lohfink@hfu.eu).
If you have access to the unity package, follow this guide (chronologically) to run MARBLE on your machine.

# Visual Studio
To properly deploy new app versions you need to follow the instructions from: [Microsoft Learn - Mixed Reality](https://learn.microsoft.com/en-us/windows/mixed-reality/develop/install-the-tools#installation-checklist).

# Unity 
## Version
MARBLE runs on 2020.3.13f1. Make sure to also install the UWP module.

## Packages
The latest version of MARBLE may not require all of the following packages. To enable better troubleshooting, they are listed below:
* Editor Coroutines 1.0.0
* OpenXR Plugin 1.3.1
* TextMeshPro 3.0.6
* Windows XR Plugin 4.5.0
* XR Plugin Management 4.2.1

## Mixed Reality Toolkit
MARBLE was developed with MRTK 2.7.3. Make sure to have the following packages:

### MRTK Dependencies

* Mixed Reality Toolkit Examples 2.7.3
* Mixed Reality Toolkit Extensions 2.7.3
* Mixed Reality Toolkit Foundation 2.7.3
* Mixed Reality Toolkit Standard Assets 2.7.3
* Mixed Reality Toolkit Tools 2.7.3

Platform Support
* Mixed Reality OpenXR Plugin 1.3.1
* Mixed Reality Scene Understanding 0.6.0

World Locking Tools
* WLT Samples 1.5.8
* WLT Core 1.5.8

### MRTK Install 
You will probably have to setup MRTK after adding the packages. Use the following options:
* Unity OpenXR plugin (recommended)
* Next resolve all problems. As the "Interaction Profile" select "Eye Gaze Interaction Profile" and "Microsoft Hand Interaction Profile".
* Click "Apply Settings" and then "Next"
* Make sure everything is selected. Click "Apply" and with this restart the editor.
* Head to Mixed Reality > Toolkit > Utilities > Configure Project for MRTK to reopen the MRTK setup window
* Import the TMP Essentials
* Got it, next
* Done

## Mirror API
MARBLE uses the [Mirror-API](https://mirror-networking.com/). It uses the 57.0.0 version.

## Build Settings
The build settings are only mandatory if you want to build new app versions. If you just want to run MARBLE as Creator skip this.
Head to File > Build Settings
Make user that your target platform is "Universial Windows Platform". 
* Archtiecture: ARM64
* Build Type: D3D Project
* Target SDK Version: 10.0.22621.0
* Minimum Platform Version: 10.0.10240.0

## Scene
The main scene of MARBLE is the "HoloLens2Setup" scene. Make sure that this scene is the first scene executed (File > Build Settings > Scenes in Build).
You need at least the following three scenes at their indices: 
* Scenes/Setup at 1, 
* Scenes/ShowcaseRoom/ShowcaseRoom at 3 and
* Scenes/ShowcaseRoom/MainMenu_NoUpdater at 8.

## Tags & Layers
As Unity does not export tags and layers you have to add the folloing order of tags and layers. Therefore head to Edit > Project Settings > Tags and Layers. 
Tags:
* DirectionalLight
* DirectionalLightReceiver
Layers:
* Default
* TransparentFX
* Ignore Raycast
* _leave it empty_
* Water
* UI
* Model
* MainDirectionalLight
* WorldUI
* MsgTool
* EventBox
* CaputreArea
* DraggableBox
* PopupPin
* ModelNoTouch
* IgnoreLayering
* _Skip the next until User Layer 31_ > Spatial Awareness

# What´s Next?

* <a href="Creator-Overview">Get an overview of the MARBLE Creator</a>
* <a href="Getting-Started">Get Started</a>
* <a href="Quick-Fix-&-Workarounds">Read the Quick Fix & Workarounds</a>