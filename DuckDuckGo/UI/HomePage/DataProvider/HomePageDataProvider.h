//
//  HomePageDataProvider.h
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HomePageDataProvider : NSObject


@property (nonatomic,strong) NSMutableArray* relatedTopicList;
- (void)getData:(void (^)(void))completion;

@end
