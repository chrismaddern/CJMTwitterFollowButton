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

#import "CJMTwitterFollowButton.h"

@implementation CJMTwitterFollowButton

- (instancetype)initWithOrigin:(CGPoint)origin
                twitterAccount:(NSString *)twitterAccount
                       andSize:(CJMTwitterFollowButtonSize)size {
    
    CGRect frame = CGRectMake(origin.x, origin.y, 1, 1);
    
    self = [super initWithFrame:frame];
    if (self) {
        self.twitterAccount = twitterAccount;
        self.buttonSize     = size;
        
        [self addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}


- (void)buttonTapped {
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
        NSURL *url = [NSURL URLWithString:[candidate stringByReplacingOccurrencesOfString:@"{handle}" withString:self.twitterAccount]];
        if ([application canOpenURL:url]) {
            [application openURL:url];
            // Stop trying after the first URL that succeeds
            return;
        }
    }
}


- (void)setButtonSize:(CJMTwitterFollowButtonSize)size {

    // Set the iVar
    _buttonSize = size;
    
    // Process it
    CGSize sizeForButtonFrame;
    
    if (self.buttonSize == CJMButtonSizeSmall) {
        sizeForButtonFrame = CGSizeMake(61, 20);
        [self setBackgroundImage:[UIImage imageNamed:@"CJMFollowMeButtonSmall"] forState:UIControlStateNormal];
    }
    else {
        sizeForButtonFrame = CGSizeMake(122, 40);
        [self setBackgroundImage:[UIImage imageNamed:@"CJMFollowMeButtonLarge"] forState:UIControlStateNormal];
    }
    
    CGRect buttonFrame = CGRectMake(self.frame.origin.x, self.frame.origin.y, sizeForButtonFrame.width, sizeForButtonFrame.height);
    [self setFrame:buttonFrame];
}


- (void)awakeFromNib {
    [super awakeFromNib];
    
    if(self) {
        self.buttonSize     = CJMButtonSizeLarge;
        
        // Don't overwrite twitter account if it was set by a runtime attribute
        if (!self.twitterAccount) {
            self.twitterAccount = @"not-configured";
        }
        
        [self addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
    }
}


- (void)setValue:(id)value forKey:(NSString *)key {
    if ([key isEqualToString:@"twitterAccount"]) {
        self.twitterAccount = value;
    }
}

@end
