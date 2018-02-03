//
//  DuckDuckGoRelatedTopic.h
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>
#import "DDGIcon.h"

@interface DDGRelatedTopic : MTLModel <MTLJSONSerializing>

@property (nonatomic) NSString *result;
@property (nonatomic) NSURL *firstURL;
@property (nonatomic) NSString *text;
@property (nonatomic) DDGIcon *icon;

@end
