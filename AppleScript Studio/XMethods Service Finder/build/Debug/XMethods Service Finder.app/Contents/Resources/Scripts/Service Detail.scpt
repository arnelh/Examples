FasdUAS 1.101.10   ��   ��    k             l      �� ��    "  Service Detail.applescript        	  l     ������  ��   	  
  
 l      �� ��    L F This script is used to handle events in the "Service Detail" window.          l     ������  ��        l      �� ��       ==== Event Handlers ====          l     ������  ��        l     �� ��    j d The "clicked" event handler is called whenever the user clicks on the buttons in the detail window.         l     ������  ��        i         I     �� ��
�� .coVScliInull���    obj   o      ���� 0 	theobject 	theObject��    Z     _    ��  =     ! " ! n      # $ # 1    ��
�� 
pnam $ o     ���� 0 	theobject 	theObject " m     % % 
 mail     k    % & &  ' ( ' l   �� )��   ) 7 1 Use the "open location" command to send an email    (  * + * r     , - , n     . / . 1    ��
�� 
pcnt / n     0 1 0 4    �� 2
�� 
texF 2 m     3 3 
 name    1 n     4 5 4 m   	 ��
�� 
cwin 5 o    	���� 0 	theobject 	theObject - o      ����  0 theservicename theServiceName +  6 7 6 r     8 9 8 n     : ; : 1    ��
�� 
pcnt ; n     < = < 4    �� >
�� 
texF > m     ? ?  email    = n     @ A @ m    ��
�� 
cwin A o    ���� 0 	theobject 	theObject 9 o      ���� "0 theemailaddress theEmailAddress 7  B C B l   ������  ��   C  D�� D I   %�� E��
�� .GURLGURLnull��� ��� TEXT E b    ! F G F m     H H  mailto:     G o     ���� "0 theemailaddress theEmailAddress��  ��      I J I =  ( - K L K n   ( + M N M 1   ) +��
�� 
pnam N o   ( )���� 0 	theobject 	theObject L m   + , O O  	info site    J  P Q P k   0 @ R R  S T S l  0 0�� U��   U 1 + Open the information site for this service    T  V W V r   0 : X Y X n   0 8 Z [ Z 1   6 8��
�� 
pcnt [ n   0 6 \ ] \ 4   3 6�� ^
�� 
texF ^ m   4 5 _ _  info url    ] n   0 3 ` a ` m   1 3��
�� 
cwin a o   0 1���� 0 	theobject 	theObject Y o      ���� 0 theurl theURL W  b�� b I  ; @�� c��
�� .GURLGURLnull��� ��� TEXT c o   ; <���� 0 theurl theURL��  ��   Q  d e d =  C H f g f n   C F h i h 1   D F��
�� 
pnam i o   C D���� 0 	theobject 	theObject g m   F G j j  	wsdl site    e  k�� k k   K [ l l  m n m l  K K�� o��   o %  Open the WSDL for this service    n  p q p r   K U r s r n   K S t u t 1   Q S��
�� 
pcnt u n   K Q v w v 4   N Q�� x
�� 
texF x m   O P y y  wsdl url    w n   K N z { z m   L N��
�� 
cwin { o   K L���� 0 	theobject 	theObject s o      ���� 0 theurl theURL q  |�� | I  V [�� }��
�� .GURLGURLnull��� ��� TEXT } o   V W���� 0 theurl theURL��  ��  ��  ��     ~  ~ l     ������  ��     � � � l     ������  ��   �  � � � l      �� ���   �	2	, � Copyright 2004 Apple Computer, Inc. All rights reserved.

IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc. (�Apple�) in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this Apple software constitutes acceptance of these terms.  If you do not agree with these terms, please do not use, install, modify or redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Apple grants you a personal, non-exclusive license, under Apple�s copyrights in this original Apple software (the �Apple Software�), to use, reproduce, modify and redistribute the Apple Software, with or without modifications, in source and/or binary forms; provided that if you redistribute the Apple Software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the Apple Software.  Neither the name, trademarks, service marks or logos of Apple Computer, Inc. may be used to endorse or promote products derived from the Apple Software without specific prior written permission from Apple.  Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. 

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     �  � � � l     ������  ��   �  � � � l     ������  ��   �  ��� � j    �� ��� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier � m     � �   Service Detail.applescript   ��       �� � � ���   � ����
�� .coVScliInull���    obj �� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier � �� ���� � ���
�� .coVScliInull���    obj �� 0 	theobject 	theObject��   � ���������� 0 	theobject 	theObject��  0 theservicename theServiceName�� "0 theemailaddress theEmailAddress�� 0 theurl theURL � �� %���� 3�� ? H�� O _ j y
�� 
pnam
�� 
cwin
�� 
texF
�� 
pcnt
�� .GURLGURLnull��� ��� TEXT�� `��,�  "��,��/�,E�O��,��/�,E�O�%j Y 9��,�  ��,��/�,E�O�j Y ��,�  ��,��/�,E�O�j Y h ascr  ��ޭ