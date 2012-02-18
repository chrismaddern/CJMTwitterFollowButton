//
//  FollowMeButton.m
//
//  Created by Chris Maddern on 18/02/2012.
//  http://www.chrismaddern.com
// 
//  Credit to the following sources for their work:
//
//  Hi-Res Follow Me button created by Joseph DiPaolo: 
//  http://www.illustrated-primer.com/blog/2011/06/19/twitter-follow-buttons/
//
//  Non-Twitter App Schemes from the Gist Repo: https://gist.github.com/958738
//  Created by vhbit
// 
//  Thanks to HandleOpenURL for documenting the Twitter iOS5 Scheme
//  http://handleopenurl.com/scheme/twitter
//

#import "FollowMeButton.h"

@interface FollowMeButton()

@property (nonatomic, retain) UIImageView *imageView;

-(void)buttonTapped;
@end

@implementation FollowMeButton

@synthesize imageView, twitterAccount, isSmall;

-(id)initWithTwitterAccount:(NSString*)account atOrigin:(CGPoint)origin isSmallButton:(BOOL)isSmallButton
{
    CGSize buttonSize;
    self.isSmall = isSmallButton;
    if(isSmallButton)
        buttonSize = CGSizeMake(61, 20);
    else 
        buttonSize = CGSizeMake(122, 40);
    
    self.twitterAccount = account; 
    CGRect buttonFrame = CGRectMake(origin.x, origin.y, buttonSize.width, buttonSize.height);
    self = [super initWithFrame:buttonFrame];
    if (self) 
    {
        if(self.isSmall)
            [self setBackgroundImage:[UIImage imageNamed:@"follow-me-small"] forState:UIControlStateNormal];
        else
            [self setBackgroundImage:[UIImage imageNamed:@"follow-me"] forState:UIControlStateNormal];
        
        [self addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

-(void)buttonTapped
{
    NSArray *urls = [NSArray arrayWithObjects:
                     @"twitter://user?screen_name={handle}", // Twitter
                     @"tweetbot:///user_profile/{handle}", // TweetBot
                     @"echofon:///user_timeline?{handle}", // Echofon              
                     @"twit:///user?screen_name={handle}", // Twittelator Pro
                     @"x-seesmic://twitter_profile?twitter_screen_name={handle}", // Seesmic
                     @"x-birdfeed://user?screen_name={handle}", // Birdfeed
                     @"tweetings:///user?screen_name={handle}", // Tweetings
                     @"simplytweet:?link=http://twitter.com/{handle}", // SimplyTweet
                     @"icebird://user?screen_name={handle}", // IceBird
                     @"fluttr://user/{handle}", // Fluttr
                     @"http://twitter.com/{handle}",
                     nil];
    
    UIApplication *application = [UIApplication sharedApplication];
    
    for (NSString *candidate in urls) {
        NSURL *url = [NSURL URLWithString:[candidate stringByReplacingOccurrencesOfString:@"{handle}" withString:twitterAccount]];
        if ([application canOpenURL:url]) 
        {
            [application openURL:url];
            return;
        }
    }
    
}

-(void)setIsSmall:(BOOL)shouldBeSmall
{
    isSmall = shouldBeSmall;
    
    CGSize buttonSize;
    if(isSmall)
    {
        buttonSize = CGSizeMake(61, 20);
        [self setBackgroundImage:[UIImage imageNamed:@"follow-me-small"] forState:UIControlStateNormal];
    }
    else 
    {
        buttonSize = CGSizeMake(122, 40);
        [self setBackgroundImage:[UIImage imageNamed:@"follow-me"] forState:UIControlStateNormal];
    }
    
    CGRect buttonFrame = CGRectMake(self.frame.origin.x, self.frame.origin.y, buttonSize.width, buttonSize.height);
    
    [self setFrame:buttonFrame];
}

-(void)awakeFromNib
{
    [super awakeFromNib];
    if(self)
    {
        [self setFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, 122, 40)];
        [self setBackgroundImage:[UIImage imageNamed:@"follow-me"] forState:UIControlStateNormal];
    }
}



@end
