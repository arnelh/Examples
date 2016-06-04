/*
        TwoColumnsAspect.m
        TextSizingExample

        Author: Mike Ferris

        Copyright (c) 1995-2004, Apple Computer, Inc., all rights reserved.
*/
/*
 IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc. ("Apple") in
 consideration of your agreement to the following terms, and your use, installation, 
 modification or redistribution of this Apple software constitutes acceptance of these 
 terms.  If you do not agree with these terms, please do not use, install, modify or 
 redistribute this Apple software.
 
 In consideration of your agreement to abide by the following terms, and subject to these 
 terms, Apple grants you a personal, non-exclusive license, under Apple�s copyrights in 
 this original Apple software (the "Apple Software"), to use, reproduce, modify and 
 redistribute the Apple Software, with or without modifications, in source and/or binary 
 forms; provided that if you redistribute the Apple Software in its entirety and without 
 modifications, you must retain this notice and the following text and disclaimers in all 
 such redistributions of the Apple Software.  Neither the name, trademarks, service marks 
 or logos of Apple Computer, Inc. may be used to endorse or promote products derived from 
 the Apple Software without specific prior written permission from Apple. Except as expressly
 stated in this notice, no other rights or licenses, express or implied, are granted by Apple
 herein, including but not limited to any patent rights that may be infringed by your 
 derivative works or by other works in which the Apple Software may be incorporated.
 
 The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO WARRANTIES, 
 EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, 
 MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS 
 USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS.
 
 IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL 
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS 
 OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, 
 REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND 
 WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR 
 OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#import "TwoColumnsAspect.h"
#import "Controller.h"

@implementation TwoColumnsAspect

- (void)dealloc {
    [[[self controller] textStorage] removeLayoutManager:_layoutManager];
    [_layoutManager release];
    [super dealloc];
}

- (NSString *)aspectName {
    return NSLocalizedString(@"Two Column Text", @"Display name for TwoColumnAspect.");
}

- (void)didLoadNib {
    NSTextStorage *textStorage = [[self controller] textStorage];
    NSView *aspectView = [self aspectView];
    NSRect frame;
    NSTextContainer *textContainer;
    NSTextView *textView;

    [super didLoadNib];

    // Figure frame for NSTextView (and NSTextContainer size)
    frame = NSInsetRect([aspectView bounds], 8.0, 8.0);
    
    // Create NSSLayoutManager
    _layoutManager = [[NSLayoutManager allocWithZone:[self zone]] init];
    [textStorage addLayoutManager:_layoutManager];

    // Create and configure first NSTextContainer
    textContainer = [[NSTextContainer allocWithZone:[self zone]] initWithContainerSize:NSMakeSize(200.0, frame.size.height)];
    [textContainer setWidthTracksTextView:YES];
    [textContainer setHeightTracksTextView:YES];
    [_layoutManager addTextContainer:textContainer];
    [textContainer release];

    // Create and configure first NSTextView
    textView = [[NSTextView allocWithZone:[self zone]] initWithFrame:NSMakeRect(frame.origin.x, frame.origin.y, 200.0, frame.size.height) textContainer:textContainer];
    [textView setMinSize:NSMakeSize(200.0, frame.size.height)];
    [textView setMaxSize:NSMakeSize(200.0, frame.size.height)];
    [textView setHorizontallyResizable:NO];
    [textView setVerticallyResizable:NO];
    [textView setAutoresizingMask:(NSViewMaxXMargin | NSViewHeightSizable)];
    [textView setSelectable:YES];
    [textView setEditable:YES];
    [textView setRichText:YES];
    [textView setImportsGraphics:YES];
    [textView setUsesFontPanel:YES];
    [textView setUsesRuler:YES];
    [aspectView addSubview:textView];
    [textView release];

    // Create and configure second NSTextContainer
    textContainer = [[NSTextContainer allocWithZone:[self zone]] initWithContainerSize:NSMakeSize(frame.size.width - 200.0 - 8.0, frame.size.height)];
    [textContainer setWidthTracksTextView:YES];
    [textContainer setHeightTracksTextView:YES];
    [_layoutManager addTextContainer:textContainer];
    [textContainer release];

    // Create and configure second NSTextView
    textView = [[NSTextView allocWithZone:[self zone]] initWithFrame:NSMakeRect(frame.origin.x + 200.0 + 8.0, frame.origin.y, frame.size.width - 200.0 - 8.0, frame.size.height) textContainer:textContainer];
    [textView setMinSize:NSMakeSize(frame.size.width - 200.0 - 8.0, frame.size.height)];
    [textView setMaxSize:NSMakeSize(frame.size.width - 200.0 - 8.0, frame.size.height)];
    [textView setHorizontallyResizable:NO];
    [textView setVerticallyResizable:NO];
    [textView setAutoresizingMask:(NSViewWidthSizable | NSViewHeightSizable)];
    // Don't bother configuring the shared attributes of the text view since we already did it for the first one.
    [aspectView addSubview:textView];
    [textView release];
}

- (void)didSwapIn {
    [[[self aspectView] window] makeFirstResponder:[_layoutManager firstTextView]];
}

@end
