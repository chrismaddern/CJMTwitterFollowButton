### Follow Me Button for iOS

A `UIButton` subclass which mimics the Twitter follow button and will open the profile of the configured user on whatever Twitter App is currently installed (native Twitter app preferred if installed).

<center><img src="https://raw.github.com/chrismaddern/Follow-Me-On-Twitter-iOS-Button/master/CJMTwitterFollowButton/Resources/CJMFollowMeButtonSmall.png" style="margin: 0 auto; " /></center>

### Usage
The `CJMTwitterFollowButton` can be created in Interface Builder by adding a `UIButton` and changing it's class to `CJMTwitterFollowButton` or in code using the initialiser:

```
CJMTwitterFollowButton *button = [[CJMTwitterFollowButton alloc] initWithOrigin:CGPointMake(135, 125)
                                                                 twitterAccount:@"chrismaddern"
                                                                        andSize:CJMButtonSizeSmall];
````

### Credits 
This is basically several others' work pulled together to create a simple-to-include repo.

Hi-Res Follow Me button created by Joseph DiPaolo: 
http://www.illustrated-primer.com/blog/2011/06/19/twitter-follow-buttons/

Non-Twitter App Schemes from the Gist Repo: https:gist.github.com/958738
Created by vhbit
 
Thanks to HandleOpenURL for documenting the Twitter iOS5 Scheme
http:handleopenurl.com/scheme/twitter

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

### License
Licensed under the MIT License.
