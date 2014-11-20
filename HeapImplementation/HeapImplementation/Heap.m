//
//  HeapImplementation.m
//  FunProject
//
//  Created by Prem Chaurasiya on 22/05/14.
//  Copyright (c) 2014 Prem Chaurasiya. All rights reserved.
//

#import "Heap.h"

@interface Heap()
@property(nonatomic,assign) NSInteger heapSize;
@end

int heap[0];

@implementation Heap
@synthesize heapSize;

-(id)init {
    self = [super init];
    if (self) {
        heapSize = 0;
        heap[heapSize] = - INT_MAX;
    }
    return self;
}

-(void)insertItem:(NSInteger)newEntry {
    
    heapSize++;
    heap[heapSize] = (int)newEntry;
    NSInteger index = heapSize;
    while (heap[index/2] > newEntry) {
        heap[index] =  heap[index/2];
        index = index/2;
    }
    heap[index] = (int)newEntry;
    NSLog(@"HeapSize %d",(int)heapSize);
}

-(void)deleteNode {
    int minElement,lastElement,now;
    now = 1;
    lastElement = heap[heapSize];
    heapSize--;
    heap[now] = lastElement;
    
    while((lastElement > heap[2*now] && (heapSize >= 2*now)) || (lastElement > heap[2*now+1] && (heapSize >= 2*now+1))) {
        minElement = (heap[2*now] < heap[2*now+1]) ? 2*now : 2*now+1;
        heap[now] = heap[minElement];
        now = minElement;
    }
    heap[now] = lastElement;
    NSLog(@"HeapSize %d",(int)heapSize);
}

-(void)printElements {
    NSLog(@"\n");
    for (int i = 1; i <= heapSize ; i++ ) {
        printf(" %d ",heap[i]);

        int j = i+1;
        if((j & -j) == j) // this is condition to check (2^x - 1)item
            printf("\n");
    }
}
@end
