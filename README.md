# OSC Player
Example project, using [AudioKit](https://github.com/AudioKit/AudioKit) to trigger the oscillator on command. This was created with Xcode 11.1 and Swift 5.1.

## Installation:
You must install the pods in order to successfully compile the project. To do so, run the following at the root of the project:
1. Within Terminal, run `git clone git@github.com:markjeschke/osc-player.git` in the command line, or download the [zip](https://github.com/markjeschke/osc-player/archive/master.zip) to your local drive.
2. If you have CocoaPods already installed, run `pod install` to install the AudioKit framework.
3. Open the `OSC Player.xcworkspace` source, and build the app to your iPhone or iPad.

### If you don't have CocoaPods installed, please follow these directions:

1. Within Terminal, enter `$ sudo gem install cocoapods` in the command line.
2. Change directory, so that you'll be in the root directory of this "OSC Player" Xcode project. 
3. Run `pod install` to install the pods that are listed in the Podfile.
4. Once the installation has completed, open the project by clicking to open `OSC Player.xcworkspace` – not the `OSC Player.xcodeproj`.

If you're having trouble installing CocoaPods, please refer to their [installation instructions](https://cocoapods.org/#install).


