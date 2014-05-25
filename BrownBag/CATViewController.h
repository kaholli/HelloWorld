//
//  CATViewController.h
//  BrownBag
//
//  Created by Kathrin Holweger on 28.02.14.
//  Copyright (c) 2014 Kathrin Holweger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CATViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *tableContent;

@end
