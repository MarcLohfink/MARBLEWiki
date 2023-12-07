A showcase database is a collection of models which can be used in a session/ seminar and are packed into a package when exporting a project.
Basically you can add as many models as you want but be aware that this can cause long export times and also lead to memory exceptions.

## Navigation
Via "Edit MARBLE Project" > "Edit ShowcaseDB" the model database of the currently selected project can be edited.
![grafik](https://user-images.githubusercontent.com/77617650/232824075-61ebfb41-20c7-4e5f-bf37-8ea622c829ce.png)

## Add & Remove Models
By clicking on "Add" models can be added to the database. When added also all "submodels" will be added automatically if they arent already added.

![grafik](https://user-images.githubusercontent.com/77617650/232824808-1ff61505-6306-4cf1-a2cf-3c841ec2070e.png)

Every added model has its own "menu" on the right side from which the model can be opened, checked or removed. Removing a model does not automatically remove its submodels. Removing submodels without changing the linkage of the "main" model can lead to unpredictable behaviour when the removed submodel is called from the main model.



# Pitfalls
<img src="images/icons/Warning_Texture.png" width="10" /> Do not over do it. Do not put every model for every session/ seminar into one database. This is not the intention of the underlying design.
<br/><img src="images/icons/Warning_Texture.png" width="10" /> Do not add "pin loops". Every database needs one start model from which all pins/ details can be accessed. Do not reference this model in another model.
