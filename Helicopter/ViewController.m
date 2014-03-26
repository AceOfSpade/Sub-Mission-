//
//  ViewController.m
//  Helicopter
//
//  Created by akeem johnson on 2/9/14.
//  Copyright (c) 2014 akeem johnson. All rights reserved.
//

#import "ViewController.h"
#import <iAd/iAd.h>


@interface ViewController ()

@end

@implementation ViewController
//handles interruptions phone calls, SMS, etc
-(void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pause:) name:@"willResignActive" object:nil];
}
-(void)viewDidDisappear:(BOOL)animated {
    
    [super viewDidDisappear:animated];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"willResignActive" object:nil];
}
- (IBAction)pause:(id)sender
{
    static BOOL *PauseToggle;
    if(!PauseToggle)
    {
        [audioPlayerSubmarine stop];
        [Scorer invalidate];
        [Timer invalidate];
        Timer = nil;
    }
    pause.hidden= YES;
    resume.hidden=NO;
    [UIImage imageNamed:@"pause"];

}
- (IBAction)resume:(id)sender
{
    [audioPlayerSubmarine play];
    Timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(HeliMove) userInfo:nil repeats:YES];
    Scorer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Scoring) userInfo:nil repeats:YES];
    pause.hidden= NO;
    resume.hidden=YES;
    [UIImage imageNamed:@"play"];
}

// when the game ends the helicopter is gonna be hidden to show you lost and the following code waits 5 seconds to start up a new game timer invalidate means stop.

//ARC will decrease the retain count of audioPlayer as soon as viewDidLoad finishes executing. Declare audioPlayer as an instance variable, then assign look below
AVAudioPlayer *audioPlayer;

-(void) Collision

{
    //saying if any part of the heli fram touch the obstacle image the game will end
    if (CGRectIntersectsRect(Heli.frame, Obstacle.frame)){
        [self EndGame ];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];
    }
    if (CGRectIntersectsRect(Heli.frame, Obstacle2.frame)){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    if (CGRectIntersectsRect(Heli.frame, Bottom1.frame)){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    
    if (CGRectIntersectsRect(Heli.frame, Bottom2.frame)){
            [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    if (CGRectIntersectsRect(Heli.frame, Bottom3.frame)){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    if (CGRectIntersectsRect(Heli.frame, Bottom4.frame)){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    if (CGRectIntersectsRect(Heli.frame, Bottom5.frame)){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    if (CGRectIntersectsRect(Heli.frame, Bottom6.frame)){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    if (CGRectIntersectsRect(Heli.frame, Bottom7.frame)){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    if (CGRectIntersectsRect(Heli.frame, Top1.frame)){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    if (CGRectIntersectsRect(Heli.frame, Top2.frame)){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    if (CGRectIntersectsRect(Heli.frame, Top3.frame)){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    if (CGRectIntersectsRect(Heli.frame, Top4.frame)){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    
    if (CGRectIntersectsRect(Heli.frame, Top5.frame)){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    if (CGRectIntersectsRect(Heli.frame, Top6.frame)){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    if (CGRectIntersectsRect(Heli.frame, Top7.frame)){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    //how far down u can go when the game starts without dying
    if (Heli.center.y >300){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    //how far up u can go when the game starts without dying
    if (Heli.center.y <30){
        [self EndGame];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Smash" ofType:@"aiff"];
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayer prepareToPlay];
        [audioPlayer play];

    }
    
}

- (void) EndGame
{   resume.hidden=YES;
    pause.hidden = YES;
    [pause setAlpha:0];
    advertisment.hidden = NO;
    if (ScoreNumber > HighScore) {
        HighScore = ScoreNumber;
        [[NSUserDefaults standardUserDefaults] setInteger:HighScore forKey:@"HighScoreSaved"];
    }
    Heli.hidden = YES;
    [Timer invalidate];
    [Scorer invalidate];
    //selector calls to run new game method to start the game over onces it ednded
    [self performSelector:@selector(NewGame) withObject:nil afterDelay:2];
   //submarine sound stops
    [audioPlayerSubmarine stop];
}

- (void) NewGame
{
    resume.hidden=YES;
    pause.hidden = YES;
    [pause setAlpha:0];
    advertisment.hidden = NO;
    // before the game starts all my objects will be hidden
    Bottom1.hidden = YES;
    Bottom2.hidden = YES;
    Bottom3.hidden = YES;
    Bottom4.hidden = YES;
    Bottom5.hidden = YES;
    Bottom6.hidden = YES;
    Bottom7.hidden = YES;
    
    Top1.hidden = YES;
    Top2.hidden = YES;
    Top3.hidden = YES;
    Top4.hidden = YES;
    Top5.hidden = YES;
    Top6.hidden = YES;
    Top7.hidden = YES;
    
    Obstacle.hidden = YES;
    Obstacle2.hidden = YES;
    
    Intro2.hidden = NO;
    Intro3.hidden = NO;
    Intro4.hidden = NO;
    
    
    Heli.hidden = NO;
    // brings the heli back to its original starting point
    Heli.center = CGPointMake(30, 135);
    Heli.image = [UIImage imageNamed:@"heliUp"];
    Start = YES;
    ScoreNumber = 0;
    Score.text = [NSString stringWithFormat:@"0"];
    Intro3.text= [NSString stringWithFormat:@"%i", HighScore];

}

AVAudioPlayer *audioPlayerSubmarine;
// y meaning adding 7 which goes up
-(void) HeliMove
{
    [self Collision];
    
    //every .1 second the obstacles are gonna move to the left
    Heli.center = CGPointMake(Heli.center.x, Heli.center.y + Y);
    //obstacles were orginially -10
    Obstacle.center = CGPointMake(Obstacle.center.x -10, Obstacle.center.y);
    Obstacle2.center = CGPointMake(Obstacle2.center.x -10, Obstacle2.center.y);
    Bottom1.center = CGPointMake(Bottom1.center.x-10, Bottom1.center.y);
    Bottom2.center = CGPointMake(Bottom2.center.x-10, Bottom2.center.y);
    Bottom3.center = CGPointMake(Bottom3.center.x-10, Bottom3.center.y);
    Bottom4.center = CGPointMake(Bottom4.center.x-10, Bottom4.center.y);
    Bottom5.center = CGPointMake(Bottom5.center.x-10, Bottom5.center.y);
    Bottom6.center = CGPointMake(Bottom6.center.x-10, Bottom6.center.y);
    Bottom7.center = CGPointMake(Bottom7.center.x-10, Bottom7.center.y);
    Top1.center =CGPointMake(Top1.center.x -10, Top1.center.y);
    Top2.center =CGPointMake(Top2.center.x -10, Top2.center.y);
    Top3.center =CGPointMake(Top3.center.x -10, Top3.center.y);
    Top4.center =CGPointMake(Top4.center.x -10, Top4.center.y);
    Top5.center =CGPointMake(Top5.center.x -10, Top5.center.y);
    Top6.center =CGPointMake(Top6.center.x -10, Top6.center.y);
    Top7.center =CGPointMake(Top7.center.x -10, Top7.center.y);
    
    
    if (Obstacle.center.x < 0){
        //the lower the percent the higher up the object appears
        RandomPosition = arc4random()%75;
        //how far down the object appears
        RandomPosition = RandomPosition +100;
        Obstacle.center = CGPointMake(510, RandomPosition);
        }
    
    if (Obstacle2.center.x < 0){
        RandomPosition = arc4random()  %75;
        RandomPosition = RandomPosition +100;
        Obstacle2.center = CGPointMake(510, RandomPosition);
    }
    if  (Top1.center.x < -30){
        RandomPosition = arc4random()   %55;
        Top1.center = CGPointMake(510, RandomPosition);
        RandomPosition = RandomPosition +265;
        Bottom1.center = CGPointMake(510, RandomPosition);
        
    }
        
    if  (Top2.center.x < -30){
        RandomPosition = arc4random()   %55;
        Top2.center = CGPointMake(510, RandomPosition);
        RandomPosition = RandomPosition +265;
        Bottom2.center = CGPointMake(510, RandomPosition);
    }
    if  (Top3.center.x < -30){
        RandomPosition = arc4random()   %55;
        Top3.center = CGPointMake(510, RandomPosition);
        RandomPosition = RandomPosition +265;
        Bottom3.center = CGPointMake(510, RandomPosition);
    }
    if  (Top4.center.x < -30){
        RandomPosition = arc4random()   %55;
        Top4.center = CGPointMake(510, RandomPosition);
        RandomPosition = RandomPosition +265;
        Bottom4.center = CGPointMake(510, RandomPosition);
    }
    if  (Top5.center.x < -30){
        RandomPosition = arc4random()   %55;
        Top5.center = CGPointMake(510, RandomPosition);
        RandomPosition = RandomPosition +265;
        Bottom5.center = CGPointMake(510, RandomPosition);
    }
    
    if  (Top6.center.x < -30){
        RandomPosition = arc4random()   %55;
        Top6.center = CGPointMake(510, RandomPosition);
        RandomPosition = RandomPosition +265;
        Bottom6.center = CGPointMake(510, RandomPosition);
    }
    if  (Top7.center.x < -30){
        RandomPosition = arc4random()   %855;
        Top7.center = CGPointMake(510, RandomPosition);
        RandomPosition = RandomPosition +265;
        Bottom7.center = CGPointMake(510, RandomPosition);
    }
}


- (void) Scoring
{
    ScoreNumber = ScoreNumber + 2;
    Score.text = [NSString stringWithFormat:@"%i",ScoreNumber];
}


//touch anywhere on the screen and the game will start
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event

{
    
    pause.hidden = NO;
    [pause setAlpha:1];
    
    if (Start == YES){
        
        advertisment.hidden = YES;
        Intro2.hidden = YES;
        Intro3.hidden = YES;
        Intro4.hidden = YES;
        
        
        Timer = [NSTimer scheduledTimerWithTimeInterval:0.08 target:self selector:@selector(HeliMove) userInfo:nil repeats:YES];
        Scorer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Scoring) userInfo:nil repeats:YES];
        
        
        
        //submarine sound start when screen is touched
        
        NSString *path = [[NSBundle mainBundle]pathForResource:@"Submarine" ofType:@"aiff"];
        audioPlayerSubmarine = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        [audioPlayerSubmarine prepareToPlay];
        [audioPlayerSubmarine setNumberOfLoops:-1];//the -1 means its a loop
        [audioPlayerSubmarine play];
        
        Start = NO;
        
        //hide all images before the game starts
        Bottom1.hidden = NO;
        Bottom2.hidden = NO;
        Bottom3.hidden = NO;
        Bottom4.hidden = NO;
        Bottom5.hidden = NO;
        Bottom6.hidden = NO;
        Bottom7.hidden = NO;
        Top1.hidden = NO;
        Top2.hidden = NO;
        Top3.hidden = NO;
        Top4.hidden = NO;
        Top5.hidden = NO;
        Top6.hidden = NO;
        Top7.hidden = NO;
        Obstacle.hidden = NO;
        Obstacle2.hidden = NO;
        
        
        // places the images in random loacations on the sreen but keeps a gap to fly thru becuase of the +265 the numbers get higher becuase youre going furhter along the left right side of the screen.
        
        RandomPosition = arc4random() %75;
        RandomPosition = RandomPosition + 110;
        Obstacle.center = CGPointMake(570, RandomPosition);
        
        RandomPosition = arc4random() %75;
        RandomPosition = RandomPosition + 110;
        Obstacle2.center = CGPointMake(855, RandomPosition);
        
        RandomPosition = arc4random()  %55;
        Top1.center = CGPointMake(560, RandomPosition);
        
        RandomPosition = RandomPosition + 265;
        Bottom1.center = CGPointMake(560, RandomPosition);
        
        RandomPosition = arc4random()  %55;
        Top2.center = CGPointMake(640, RandomPosition);
        
        RandomPosition = RandomPosition + 265;
        Bottom2.center = CGPointMake(640, RandomPosition);
        
        RandomPosition = arc4random()  %55;
        Top3.center = CGPointMake(720, RandomPosition);
        
        RandomPosition = RandomPosition + 265;
        Bottom3.center = CGPointMake(720, RandomPosition);
        
        RandomPosition = arc4random()  %55;
        Top4.center = CGPointMake(800, RandomPosition);
        
        RandomPosition = RandomPosition + 265;
        Bottom4.center = CGPointMake(800, RandomPosition);
        
        RandomPosition = arc4random()  %55;
        Top5.center = CGPointMake(880, RandomPosition);
        
        RandomPosition = RandomPosition + 265;
        Bottom5.center = CGPointMake(880, RandomPosition);
        
        RandomPosition = arc4random()  %55;
        Top6.center = CGPointMake(960, RandomPosition);
        
        RandomPosition = RandomPosition + 265;
        Bottom6.center = CGPointMake(960, RandomPosition);
        
        RandomPosition = arc4random()  %55;
        Top7.center = CGPointMake(1040, RandomPosition);
        
        RandomPosition = RandomPosition + 265;
        Bottom7.center = CGPointMake(1040, RandomPosition);
        
    }
    
    Y = -7;
    
    Heli.image = [UIImage imageNamed:@"heliUp"];
    
}// code that runs if you press and the heli will down
- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    Y= 7;
   // this code shows the heli down image when the screen is tapped and the bellow code will show the opp when the heli goes down
    Heli.image = [UIImage imageNamed:@"heliDown"];
}
// gets ride of the carrier and time
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
    advertisment.hidden = NO;
    if (ScoreNumber > HighScore) {
        HighScore = ScoreNumber;
        [[NSUserDefaults standardUserDefaults] setInteger:HighScore forKey:@"HighScoreSaved"];
    }
    Heli.hidden = YES;
    Heli.center = CGPointMake(30, 135);
    [Timer invalidate];
    [Scorer invalidate];
    //selector calls to run new game method to start the game over onces it ednded
    [self performSelector:@selector(NewGame) withObject:nil afterDelay:3];
    //submarine sound stops
    [audioPlayerSubmarine stop];
    return YES;
    
}
- (void)bannerViewActionDidFinish:(ADBannerView *)banner
{
    advertisment.hidden = NO;
    // before the game starts all my objects will be hidden
    Bottom1.hidden = YES;
    Bottom2.hidden = YES;
    Bottom3.hidden = YES;
    Bottom4.hidden = YES;
    Bottom5.hidden = YES;
    Bottom6.hidden = YES;
    Bottom7.hidden = YES;
    
    Top1.hidden = YES;
    Top2.hidden = YES;
    Top3.hidden = YES;
    Top4.hidden = YES;
    Top5.hidden = YES;
    Top6.hidden = YES;
    Top7.hidden = YES;
    
    Obstacle.hidden = YES;
    Obstacle2.hidden = YES;
    
    Intro2.hidden = NO;
    Intro3.hidden = NO;
    Intro4.hidden = NO;
    
    
    Heli.hidden = NO;
    // brings the heli back to its original starting point
    Heli.center = CGPointMake(30, 135);
    Heli.image = [UIImage imageNamed:@"heliUp"];
    Start = YES;
    ScoreNumber = 0;
    Score.text = [NSString stringWithFormat:@"0"];
    Intro3.text= [NSString stringWithFormat:@"%i", HighScore];

}

//add banner
-(void) bannerViewDidLoadAd:(ADBannerView *)banner
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [banner setAlpha:1];
    [UIView commitAnimations];
   
}
//if there is no internet the banner is not shown
-(void) bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError*)error
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [banner setAlpha:0];
    [UIView commitAnimations];
}


- (void)viewDidLoad
{
    pause.hidden=YES;
    resume.hidden=YES;
    advertisment.hidden = NO;
    // to start the game boolian YES
    Start = YES;
    Bottom1.hidden = YES;
    Bottom2.hidden = YES;
    Bottom3.hidden = YES;
    Bottom4.hidden = YES;
    Bottom5.hidden = YES;
    Bottom6.hidden = YES;
    Bottom7.hidden = YES;
    Top1.hidden = YES;
    Top2.hidden = YES;
    Top3.hidden = YES;
    Top4.hidden = YES;
    Top5.hidden = YES;
    Top6.hidden = YES;
    Top7.hidden = YES;
    Obstacle.hidden = YES;
    Obstacle2.hidden = YES;
  

    HighScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    Intro3.text = [NSString stringWithFormat:@"%i", HighScore];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
