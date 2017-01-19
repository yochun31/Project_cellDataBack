//
//  tableTableViewController.h
//  Project_cellDataBack
//
//  Created by 郭堯彰 on 2017/1/18.
//  Copyright © 2017年 charles. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol getselectedValueDelegate
@optional
-(void)selectedValueIs:(NSString *)value;
@end
@interface tableTableViewController : UITableViewController
{
    NSMutableArray *currencyAkaList;
    NSMutableArray *currencyNameList;
    
}
@property (nonatomic,assign)id<getselectedValueDelegate> delegate;
- (IBAction)back:(id)sender;

@end
