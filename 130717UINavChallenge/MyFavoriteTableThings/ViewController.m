//
//  ViewController.m
//  MyFavoriteTableThings
//
//  Created by Jessica Sturme on 16/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import "ViewController.h"
#import "EditViewController.h"

@interface ViewController () {
__weak IBOutlet UITextField *textField;
__weak IBOutlet UITableView *myTableView;
    NSMutableArray * favoriteThings;
    int row;
    
    
}

- (IBAction)addText:(id)sender;
- (IBAction)removeText:(id)sender;
- (IBAction)reorderText:(id)sender;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    favoriteThings = [[NSMutableArray alloc] initWithCapacity:10];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addText:(id)sender {
    [favoriteThings addObject:textField.text];
    [myTableView reloadData];
    [textField resignFirstResponder];
    }

- (IBAction)removeText:(id)sender {
    [favoriteThings removeLastObject];
    [myTableView reloadData];
}

- (IBAction)reorderText:(id)sender {
    favoriteThings = [NSMutableArray arrayWithArray:[[favoriteThings reverseObjectEnumerator] allObjects]];
    [myTableView reloadData];
}
# pragma mark UITableViewDataSource

- (int) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
    }

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"my identifier"];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"my identifier"];
    }
    cell.textLabel.text = [favoriteThings objectAtIndex:indexPath.row];
    return  cell;
    
}
- (int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  [favoriteThings count];
}


# pragma mark UITableViewDelegate

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    EditViewController *editViewController;
    editViewController = [[EditViewController alloc] initWithNibName:nil bundle:nil];
    editViewController.textValue = [favoriteThings objectAtIndex:indexPath.row];
    editViewController.delegate = self;
    row = indexPath.row;
    [self.navigationController pushViewController:editViewController animated:YES];
    }

# pragma mark EditDelegate
- (void) valueDidChange:(NSString *) value;
{
    [favoriteThings replaceObjectAtIndex:row withObject:value];
    [myTableView reloadData];
    
}

@end

