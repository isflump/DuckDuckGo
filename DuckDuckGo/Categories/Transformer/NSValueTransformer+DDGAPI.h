//
//  NSValueTransformer+DDGAPI.h
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSValueTransformer (DDGAPI)

+ (NSValueTransformer *)ddg_relatedTopicsArrayTransformer;
+ (NSValueTransformer *)ddg_URLTransformer;

@end
