//
//  ViewController.h
//  Project_cellDataBack
//
//  Created by 郭堯彰 on 2017/1/18.
//  Copyright © 2017年 charles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "tableTableViewController.h"
#import "tableTableViewCell.h"


@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,getselectedValueDelegate>
{
    NSArray *list;
    
}
@property (strong, nonatomic) IBOutlet UITableView *mytableView;
@property (strong ,nonatomic)NSString *subject;

@property (strong, nonatomic) IBOutlet UILabel *text;

@end

