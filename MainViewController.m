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
        // Custom initialization
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
    UIView *postContainerView = [[UIView alloc] initWithFrame:CGRectMake(10, 70, 300, 700)];
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

    
    //SupportText
    NSString *supportingTextString = @"1,675 people like this";

        UILabel *supportingText = [[UILabel alloc] initWithFrame:CGRectMake(16, 363, 320, 44)];
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
    
    
//    //Using Attributed Text
//    NSString *likeCount = @"1,675 people";
//    NSString *helperString = @"like this.";
//    
//    NSString *text = [NSString stringWithFormat:@"%@ %@", likeCount, helperString];
//    
//    // If attributed text is supported (iOS6+)
//    if ([supportingText respondsToSelector:@selector(setAttributedText:)]) {
//        
//        // Define general attributes for the entire text
//        NSDictionary *attribs = @{
//                                  NSForegroundColorAttributeName: supportingText.textColor,
//                                  NSFontAttributeName: supportingText.font
//                                  };
//        
//        NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString:text attributes:attribs];
//        
//        // Like Count
//        UIColor *likeCountTreatment = [UIColor redColor];
//        NSRange likeCountRange = [text rangeOfString:likeCount];
//        [attributedText setAttributes:@{NSForegroundColorAttributeName:likeCountTreatment}
//                                range:likeCountRange];
//        
//        // Helper String
//        UIColor *helperStringTreatment = [UIColor greenColor];
//        NSRange helperStringTextRange = [text rangeOfString:helperString];
//        [attributedText setAttributes:@{NSForegroundColorAttributeName:helperStringTreatment}
//                                range:helperStringTextRange];
//        
//       supportingText.attributedText = attributedText;
//    }
//    // If attributed text is NOT supported (iOS5-)
//    else {
//        supportingText.text = text;
//    }
//    

    
    
    //Comment Bar Image
    UIImage *commentbar = [UIImage imageNamed:@"commentbar"];
    UIImageView *commentbarImageView = [[UIImageView alloc] initWithImage:commentbar];
    commentbarImageView.frame = CGRectMake(0, 394, 320, commentbar.size.height);
    [self.view addSubview:commentbarImageView];
    
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
