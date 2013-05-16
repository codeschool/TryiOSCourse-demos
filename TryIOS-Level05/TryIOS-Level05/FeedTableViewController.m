#import "FeedTableViewController.h"
#import "PhotoViewController.h"

@implementation FeedTableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Feed";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_feed.png"];
        self.imageTitleArray = @[@"Image 1",@"Image 2",@"Image 3",@"Image 4", @"Image 5"];
        self.imageFileNameArray = @[@"image1.png",@"image2.png",@"image3.png",@"image4.png",@"image5.png"];
        self.imageDetailArray = @[@"Nice starfield.",@"Some bright stars here.",@"This is pretty dark.",@"I can almost see a cloud.",@"There's that cloudy galaxy!"];
        self.imageThumbnailArray = @[@"1thumb.png",@"2thumb.png",@"3thumb.png",@"4thumb.png",@"5thumb.png"];
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return self.imageTitleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = self.imageTitleArray[indexPath.row];
    cell.detailTextLabel.text = self.imageDetailArray[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:self.imageThumbnailArray[indexPath.row]];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    PhotoViewController *photoVC = [[PhotoViewController alloc] init];
    photoVC.imageFileName = self.imageFileNameArray[indexPath.row];
    photoVC.imageTitle = self.imageTitleArray[indexPath.row];
    
    [self.navigationController pushViewController:photoVC animated:YES];
}

@end