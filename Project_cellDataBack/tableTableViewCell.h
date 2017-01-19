//
//  tableTableViewCell.h
//  Project_cellDataBack
//
//  Created by 郭堯彰 on 2017/1/18.
//  Copyright © 2017年 charles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "tableTableViewController.h"

@interface tableTableViewCell : UITableViewCell<getselectedValueDelegate>
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *aka;
@property (nonatomic,assign)id<getselectedValueDelegate> delegate;

@end
