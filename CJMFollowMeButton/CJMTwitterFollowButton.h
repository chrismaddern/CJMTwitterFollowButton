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

#import <UIKit/UIKit.h>

typedef enum {
    CJMButtonSizeSmall = 0,
    CJMButtonSizeLarge = 1
} CJMTwitterFollowButtonSize;

@interface CJMTwitterFollowButton : UIButton

@property (nonatomic, strong) NSString *twitterAccount;
@property (nonatomic) CJMTwitterFollowButtonSize buttonSize;

- (instancetype)initWithOrigin:(CGPoint)origin
               twitterAccount:(NSString *)twitterAccount
                      andSize:(CJMTwitterFollowButtonSize)size;
@end