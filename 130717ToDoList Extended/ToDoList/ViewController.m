//
//  ViewController.m
//  ToDoList
//
//  Created by Jessica Sturme on 16/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController ()
{
    
    __weak IBOutlet UITableView *myTableView;
    __weak IBOutlet UITextField *todoTextField;
    __weak IBOutlet UIButton *addButton;
    NSMutableArray * todoItems;
    int row;
    }

- (IBAction)addToDo:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    todoItems = [[NSMutableArray alloc] initWithCapacity:10];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addToDo:(id)sender {
    [todoItems addObject:todoTextField.text];
    [myTableView reloadData];
    [todoTextField resignFirstResponder];
    }


#pragma mark UITableViewDataSource

- (int) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
    }

- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"To Do List";
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"my identifier"];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"my identifier"];
            }
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    cell.textLabel.text = [todoItems objectAtIndex:indexPath.row];
    return  cell;
    }

- (int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [todoItems count];
    }


# pragma mark UITableViewDelegate



- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    //when accessory button is tapped this is what happened
    //1 allocate init our second view controller
    //2 add secondviewcontroller to current view
    SecondViewController *secondViewController;
secondViewController = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    secondViewController.myDelegate = self;
     row = indexPath.row;
    [self.navigationController pushViewController:secondViewController animated:YES];
   }

# pragma mark EditDelegate

- (void) changeText:(NSString*)stringForFirst
{
    [todoItems replaceObjectAtIndex:row withObject:stringForFirst];
    [myTableView reloadData];
}

# pragma mark Deleting Swipe

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [todoItems removeObjectAtIndex:indexPath.row];
        [myTableView reloadData];
        }
}

# pragma mark Edit Multiple Delete
    - (void)setEditing:(BOOL)flag animated:(BOOL)animated
    {
        [super setEditing:flag animated:animated];
        if (flag == YES){
            // Change views to edit mode.
        }
        else {
            // Save the changes if needed and change the views to noneditable.
        }
    }

@end
