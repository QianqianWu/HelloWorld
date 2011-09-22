//
//  MyViewController.h
//  HelloWorld
//
//  Created by Qianqian on 20/09/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MyViewController : UIViewController <UITextFieldDelegate> {
    
    UITextField *textField;
    UILabel *label;
    NSString *userName;
}

@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, copy) NSString *userName;

- (IBAction)changeGreetings:(id)sender;

@end
