#import "PhotoViewController.h"
#import "UIImageView+AFNetworking.h"

@implementation PhotoViewController

-(void)viewDidLoad {
    
    // Note: We're not showing you PhotoViewController.m in the last challenge of Level 06, but this is what it would look like!
    UIImageView *imageView = [[UIImageView alloc] init];
    [imageView setImageWithURL:[NSURL URLWithString:self.imageFileName] placeholderImage:[UIImage imageNamed:@"placeholder.jpg"]];
    
    imageView.frame = CGRectMake(10,10,300,300);
    [self.view addSubview:imageView];
    
    UILabel *imageTitleLabel = [[UILabel alloc] init];
    imageTitleLabel.text = self.imageTitle;
    imageTitleLabel.frame = CGRectMake(10,320,300,40);
    [self.view addSubview:imageTitleLabel];
}
@end