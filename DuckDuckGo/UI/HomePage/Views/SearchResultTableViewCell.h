//
//  SearchResultTableViewCell.h
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DDGRelatedTopic;

@interface SearchResultTableViewCell : UITableViewCell

- (void)updateWith:(DDGRelatedTopic *)topic;

@end
