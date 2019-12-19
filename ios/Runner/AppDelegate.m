#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"

@import UIKit;
@import Firebase;

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  [FIRApp configure];
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
