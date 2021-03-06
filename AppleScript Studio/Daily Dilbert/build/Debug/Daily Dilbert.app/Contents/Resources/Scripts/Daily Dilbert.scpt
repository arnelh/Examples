FasdUAS 1.101.10   ��   ��    k             l      �� ��    !  Daily Dilbert.applescript        	  l     ������  ��   	  
  
 l      �� ��    � � This is a simple example of how to load an image given a URL from a web service. It utilizes a couple of shell commands (date, curl) to accomplish this.          l     ������  ��        l     ������  ��        l      �� ��       ==== Event Handlers ====          l     ������  ��        l     �� ��    The "awake from nib" event handler is called when the object is loaded from its nib file. In this case it will be the image view. The script will get the image from the web service and then set that image into the image view. Then the window will be resized appropriately.         l     ������  ��        i         I     �� ��
�� .appSawFNnull���    obj   o      ���� 0 	theobject 	theObject��    k     ,      ! " ! l     �� #��   # w q We need to have the date in the format "mm/dd/yy" which is actually easier to get from the "date" shell command.    "  $ % $ r      & ' & I    �� (��
�� .sysoexecTEXT���     TEXT ( m      ) )  date +%m/%d/%y   ��   ' o      ���� 0 thedate theDate %  * + * l   ������  ��   +  , - , l   �� .��   . . ( Get the Dilbert image based on the date    -  / 0 / r     1 2 1 I    �� 3���� 00 getdilbertimagefordate getDilbertImageForDate 3  4�� 4 o   	 
���� 0 thedate theDate��  ��   2 o      ���� 0 theimage theImage 0  5 6 5 r     7 8 7 o    ���� 0 theimage theImage 8 n       9 : 9 m    ��
�� 
imaA : o    ���� 0 	theobject 	theObject 6  ; < ; l   ������  ��   <  = > = l   �� ?��   ?   Resize the window    >  @ A @ r    $ B C B I   �� D E
�� .appScalMnull���    obj  D m     F F 
 size    E �� G��
�� 
of O G o    ���� 0 theimage theImage��   C l      H�� H n       I J I 1   ! #��
�� 
ptsz J l   ! K�� K n    ! L M L m    !��
�� 
cwin M o    ���� 0 	theobject 	theObject��  ��   A  N O N l  % %������  ��   O  P Q P l  % %�� R��   R   Show the window    Q  S�� S I  % ,�� T��
�� .appSshoHnull���    obj  T n   % ( U V U m   & (��
�� 
cwin V o   % &���� 0 	theobject 	theObject��  ��     W X W l     ������  ��   X  Y Z Y l     ������  ��   Z  [ \ [ l      �� ]��   ]   ==== Handlers ====     \  ^ _ ^ l     ������  ��   _  ` a ` l     �� b��   b  y This handler will return the image for the given date. It does this by getting the URL for the image from a web service.    a  c d c l     ������  ��   d  e f e i     g h g I      �� i���� 00 getdilbertimagefordate getDilbertImageForDate i  j�� j o      ���� 0 thedate theDate��  ��   h k      k k  l m l r      n o n m     ��
�� 
msng o o      ���� 0 theimage theImage m  p q p r     r s r I    �� t����  0 loadimageaturl loadImageAtURL t  u�� u I    �� v���� .0 dailydilbertimagepath DailyDilbertImagePath v  w�� w o    ���� 0 thedate theDate��  ��  ��  ��   s o      ���� 0 theimage theImage q  x�� x L     y y o    ���� 0 theimage theImage��   f  z { z l     ������  ��   {  | } | l     ������  ��   }  ~  ~ l     �� ���   � � � With the given URL, this handler will download the image using the "curl" shell tool. It then will load the image using the "load image" command.      � � � l     ������  ��   �  � � � i     � � � I      �� �����  0 loadimageaturl loadImageAtURL �  ��� � o      ���� 0 theurl theURL��  ��   � k     & � �  � � � r      � � � m     ��
�� 
msng � o      ���� 0 theimage theImage �  � � � l   ������  ��   �  � � � l   �� ���   � d ^ Get the last component of the URL. Here we'll use the "lastPathComponent" method of NSString.    �  � � � r     � � � b     � � � m     � �  /tmp/    � l    ��� � I   �� � �
�� .appScalMnull���    obj  � m     � �  lastPathComponent    � �� ���
�� 
of O � o    ���� 0 theurl theURL��  ��   � o      ���� 0 theimagepath theImagePath �  � � � l   ������  ��   �  � � � l   �� ���   � &   Download the image using "curl"    �  � � � I   �� ���
�� .sysoexecTEXT���     TEXT � l    ��� � b     � � � b     � � � b     � � � m     � �  curl -o     � o    ���� 0 theimagepath theImagePath � m     � �       � o    ���� 0 theurl theURL��  ��   �  � � � l   ������  ��   �  � � � l   �� ���   �   Load the image    �  � � � r    # � � � I   !�� ���
�� .appSloaInull���    obj  � o    ���� 0 theimagepath theImagePath��   � o      ���� 0 theimage theImage �  � � � l  $ $������  ��   �  ��� � L   $ & � � o   $ %���� 0 theimage theImage��   �  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l      �� ���   � ' ! ==== Web Services Handlers ====     �  � � � l     ������  ��   �  � � � l     �� ���   � \ V This handler will return the URL that points to the Dilbert image for the given date.    �  � � � l     ��~�  �~   �  � � � i     � � � I      �} ��|�} .0 dailydilbertimagepath DailyDilbertImagePath �  ��{ � o      �z�z 0 fordate forDate�{  �|   � O     . � � � k    - � �  � � � r     � � � m     � �  DailyDilbertImagePath    � o      �y�y 	0 mname   �  � � � r     � � � m    	 � � . (http://tempuri.org/DailyDilbertImagePath    � o      �x�x 0 soapact   �  � � � r     � � � m     � �  http://tempuri.org/    � o      �w�w 0 	namespace   �  � � � r     � � � J    �v�v   � o      �u�u 
0 params   �  � � � r     � � � b     � � � o    �t�t 
0 params   � K     � � �s ��r�s 0 
parameters   � o    �q�q 0 fordate forDate�r   � o      �p�p 
0 params   �  ��o � L    - � � I   ,�n ��m
�n .rpc SOAPlist       reco � K    ( � � �l � �
�l 
meth � o     �k�k 	0 mname   � �j � �
�j 
parm � o   ! "�i�i 
0 params   � �h � �
�h 
sact � o   # $�g�g 0 soapact   � �f ��e
�f 
mspu � o   % &�d�d 0 	namespace  �e  �m  �o   � m      � � �null     ߀                                                                      BAD*@  aprlhttp://www.esynaps.com/WebServices/DailyDiblert.asmx �  � � � l     �c�b�c  �b   �  � � � l     �a�`�a  �`   �    l      �_�_  	2	, � Copyright 2004 Apple Computer, Inc. All rights reserved.

IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc. (�Apple�) in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this Apple software constitutes acceptance of these terms.  If you do not agree with these terms, please do not use, install, modify or redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Apple grants you a personal, non-exclusive license, under Apple�s copyrights in this original Apple software (the �Apple Software�), to use, reproduce, modify and redistribute the Apple Software, with or without modifications, in source and/or binary forms; provided that if you redistribute the Apple Software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the Apple Software.  Neither the name, trademarks, service marks or logos of Apple Computer, Inc. may be used to endorse or promote products derived from the Apple Software without specific prior written permission from Apple.  Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. 

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.      l     �^�]�^  �]    l     �\�[�\  �[   �Z j    �Y�Y 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier m    		  Daily Dilbert.applescript   �Z       �X
	�X  
 �W�V�U�T�S
�W .appSawFNnull���    obj �V 00 getdilbertimagefordate getDilbertImageForDate�U  0 loadimageaturl loadImageAtURL�T .0 dailydilbertimagepath DailyDilbertImagePath�S 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier �R �Q�P�O
�R .appSawFNnull���    obj �Q 0 	theobject 	theObject�P   �N�M�L�N 0 	theobject 	theObject�M 0 thedate theDate�L 0 theimage theImage 
 )�K�J�I F�H�G�F�E�D
�K .sysoexecTEXT���     TEXT�J 00 getdilbertimagefordate getDilbertImageForDate
�I 
imaA
�H 
of O
�G .appScalMnull���    obj 
�F 
cwin
�E 
ptsz
�D .appSshoHnull���    obj �O -�j E�O*�k+ E�O���,FO��l ��,�,FO��,j 	 �C h�B�A�@�C 00 getdilbertimagefordate getDilbertImageForDate�B �?�?   �>�> 0 thedate theDate�A   �=�<�= 0 thedate theDate�< 0 theimage theImage �;�:�9
�; 
msng�: .0 dailydilbertimagepath DailyDilbertImagePath�9  0 loadimageaturl loadImageAtURL�@ �E�O**�k+ k+ E�O� �8 ��7�6�5�8  0 loadimageaturl loadImageAtURL�7 �4�4   �3�3 0 theurl theURL�6   �2�1�0�2 0 theurl theURL�1 0 theimage theImage�0 0 theimagepath theImagePath 	�/ � ��.�- � ��,�+
�/ 
msng
�. 
of O
�- .appScalMnull���    obj 
�, .sysoexecTEXT���     TEXT
�+ .appSloaInull���    obj �5 '�E�O���l %E�O�%�%�%j O�j E�O� �* ��)�(�'�* .0 dailydilbertimagepath DailyDilbertImagePath�) �&�&   �%�% 0 fordate forDate�(   �$�#�"�!� �$ 0 fordate forDate�# 	0 mname  �" 0 soapact  �! 0 	namespace  �  
0 params    � � � ��������� 0 
parameters  
� 
meth
� 
parm
� 
sact
� 
mspu� 
� .rpc SOAPlist       reco�' /� +�E�O�E�O�E�OjvE�O��l%E�O�����j 
Uascr  ��ޭ