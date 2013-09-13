//
//  warcraftSoundAppViewController.h
//  warcraftSoundApp
//
//  Created by Timothy Walsh on 3/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface warcraftSoundAppViewController : UIViewController {
	SystemSoundID _workCompleteSound;
	int _randomMultiplyer;
	int _temp;
	int _character;

}
@property SystemSoundID workCompleteSound;
@property int randomMultiplyer;
@property int temp;
@property int character;


-(IBAction)orcButtonPressed:(id) sender;
-(IBAction)ogreButtonPressed:(id) sender;
-(IBAction)trollButtonPressed:(id) sender;
-(IBAction)ogreMageButtonPressed:(id) sender;
-(IBAction)goblinSappersButtonPressed:(id) sender;
-(IBAction)deathKnightButtonPressed:(id) sender;
-(IBAction)goblinZeppelinButtonPressed:(id) sender;
-(IBAction)selectCharacter:(UIButton *) sender;
-(IBAction)playSound:(id) sender;
-(BOOL) IsTall;

@end

