# Flutter Localization π 
Made for Zemin Δ°stanbul Presantation

## Localization aka l10n
Basically, the application is translated from the original language to the language of the target country and adapted to the country.

## Getting Started

### Dependencies π§°

#### Package
```
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations: //add this line
    sdk: flutter        //add this line

  intl: ^0.17.0  //add this line
```

```
flutter:
  generate: true
```

- flutter_localizations  
> Provides localizations to common widgets.

- intl  
> Used for formatting dates and numbers.

## Delegates and Supported Locales  

### Deleagates
- GlobalMaterialLocalizations  
> Implementation of localized strings for the material widgets using the intl package for date and time formatting.
- GlobalCupertinoLocalizations
> Same with GlobalMaterialLocalizations for Cupertino Widgets
- GlobalWidgetsLocalization. 
> Sets the textDirection according to Region.

### Supported Locales
- supportedLocales
> We simply specify the languages we want to support

## l10n.yaml
```
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
```
- arb-dir
> Specifies the location of arb files
- template-arb-file
> Specifies our template file
- output-localization-file
> Specifies output dart file's name

## Project Setup
    .
    βββ lib                  
        βββ l10n                   
              βββ app_en.arb  //english                     
              βββ app_tr.arb  //turkish    
              βββ app_ar.arb  //arabic      
    βββ l10n.yaml
    
## .arb Files
As you can see it must be unique for the first partition because it will have its equivalent in the other arb file

### app_en.arb
```
{
    "helloWorld": "Hello World!",
    "@helloWorld": {
      "description": "The conventional newborn programmer greeting"
    },
    "openDatePicker": "Open Date Picker!",
    "left": "Left!",
    "right": "Right!",
    "textField": "This is Text Field!"
}
```

### app_tr.arb
```
{
    "helloWorld": "Merhaba DΓΌnya!",
    "openDatePicker": "Date Picker'Δ± AΓ§",
    "left": "Sol",
    "right": "SaΔ",
    "textField": "Bu Text Field"
}
```

### app_ar.arb
```
{
    "helloWorld": "ΩΨ±Ψ­Ψ¨Ψ§ Ψ¨Ψ§ΩΨΉΨ§ΩΩ!",
    "openDatePicker": "ΩΨͺΨ­ ΩΩΨͺΩΩ Ψ§ΩΨͺΨ§Ψ±ΩΨ?!",
    "left": "Ψ§ΩΩΨ³Ψ§Ψ±!",
    "right": "Ψ§ΩΨ΅Ψ­ΩΨ­!",
    "textField": "ΩΨ¬Ψ§Ω Ψ§ΩΨͺΨ­Ψ±ΩΨ± ΩΩΨ§Ω ΩΨͺΨ§Ψ¨Ψ© Ψ§ΩΩΨ΅!"
}
```

## AppLocalizations.delegate
We have to use it for use generated localized strings
```
localizationsDelegates: [
    AppLocalizations.delegate, //add this line
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
],
```

## Usage π 
String can be used at the point where it is needed in the project. But in special view widgets
```
Text(AppLocalizations.of(context)!.helloWorld)
```

### Tip π«
You can also use this feature in different strategies. For example, all variables with constant values.


## ScreenShots

### Text
<img src= "https://user-images.githubusercontent.com/55029049/188641807-a5ac8154-eae2-4398-bd26-f02c7c5149ad.png"  width="200" height="400"><img src= "https://user-images.githubusercontent.com/55029049/188641846-1feb12f2-575f-42e3-97b2-3bd2b514f01c.png" width="200" height="400"><img src= "https://user-images.githubusercontent.com/55029049/188641778-f74ac479-c16b-4956-b316-ae24b88613e6.png" width="200" height="400">
### Date
<img src= "https://user-images.githubusercontent.com/55029049/188641828-dacdf032-8d55-4ec2-82ff-f196d6cc2d5e.png" width="200" height="400"><img src= "https://user-images.githubusercontent.com/55029049/188641861-c159c88a-ef3e-44fa-b25c-da6493bbf673.png" width="200" height="400"><img src= "https://user-images.githubusercontent.com/55029049/188641796-bd687b9c-f655-41c9-80c6-0dc8e449771f.png " width="200" height="400">

### Source
[Flutter Documentation](https://docs.flutter.dev/development/accessibility-and-localization/internationalization)
