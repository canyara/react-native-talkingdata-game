
# react-native-talkingdata-game

## Getting started

`$ npm install react-native-talkingdata-game --save`

### Mostly automatic installation

`$ react-native link react-native-talkingdata-game`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-talkingdata-game` and add `RNTalkingdataGame.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNTalkingdataGame.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNTalkingdataGamePackage;` to the imports at the top of the file
  - Add `new RNTalkingdataGamePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-talkingdata-game'
  	project(':react-native-talkingdata-game').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-talkingdata-game/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-talkingdata-game')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNTalkingdataGame.sln` in `node_modules/react-native-talkingdata-game/windows/RNTalkingdataGame.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Talkingdata.Game.RNTalkingdataGame;` to the usings at the top of the file
  - Add `new RNTalkingdataGamePackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNTalkingdataGame from 'react-native-talkingdata-game';

// TODO: What to do with the module?
RNTalkingdataGame;
```
  