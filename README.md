This is an **experimental** Xcode plugin that forces the workspace windows of Xcode to have a layer-backed content view.

## Q&A

#### Why would I want this?

This dramatically enhances scrolling performance in the source editor.

#### How do I install it?

1. Open the Xcode project and build it. 
2. Restart Xcode.

#### Oh snap, how do I uninstall it?

1. Go to `~/Library/Application Support/Developer/Shared/Xcode/Plug-ins/` and delete `XcodeLayerBacking.xcplugin`. 
2. Restart Xcode.

#### Why isn't this the default?

I don't know. It should be. It's likely that something breaks when Xcode is layer-backed, and I just haven't found it.

#### You're crazy.

That's not a question.


## Warning

This could visually break various parts of Xcode. I've done limited testing and haven't found any major issues, but I take no responsibility for issues if they occur.


##About Me
Catch me on twitter: [@willing](http://twitter.com/willing).
