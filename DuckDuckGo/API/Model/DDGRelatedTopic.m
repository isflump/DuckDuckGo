//
//  DuckDuckGoRelatedTopic.m
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import "DDGRelatedTopic.h"
#import "NSValueTransformer+DDGAPI.h"

@implementation DDGRelatedTopic

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"icon" : @"Icon",
             @"result" : @"Result",
             @"firstURL" : @"FirstURL",
             @"text" : @"Text",
             };
}

+ (NSValueTransformer *)firstURLJSONTransformer {
    return [NSValueTransformer ddg_URLTransformer];
}

@end
