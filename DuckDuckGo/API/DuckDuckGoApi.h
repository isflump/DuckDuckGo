//
//  DuckDuckGoApi.h
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetWorking.h"
@class DDGSearchResponse;

@interface DuckDuckGoApi : NSObject

- (NSURLSessionDataTask *)getSearchResult:(void (^)(DDGSearchResponse *response))success
                                  failure:(void (^)(NSError *error))failure;
@end
