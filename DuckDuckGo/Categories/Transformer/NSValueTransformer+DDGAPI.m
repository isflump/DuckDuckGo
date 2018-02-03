//
//  NSValueTransformer+DDGAPI.m
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import "NSValueTransformer+DDGAPI.h"
#import "DDGRelatedTopic.h"
#import <Mantle/Mantle.h>
@implementation NSValueTransformer (DDGAPI)

+ (NSValueTransformer *)ddg_relatedTopicsArrayTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^id(NSArray* array, BOOL *success, NSError *__autoreleasing *error) {
        NSMutableArray *objects = [NSMutableArray new];
        for (NSDictionary *element in array){
            if ([element objectForKey:@"Topics"]) {
                for (NSDictionary *topicDict in [element objectForKey:@"Topics"]){
                    DDGRelatedTopic *topic = [MTLJSONAdapter modelOfClass:DDGRelatedTopic.class fromJSONDictionary:topicDict error:error];
                    [objects addObject:topic];
                }
            }else if ([element objectForKey:@"Text"]){
                DDGRelatedTopic *topic = [MTLJSONAdapter modelOfClass:DDGRelatedTopic.class fromJSONDictionary:element error:error];
                [objects addObject:topic];
            }
        }
        return objects;
    }];
}

+ (NSValueTransformer *)ddg_URLTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^id(NSString* urlString, BOOL *success, NSError *__autoreleasing *error) {
        if (urlString.length > 0 && [NSURL URLWithString:urlString]) {
            return [NSURL URLWithString:urlString];
        }
        return nil;
    }];
}

@end
