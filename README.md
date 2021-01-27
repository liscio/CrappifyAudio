# Crappify Your Audio!

*With just one click, you too can enjoy a degraded AirPods audio experience on your Mac.*

This is a demonstration of a bug (yet another one) in Apple's `AVAudioEngine` that seems to occur on macOS 11.

Simply invoking either `AVAudioEngine.mainMixerNode` or `AVAudioEngine.outputNode` will cause the AirPods audio quality to degrade down to "phonecall quality" for the rest of your Mac's audio.

## Usage

1. Set your Mac to output audio to your AirPods
2. Start playing some music on your Mac
3. Build & run the macOS target in this sample project
4. Hit the Crappify button to enjoy that retro AM radio experience!

## A key detail

The app must have microphone access enabled in the app sandbox settings, or sandboxing must not be enabled for the app target. Otherwise the bug doesn't show up at all.

## Workarounds?

There used to be a workaround for this issue that was [posted to StackOverflow](https://stackoverflow.com/questions/44651389/avaudioengine-uses-wrong-format-when-bluetooth-headset-plugged-in/46558986). 

Unfortunately, that workaround is no longer going to save us. Why? Because it requires that you call `outputNode` in order to override the output device ID.

