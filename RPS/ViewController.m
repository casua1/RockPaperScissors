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
    [rock.imageView setImage:[UIImage imageNamed:@"rock.png"]];
    [paper.imageView setImage:[UIImage imageNamed:@"paper.png"]];
    [scissors.imageView setImage:[UIImage imageNamed:@"scissors.png"]];
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
-(void)game
{
    [self randomizeCompChoice];
    if (choice == compChoice)
    {
        result = 1;
    }
    else
    {
        switch (choice)
        {
            case 0:
                if (compChoice == 1)
                {
                    result = 0;
                }
                else
                {
                    result = 2;
                }
                break;
            case 1:
                if (compChoice == 0)
                {
                    result = 2;
                }
                else
                {
                    result = 0;
                }
                break;
            case 2:
                if (compChoice == 0)
                {
                    result = 0;
                }
                else
                {
                    result = 2;
                }
                break;
        }
    }
    if (result == 2)
    {
        endMessage = @"Player Wins.";
    }
    if (result == 1)
    {
        endMessage = @"It's a Tie.";
    }
    if (result == 0)
    {
        endMessage = @"Player Loses.";
    }
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Game Over!" message:endMessage delegate:self cancelButtonTitle:@"OK" otherButtonTitles:Nil];
    [alert show];
}

-(void)changePicture:(int)selection:(int)player
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
