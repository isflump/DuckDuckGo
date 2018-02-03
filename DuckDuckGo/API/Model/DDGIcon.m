//
//  DDGIcon.m
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import "DDGIcon.h"
#import "NSValueTransformer+DDGAPI.h"

@implementation DDGIcon

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"url" : @"URL"
             };
}

+ (NSValueTransformer *)urlJSONTransformer {
    return [NSValueTransformer ddg_URLTransformer];
}

@end
