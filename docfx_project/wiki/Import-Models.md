The Import panel provides an easy way to import supported models into the Creator and thus into Unity.

## Navigate to import

Navigate to the "Import" menu item in the Creator. A window opens where you can import models to use with MARBLE (see below).
You will see the following labels and options:

## Overview
| Label | Content |
| ------------- | ------------- |
| **polygon count warning** | For the best and most stable results only use models with around 100k polygons|
| **supported file extensions** | At the moment you can only import .obj models with the importer. All other unity supported files have to be imported manually.|
| **add subfolder destination** | Use this to create a folder in which all the models will be imported to. The models will still be independently imported in their own subfolder. |
| **Import** | Will import the selected .obj either to the default import path or the default import path + subfolder.  |
| **Import all** | Will get all .obj files of the selected directory and import them either to the default import path or the default import path + subfolder.  |

Beaware that this can take some time.
After successful import, the models can be integrated into the seminars.

<div style="text-align:center"><img src="images/screenshots/01_Features_Import_00_CreatorTotalHighlighted.JPG" width="60%" /></div>

## Subfolders
The subfolder text area is a quick way to import models into a specific subfolder, e.g. if you want to group all models under a specific term. Nevertheless, each model gets its own folder, named after its model name, where all related files are stored.
If this is not your first time entering a subfolder, you will be prompted to do so. Select "Do not bug me again!" to avoid being bothered with the prompt again.

<div style="text-align:center"><img src="images/screenshots/01_Features_Import_01_SubfolderNotification.JPG" width="60%" /></div>


## Location for advanced users
The default import path is _"Assets/Models/\_User/Models/\*Subfolder\*"_.

<div style="text-align:center"><img src="https://user-images.githubusercontent.com/77617650/232780996-21d44cdf-8bcc-4d1c-9d7c-22698fa26cc4.png" width="60%" /></div>

## What´s Next?
After the model is imported, it can be used in the "Edit Showcase Model" window.
<br><img src="images/icons/Warning_Texture.png" width="10" /> Be aware that the importer only copies the models into Unity. Especially .obj models are very error-prone. If a texture does not sit properly on the model, it is advisable to inspect the model first.
* <a href="MARBLE-Projects">Create a MARBLE Project</a>
* <a href="Edit-Showcase-Database">Create a showcase database for your seminar</a>
* <a href="Edit-Showcase-Models">Edit your imported model to be used in your seminar</a>