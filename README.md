Follow Me Button for iOS
========================

A UIButton-based class which will open a Twitter profile in the user's Twitter App of choice (iOS5 Twitter functionality favoured).

This can be used in Interface Builder by adding a UIButton and changing it's class to FollowMeButton or in code using the custom initialiser:

[self.view addSubview:[[FollowMeButton alloc] initWithTwitterAccount:@"chrismaddern" atOrigin:CGPointMake(205, 248) isSmallButton:YES]];

Two size modes are available controlled by setting isSmallButton in the initialiser or by later change the isSmall property of the object.

NOTE: This was created for use with ARC. If you do not use ARC, then set the compiler flag '-fobjc-arc' on the file in the 'Compile Sources' build phase.
 
This is basically several others' work pulled together to create a simple-to-include repo.

Hi-Res Follow Me button created by Joseph DiPaolo: 
http:www.illustrated-primer.com/blog/2011/06/19/twitter-follow-buttons/

Non-Twitter App Schemes from the Gist Repo: https:gist.github.com/958738
Created by vhbit
 
Thanks to HandleOpenURL for documenting the Twitter iOS5 Scheme
http:handleopenurl.com/scheme/twitter

Licensed under the MIT License.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
