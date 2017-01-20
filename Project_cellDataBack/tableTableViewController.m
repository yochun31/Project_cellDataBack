//
//  tableTableViewController.m
//  Project_cellDataBack
//
//  Created by 郭堯彰 on 2017/1/18.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "tableTableViewController.h"
#import "tableTableViewCell.h"
#import "ViewController.h"

@interface tableTableViewController ()

@end

@implementation tableTableViewController
@synthesize delegate;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [self getData];
    [self.tableView reloadData];
}


-(void)getData
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"currencies" ofType:@"csv"];
    NSData *data = [[NSFileManager defaultManager] contentsAtPath:path];
    NSError *error = nil;
    
    if ([data length] > 0 && error == nil)
    {
        currencyAkaList = [[NSMutableArray alloc]init];
        currencyNameList = [[NSMutableArray alloc]init];
        
        NSStringEncoding enBig5 = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingBig5);
        NSString *dataString = [[NSString alloc] initWithData:data encoding:enBig5];
        NSString *clearWhiteDataString = [dataString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSArray *array = [clearWhiteDataString componentsSeparatedByString:@"\n"];
        for (int i =0 ; i < [array count]; i++)
        {
            NSArray *cutArray = [[array objectAtIndex:i] componentsSeparatedByString:@","];
            NSString *currencyName = [[cutArray objectAtIndex:1]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSString *currencyAka = [[cutArray objectAtIndex:0]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            [currencyNameList addObject:currencyName];
            [currencyAkaList addObject:currencyAka];
            
            NSLog(@"%@",currencyName);
        }
    }
    

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [currencyNameList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"currencyCell";
//    tableTableViewCell *cell = (tableTableViewCell *)[tableView dequeueReusableCellWithIdentifier:identifier];
//    if (cell == nil) {
//        cell = [[tableTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//    }
//    
//    cell.name.text = [currencyNameList objectAtIndex:indexPath.row];
//    cell.aka.text = [currencyAkaList objectAtIndex:indexPath.row];
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
            }
        
    cell.textLabel.text = [currencyNameList objectAtIndex:indexPath.row];

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    //NSLog(@"Cell's text: %@",cell.textLabel.text);
    [delegate selectedValueIs:cell.textLabel.text];

    //[self.navigationController popViewControllerAnimated:YES];
    
   [self dismissViewControllerAnimated:YES completion:nil];
<<<<<<< HEAD
    
    NSLog(@"new");
=======
    NSLog(@"m");
>>>>>>> newbranch
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)back:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
