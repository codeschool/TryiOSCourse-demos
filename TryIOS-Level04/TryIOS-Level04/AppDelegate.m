#import "AppDelegate.h"
#import "FeedViewController.h"
#import "ProfileViewController.h"
#import "FavoritesViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    FeedViewController *feedViewController = [[FeedViewController alloc] init];
    UINavigationController *feedNavController = [[UINavigationController alloc] initWithRootViewController:feedViewController];
    
    ProfileViewController *profileViewController = [[ProfileViewController alloc] init];
    UINavigationController *profileNavController = [[UINavigationController alloc] initWithRootViewController:profileViewController];
    
    FavoritesViewController *favoritesViewController = [[FavoritesViewController alloc] init];
    UINavigationController *favoritesNavController = [[UINavigationController alloc] initWithRootViewController:favoritesViewController];
    
    UITabBarController *tabController = [[UITabBarController alloc] init];
    tabController.viewControllers = @[feedNavController, favoritesNavController, profileNavController];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabController;
    [self.window makeKeyAndVisible];
    return YES;
}
@end