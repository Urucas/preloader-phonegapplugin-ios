//
//  JSInterface.h
//  
//
//  Created by vrunoa on 08/01/12.
//  Copyright (c) 2011 Urucas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <PhoneGap/PGPlugin.h>


@interface JSInterface : PGPlugin {
    
    NSString* callbackID;  
    UIAlertView *alert;
}

@property (nonatomic, copy) NSString* callbackID;
@property (nonatomic, copy) UIAlertView *alert;


//Instance Method  

-(void)showPreloader:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;  
-(void)hidePreloader:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;  


@end
