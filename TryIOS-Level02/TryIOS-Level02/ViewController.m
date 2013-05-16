#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.greenButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.greenButton.frame = CGRectMake(120, 200, 100, 44);
    [self.greenButton setTitle:@"Make green!" forState:UIControlStateNormal];
    [self.greenButton addTarget:self action:@selector(changeBackgroundColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.greenButton];
    
    self.blueButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.blueButton.frame = CGRectMake(120, 100, 100, 44);
    [self.blueButton setTitle:@"Make blue!" forState:UIControlStateNormal];
    [self.blueButton addTarget:self action:@selector(changeBackgroundColor:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.blueButton];
}

- (void) changeBackgroundColor:(UIButton *) sender
{
    if ([sender isEqual:self.greenButton]) {
        self.view.backgroundColor = [UIColor greenColor];
    }else {
        self.view.backgroundColor = [UIColor blueColor];
    }
}
@end