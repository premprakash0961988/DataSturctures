//
//  ViewController.m
//  HeapImplementation
//
//  Created by Prem Chaurasiya on 20/11/14.
//  Copyright (c) 2014 playLikeKid. All rights reserved.
//

#import "ViewController.h"
#import "Heap.h"

@interface ViewController ()
@property (nonatomic, strong) Heap *myHeap;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _myHeap = [Heap new];
}

-(IBAction)addObject:(id)sender {
    NSString *input = inputField.text;
//    if([input integerValue] != 0 || [input isEqual:@"0"]) {
//        [_myHeap insertItem:[input integerValue]];
//    }
    for (int i = 0; i <  input.integerValue; i++) {
        [_myHeap insertItem:arc4random()%100];
    }
    
}

-(IBAction)deleteObject:(id)sender {
    [_myHeap deleteNode];
}

-(IBAction)printObjects:(id)sender {
    [_myHeap printElements];
}



@end
