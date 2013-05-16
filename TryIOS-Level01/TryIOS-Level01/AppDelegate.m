#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame:viewRect];
    UIViewController *viewController = [[UIViewController alloc] init];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    
    view.backgroundColor = [UIColor colorWithRed:0.462 green:0.749 blue:0.937 alpha:1.0];
    
    viewController.view = view;
    
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    
    NSLog(@"Screen is %f tall and %f wide", viewRect.size.height, viewRect.size.width);
    
    return YES;
}

@end
