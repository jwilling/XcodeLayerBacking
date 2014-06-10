//
//  JNWLayerBacking.m
//  XcodeLayerBacking
//
//  Created by Jonathan Willing on 6/9/14.
//  Copyright (c) 2014 appjon. All rights reserved.
//

#import "IDEWorkspaceWindow+JNWLayerBacking.h"
#import <objc/runtime.h>

@implementation IDEWorkspaceWindow (JNWLayerBacking)

+ (void)load {
    Method originalMethod = class_getInstanceMethod(self, @selector(setWindowController:));
    Method swizzledMethod = class_getInstanceMethod(self, @selector(jnw_setWindowController:));

    if ((originalMethod != nil) && (swizzledMethod != nil)) {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

- (void)jnw_setWindowController:(id)arg {
    NSWindowController *controller = arg;

    if (controller.window != nil) {
        [controller.window.contentView setWantsLayer:YES];
    }

    [self jnw_setWindowController:arg];
}

@end
