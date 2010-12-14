//
//  ImagePanningDemoAppViewController.h
//  ImagePanningDemoApp
//
//  Created by Collin Ruffenach on 12/13/10.
//  Copyright 2010 ELC Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImagePanningDemoAppViewController : UIViewController {

	IBOutlet UIScrollView *scrollview;
}

@property (nonatomic, retain) IBOutlet UIScrollView *scrollview;

-(IBAction)topLeft;													
-(IBAction)topRight;
-(IBAction)bottomLeft;
-(IBAction)bottomRight;

@end

