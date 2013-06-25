//
//  ViewController.m
//  RPS
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 Phil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@",@"Phil");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//Sets the Player Choice and Runs the Game.
-(IBAction)setChoice:(id)sender
{
    choice = [sender tag];
    [self changePicture:choice:0];
    [self game];
}
//Randomizes the Computer's Selection.
-(void)randomizeCompChoice
{
    compChoice = arc4random()%3;
    [self changePicture:compChoice:1];
    NSLog(@"%d",compChoice);
}
//Game Engine.
-(IBAction)game
{
    [self randomizeCompChoice];
    if (choice == compChoice)
    {
        result.text = [NSString stringWithFormat:@"%s","Tie"];
    }
    else
    {
        switch (choice)
        {
            case 0:
                if (compChoice == 1)
                {
                    result.text = [NSString stringWithFormat:@"%s","Loss"];
                }
                else
                {
                    result.text = [NSString stringWithFormat:@"%s","Win"];
                }
                break;
            case 1:
                if (compChoice == 0)
                {
                    result.text = [NSString stringWithFormat:@"%s","Win"];
                }
                else
                {
                    result.text = [NSString stringWithFormat:@"%s","Loss"];
                }
                break;
            case 2:
                if (compChoice == 0)
                {
                    result.text = [NSString stringWithFormat:@"%s","Loss"];
                }
                else
                {
                    result.text = [NSString stringWithFormat:@"%s","Win"];
                }
                break;
        }
    }
}

-(void)changePicture:(int)selection: (int)player
{
    if (player == 0)
    {
        switch (selection)
        {
            case 0:
                playerImage.image = [UIImage imageNamed:@"rock.png"];
                break;
            case 1:
                playerImage.image = [UIImage imageNamed:@"paper.png"];
                break;
            case 2:
                playerImage.image = [UIImage imageNamed:@"scissors.png"];
                break;
        }
    }
    else
    {
        switch (selection)
        {
            case 0:
                computerImage.image = [UIImage imageNamed:@"rock.png"];
                break;
            case 1:
                computerImage.image = [UIImage imageNamed:@"paper.png"];
                break;
            case 2:
                computerImage.image = [UIImage imageNamed:@"scissors.png"];
                break;
        }
    }
}

@end
