//
//  JSInterface.m
//  
//
//  Created by vrunoa on 08/01/12.
//  Copyright (c) 2011 Urucas. All rights reserved.
//

#import "JSInterface.h"


@implementation JSInterface


@synthesize callbackID;
@synthesize alert;


-(void)showPreloader:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options  
{
    
    self.callbackID = [arguments pop];
    
    alert = [[[UIAlertView alloc] initWithTitle:@"Native preloader!" message:@"Loading" delegate:self cancelButtonTitle:nil otherButtonTitles:nil] autorelease];
    
    if(alert != nil) {
               
        UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        
//        indicator.center = CGPointMake(alert.bounds.size.width/2, alert.bounds.size.height-45);
        
        CGFloat width = [UIScreen mainScreen].bounds.size.width;
        CGFloat xpos  = (width / 2) - 20; 
        CGFloat ypos  = 95; 
        
        indicator.center = CGPointMake(alert.bounds.origin.x + xpos , alert.bounds.origin.y + ypos);
        
        [indicator startAnimating];
        [alert addSubview:indicator];
        [indicator release];
    }
    
    [alert show]; 
}

-(void)hidePreloader:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options  
{
    
    self.callbackID = [arguments pop];
    
    [alert dismissWithClickedButtonIndex:0 animated:YES];
    //[alert release];  

}

@end
