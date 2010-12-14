//
//  ImagePanningDemoAppAppDelegate.h
//  ImagePanningDemoApp
//
//  Created by Collin Ruffenach on 12/13/10.
//  Copyright 2010 ELC Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ImagePanningDemoAppViewController;

@interface ImagePanningDemoAppAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ImagePanningDemoAppViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ImagePanningDemoAppViewController *viewController;

@end

