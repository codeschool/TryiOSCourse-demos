#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) UIButton *greenButton;
@property (weak, nonatomic) UIButton *blueButton;

- (void) changeBackgroundColor:(id) sender;

@end
