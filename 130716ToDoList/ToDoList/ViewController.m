//
//  ViewController.m
//  ToDoList
//
//  Created by Jessica Sturme on 16/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
{
    
    __weak IBOutlet UITableView *myTableView;
    __weak IBOutlet UITextField *todoTextField;
    __weak IBOutlet UIButton *addButton;
    NSMutableArray * todoItems;
    SecondViewController * secondViewController;
    NSIndexPath *myIndex;
    
}
- (IBAction)addToDo:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    todoItems = [[NSMutableArray alloc] initWithCapacity:10];
    [addButton setTitle:@"Add" forState:UIControlStateNormal];
        secondViewController = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
       
    secondViewController.myDelegate = self;
    
    
    
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

- (int) numberOfSectionsInTableView:(UITableView *)tableView
{
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
secondViewController = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    secondViewController.myDelegate = self;
    
    [self.view addSubview:secondViewController.view];
    myIndex = indexPath;
    
}

# pragma mark EditDelegate

- (void) changeText:(NSString*)stringForFirst
{
    [todoItems replaceObjectAtIndex:myIndex.row withObject:stringForFirst];
    [myTableView reloadData];
    
}



@end
