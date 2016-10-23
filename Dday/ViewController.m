//
//  ViewController.m
//  Dday
//
//  Created by SWUComputer on 2016. 10. 24..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myname,date; //Step.2
@synthesize name,today,dday; //Step.2 -  lebal
@synthesize picker; //step.1


-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    name.text = myname.text;
    today.text =date.text;
    NSString* msg=000; //날짜를 계산하는 로직만 알면 되는데 그걸 못하겠습니다. 우선 이 문자로 되어있는 값을 형변환해서 연산작업을 진행하고 그 결과를 다시 문자로 형변환해서 ddat.text 에 넣으면 될거 같은뎁...[(((int)[date.text substringFromIndex:3]- (int)[picker selectedRowInComponent:0])*365)+(((int)[date.text substringWithRange: NSMakeRange( 4,2)]- (int) [picker selectedRowInComponent:1])*30)].....;
    dday.text = msg;
    return YES;
    
  
}
- (void)viewDidLoad {
    [super viewDidLoad];
    year = [[NSArray alloc] initWithObjects:@"2000",@"2001",@"2002", @"2003",@"2004",@"2005",@"2006",@"2007",@"2008",@"2009",@"2010", @"2011",@"2012",@"2013",@"2014",@"2015",@"2016", nil];
    month = [[NSArray alloc] initWithObjects:@"01", @"02",@"03",@"04",@"05",@"06",@"07",@"08",@"09",@"10",@"11",@"12",nil];
    day = [[NSArray alloc] initWithObjects:@"01", @"02",@"03",@"04",@"05",@"06",@"07",@"08",@"09",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"21",@"22",@"23",@"24",@"25",@"26",@"27",@"28",@"29",@"30",@"31", nil];
    
    
    
    
}



-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 3;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == 0)
        return [year count];
    else if (component ==1)
        return [month count];
    else//(component ==2)
        return [day count];
    
}
-(NSString*) pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component == 0)
        return [year objectAtIndex:row];
    else if(component ==1)
        return [month objectAtIndex:row];
    else
        return [day objectAtIndex:row];
    
}
-(int) resultYear;{
    int resultY; int i; int j;
    i = (int)[date.text substringFromIndex:3];  // - (int)[picker selectedRowInComponent:0];
    j = (int)[picker selectedRowInComponent:0];
    resultY = i - j;
    
    return resultY * 365;
    
}
-(int) resultMonth{
    int resultM; int a; int b;
    a = (int) [date.text substringWithRange: NSMakeRange( 4,2)];
    b = (int) [picker selectedRowInComponent:1];
    resultM = a-b ;
    return resultM * 30;
    
    
}

-(int) resultDay {
    int resultD; int c; int d;
    c= (int) [date.text substringFromIndex:6];
    d =(int) [picker selectedRowInComponent:2];
    resultD = c+d;
    
    return resultD;
}



-(IBAction)getValue
{

   // int result = [(int)[date.text substringFromIndex:3] - (int)[picker selectedRowInComponent:0]]*365;
//int days(int dyear, int dmonth, int dday);
/*int dcount;

    //사귄 날짜
    int first_year, first_month, first_day;
    //오늘 닐찌
    int dyear, dmonth, dday;
    //지금까지 살아온날
    int first_count = 0;
    int count = 0;
    
    
    //처음 사귄 날짜의 년도 월 일을 입력
    first_year = [picker selectedRowInComponent:0];
    first_month= [picker selectedRowInComponent:1];
    first_day = [picker selectedRowInComponent:2];
    
    
    //오늘의 년도 월 일을 입력
    NSString *TODAY = date.text;
    //NSString *haha = [TODAY substringWithRange : NSMakeRange(4,2)];
    dyear = [TODAY substringFromIndex:3];
    dmonth = [TODAY substringWithRange : NSMakeRange(4,2)];
    dday = [TODAY substringFromIndex:6];
    
    
    //각각 함수 호출
    first_count = days(first_year, first_month, first_day);
    dcount = days(dyear,dmonth,dday);
    //오늘날에서 처음 사귄날을 빼주면 만난 일수
   // int DAY = dcount - first_count;
}
//날짜를 이용하여 0일을 기준으로 날을 리턴하는 함수
int days(int dyear, int dmonth, int dday)
{
    //날 값이 저장될 변수
    int dcount = 0;
    //달 수의 계산할 배열
    int mon[12] = {31,28,31,30,31,30,31,31,30,31,30,31};
    int i;
    //윤년이 아닐때 365일
    //윤년일때 366일
    for(i = 0; i<dyear; i++)
    {
        //윤년이면
        if(i % 4 == 0)
        {
            dcount += 366;
        }
        else
        {
            dcount += 365;
        }
    }
    for(i = 0; i< dmonth; i++)
    {
        //해당 년도가 윤년일때
        if(dyear%4 == 0)
        {
            //2월은 29일
            if(i == 1)
            {
                dcount += (mon[i]+1);
            }
            else
            {
                dcount += mon[i];
            }
        }
        //아닐때
        else
        {
            dcount += mon[i];
        }
    }
    //남은 일수값
    dcount += dday;
    return dcount;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}*/
}

@end
