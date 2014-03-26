//
//  ViewController.h
//  Helicopter
//
//  Created by akeem johnson on 2/9/14.
//  Copyright (c) 2014 akeem johnson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <QuartzCore/QuartzCore.h>
#import <iAd/iAd.h>
int Y;
BOOL Start;
int RandomPosition;
int ScoreNumber;
int HighScore;

@interface ViewController : UIViewController <ADBannerViewDelegate>

{
   __weak IBOutlet UIImageView *Intro2;
   IBOutlet UILabel *Intro3;
   __weak IBOutlet UIImageView *Intro4;
   IBOutlet UIImageView *Heli;
   NSTimer *Timer;
    
    __weak IBOutlet ADBannerView *advertisment;
    IBOutlet UIImageView *Obstacle;
    IBOutlet UIImageView *Obstacle2;
    IBOutlet UIImageView *Bottom1;
    IBOutlet UIImageView *Bottom2;
    IBOutlet UIImageView *Bottom3;
    IBOutlet UIImageView *Bottom4;
    IBOutlet UIImageView *Bottom5;
    IBOutlet UIImageView *Bottom6;
    IBOutlet UIImageView *Bottom7;
    IBOutlet UIImageView *Top1;
    IBOutlet UIImageView *Top2;
    IBOutlet UIImageView *Top3;
    IBOutlet UIImageView *Top4;
    IBOutlet UIImageView *Top5;
    IBOutlet UIImageView *Top6;
    IBOutlet UIImageView *Top7;
    IBOutlet UILabel *Score;
    NSTimer *Scorer;
    IBOutlet UIButton *pause;
    IBOutlet UIButton *resume;
   }

- (void) HeliMove;
- (void) Collision;
- (void) EndGame;
- (void) NewGame;
- (void) Scoring;
@end