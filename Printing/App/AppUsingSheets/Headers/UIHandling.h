/*
	File:		UIHandling.h
	
	Contains:	Basic RunApplicationEventLoop-based UI handling, Carbon API. Originally
                        based on the sample BasicRAEL supplied in the CarbonLib SDK.

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

	Copyright � 1999-2001 Apple Computer, Inc., All Rights Reserved
*/

#ifdef __APPLE_CC__
#include <Carbon/Carbon.h>
#else
#include <Carbon.h>

enum {	// not in Metrowerks 7.0 headers
	kHICommandNew          =  'new ',
	kHICommandClose        =  'clos',
	kHICommandPrint		= 'prnt',
	kHICommandPageSetup     = 'page',
	kHICommandSave     	= 'save'
};
#endif

// these key the localizable strings
#define kMyPrintErrorFormatStrKey 	CFSTR("Print error format")	
#define kMyWriteErrorFormatStrKey 	CFSTR("Write error format")
#define kMyDeleteErrorFormatStrKey 	CFSTR("NoDelete error format")
#define	kAboutBoxStringKey		CFSTR("About Box Info")
#define	kMySaveAsPDFErrorFormatStrKey	CFSTR("Cant Save PDF")
#define kMyCreateURLErrorFormatStrKey	CFSTR("Cant Create URL")

#define kMyDocumentTitleKey		CFSTR("DocumentTitle")

#define kMyMenuCommandPrintOne			'PONE'

WindowRef MakeWindow(const void *refCon);
void *GetOurWindowProperty(WindowRef w);
void DoErrorAlert(OSStatus status, CFStringRef errorFormatString);
