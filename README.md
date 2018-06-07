[![Build Status](https://travis-ci.org/ignacio-chiazzo/ARKit.svg?branch=master)](https://travis-ci.org/ignacio-chiazzo/ARKit)
[![GitHub issues open](https://img.shields.io/github/issues/ignacio-chiazzo/ARKit.svg?maxAge=2592000)]() 


# ARKit - Placing Virtual Objects in Augmented Reality

Visual feedback, gesture interactions, and realistic rendering in AR experience.

## Testing

For testing and debugging AR experiences, it helps to have a live visualization of the scene processing that ARKit performs. See the `showDebugVisuals` method in this project's `ViewController` class for world tracking visualization, and the `HitTestVisualization` class for a demonstration of ARKit's feature detection methods.

## Best Practices and Limitations

World tracking is an inexact science. This process can often produce impressive accuracy, leading to realistic AR experiences. However, it relies on details of the device’s physical environment that are not always consistent or are difficult to measure in real time without some degree of error. To build high-quality AR experiences, be aware of these caveats and tips.

**Design AR experiences for predictable lighting conditions.** World tracking involves image analysis, which requires a clear image. Tracking quality is reduced when the camera can’t see details, such as when the camera is pointed at a blank wall or the scene is too dark.

**Use tracking quality information to provide user feedback.** World tracking correlates image analysis with device motion. ARKit develops a better understanding of the scene if the device is moving, even if the device moves only subtly. Excessive motion—too far, too fast, or shaking too vigorously—results in a blurred image or too much distance for tracking features between video frames, reducing tracking quality. The
ARCamera
 class provides tracking state reason information, which you can use to develop UI that tells a user how to resolve low-quality tracking situations.

**Allow time for plane detection to produce clear results, and disable plane detection when you have the results you need.** Plane detection results vary over time—when a plane is first detected, its position and extent may be inaccurate. As the plane remains in the scene over time, ARKit refines its estimate of position and extent. When a large flat surface is in the scene, ARKit may continue changing the plane anchor’s position, extent, and transform after you’ve already used the plane to place content.
