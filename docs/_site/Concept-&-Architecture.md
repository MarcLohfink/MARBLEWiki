#Concept & Architecture

In order to use the Creator as it is intended, it is useful to understand the basics about the concept and architecture of the software.

# Configurations & Asset Updates

## Layers of Configurations
The control of the functions and the way they are accessed vary from function to function. Basically, there are two different levels for settings.
The first and lowest is the **"Config" level**. The options to be set via the "Config" files determine which features can be controlled and used in the session at all.
This also includes, for example, which features are displayed in the user's hand menu. Features that are not enabled via the "Configs" cannot be controlled by the software at runtime.
The second level is the **authority level**, which should not be confused with the network authority of synchronised objects.
The authority level determines for each profile which of the features may be used by the user of the profile. It is essential that the features are also authorised by the "Config" level. If the "Config" level prohibits a feature, it will not be made available regardless of the authority level.
This means that every available feature in a session must be activated in the "Configs" in order to be used. If a profile is to use a feature that is activated in the "Configs", its authorisation level must be adjusted.

## Asset Bundles and Updates
In MARBLE, sessions are represented as "asset bundles". These bundles contain all the necessary information and models for a session. They also contain configurations and authorisation levels for each individual client. Each session can therefore have its own configurations and authorisation levels depending on its area of use.
By default, each client requests the current asset bundle from the server and updates all information (e.g. configurations, permission levels, settings, models, etc.) based on these bundles. As a result, each session on each client has the same settings and data.
However, it is possible to bypass this behaviour and inject clients with individual configurations and settings.
To do this, it is necessary to understand MARBLE's asset update process.
When the MARBLE Player is started, it first loads the configuration files onto the respective systems. This is important to avoid unwanted session settings from the asset bundles. After loading these configurations, the update process checks which data should be requested.The "requestAnchor", "requestConfig" and "requestAssets" configs of the "NetworkConfig" or "netconfig.txt" file determine which contents are to be requested (currently only the asset bundles can be requested).
After the data has been requested and hopefully received, the update process checks which of this data should actually be used in the current session. Important for this process are the configs "updateIp", "updateConfigs" and "updateAssets".

## Irreversible Bypassing
To avoid irreversible bypassing, you should never create a session/asset bundle with the "updateConfigs" option disabled (set to "0"). This will cause the client to never use the asset bundle configurations, which means you will need to manually change this configuration in the machine's locally stored configuration file or connect each client and change this value in the Creator's "Edit Configs" menu.

## Update Configs and Effects
In the following table you can check which behaviour is to expected.

| Identifier | Expected Behaviour |
| ------------- | ------------- |
| requestAnchor | _Will request the stored spatial anchor from the server. Currently not implemented._ |
| requestConfigs | _Requests and updates all configuration files regardless of the asset bundle. This allows a session to update data such as models without using the session's saved configurations. Currently not implemented._ |
| requestAssets | Requests the asset bundle to be used in the session. This results in a deadlock if the server is not running but the client requests the asset bundles. |
| | |
| updateIP | Determines whether the IP address of the asset bundle should be used as the server address. The IP address of the server is stored in the Configs. As the server address may change between the different uses of an asset bundle, the stored IP address in a bundle can be outdated. The server address can be changed locally in the "netconfig.txt". If this option is not enabled, the client uses its IP address from the local network configuration file. The recommended option is "disabled" ("0"). |
| updateConfigs | Determines whether to use the asset bundle configurations. If this option is disabled, the local configurations of the configuration files are not updated with the asset bundle configurations. This may result in a irreversible bypassing. See [Irreversible Bypassing](https://github.com/FUSEEProjectTeam/MARBLE/wiki/Concept-&-Architecture#irreversible-bypassing). The recommended option is "enabled" ("1"). |
| updateAssets | Determines whether the assets should be updated with the received asset bundle. With the exception of the Configs (which are controlled with "updateConfigs"), the asset bundle data will overwrite the locally stored data depending on this config. If "requestAssets" is disabled but "updateAsstes" is enabled, this means that the project will be updated with the first available asset bundle. If no asset bundle is available, the last used project is loaded (not asset bundle(!)). If this project is invalid, the default project is loaded ("Santa Maria de Melque"). |

# System Information
## HoloLens2 Permission
The MARBLE Player application requires access to the pictures library. It stores its application data (e.g. configurations, asset bundles, etc.) in the library to prevent it from being deleted when a new app version is installed. It does not read out any personal infromation.