#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController

@property (strong, nonatomic) NSDictionary *userProfile;
@property (strong, nonatomic) UIScrollView *scrollView;

- (void)requestSuccessful;

@end
