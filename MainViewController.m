//
//  MainViewController.m
//  Week One Homework
//
//  Created by Tim Collins on 6/14/14.
//  Copyright (c) 2014 Tim Collins. All rights reserved.
//

#import "MainViewController.h"
#import <QuartzCore/QuartzCore.h>


@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // I got curious and tried out the scroll view, I also wanted everything to fit on the 3.5 inch phone.
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.contentSize = CGSizeMake(320, 600);
    [self.view addSubview: scrollView];

    
    self.view.backgroundColor = [UIColor colorWithRed:0.831 green:0.843 blue:0.859 alpha:1.000];
    
    // This creates the headerView and sets the background color
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 58)];
    headerView.backgroundColor = [UIColor colorWithRed:0.267 green:0.388 blue:0.624 alpha:1.000];

    // headerView is added as a subview
    [self.view addSubview:headerView];
    
    // This creates a space for UILabel and inits it within a frame
    UILabel *toplabel = [[UILabel alloc] initWithFrame:CGRectMake(140, 7, 220, 60)];
    toplabel.text = @"Post";
    toplabel.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:17];
    toplabel.textColor = [UIColor whiteColor];
    [headerView addSubview:toplabel];
    
    // Back Button
    UIImage *back = [UIImage imageNamed:@"back"];
    UIImageView *backImageView = [[UIImageView alloc] initWithImage:back];
    backImageView.frame = CGRectMake(12, 24, 17, 25);
    [headerView addSubview:backImageView];
    
    // Share Button
    UIImage *share = [UIImage imageNamed:@"share"];
    UIImageView *shareImageView = [[UIImageView alloc] initWithImage:share];
    shareImageView.frame = CGRectMake(288, 21, 22, share.size.height);
    [headerView addSubview:shareImageView];
    
    
    //Post Container View
    UIView *postContainerView = [[UIView alloc] initWithFrame:CGRectMake(10, 70, 300, 406)];
    postContainerView.backgroundColor = [UIColor whiteColor];
    postContainerView.layer.cornerRadius = 3.f;
    [scrollView addSubview:postContainerView];
    
    
    //Page Avatar Image
    UIImage *profpic = [UIImage imageNamed:@"profpic"];
    UIImageView *profpicImageView = [[UIImageView alloc] initWithImage:profpic];
    profpicImageView.frame = CGRectMake(10, 10, 35, 35);
    [postContainerView addSubview:profpicImageView];
    
    //Page Name Label
    UILabel *pageName = [[UILabel alloc] initWithFrame:CGRectMake(55, -10, 220, 60)];
    pageName.text = @"Her";
    pageName.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:14];
    pageName.textColor = [UIColor blackColor];
    [postContainerView addSubview:pageName];
    
    //Minutae Label
    UILabel *minutae = [[UILabel alloc] initWithFrame:CGRectMake(55, 8, 220, 60)];
    minutae.text = @"February 1 at 11:00 AM";
    minutae.font = [UIFont fontWithName:@"HelveticaNeue" size:12];
    minutae.textColor = [UIColor colorWithRed:0.706 green:0.706 blue:0.706 alpha:1.000];
    [postContainerView addSubview:minutae];
    
    //Post Text
    UILabel *postText = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, 280, 90)];
    postText.font = [UIFont fontWithName:@"HelveticaNeue" size:14];
    postText.textColor = [UIColor blackColor];
    postText.backgroundColor = [UIColor colorWithRed:1.000 green:1.000 blue:1.000 alpha:0.000];
    postText.numberOfLines = 5;
    
    postText.text = @"From collarless shirts to high-waisted pants, #Her's costume designer, Casey Storm, expalins how he created his fashion looks for the future. http://bit.ly/1jv9zm8";
    
    [postContainerView addSubview:postText];
    
    //postImage
    UIImage *postImage = [UIImage imageNamed:@"postImage"];
    UIImageView *postImageView = [[UIImageView alloc] initWithImage:postImage];
    postImageView.frame = CGRectMake(-4, 130, 308, 180);
    [postContainerView addSubview:postImageView];
    
    //UFI
    UIImage *ufiImage = [UIImage imageNamed:@"ufi"];
    UIView *ufi = [[UIView alloc] initWithFrame:CGRectMake(0, 324, 300, ufiImage.size.height)];
    ufi.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"ufi"]];
    [postContainerView addSubview:ufi];
    
    //Like Button - within UFI
    UILabel *likeText = [[UILabel alloc] initWithFrame:CGRectMake(42, 0, 40, 40)];
    likeText.text = @"Like";
    likeText.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:12];
    likeText.textColor = [UIColor colorWithRed:0.608 green:0.620 blue:0.639 alpha:1.000];
    [ufi addSubview:likeText];
    
    //Like image
    UIImage *like = [UIImage imageNamed:@"like"];
    UIImageView *likeImageView = [[UIImageView alloc] initWithImage:like];
    likeImageView.frame = CGRectMake(20, 1, like.size.width, like.size.height);
    [ufi addSubview:likeImageView];
 
    //comment image
    UIImage *commentIcon = [UIImage imageNamed:@"comment"];
    UIImageView *commmentIconImageView = [[UIImageView alloc] initWithImage:commentIcon];
    commmentIconImageView.frame = CGRectMake(105, 1, commentIcon.size.width, commentIcon.size.height);
    [ufi addSubview:commmentIconImageView];
    
    //Share Icon
    UIImage *ufiShareIcon = [UIImage imageNamed:@"ufiShareIcon"];
    UIImageView *ufiShareIconView = [[UIImageView alloc] initWithImage:ufiShareIcon];
    ufiShareIconView.frame = CGRectMake(215, 12, ufiShareIcon.size.width, ufiShareIcon.size.height);
    [ufi addSubview:ufiShareIconView];
    
    //commentText - within UFI
    UILabel *commentText = [[UILabel alloc] initWithFrame:CGRectMake(128, 0, 300, ufiImage.size.height)];
    commentText.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:12];
    commentText.textColor = [UIColor colorWithRed:0.608 green:0.620 blue:0.639 alpha:1.000];
    commentText.text = @"Comment";
    [ufi addSubview:commentText];

    //shareText - within UFI
    UILabel *shareText = [[UILabel alloc] initWithFrame:CGRectMake(238, 0, 300, ufiImage.size.height)];
    shareText.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:12];
    shareText.textColor = [UIColor colorWithRed:0.608 green:0.620 blue:0.639 alpha:1.000];
    shareText.text = @"Share";
    [ufi addSubview:shareText];
    

    //Trying out a basic button
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Like" forState:UIControlStateNormal];
    [ufi addSubview:button];
    
    //This was the code I was trying to use to figure how to make custom buttons without XIB
    UIButton *customButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [customButton setTitle:@"Like" forState:UIControlStateNormal];
    [customButton setContentEdgeInsets:UIEdgeInsetsMake(0, 4, 0, 4)];
    [customButton sizeToFit];
    customButton.center = CGPointMake(70, 20);
    
    [customButton setBackgroundImage:[[UIImage imageNamed:@"like.png"]
                                      resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10)]
                            forState:UIControlStateNormal];
    
    [customButton setBackgroundImage:[[UIImage imageNamed:@"likeHighlighted.png"]
                                      resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10)]
                            forState:UIControlStateHighlighted];
    
    [customButton setTitleColor:[UIColor blueColor]
                       forState:UIControlStateNormal];
    [ufi addSubview:customButton];
    
    
    //SupportText
    NSString *supportingTextString = @"1,675 people like this.";

        UILabel *supportingText = [[UILabel alloc] initWithFrame:CGRectMake(12, 363, 320, 44)];
    supportingText.text = supportingTextString;
        supportingText.font = [UIFont fontWithName:@"HelveticaNeue" size:14];
        supportingText.textColor = [UIColor blackColor];
        [postContainerView addSubview:supportingText];
    
    if ([supportingText respondsToSelector:@selector(setAttributedText:)])
    {
        // iOS6 and above : Use NSAttributedStrings
        const CGFloat fontSize = 14;
        UIFont *boldFont = [UIFont boldSystemFontOfSize:fontSize];
        UIFont *regularFont = [UIFont systemFontOfSize:fontSize];
        UIColor *foregroundColor = [UIColor blackColor];
        
        // Create the attributes
        NSDictionary *attrs = [NSDictionary dictionaryWithObjectsAndKeys:
                               regularFont, NSFontAttributeName,
                               foregroundColor, NSForegroundColorAttributeName, nil];
        NSDictionary *subAttrs = [NSDictionary dictionaryWithObjectsAndKeys:
                                  boldFont, NSFontAttributeName, nil];
        const NSRange range = NSMakeRange(0,12); // range of " 2012/10/14 ". Ideally this should not be hardcoded
        
        // Create the attributed string (text + attributes)
        NSMutableAttributedString *attributedText =
        [[NSMutableAttributedString alloc] initWithString:supportingTextString
                                               attributes:attrs];
        [attributedText setAttributes:subAttrs range:range];
        
        // Set it in our UILabel and we are done!
        [supportingText setAttributedText:attributedText];
    } else {
        // iOS5 and below
        // Here we have some options too. The first one is to do something
        // less fancy and show it just as plain text without attributes.
        // The second is to use CoreText and get similar results with a bit
        // more of code. Interested people please look down the old answer.
        
        [supportingText setText:supportingTextString];
        
    }
    UIImage *commentBackground = [[UIImage imageNamed:@"textfield"] stretchableImageWithLeftCapWidth:20 topCapHeight:20];

    UITextField *commentbox = [[UITextField alloc] initWithFrame:CGRectMake(20, 394, 240, commentBackground.size.height)];
    commentbox.text = @"  Write a comment...";
    commentbox.font = [UIFont fontWithName:@"HelveticaNeue" size:16];
    commentbox.textColor = [UIColor colorWithRed:0.647 green:0.647 blue:0.647 alpha:1.000];
    [commentbox setBackground:commentBackground];
    [self.view addSubview:commentbox];
    
    //Comment Bar Image
    UIImage *commentbar = [UIImage imageNamed:@"commentbar"];
    UIImageView *commentBarImageView = [[UIImageView alloc] initWithImage:commentbar];
    commentBarImageView.frame = CGRectMake(0, 394, 320, commentbar.size.height);
    [self.view addSubview:commentBarImageView];
    
    //Tab Bar Image
    UIImage *tabbar = [UIImage imageNamed:@"tabbar"];
    UIImageView *tabbarImageView = [[UIImageView alloc] initWithImage:tabbar];
    tabbarImageView.frame = CGRectMake(0, 437, 320, tabbar.size.height);
    [self.view addSubview:tabbarImageView];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
