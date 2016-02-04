//
//  main.m
//  EncodeTest
//
//  Created by baidu on 15/12/6.
//  Copyright © 2015年 com.MyCompany. All rights reserved.
//


//hyc:测试@encode用法

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithBool:YES], @"key1", [NSNumber numberWithDouble:1.00f], @"key2", [NSNumber numberWithInt:1], @"key3", [NSNumber numberWithFloat:33.0], @"key4", nil];
        
        for (NSString * key in dic) {
            id value = [dic valueForKey:key];
            
            if ([value isKindOfClass:[NSNumber class]]) {
                const char* pObjcType = [((NSNumber *)value) objCType];
                
                if (strcmp(pObjcType, @encode(int)) == 0) {
                    NSLog(@"字典中的key=%@的值是int类型，值为%d", key, [value intValue]);
                }
                else if (strcmp(pObjcType, @encode(float)) == 0) {
                    NSLog(@"字典中的key=%@的值是float类型，值为%f", key, [value floatValue]);
                    
                }
                else if (strcmp(pObjcType, @encode(double)) == 0) {
                    NSLog(@"字典中的key=%@的值是double类型，值为%f", key, [value doubleValue]);
                    
                }
                else if (strcmp(pObjcType, @encode(BOOL)) == 0) {
                    NSLog(@"字典中的key=%@的值是BOOL类型，值为%i", key, [value boolValue]);
                    
                }
            }
        }
        
        
        NSLog(@"%s", @encode(BOOL));
        NSLog(@"%s", @encode(int));
        NSLog(@"%s", @encode(float));
        NSLog(@"%s", @encode(double));
        NSLog(@"%s", @encode(NSInteger));
        NSLog(@"%s", @encode(CGFloat));
        NSLog(@"%s", @encode(NSString));
        NSLog(@"%s", @encode(NSArray));
        
        
    }
    return 0;
}







































