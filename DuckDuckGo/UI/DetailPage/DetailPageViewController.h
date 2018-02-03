//
//  DetailPageViewController.h
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/3/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DDGRelatedTopic;

@interface DetailPageViewController : UIViewController

- (instancetype)initWithTopic:(DDGRelatedTopic *)topic;

@end
