//
//  CATViewController.m
//  BrownBag
//
//  Created by Kathrin Holweger on 28.02.14.
//  Copyright (c) 2014 Kathrin Holweger. All rights reserved.
//

#import "CATViewController.h"

@interface CATViewController ()

@end

@implementation CATViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView setDataSource:self];
    [self.tableView setDelegate:self];
    self.tableContent = @[@"Eins", @"Zwei", @"Drei"];
	// Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableContent count];

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];
    [cell.textLabel setText:[self.tableContent objectAtIndex:indexPath.row]];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
        NSInteger row = indexPath.row;
    NSString *message = [NSString stringWithFormat:@"You selected row: %@", [self.tableContent objectAtIndex:row]];
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Row Selected" message:message delegate:nil  cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
