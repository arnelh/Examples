/*
	File:		FWLib_Listener.h

	Synopsis: 	C++ interface for listening to messages sent by IOKit services.

	Copyright: 	� Copyright 2001-2003 Apple Computer, Inc. All rights reserved.

	Written by: NWG
	
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

	$Log: FWLib_Listener.h,v $
	Revision 1.5  2004/03/03 23:45:18  niels
	*** empty log message ***
	
	Revision 1.4  2004/02/06 23:29:12  firewire
	*** empty log message ***
	
	Revision 1.3  2003/05/27 18:12:46  firewire
	SDK16
	
	Revision 1.2  2003/05/27 17:34:04  firewire
	*** empty log message ***
	
*/

#import <IOKit/IOKitLib.h>

namespace FWLib {

	 class Listener
	{
		protected:
		
			io_service_t				mService ;
			IONotificationPortRef		mNotifyPort ;
			io_object_t					mNotification ;
			CFRunLoopSourceRef			mRunLoopSource ;
	
		public:
		
			Listener( io_service_t service, CFRunLoopRef runLoop = ::CFRunLoopGetCurrent(), 
					CFStringRef mode = kCFRunLoopCommonModes ) ;
			virtual ~Listener() ;
	
		private:
		
			static void				S_Message( void * refcon, io_service_t service, natural_t messageType, void * messageArgument ) ;
			
		protected:

			// this message routine is called first..
			// if you don't care about the service ID, override the second Message() method...
			virtual void			Message( io_service_t service, natural_t messageType, void * message ) ;

			virtual void			Message( natural_t messageType, void* message ) ;
	} ;

} // namespace
