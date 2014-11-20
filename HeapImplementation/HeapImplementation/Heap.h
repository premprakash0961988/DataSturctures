//
//  HeapImplementation.h
//  FunProject
//
//  Created by Prem Chaurasiya on 22/05/14.
//  Copyright (c) 2014 Prem Chaurasiya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Heap : NSObject

-(void)insertItem:(NSInteger)newEntry;
-(void)deleteNode;
-(void)printElements;
@end
