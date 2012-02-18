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

@interface FollowMeButton : UIButton

@property (nonatomic, retain) NSString* twitterAccount;
@property (nonatomic) BOOL isSmall;

-(id)initWithTwitterAccount:(NSString*)account atOrigin:(CGPoint)origin isSmallButton:(BOOL)isSmallButton;
@end