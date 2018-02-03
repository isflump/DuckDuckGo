//
//  HomePageDataProvider.m
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import "HomePageDataProvider.h"
#import "DuckDuckGoApi.h"
#import "DDGSearchResponse.h"

@interface HomePageDataProvider()

@property (strong, nonatomic) DuckDuckGoApi *ddgApi;

@end

@implementation HomePageDataProvider

- (instancetype)init{
    self = [super init];
    if (self) {
        _ddgApi = [[DuckDuckGoApi alloc] init];
    }
    return self;
}

- (void)getData:(void (^)(void))completion{
    [self.ddgApi getSearchResult:^(DDGSearchResponse *response) {
        self.relatedTopicList = response.relatedTopics;
        completion();
    } failure:^(NSError *error) {
        NSLog(@"%@", error.description);
    }];
}

@end
