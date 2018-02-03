//
//  DuckDuckGoApi.m
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import "DuckDuckGoApi.h"
#import "DDGSearchResponse.h"

@interface DuckDuckGoApi()

@property (nonatomic, strong) AFHTTPSessionManager *manager;

@end

@implementation DuckDuckGoApi

- (instancetype)init{
    self = [super init];
    if (self) {
        _manager = [AFHTTPSessionManager manager];
        AFJSONResponseSerializer *responseSerializer = [[AFJSONResponseSerializer alloc] init];
        responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", @"text/plain", @"application/x-javascript",nil];
        _manager.responseSerializer = responseSerializer;
    }
    return self;
}

- (NSURLSessionDataTask *)getSearchResult:(void (^)(DDGSearchResponse *response))success
                                  failure:(void (^)(NSError *error))failure{
    return [self.manager GET:@"http://api.duckduckgo.com/?q=apple&format=json&pretty=1" parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSError *error = nil;
        DDGSearchResponse *searchResponse = [MTLJSONAdapter modelOfClass:DDGSearchResponse.class fromJSONDictionary:responseObject error:&error];
        success(searchResponse);
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        failure(error);
    }];
}

@end

