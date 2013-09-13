//
//  warcraftSoundAppViewController.m
//  warcraftSoundApp
//
//  Created by Timothy Walsh on 3/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "warcraftSoundAppViewController.h"

@implementation warcraftSoundAppViewController

@synthesize workCompleteSound = _workCompleteSound;
@synthesize randomMultiplyer = _randomMultiplyer;
@synthesize temp = _temp;
@synthesize character = _character;

UILabel *label;
/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
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



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *backgroundImage = [[NSString alloc]init];
    UIImageView *imgView;
    
    
    if ([self IsTall])
    {
    }else{
        backgroundImage = @"background.png";
        imgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
        UIImage *image = [UIImage imageNamed:backgroundImage];
        [imgView setImage:image];
        [self.view addSubview:imgView];
    }
	
    
    //[self.view sendSubviewToBack:imgView];
	
	//Create label
	label = [[UILabel alloc] init];
	label.frame = CGRectMake(10, 180, 300, 40);
	label.textAlignment = UITextAlignmentCenter;
	label.font = [UIFont systemFontOfSize:30];
	[label setBackgroundColor:[UIColor clearColor]];
	[label setTextColor:[UIColor yellowColor]];
	
	label.text = @"Orc";
	
	[self.view addSubview:label];
	
	
}




// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return NO; //(interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)orcButtonPressed:(id) sender
{
	_randomMultiplyer = 15;
	_temp = arc4random() % _randomMultiplyer;
	NSString *workCompletePath;
	NSURL *workCompleteURL;
	switch (_temp) {
		case 0:
			workCompletePath = [[NSBundle mainBundle] 
										  pathForResource:@"work-complete" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 1:
			workCompletePath = [[NSBundle mainBundle] 
										  pathForResource:@"orcAcknowledge1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 2:
			workCompletePath = [[NSBundle mainBundle] 
										  pathForResource:@"orcAcknowledge2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 3:
			workCompletePath = [[NSBundle mainBundle] 
										  pathForResource:@"orcAcknowledge3" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 4:
			workCompletePath = [[NSBundle mainBundle] 
										  pathForResource:@"orcAcknowledge4" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 5:
			workCompletePath = [[NSBundle mainBundle] 
										  pathForResource:@"orcAnnoyed1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 6:
			workCompletePath = [[NSBundle mainBundle] 
										  pathForResource:@"orcAnnoyed2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 7:
			workCompletePath = [[NSBundle mainBundle] 
										  pathForResource:@"orcAnnoyed3" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 8:
			workCompletePath = [[NSBundle mainBundle] 
										  pathForResource:@"orcAnnoyed4" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 9:
			workCompletePath = [[NSBundle mainBundle] 
										  pathForResource:@"orcAnnoyed5" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 10:
			workCompletePath = [[NSBundle mainBundle] 
										  pathForResource:@"orcAnnoyed6" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 11:
			workCompletePath = [[NSBundle mainBundle] 
										  pathForResource:@"orcAnnoyed7" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 12:
			workCompletePath = [[NSBundle mainBundle] 
										  pathForResource:@"orcHelp1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 13:
			workCompletePath = [[NSBundle mainBundle] 
										  pathForResource:@"orcHelp2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 14:
			workCompletePath = [[NSBundle mainBundle] 
										  pathForResource:@"orcSelected5" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		
		default:
			break;
	}
	
}

-(IBAction)ogreButtonPressed:(id) sender{
	
	_randomMultiplyer = 9; // the number of cases +1, but the actual number of sayings
	_temp = arc4random() % _randomMultiplyer;
	NSString *workCompletePath;
	NSURL *workCompleteURL;
	switch (_temp) {
		case 0:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"ogreAcknowledge1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 1:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"ogreAcknowledge2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 2:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"ogreAcknowledge3" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 3:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"ogreAnnoyed2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 4:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"ogreAnnoyed3" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 5:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"ogreAnnoyed4" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 6:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"ogreReady" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 7:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"ogreAnnoyed" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 8:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"ogreAnnoyed5" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
					
		default:
			break;
	}
	
}

-(IBAction)trollButtonPressed:(id) sender{
	
	_randomMultiplyer = 9; // the number of cases +1, but the actual number of sayings
	_temp = arc4random() % _randomMultiplyer;
	NSString *workCompletePath;
	NSURL *workCompleteURL;
	switch (_temp) {
		case 0:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"TAcknowledge1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 1:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"TAcknowledge2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 2:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"TAcknowledge3" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 3:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"TAnnoyed1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 4:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"TAnnoyed2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 5:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"TAnnoyed3" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 6:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"TSelected1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 7:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"TSelected2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 8:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"TSelected3" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
			
		default:
			break;
	}
	
}

-(IBAction)ogreMageButtonPressed:(id) sender{
	
	_randomMultiplyer = 6; // the number of cases +1, but the actual number of sayings
	_temp = arc4random() % _randomMultiplyer;
	NSString *workCompletePath;
	NSURL *workCompleteURL;
	switch (_temp) {
		case 0:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"OMAcknowledge1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 1:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"OMAcknowledge2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 2:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"OMAcknowledge3" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 3:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"OMAnnoyed1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 4:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"OMAnnoyed2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 5:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"OMAnnoyed3" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
				default:
			break;
	}
	
}

-(IBAction)goblinSappersButtonPressed:(id) sender{
	
	_randomMultiplyer = 8; // the number of cases +1, but the actual number of sayings
	_temp = arc4random() % _randomMultiplyer;
	NSString *workCompletePath;
	NSURL *workCompleteURL;
	switch (_temp) {
		case 0:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"GSAcknowledge1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 1:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"GSAcknowledge2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 2:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"GSAcknowledge3" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 3:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"GSAcknowledge4" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 4:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"GSAnnoyed1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 5:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"GSAnnoyed2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 6:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"GSAnnoyed3" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 7:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"GSReady" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
			
		default:
			break;
	}
	
}

-(IBAction)deathKnightButtonPressed:(id) sender{
	
	_randomMultiplyer = 9; // the number of cases +1, but the actual number of sayings
	_temp = arc4random() % _randomMultiplyer;
	NSString *workCompletePath;
	NSURL *workCompleteURL;
	switch (_temp) {
		case 0:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"DKAcknowledge1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 1:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"DKAcknowledge2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 2:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"DKAcknowledge3" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 3:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"DKAnnoyed1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 4:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"DKAnnoyed2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 5:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"DKAnnoyed3" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 6:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"DKReady" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 7:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"DKSelected1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 8:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"DKSelected2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
			
		default:
			break;
	}
	
}

-(IBAction)goblinZeppelinButtonPressed:(id) sender{
	
	_randomMultiplyer = 4; // the number of cases +1, but the actual number of sayings
	_temp = arc4random() % _randomMultiplyer;
	NSString *workCompletePath;
	NSURL *workCompleteURL;
	switch (_temp) {
		case 0:
			workCompletePath = [[NSBundle mainBundle]
								pathForResource:@"GZAcknowledge1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 1:
			workCompletePath = [[NSBundle mainBundle]
								pathForResource:@"GZAnnoyed1" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 2:
			workCompletePath = [[NSBundle mainBundle]
								pathForResource:@"GZAnnoyed2" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
		case 3:
			workCompletePath = [[NSBundle mainBundle] 
								pathForResource:@"GZReady" ofType:@"wav"];
			workCompleteURL = [NSURL fileURLWithPath:workCompletePath];
			AudioServicesCreateSystemSoundID((__bridge CFURLRef)workCompleteURL, &_workCompleteSound);
			AudioServicesPlaySystemSound(_workCompleteSound);
			break;
			
		default:
			break;
	}
	
}
	
-(IBAction)selectCharacter:(UIButton *) sender{
	
	
	_character = (int)[sender tag];
	
	if (_character == 0) {
		label.text = @"Orc";
	}else if (_character == 1) {
		label.text = @"Troll Axe Thrower";
	}else if (_character == 2) {
		label.text = @"Ogre";
	}else if (_character == 3) {
		label.text = @"Ogre Mage";
	}else if (_character == 4) {
		label.text = @"Goblin Sappers";
	}else if (_character == 5) {
		label.text = @"Death Knight";
	}else if (_character == 6) {
		label.text = @"Goblin Zepplin";
	}
	
}

-(IBAction)playSound:(id) sender{
	
	switch (_character) {
		case 0:
			[self orcButtonPressed:sender];
			break;
		case 1:
			[self trollButtonPressed:sender];
			break;
		case 2:
			[self ogreButtonPressed:sender];
			break;
		case 3:
			[self ogreMageButtonPressed:sender];
			break;
		case 4:
			[self goblinSappersButtonPressed:sender];
			break;
		case 5:
			[self deathKnightButtonPressed:sender];
			break;
		case 6:
			[self goblinZeppelinButtonPressed:sender];
			break;
		default:
			//[self orcButtonPressed:sender];
			break;
	}
	
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	label = nil;
}

-(BOOL) IsTall
{
    return ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) && ([[UIScreen mainScreen] bounds].size.height * [[UIScreen mainScreen] scale] >= 1136);
}


@end
