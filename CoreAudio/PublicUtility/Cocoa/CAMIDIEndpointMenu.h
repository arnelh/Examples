/*	Copyright: 	� Copyright 2005 Apple Computer, Inc. All rights reserved.

	Disclaimer:	IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc.
			("Apple") in consideration of your agreement to the following terms, and your
			use, installation, modification or redistribution of this Apple software
			constitutes acceptance of these terms.  If you do not agree with these terms,
			please do not use, install, modify or redistribute this Apple software.

			In consideration of your agreement to abide by the following terms, and subject
			to these terms, Apple grants you a personal, non-exclusive license, under Apple�s
			copyrights in this original Apple software (the "Apple Software"), to use,
			reproduce, modify and redistribute the Apple Software, with or without
			modifications, in source and/or binary forms; provided that if you redistribute
			the Apple Software in its entirety and without modifications, you must retain
			this notice and the following text and disclaimers in all such redistributions of
			the Apple Software.  Neither the name, trademarks, service marks or logos of
			Apple Computer, Inc. may be used to endorse or promote products derived from the
			Apple Software without specific prior written permission from Apple.  Except as
			expressly stated in this notice, no other rights or licenses, express or implied,
			are granted by Apple herein, including but not limited to any patent rights that
			may be infringed by your derivative works or by other works in which the Apple
			Software may be incorporated.

			The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO
			WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED
			WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR
			PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN
			COMBINATION WITH YOUR PRODUCTS.

			IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR
			CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
			GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
			ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION
			OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT
			(INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN
			ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
/*=============================================================================
	CAMIDIEndpointMenu.h
	
=============================================================================*/

#import <AppKit/AppKit.h>
#include <CoreMIDI/MIDIServices.h>

enum {
	kMIDIEndpointMenuSources = 0,
	kMIDIEndpointMenuDestinations = 1,
	kMIDIEndpointMenuPairs = 2
};

enum {
	kMIDIEndpointMenuOpt_SortByName						= 1,
	kMIDIEndpointMenuOpt_IncludeUnconnectedExternalPorts = 2,
	kMIDIEndpointMenuOpt_CombineByPort					= 4,		// when multiple devices connected to a port,
																// present only a single endpoint
	kMIDIEndpointMenuOpt_CanSelectNone					= 0x80000000
};

#ifdef __cplusplus
class CAMIDIEndpoints;
#else
struct CAMIDIEndpoints;
#endif

@interface CAMIDIEndpointMenu : NSPopUpButton {
	void *			_endpointInfo;
	BOOL			mInited;
	int				mType;
	int				mOptions;
	MIDIUniqueID	mSelection;
	NSString *		mSelectionName;
}

- (void)buildMenu: (int)type opts: (int)opts;
	// type is kMIDIEndpointMenuSources...
- (void)rebuildMenu;
	// called automatically when setup changes

- (MIDIEndpointRef)selectedEndpoint;
- (MIDIUniqueID)selectedUniqueID;
	// kMIDIInvalidUniqueID if none
- (void)selectedEndpointPair: (MIDIEndpointRef *)outSource dest: (MIDIEndpointRef *)outDest;

- (BOOL)selectUniqueID: (MIDIUniqueID)uniqueID;
	// returns YES if the item exists

+ (CAMIDIEndpoints *)getEndpoints;

@end
