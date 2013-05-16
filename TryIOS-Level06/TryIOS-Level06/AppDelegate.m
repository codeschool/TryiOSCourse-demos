#import "AppDelegate.h"
#import "FeedTableViewController.h"
#import "ProfileViewController.h"
#import "FavoritesViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    FeedTableViewController *feedTableViewController = [[FeedTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    UINavigationController *feedNavController = [[UINavigationController alloc] initWithRootViewController:feedTableViewController];
    
    ProfileViewController *profileController = [[ProfileViewController alloc] init];
    UINavigationController *profileNavController = [[UINavigationController alloc] initWithRootViewController:profileController];
    
    FavoritesViewController *favController = [[FavoritesViewController alloc] init];
    UINavigationController *favNavController = [[UINavigationController alloc] initWithRootViewController:favController];
    
    UITabBarController *tabController = [[UITabBarController alloc] init];
    tabController.viewControllers = @[feedNavController, favNavController, profileNavController];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabController;
    [self.window makeKeyAndVisible];
    return YES;
}
@end