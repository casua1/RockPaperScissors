//
//  ViewController.h
//  RPS
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 Phil. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ViewController : UIViewController
{
    IBOutlet UIImageView *computerImage;
    IBOutlet UIImageView *playerImage;
    int result;
        //Result... 0 = Loss, 1= Tie, 2= Win
    int choice;
    int compChoice;
    NSString *endMessage;
}

-(IBAction)setChoice:(id)sender;
-(void)randomizeCompChoice;
-(IBAction)game;
-(void)changePicture:(int)selection: (int)player;

@end
