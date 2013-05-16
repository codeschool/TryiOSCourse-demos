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
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320,540);
    
    UIImageView *higgieView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"higgie_profile_image"]];
    higgieView.frame = CGRectMake(20,20,100,114);
    
    [self.scrollView addSubview:higgieView];
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,140,280,40)];
    nameLabel.text = @"Name: Gregg Pollack";
    [self.scrollView addSubview:nameLabel];
    
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,200,280,40)];
    cityLabel.text = @"From: Orlando";
    [self.scrollView addSubview:cityLabel];
    
    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(12,260,300,180)];
    biography.font = [UIFont fontWithName:@"Helvetica" size:15];
    biography.editable = NO;
    biography.text = @"Gregg Pollack is the founder of Envy Labs and teacher of multiple courses at Code School. Code School teaches web technologies in the comfort of your browser with video lessons, coding challenges, and screencasts.";
    [self.scrollView addSubview:biography];
    
    UILabel *memberSinceLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,440,280,40)];
    memberSinceLabel.text = @"Member since November 2012";
    [self.scrollView addSubview:memberSinceLabel];
    
    UILabel *twitterLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,500,280,40)];
    twitterLabel.text = @"Twitter: greggpollack";
    [self.scrollView addSubview:twitterLabel];
    
    [self.view addSubview:self.scrollView];
}

@end