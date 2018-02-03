//
//  DuckDuckGoSearchResponse.h
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>
#import "DDGRelatedTopic.h"

@interface DDGSearchResponse : MTLModel <MTLJSONSerializing>

@property (nonatomic) NSMutableArray *relatedTopics;

@end
