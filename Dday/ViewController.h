//
//  ViewController.h
//  Dday
//
//  Created by SWUComputer on 2016. 10. 24..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITextFieldDelegate,UIPickerViewDataSource>{
    NSArray *year;
    NSArray *month;
    NSArray *day;
}



//Step.1

@property (strong, nonatomic) IBOutlet UIPickerView *picker;


//Step.2
@property (strong, nonatomic) IBOutlet UITextField *myname;
@property (strong, nonatomic) IBOutlet UITextField *date;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *today;
@property (strong, nonatomic) IBOutlet UILabel *dday;



-(BOOL) textFieldShouldReturn:(UITextField *)textField;
-(IBAction)getValue;


@end


