#import "ProfileViewController.h"

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Profile";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_profile"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *profileButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [profileButton setImage:[UIImage imageNamed:@"higgie_profile_image"] forState:UIControlStateNormal];
    [profileButton setImage:[UIImage imageNamed:@"higgie_profile_image"] forState:UIControlStateHighlighted];
    profileButton.frame = CGRectMake(15, 15, 200, 189);
    
    [self.view addSubview:profileButton];
    [profileButton addTarget:self action:@selector(showZoomedProfile:) forControlEvents:UIControlEventTouchUpInside];
}

- (void) showZoomedProfile: (UIButton *) sender
{
    UIViewController *imageViewController = [[UIViewController alloc] init];
    imageViewController.view.frame = self.view.frame;
    imageViewController.title = @"Profile Image";
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"higgie_profile_image"]];
    imageView.frame = imageViewController.view.frame;
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    [imageViewController.view addSubview:imageView];
    
    [self.navigationController pushViewController:imageViewController animated:YES];
}

@end