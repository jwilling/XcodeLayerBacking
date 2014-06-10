/*
 *     Generated by class-dump 3.3.4 (64 bit).
 *
 *     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2011 by Steve Nygard.
 */

#import <AppKit/AppKit.h>

@class DVTDualProxyWindowTitleView, NSString, NSURL;

@interface DVTDualProxyWindow : NSWindow
{
    DVTDualProxyWindowTitleView *_titleView;
    NSURL *_secondaryRepresentedURL;
    NSString *_titlePrefix;
    id _primaryRepresentedDocumentBlock;
    id _secondaryRepresentedDocumentBlock;
}

- (id)_accessibilityTitleCell;
- (struct CGRect)_accessibilityTitleRect;
- (id)accessibilityTitleUIElementAttribute;
- (void)dvt_updateTitle:(id)arg1;
- (void)setTitle:(id)arg1;
- (id)title;
@property(copy) id secondaryRepresentedDocumentBlock;
@property(copy) id primaryRepresentedDocumentBlock;
@property(copy) NSString *titlePrefix;
@property(copy) NSURL *secondaryRepresentedURL;
- (void)setRepresentedURL:(id)arg1;
- (void)invalidateTitle;
- (BOOL)_isTitleHidden;
- (void)close;
- (id)dvt_titleView;

@end

