FasdUAS 1.101.10   ��   ��    k             l      �� ��      Document.applescript        	  l     ������  ��   	  
  
 l      �� ��    This is a very simple example of how to write a document based plain text editor. It takes advantage of the lower level handlers for document handling, namely "read from file" and "write to file". It does this so that it can read text documents created by other applications. The two higher level handlers "data representation" and "load data representation" allow you to return and set any type of data, but then it will only be readable by your application, as it utilizes Cocoa's NSData object to store and retrieve your data.          l     ������  ��        l      �� ��       ==== Event Handlers ====          l     ������  ��        l     �� ��   �� The "read from file" handler is called when the document needs to the data to be read from disk. "theObject" is the document object, "pathName" contains the POSIX style path of the file to read and "ofType" contains the type of document to read (which by default this value will be "DocumentType" as set up in the documents section of the target editor for document based Studio applications).         l     ������  ��        i         I     ��  
�� .docSreFFnull���    obj   o      ���� 0 	theobject 	theObject  ��   
�� 
filN  o      ���� 0 pathname pathName   �� !��
�� 
of T ! o      ���� 0 oftype ofType��    k     * " "  # $ # l     �� %��   % . ( Open the file so that we can read it in    $  & ' & r     	 ( ) ( I    �� *��
�� .rdwropenshor       file * l     +�� + c      , - , o     ���� 0 pathname pathName - m    ��
�� 
psxf��  ��   ) o      ���� 0 thefile theFile '  . / . l  
 
������  ��   /  0 1 0 l  
 
�� 2��   2   Read the data in    1  3 4 3 r   
  5 6 5 I  
 �� 7 8
�� .rdwrread****        **** 7 o   
 ���� 0 thefile theFile 8 �� 9��
�� 
as   9 m    ��
�� 
TEXT��   6 o      ���� 0 thedata theData 4  : ; : l   ������  ��   ;  < = < l   �� >��   >   Close the file    =  ? @ ? I   �� A��
�� .rdwrclosnull���     **** A o    ���� 0 thefile theFile��   @  B C B l   ������  ��   C  D E D l   �� F��   F C = Put the data that we read into the text view of our document    E  G H G r    ' I J I o    ���� 0 thedata theData J n       K L K 1   $ &��
�� 
pcnt L n    $ M N M 4   ! $�� O
�� 
texV O m   " # P P  editor    N n    ! Q R Q 4    !�� S
�� 
scrV S m      T T  editor    R n     U V U m    ��
�� 
cwin V o    ���� 0 	theobject 	theObject H  W X W l  ( (������  ��   X  Y Z Y l  ( (�� [��   [ � � We need to return true (if everything went well) or false (if something failed). For the purposes of this example we'll signal that everything went well.    Z  \�� \ L   ( * ] ] m   ( )��
�� boovtrue��     ^ _ ^ l     ������  ��   _  ` a ` l     ������  ��   a  b c b l     �� d��   d�} The "write to file" handler is called when the document needs to be saved to disk. "theObject" is the document object, "pathName" contains the POSIX style path of the file to write and "ofType" contains the type of document to read (which by default this value will be "DocumentType" as set up in the documents section of the target editor for document based Studio applications).    c  e f e l     ������  ��   f  g h g i     i j i I     �� k l
�� .docSwrTFnull���    obj  k o      ���� 0 	theobject 	theObject l �� m n
�� 
filN m o      ���� 0 pathname pathName n �� o��
�� 
of T o o      ���� 0 oftype ofType��   j k     , p p  q r q l     �� s��   s 6 0 Get the data from the text view of the document    r  t u t r      v w v n      x y x 1   	 ��
�� 
pcnt y n     	 z { z 4    	�� |
�� 
texV | m     } }  editor    { n      ~  ~ 4    �� �
�� 
scrV � m     � �  editor     n      � � � m    ��
�� 
cwin � o     ���� 0 	theobject 	theObject w o      ���� 0 thedata theData u  � � � l   ������  ��   �  � � � l   �� ���   �    Open the file for writing    �  � � � r     � � � I   �� � �
�� .rdwropenshor       file � l    ��� � c     � � � o    ���� 0 pathname pathName � m    ��
�� 
psxf��   � �� ���
�� 
perm � m    ��
�� boovtrue��   � o      ���� 0 thefile theFile �  � � � l   ������  ��   �  � � � l   �� ���   �   Write the data    �  � � � I   #�� � �
�� .rdwrwritnull���     **** � o    ���� 0 thedata theData � �� � �
�� 
refn � o    ���� 0 thefile theFile � �� ���
�� 
as   � m    ��
�� 
TEXT��   �  � � � l  $ $������  ��   �  � � � l  $ $�� ���   �   Close the file    �  � � � I  $ )�� ���
�� .rdwrclosnull���     **** � o   $ %���� 0 thefile theFile��   �  � � � l  * *������  ��   �  � � � l  * *�� ���   � � � We need to return true (if everything went well) or false (if something failed). For the purposes of this example we'll signal that everything went well.    �  ��� � L   * , � � m   * +��
�� boovtrue��   h  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l      �� ���   �	2	, � Copyright 2004 Apple Computer, Inc. All rights reserved.

IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc. (�Apple�) in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this Apple software constitutes acceptance of these terms.  If you do not agree with these terms, please do not use, install, modify or redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Apple grants you a personal, non-exclusive license, under Apple�s copyrights in this original Apple software (the �Apple Software�), to use, reproduce, modify and redistribute the Apple Software, with or without modifications, in source and/or binary forms; provided that if you redistribute the Apple Software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the Apple Software.  Neither the name, trademarks, service marks or logos of Apple Computer, Inc. may be used to endorse or promote products derived from the Apple Software without specific prior written permission from Apple.  Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. 

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     �  � � � l     ������  ��   �  � � � l     ������  ��   �  ��� � j    
�� ��� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier � m    	 � �  Document.applescript   ��       �� � � � ���   � ������
�� .docSreFFnull���    obj 
�� .docSwrTFnull���    obj �� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier � �� ���� � ���
�� .docSreFFnull���    obj �� 0 	theobject 	theObject�� ��~ �
� 
filN�~ 0 pathname pathName � �}�|�{
�} 
of T�| 0 oftype ofType�{   � �z�y�x�w�v�z 0 	theobject 	theObject�y 0 pathname pathName�x 0 oftype ofType�w 0 thefile theFile�v 0 thedata theData � �u�t�s�r�q�p�o�n T�m P�l
�u 
psxf
�t .rdwropenshor       file
�s 
as  
�r 
TEXT
�q .rdwrread****        ****
�p .rdwrclosnull���     ****
�o 
cwin
�n 
scrV
�m 
texV
�l 
pcnt�� +��&j E�O���l E�O�j O���,��/��/�,FOe � �k j�j�i � ��h
�k .docSwrTFnull���    obj �j 0 	theobject 	theObject�i �g�f �
�g 
filN�f 0 pathname pathName � �e�d�c
�e 
of T�d 0 oftype ofType�c   � �b�a�`�_�^�b 0 	theobject 	theObject�a 0 pathname pathName�` 0 oftype ofType�_ 0 thedata theData�^ 0 thefile theFile � �]�\ ��[ }�Z�Y�X�W�V�U�T�S�R�Q
�] 
cwin
�\ 
scrV
�[ 
texV
�Z 
pcnt
�Y 
psxf
�X 
perm
�W .rdwropenshor       file
�V 
refn
�U 
as  
�T 
TEXT�S 
�R .rdwrwritnull���     ****
�Q .rdwrclosnull���     ****�h -��,��/��/�,E�O��&�el E�O����� O�j Oeascr  ��ޭ