//
//  DDGIcon.h
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface DDGIcon : MTLModel <MTLJSONSerializing>

@property (nonatomic) NSURL *url;

@end
