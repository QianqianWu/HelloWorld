//
//  MyViewController.m
//  HelloWorld
//
//  Created by Qianqian on 20/09/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyViewController.h"


@implementation MyViewController
@synthesize textField;
@synthesize label;
@synthesize userName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [textField release];
    [label release];
    [userName release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField{
    if (theTextField==self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}

- (IBAction)changeGreetings:(id)sender {
    
    self.userName = self.textField.text;
    NSString *nameString = self.userName;
    if ([nameString length]==0) {
        nameString = @"World";
    }
    NSString *Greetings=[[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.label.text=Greetings;
    [Greetings release];
}
@end
