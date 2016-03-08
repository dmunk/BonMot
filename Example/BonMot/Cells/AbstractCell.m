//
//  AbstractCell.m
//  BonMot
//
//  Created by Zev Eisenberg on 4/20/15.
//  Copyright © 2015 Zev Eisenberg. All rights reserved.
//

#import "AbstractCell.h"

@implementation AbstractCell

+ (NSString *)title
{
    NSAssert(NO, @"Subclasses must override this method.");
    return nil;
}

+ (NSString *)reuseIdentifier
{
    return [NSString stringWithFormat:@"com.raizlabs.reuseIdentifier.%@", NSStringFromClass(self)];
}

- (NSString *)reuseIdentifier
{
    return self.class.reuseIdentifier;
}

+ (UIColor *)raizlabsRed
{
    return [UIColor colorWithRed:0.927
                           green:0.352
                            blue:0.303
                           alpha:1.0];
}

@end
