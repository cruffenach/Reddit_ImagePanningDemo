//
//  ImagePanningDemoAppViewController.m
//  ImagePanningDemoApp
//
//  Created by Collin Ruffenach on 12/13/10.
//  Copyright 2010 ELC Technologies. All rights reserved.
//

#import "ImagePanningDemoAppViewController.h"

@implementation ImagePanningDemoAppViewController

@synthesize scrollview;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


- (void)viewDidLoad {
    [super viewDidLoad];
	
	UIImageView *imageview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"BigPicture.png"]];
	[self.scrollview addSubview:imageview];
	[self.scrollview setContentSize:imageview.frame.size];
}

-(IBAction)topLeft {
	
	[self.scrollview scrollRectToVisible:CGRectMake(0,0,self.scrollview.frame.size.width, self.scrollview.frame.size.height)
								animated:YES];
}

-(IBAction)topRight {
	
	[self.scrollview scrollRectToVisible:CGRectMake(self.scrollview.contentSize.width-320,0,self.scrollview.frame.size.width, self.scrollview.frame.size.height)
								animated:YES];
}

-(IBAction)bottomLeft {
	
	[self.scrollview scrollRectToVisible:CGRectMake(0,self.scrollview.contentSize.height-480,self.scrollview.frame.size.width, self.scrollview.frame.size.height)
								animated:YES];
}

-(IBAction)bottomRight {
	
	[self.scrollview scrollRectToVisible:CGRectMake(self.scrollview.contentSize.width-320,self.scrollview.contentSize.height-480,self.scrollview.frame.size.width, self.scrollview.frame.size.height)
								animated:YES];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
