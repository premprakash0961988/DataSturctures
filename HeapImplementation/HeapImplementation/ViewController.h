//
//  ViewController.h
//  HeapImplementation
//
//  Created by Prem Chaurasiya on 20/11/14.
//  Copyright (c) 2014 playLikeKid. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UITextField *inputField;
}

-(IBAction)addObject:(id)sender;
-(IBAction)deleteObject:(id)sender;
-(IBAction)printObjects:(id)sender;



@end

