/*

File: WoodShader.m

Abstract: Wood Shader Exhibit

Author: James A. McCombe

� Copyright 2004 Apple Computer, Inc. All rights reserved.

IMPORTANT:  This Apple software is supplied to 
you by Apple Computer, Inc. ("Apple") in 
consideration of your agreement to the following 
terms, and your use, installation, modification 
or redistribution of this Apple software 
constitutes acceptance of these terms.  If you do 
not agree with these terms, please do not use, 
install, modify or redistribute this Apple 
software.

In consideration of your agreement to abide by 
the following terms, and subject to these terms, 
Apple grants you a personal, non-exclusive 
license, under Apple's copyrights in this 
original Apple software (the "Apple Software"), 
to use, reproduce, modify and redistribute the 
Apple Software, with or without modifications, in 
source and/or binary forms; provided that if you 
redistribute the Apple Software in its entirety 
and without modifications, you must retain this 
notice and the following text and disclaimers in 
all such redistributions of the Apple Software. 
Neither the name, trademarks, service marks or 
logos of Apple Computer, Inc. may be used to 
endorse or promote products derived from the 
Apple Software without specific prior written 
permission from Apple.  Except as expressly 
stated in this notice, no other rights or 
licenses, express or implied, are granted by 
Apple herein, including but not limited to any 
patent rights that may be infringed by your 
derivative works or by other works in which the 
Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS 
IS" basis.  APPLE MAKES NO WARRANTIES, EXPRESS OR 
IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED 
WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY 
AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING 
THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE 
OR IN COMBINATION WITH YOUR PRODUCTS.

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY 
SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL 
DAMAGES (INCLUDING, BUT NOT LIMITED TO, 
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS 
OF USE, DATA, OR PROFITS; OR BUSINESS 
INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, 
REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF 
THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER 
UNDER THEORY OF CONTRACT, TORT (INCLUDING 
NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN 
IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF 
SUCH DAMAGE.

*/

#import "WoodShader.h"

@implementation WoodShader

- (id) init
{
	[super init];
	
	return self;
}

- (void) initLazy
{
	[super initLazy];
	
	graininess.current[0] = 0.09;
	graininess.max[0]		 = 0.3;
	graininess.min[0]		 = 0.0;
	graininess.delta[0]   = 0.01;
	
	period.current[0] = 0.47;
	period.min[0]     = 0.3;
	period.max[0]     = 1.0;
	period.delta[0]	= 0.01;
	
	/* Setup GLSL */
   {
      NSBundle *bundle;
      NSString *vertex_string, *fragment_string;

      bundle = [NSBundle bundleForClass: [self class]];

		/* Load vertex and fragment shader */
      vertex_string   = [bundle pathForResource: @"WoodShader" ofType: @"vertex"];
      vertex_string   = [NSString stringWithContentsOfFile: vertex_string];
      fragment_string = [bundle pathForResource: @"WoodShader" ofType: @"fragment"];
      fragment_string = [NSString stringWithContentsOfFile: fragment_string];
		if ([self loadVertexShader: vertex_string fragmentShader: fragment_string])
			NSLog(@"Failed to load wood shader");
			
		/* Setup uniforms */
		glUseProgramObjectARB(program_object);
		glUniform2fARB(glGetUniformLocationARB(program_object, "seed"), -0.16, 6.21);
		glUniform1fvARB(glGetUniformLocationARB(program_object, "graininess"), 1, PARAMETER_CURRENT(graininess));
		glUniform1fARB(glGetUniformLocationARB(program_object, "linecount"), 9.73);
		glUniform1fvARB(glGetUniformLocationARB(program_object, "lineperiod"), 1, PARAMETER_CURRENT(period));
		glUniform1fARB(glGetUniformLocationARB(program_object, "linethickness"), 0.17);
		glUniform1fARB(glGetUniformLocationARB(program_object, "lininess"), 0.09);		

	}

}

- (void) dealloc
{
	[super dealloc];
}

- (NSString *) name
{
	return @"Wood Shader";
}

- (NSString *) descriptionFilename
{
	NSBundle *bundle;
	NSString *string;
	bundle = [NSBundle bundleForClass: [self class]];
   string = [bundle pathForResource: @"WoodShader" ofType: @"rtf"];
	
	return string;
}

- (void) renderFrame
{
	[super renderFrame];
	
	glUseProgramObjectARB(program_object);

	PARAMETER_ANIMATE(graininess);
	PARAMETER_ANIMATE(period);
	glUniform1fvARB(glGetUniformLocationARB(program_object, "graininess"), 1, PARAMETER_CURRENT(graininess));
	glUniform1fvARB(glGetUniformLocationARB(program_object, "lineperiod"), 1, PARAMETER_CURRENT(period));	
	
	glBegin(GL_QUADS);
	glNormal3f(0.0, 0.0, 1.0);
	glVertex2f(-0.5, -0.5);
	glVertex2f( 0.5, -0.5);
	glVertex2f( 0.5,  0.5);
	glVertex2f(-0.5,  0.5);
	glEnd();
	
	glUseProgramObjectARB(NULL);
}

@end
