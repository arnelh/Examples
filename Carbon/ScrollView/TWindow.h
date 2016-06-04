/*
	File:		TWindow.h

    Version:	Mac OS X

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

	Copyright � 2000-2002 Apple Computer, Inc., All Rights Reserved
*/

#pragma once

#if !BUILDING_FOR_CARBON_8
	#include <Carbon/Carbon.h>
#else
	#include <Carbon.h>
#endif

#include "TCarbonEvent.h"

#define PURE_VIRTUAL	0

class TWindow
{
	public:
			TWindow( CFStringRef inNib, CFStringRef inName );
			TWindow( WindowClass inClass, WindowAttributes inAttributes, const Rect& bounds );
			TWindow( WindowRef inWindow );
		virtual ~TWindow();
		
		virtual void		Close();
		
		CGrafPtr			GetPort() const;
		WindowRef			GetWindowRef() const;
		
		void				SetTitle( CFStringRef inTitle );
		CFStringRef			CopyTitle() const;
		
		void				SetAlternateTitle( CFStringRef inTitle );
		CFStringRef			CopyAlternateTitle() const;
		
		virtual void		Show();
		virtual void		Hide();
		bool				IsVisible() const;
		
		void				Select();
		
		void				MoveTopLeftOfContentTo( SInt16 x, SInt16 y );
		void				SetContentSize( SInt16 x, SInt16 y );
		void				SetBounds( const Rect& bounds );
		
		void				InvalidateArea( RgnHandle region );
		void				InvalidateArea( const Rect& rect );
		void				ValidateArea( RgnHandle region );
		void				ValidateArea( const Rect& rect );
		
		void				UpdateNow();
		
		void				SetDefaultButton( ControlRef control );
		void				SetCancelButton( ControlRef control );
		
		void				EnableControlByID( ControlID theID );
		void				DisableControlByID( ControlID theID );

		void				ShowControlByID( ControlID theID );
		void				HideControlByID( ControlID theID );

	protected:
		virtual void		Draw();
		
		virtual void		Activated();
		virtual void		Deactivated();
		
		virtual void		Moved();
		virtual void		Resized();

		virtual Point		GetIdealSize();
		
		virtual Boolean		UpdateCommandStatus( const HICommand& command );
		virtual Boolean		HandleCommand( const HICommand& command );
		
		void				RegisterForEvents( UInt32 numEvents, const EventTypeSpec* list );
		void				UnregisterForEvents( UInt32 numEvents, const EventTypeSpec* list );
		
		virtual OSStatus	HandleEvent( EventHandlerCallRef inCallRef, TCarbonEvent& inEvent );

		void				PlatformWindowDisposed();
		
		TWindow();
		
		void						InitWithPlatformWindow( WindowRef window );

	private:
	
		static pascal OSStatus		EventHandlerProc( EventHandlerCallRef handler, EventRef event, void* userData );
		static EventHandlerUPP		GetEventHandlerProc();

		
		WindowRef			fWindow;
		CGrafPtr			fPort;
		EventHandlerRef		fHandler;
};

		
