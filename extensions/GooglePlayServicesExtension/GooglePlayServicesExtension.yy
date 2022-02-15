{
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": 562949953421320,
  "extensionVersion": "3.1.9",
  "packageId": "com.yoyogames.googleplayservicesextension",
  "productId": "",
  "author": "",
  "date": "2018-12-07T11:02:37",
  "license": "Free to use, also for commercial games.",
  "description": "",
  "helpfile": "",
  "iosProps": false,
  "tvosProps": false,
  "androidProps": true,
  "installdir": "",
  "files": [
    {"filename":"GooglePlayServicesExtension.ext","origname":"extensions\\GooglePlayServicesExtension.ext","init":"","final":"","kind":4,"uncompress":false,"functions":[
        {"externalName":"GooglePlayServices_Status","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"GooglePlayServices_Status","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GooglePlayServices_Init","kind":11,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"GooglePlayServices_Init","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"onRevealAchievement","kind":4,"help":"GooglePlayServices_AchievementReveal(achievement_id)","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"GooglePlayServices_AchievementReveal","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        {"value":"0","hidden":false,"resourceVersion":"1.0","name":"GooglePlayServices_SUCCESS","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"1","hidden":false,"resourceVersion":"1.0","name":"GooglePlayServices_SERVICE_MISSING","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"18","hidden":false,"resourceVersion":"1.0","name":"GooglePlayServices_SERVICE_UPDATING","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"2","hidden":false,"resourceVersion":"1.0","name":"GooglePlayServices_SERVICE_VERSION_UPDATE_REQUIRED","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"3","hidden":false,"resourceVersion":"1.0","name":"GooglePlayServices_SERVICE_DISABLED","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"9","hidden":false,"resourceVersion":"1.0","name":"GooglePlayServices_SERVICE_INVALID","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"9818","hidden":false,"resourceVersion":"1.0","name":"GooglePlayServices_EVENT_ID_POST_SCORE","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"9819","hidden":false,"resourceVersion":"1.0","name":"GooglePlayServices_EVENT_ID_POST_ACHIEVEMENT","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"9821","hidden":false,"resourceVersion":"1.0","name":"GooglePlayServices_EVENT_ID_REVEAL_ACHIEVEMENT","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"9820","hidden":false,"resourceVersion":"1.0","name":"GooglePlayServices_EVENT_ID_INCREMENT_ACHIEVEMENT","tags":[],"resourceType":"GMExtensionConstant",},
      ],"ProxyFiles":[],"copyToTargets":562949953421320,"order":[
        {"name":"GooglePlayServices_Status","path":"extensions/GooglePlayServicesExtension/GooglePlayServicesExtension.yy",},
        {"name":"GooglePlayServices_Init","path":"extensions/GooglePlayServicesExtension/GooglePlayServicesExtension.yy",},
        {"name":"GooglePlayServices_AchievementReveal","path":"extensions/GooglePlayServicesExtension/GooglePlayServicesExtension.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
  ],
  "classname": "GoogleMobileAdsExt",
  "tvosclassname": "",
  "tvosdelegatename": "",
  "iosdelegatename": "",
  "androidclassname": "GooglePlayServicesExtension",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "iosplistinject": "",
  "tvosplistinject": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "\r\ncompile 'com.google.android.gms:play-services-games:16.0.0'\r\ncompile 'com.google.android.gms:play-services-auth:16.0.1'\r\n\r\n",
  "androidcodeinjection": "<YYAndroidGradleDependencies>\r\ncompile 'com.google.android.gms:play-services-games:16.0.0'\r\ncompile 'com.google.android.gms:play-services-auth:16.0.1'\r\n\r\n</YYAndroidGradleDependencies>\r\n\r\n",
  "hasConvertedCodeInjection": true,
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": 562949953421320,
  "iosCocoaPods": "",
  "tvosCocoaPods": "",
  "iosCocoaPodDependencies": "",
  "tvosCocoaPodDependencies": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "resourceVersion": "1.2",
  "name": "GooglePlayServicesExtension",
  "tags": [],
  "resourceType": "GMExtension",
}