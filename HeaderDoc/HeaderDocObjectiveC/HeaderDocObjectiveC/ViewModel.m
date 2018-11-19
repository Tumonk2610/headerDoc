//
//  ViewModel.m
//  HeaderDocObjectiveC
//
//  Created by ViTuNguyen on 11/17/18.
//  Copyright © 2018 ViTuNguyen. All rights reserved.
//

#import "ViewModel.h"

@implementation ViewModel

   + (NSString *)mathPlusWithA:(NSString *)a andB:(NSString *)b{
        int c = [a intValue] + [b intValue];
        return [NSString stringWithFormat:@"%d", c];
    }
@end
