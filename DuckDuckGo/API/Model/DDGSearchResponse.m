//
//  DuckDuckGoSearchResponse.m
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import "DDGSearchResponse.h"
#import "NSValueTransformer+DDGAPI.h"

@implementation DDGSearchResponse

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"relatedTopics" : @"RelatedTopics"
             };
}

+ (NSValueTransformer *)relatedTopicsJSONTransformer {
    return [NSValueTransformer ddg_relatedTopicsArrayTransformer];
}

@end
