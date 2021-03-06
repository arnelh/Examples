FasdUAS 1.101.10   ��   ��    k             l      �� ��      Application.applescript        	  l     ������  ��   	  
  
 l      �� ��   <6 This example demonstrates how to script a browser object. The main parts of the script are the "number of browser rows" event handler which needs to return number of rows in the browser for the given column, and the "will display browser cell" event handler that will be called for every item in the browser.          l     ������  ��        l      �� ��      ==== Properties ====          l     ������  ��        j     �� �� 0 	disknames 	diskNames  J     ����        l     ������  ��        l     ������  ��        l      �� ��       ==== Event Handlers ====          l     ������  ��       !   l     �� "��   " $  Initialize various items here    !  # $ # l     ������  ��   $  % & % i     ' ( ' I     �� )��
�� .appSlauNnull���    obj  ) o      ���� 0 	theobject 	theObject��   ( k     / * *  + , + O      - . - r     / 0 / c     1 2 1 n    	 3 4 3 1    	��
�� 
pnam 4 2    ��
�� 
cdis 2 m   	 
��
�� 
list 0 o      ���� 0 	disknames 	diskNames . m      5 5�null     ߀��  �
Finder.app column, and the "   ��_��������_��ؿ����MACS   alis    \  Lumen                      ���H+    �
Finder.app                                                       Cp���        ����  	                CoreServices    ���      �椰      �  �  �  ,Lumen:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    L u m e n  &System/Library/CoreServices/Finder.app  / ��   ,  6 7 6 l   ������  ��   7  8 9 8 r     : ; : m     < <  :    ; n       = > = 1    ��
�� 
patS > n     ? @ ? 4    �� A
�� 
broW A m     B B  browser    @ 4    �� C
�� 
cwin C m     D D 
 main    9  E F E l   ������  ��   F  G�� G O   / H I H I  ) .������
�� .appSfupdnull���    obj ��  ��   I n    & J K J 4   # &�� L
�� 
broW L m   $ % M M  browser    K 4    #�� N
�� 
cwin N m   ! " O O 
 main   ��   &  P Q P l     ������  ��   Q  R S R l     �� T��   T 5 / Return the number of rows for the given column    S  U V U l     ������  ��   V  W X W i     Y Z Y I     �� [ \
�� .daVSnOBRnull���    obj  [ o      ���� 0 	theobject 	theObject \ �� ]��
�� 
in C ] o      ���� 0 	thecolumn 	theColumn��   Z k     U ^ ^  _ ` _ r      a b a m     ����   b o      ���� 0 rowcount rowCount `  c d c l   ������  ��   d  e f e Z    R g h���� g ?     i j i l    k�� k I   �� l��
�� .corecnte****       **** l o    	���� 0 	disknames 	diskNames��  ��   j m    ����   h Z    N m n�� o m =    p q p o    ���� 0 	thecolumn 	theColumn q m    ����  n r    # r s r I   !�� t��
�� .corecnte****       **** t o    ���� 0 	disknames 	diskNames��   s o      ���� 0 rowcount rowCount��   o k   & N u u  v w v O   & < x y x r   0 ; z { z I  0 9���� |
�� .appSpatFnull���    obj ��   | �� }��
�� 
ccol } \   2 5 ~  ~ o   2 3���� 0 	thecolumn 	theColumn  m   3 4���� ��   { o      ���� 0 thepath thePath y n   & - � � � 4   * -�� �
�� 
broW � m   + , � �  browser    � 4   & *�� �
�� 
cwin � m   ( ) � � 
 main    w  � � � l  = =������  ��   �  ��� � O   = N � � � r   A M � � � I  A K�� ���
�� .corecnte****       **** � n   A G � � � 2  E G��
�� 
cobj � 4   A E�� �
�� 
cobj � o   C D���� 0 thepath thePath��   � o      ���� 0 rowcount rowCount � m   = > 5��  ��  ��   f  � � � l  S S������  ��   �  ��� � L   S U � � o   S T���� 0 rowcount rowCount��   X  � � � l     ������  ��   �  � � � l     �� ���   � K E This is called whenever a cell in the browser needs to be displayed.    �  � � � l     ������  ��   �  � � � i     � � � I     �� � �
�� .daVSwDBCnull���    obj  � o      ���� 0 	theobject 	theObject � �� � �
�� 
rowO � o      ���� 0 therow theRow � �� � �
�� 
broC � o      ���� 0 thecell theCell � �� ���
�� 
in C � o      ���� 0 	thecolumn 	theColumn��   � k     } � �  � � � Z      � ����� � ?      � � � o     ���� 0 	thecolumn 	theColumn � m    ����  � O     � � � r     � � � I   ���� �
�� .appSpatFnull���    obj ��   � �� ���
�� 
ccol � o    ���� 0 	thecolumn 	theColumn��   � o      ���� 0 thepath thePath � n     � � � 4   
 �� �
�� 
broW � m     � �  browser    � 4    
�� �
�� 
cwin � m    	 � � 
 main   ��  ��   �  � � � l   ������  ��   �  � � � O    o � � � Z   # n � ��� � � =  # & � � � o   # $���� 0 	thecolumn 	theColumn � m   $ %����  � k   ) > � �  � � � r   ) : � � � n   ) 8 � � � 1   6 8��
�� 
dnam � 4   ) 6�� �
�� 
cdis � l  + 5 ��� � c   + 5 � � � n   + 3 � � � 4   0 3�� �
�� 
cobj � o   1 2���� 0 therow theRow � o   + 0�� 0 	disknames 	diskNames � m   3 4�~
�~ 
TEXT��   � o      �}�} 0 cellcontents cellContents �  ��| � r   ; > � � � m   ; <�{
�{ boovfals � o      �z�z 0 isleaf isLeaf�|  ��   � k   A n � �  � � � r   A J � � � n   A H � � � 4   E H�y �
�y 
cobj � o   F G�x�x 0 therow theRow � 4   A E�w �
�w 
cobj � o   C D�v�v 0 thepath thePath � o      �u�u 0 theitem theItem �  � � � l  K K�t�s�t  �s   �  � � � Z   K f � ��r � � G   K Z � � � =  K P � � � n   K N � � � 1   L N�q
�q 
pcls � o   K L�p�p 0 theitem theItem � m   N O�o
�o 
cfol � =  S X � � � n   S V � � � 1   T V�n
�n 
pcls � o   S T�m�m 0 theitem theItem � m   V W�l
�l 
cdis � r   ] ` � � � m   ] ^�k
�k boovfals � o      �j�j 0 isleaf isLeaf�r   � r   c f � � � m   c d�i
�i boovtrue � o      �h�h 0 isleaf isLeaf �  � � � l  g g�g�f�g  �f   �  ��e � r   g n � � � l  g l ��d � c   g l � � � n   g j � � � 1   h j�c
�c 
dnam � o   g h�b�b 0 theitem theItem � m   j k�a
�a 
TEXT�d   � o      �`�` 0 cellcontents cellContents�e   � m      5 �  � � � l  p p�_�^�_  �^   �    r   p u o   p q�]�] 0 cellcontents cellContents n       1   r t�\
�\ 
texD o   q r�[�[ 0 thecell theCell  r   v {	 o   v w�Z�Z 0 isleaf isLeaf	 n      

 1   x z�Y
�Y 
leaE o   w x�X�X 0 thecell theCell �W l  | |�V�U�V  �U  �W   �  l     �T�S�T  �S    l     �R�Q�R  �Q    l      �P�P  	2	, � Copyright 2004 Apple Computer, Inc. All rights reserved.

IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc. (�Apple�) in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this Apple software constitutes acceptance of these terms.  If you do not agree with these terms, please do not use, install, modify or redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Apple grants you a personal, non-exclusive license, under Apple�s copyrights in this original Apple software (the �Apple Software�), to use, reproduce, modify and redistribute the Apple Software, with or without modifications, in source and/or binary forms; provided that if you redistribute the Apple Software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the Apple Software.  Neither the name, trademarks, service marks or logos of Apple Computer, Inc. may be used to endorse or promote products derived from the Apple Software without specific prior written permission from Apple.  Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. 

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.      l     �O�N�O  �N   �M j    �L�L 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier m      Application.applescript   �M       �K�K   �J�I�H�G�F�J 0 	disknames 	diskNames
�I .appSlauNnull���    obj 
�H .daVSnOBRnull���    obj 
�G .daVSwDBCnull���    obj �F 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier �E�D�E  �D   �C (�B�A�@
�C .appSlauNnull���    obj �B 0 	theobject 	theObject�A   �?�? 0 	theobject 	theObject  5�>�=�< <�; D�: B�9 O M�8
�> 
cdis
�= 
pnam
�< 
list
�; 
cwin
�: 
broW
�9 
patS
�8 .appSfupdnull���    obj �@ 0� *�-�,�&Ec   UO�*��/��/�,FO*��/��/ *j U �7 Z�6�5 !�4
�7 .daVSnOBRnull���    obj �6 0 	theobject 	theObject�5 �3�2�1
�3 
in C�2 0 	thecolumn 	theColumn�1    �0�/�.�-�0 0 	theobject 	theObject�/ 0 	thecolumn 	theColumn�. 0 rowcount rowCount�- 0 thepath thePath! 	�,�+ ��* ��)�( 5�'
�, .corecnte****       ****
�+ 
cwin
�* 
broW
�) 
ccol
�( .appSpatFnull���    obj 
�' 
cobj�4 VjE�Ob   j  j A�k  b   j  E�Y **��/��/ *�kl E�UO� *�/�-j  E�UY hO� �& ��%�$"#�#
�& .daVSwDBCnull���    obj �% 0 	theobject 	theObject�$ �"�!$
�" 
rowO�! 0 therow theRow$ � �%
�  
broC� 0 thecell theCell% ���
� 
in C� 0 	thecolumn 	theColumn�  " ��������� 0 	theobject 	theObject� 0 therow theRow� 0 thecell theCell� 0 	thecolumn 	theColumn� 0 thepath thePath� 0 cellcontents cellContents� 0 isleaf isLeaf� 0 theitem theItem# � �� ��� 5������
�	��
� 
cwin
� 
broW
� 
ccol
� .appSpatFnull���    obj 
� 
cdis
� 
cobj
� 
TEXT
� 
dnam
� 
pcls
�
 
cfol
�	 
bool
� 
texD
� 
leaE�# ~�k *��/��/ *�l E�UY hO� M�k  *�b   �/�&/�,E�OfE�Y /*�/�/E�O��,� 
 	��,� �& fE�Y eE�O��,�&E�UO���,FO���,FOP ascr  ��ޭ