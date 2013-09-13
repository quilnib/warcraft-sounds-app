//
//  warcraftSoundAppAppDelegate.h
//  warcraftSoundApp
//
//  Created by Timothy Walsh on 3/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class warcraftSoundAppViewController;

@interface warcraftSoundAppAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    warcraftSoundAppViewController *viewController;
}

@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet warcraftSoundAppViewController *viewController;

@end

