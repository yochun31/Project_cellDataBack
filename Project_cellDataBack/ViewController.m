//
//  ViewController.m
//  Project_cellDataBack
//
//  Created by 郭堯彰 on 2017/1/18.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //list = @[@"name"];
    _mytableView.delegate = self;
    _mytableView.dataSource = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)selectedValueIs:(NSString *)value
{
    _subject = [[NSString alloc]init];
    _subject = value;
    [_mytableView reloadData];
   // [self.text setText:value];
    
    _text.text = _subject;
    NSLog(@"貨幣---->%@",_subject);
}


-(void)viewWillAppear:(BOOL)animated{

    
    NSLog(@"貨幣@---->%@",_subject);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *TableSampleIdentifier = @"TableSampleIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             TableSampleIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:TableSampleIdentifier];
    }
    
    if (_subject == nil) {
        cell.textLabel.text = @"Select 貨幣";
    } else {
        cell.textLabel.text = _subject;
    }
    
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
}

#pragma mark - cell click event
- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath {
    
    NSLog(@"====>%ld",(long)indexPath.row);
    if (indexPath.row == 0)
    {
//        UIStoryboard *board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//        UIViewController *nextpage =[board instantiateViewControllerWithIdentifier:@"nextID"];
//        [self presentViewController:nextpage animated:YES completion:nil];
        
        tableTableViewController *tableView = [[tableTableViewController alloc]init];
        
        [tableView setDelegate:self];

        [self presentViewController:tableView animated:YES completion:nil];
        
    }

    
}

@end
