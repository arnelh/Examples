/*
	File:		Clipboard.c

	Contains:	Clipboard support for simple text application.

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

	Copyright � 1993-2001 Apple Computer, Inc., All Rights Reserved
*/

#include "MacIncludes.h"

#include "Clipboard.h"

// --------------------------------------------------------------------------------------------------------------

static OSStatus ScrapHasFlavor (ScrapRef scrap, ScrapFlavorType sft, Boolean *hasIt)
{
	OSStatus err = noErr;

	ScrapFlavorFlags sff;

	err = GetScrapFlavorFlags (scrap,sft,&sff);

	if (!err)
		*hasIt = true;
	else if (err == scrapFlavorNotFoundErr)
	{
		*hasIt = false;
		err = noErr;
	}

	return err;
}

static OSStatus GetScrapFlavorDataH (ScrapRef scrap, ScrapFlavorType sft, Handle *scrapHandle)
{
	OSStatus err = noErr;

	do
	{
		Size sfs;
		err = GetScrapFlavorSize (scrap,sft,&sfs);
		if (err) break;
		ReserveMem (sfs);
		err = MemError ( );
		if (err) break;
		*scrapHandle = NewHandle (sfs);
		err = MemError ( );
		if (err) break;

		do
		{
			HLock (*scrapHandle);
			err = MemError ( );
			if (err) break;
			err = GetScrapFlavorData (scrap,sft,&sfs,**scrapHandle);
			HUnlock (*scrapHandle);
			if (err) break;
			err = MemError ( );
			if (err) break;
		}
		while (false);

		if (err)
		{
			DisposeHandle (*scrapHandle);
			break;
		}
	}
	while (false);

	return err;
}

// --------------------------------------------------------------------------------------------------------------
// OOP INTERFACE ROUTINES
// --------------------------------------------------------------------------------------------------------------
static OSStatus ClipboardUpdateWindow(WindowRef pWindow, WindowDataPtr pData)
{
#pragma unused (pData)

	OSStatus	anErr;
	FontInfo	theInfo;
	ResType		validScrapType = kScrapReservedFlavorType;
	Rect		topAreaRect;
	Rect		bounds;
	RgnHandle	oldClip = NewRgn();
	Rect		eraseRect;
	ScrapRef 	scrap;
	
	GetWindowPortBounds( pWindow, &eraseRect );
	
	// clear out any data that was there before
	GetClip(oldClip);
	EraseRect(GetWindowPortBounds(pWindow, &bounds));
	
	// setup for the drawing
	TextFont(applFont);
	TextSize(9);
	GetFontInfo(&theInfo);

	// caclulate our area at the top to say what type of contents the scrap is
        GetWindowPortBounds(pWindow, &topAreaRect);
	topAreaRect.bottom = topAreaRect.top + theInfo.ascent + theInfo.descent + theInfo.leading * 2 + 2;

	if( gMachineInfo.haveAppearanceMgr )
	{
		// draw a Finder-style window header
		Rect placardRect = topAreaRect;
		
		InsetRect( &placardRect, -1, -1 );
		
		DrawThemePlacard( &placardRect, IsWindowHilited(pWindow) ? kThemeStateActive : kThemeStateInactive );
		eraseRect.top = placardRect.bottom + 1;
	}
	else
	{
		// draw two lines under the area to separate it from the rest of the window
		MoveTo(topAreaRect.left, topAreaRect.bottom - 2);
		Line(topAreaRect.right - topAreaRect.left, 0);
		Move(0, 2);
		Line(-(topAreaRect.right - topAreaRect.left), 0);
	}

	EraseRect( &eraseRect );

	anErr = GetCurrentScrap (&scrap);
	nrequire (anErr, bailScrap);
	// remember the scrap -- if it changes, we do an update!
	((ClipboardDataPtr) pData)->scrapRef = scrap;

	// draw a string describing the contents
	{
		Str255		theString;
		UInt32		sfic;
		Boolean		hasFlavor;

		anErr = GetScrapFlavorCount (scrap,&sfic);
		nrequire (anErr, bailScrap);

		if (sfic == 0)
			GetIndString(theString, kClipboardStrings, iClipboardNone);
		else
		{
			anErr = ScrapHasFlavor (scrap,'PICT',&hasFlavor);
			nrequire (anErr, bailScrap);

			if (hasFlavor)
			{
				GetIndString(theString, kClipboardStrings, iClipboardPICT);
				validScrapType = 'PICT';
			}
			else
			{
				anErr = ScrapHasFlavor (scrap,'TEXT',&hasFlavor);
				nrequire (anErr, bailScrap);

				if (!hasFlavor)
					GetIndString(theString, kClipboardStrings, iClipboardUnknown);
				else
				{
					GetIndString(theString, kClipboardStrings, iClipboardText);
					validScrapType = 'TEXT';
				}
			}
		}
			
		MoveTo(topAreaRect.left + 4, topAreaRect.bottom - 4);

		// draw in the correct placard text color ��� need to add deviceloop
		if( gMachineInfo.haveAppearanceMgr )
		{
			ThemeTextColor	themeTextColor = kThemeTextColorPlacardActive;
		
			if( ! IsWindowHilited(pWindow) )
			{
				themeTextColor = kThemeTextColorPlacardInactive;
			}
			
			SetThemeTextColor( themeTextColor, 32, true );
		}
		
		DrawString(theString);
	}
	
	// calculate the part *not* in our top area	

	topAreaRect.top		= topAreaRect.bottom+1;
	topAreaRect.bottom	= GetWindowPortBounds(pWindow, &bounds)->bottom;

	if (validScrapType != kScrapReservedFlavorType) // now, draw the contents if we have a legal type to use
	{
		Handle scrapHandle;

		anErr = GetScrapFlavorDataH (scrap,validScrapType,&scrapHandle);
		nrequire (anErr, bailScrap);

		switch (validScrapType)
		{
			case 'PICT':

				{
					Rect picFrame;
					Rect clipRect	= topAreaRect;

					QDGetPictureBounds((PicHandle) scrapHandle, &picFrame);
					clipRect.right		-= 15;
					clipRect.bottom		-= 15;

					ClipRect (&clipRect);

					DrawPicture ((PicHandle) scrapHandle, &picFrame);
				}
				break;
				
			case 'TEXT':

				{
					Rect textFrame = topAreaRect;

					textFrame.right		-= 15;
					textFrame.bottom	-= 15;

					HLockHi (scrapHandle);
					TETextBox(*scrapHandle, GetHandleSize (scrapHandle), &textFrame, teJustLeft);
				}
				break;
		}

		DisposeHandle (scrapHandle);
	}

bailScrap:

	// finally draw the grow icon, but omit our top area rect from the drawing
	ClipRect(&topAreaRect);
	DrawGrowIcon(pWindow);
	
	SetClip(oldClip);
	DisposeRgn(oldClip);

	return anErr;

} // ClipboardUpdateWindow


// --------------------------------------------------------------------------------------------------------------

static Boolean	ClipboardFilterEvent(WindowPtr pWindow, WindowDataPtr pData, EventRecord *pEvent)
{	

	// Force an update on scrap changes during activate/deactivate.

	switch (pEvent->what)
	{
		case nullEvent:

			{
				ScrapRef scrap;

				if (!GetCurrentScrap (&scrap) && scrap != ((ClipboardDataPtr)pData)->scrapRef)
				{
					Rect bounds;
					InvalWindowRect(pWindow, GetWindowPortBounds(pWindow, &bounds));
				}
			}
			break;
			
		case activateEvt:
				{
				Rect bounds;
				InvalWindowRect(pWindow, GetWindowPortBounds(pWindow, &bounds));
				}
			break;
		
		// Follow the HI guidelines and hide the clipboard when we are suspended.
	
		case osEvt:
			if (((pEvent->message >> 24) & 0x0FF) == suspendResumeMessage)
				{
				if((pEvent->message & resumeFlag)==0)	// suspending
					{
					HideWindow(pWindow);
					pWindow = FrontNonFloatingWindow();
					if (pWindow)
						HiliteWindow(pWindow, false);
					}
				else									// resuming
					ShowWindow(pWindow);
				}
			break;
			
	} // switch(what)
	
	return false;
	
} // ClipboardFilterEvent


// --------------------------------------------------------------------------------------------------------------

static OSStatus	ClipboardKeyEvent(WindowPtr pWindow, WindowDataPtr pData, EventRecord *pEvent, Boolean isMotionKey)
{	
	#pragma unused(pWindow, pData, pEvent, isMotionKey)

	return noErr;

} // ClipboardKeyEvent


// --------------------------------------------------------------------------------------------------------------

static OSStatus	ClipboardGetBalloon(WindowPtr pWindow, WindowDataPtr pData, 
		Point *localMouse, short * returnedBalloonIndex, Rect *returnedRectangle)
{
#pragma unused (pWindow, pData, localMouse, returnedRectangle)

	*returnedBalloonIndex = iNoBalloon;
	
	return noErr;

} // ClipboardGetBalloon

// --------------------------------------------------------------------------------------------------------------

static OSStatus	ClipboardCloseWindow(WindowPtr pWindow, void* refCon)
{	
#pragma unused(pWindow,refCon)

	ChangeCommandName(cShowClipboard, kClipboardStrings, iClipboardShow);
	return noErr;

} // ClipboardCloseWindow


// --------------------------------------------------------------------------------------------------------------

static OSStatus	ClipboardMakeWindow(WindowPtr pWindow, WindowDataPtr pData)
{
#pragma unused (pWindow)
	BitMap bitmap;

	pData->hasGrow 				= true;
	pData->pFilterEvent 		= (FilterEventProc) 	ClipboardFilterEvent;
	pData->pKeyEvent			= (KeyEventProc) 		ClipboardKeyEvent;
	pData->pGetBalloon			= (GetBalloonProc) 		ClipboardGetBalloon;
	pData->pUpdateWindow 		= (UpdateWindowProc)	ClipboardUpdateWindow;
	pData->pCloseWindow			= (CloseWindowProc)		ClipboardCloseWindow;
	
	GetQDGlobalsScreenBits(&bitmap);
	pData->contentRect.right = pData->contentRect.left + 
					bitmap.bounds.right - 
					bitmap.bounds.left - 96;
	pData->contentRect.bottom = pData->contentRect.top + 150;
	MoveWindow(pWindow, bitmap.bounds.left + 4, 
			bitmap.bounds.bottom - 154, false);
	
	ChangeCommandName(cShowClipboard, kClipboardStrings, iClipboardHide);

	return noErr;
	
} // ClipboardMakeWindow


// --------------------------------------------------------------------------------------------------------------

OSStatus	ClipboardPreflightWindow(PreflightPtr pPreflightData)
{	
	pPreflightData->resourceID			= kClipboardWindowID;
	pPreflightData->continueWithOpen 	= true;
	pPreflightData->makeProcPtr 		= ClipboardMakeWindow;
	pPreflightData->storageSize 		= sizeof(ClipboardDataRecord);
	
	return noErr;
	
} // ClipboardPreflightWindow

// --------------------------------------------------------------------------------------------------------------

void ClipboardGetFileTypes(OSType * pFileTypes, OSType * pDocumentTypes, short * numTypes)
{
#pragma unused (pFileTypes, pDocumentTypes, numTypes)

} // ClipboardGetFileTypes
