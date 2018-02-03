//
//  SearchResultTableViewCell.m
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import "SearchResultTableViewCell.h"
#import "DDGRelatedTopic.h"
#import "UIImageView+AFNetworking.h"

@interface SearchResultTableViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *resultImageView;
@property (weak, nonatomic) IBOutlet UILabel *resultTitleLabel;

@end

@implementation SearchResultTableViewCell

- (void)prepareForReuse{
    [super prepareForReuse];
    self.resultImageView.image = [UIImage imageNamed:@"imagePlaceHolder"];
}

- (void)updateWith:(DDGRelatedTopic *)topic{
    if (topic.icon.url){
        [self.resultImageView setImageWithURL:topic.icon.url placeholderImage:[UIImage imageNamed:@"imagePlaceHolder"]];
    }
    self.resultTitleLabel.text = topic.text;
}

@end
