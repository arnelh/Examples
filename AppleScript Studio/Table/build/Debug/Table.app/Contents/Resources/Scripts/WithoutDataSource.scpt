FasdUAS 1.101.10   ��   ��    k             l      �� ��    %  WithoutDataSource.applescript        	  l     ������  ��   	  
  
 l      �� ��   �� This script is used to demonstrate the scripting of a table view without using a data source. The important part of supplying the table with information is in the "cell value" and "number of rows" event handlers. The table will query the script asking it for the number of rows, and then for every row of every column the "number of rows" event handler will be called, returning the contents of the cell for the table to display.          l     ������  ��        l      �� ��      ==== Properties ====          l     ������  ��        j     �� �� 0 contacts    J     ����        j    �� �� 0 contactindex contactIndex  m    ����        l     ������  ��        l     ������  ��        l      ��  ��        ==== Event Handlers ====       ! " ! l     ������  ��   "  # $ # i    
 % & % I     �� '��
�� .coVScliInull���    obj  ' o      ���� 0 	theobject 	theObject��   & Z     � ( ) *�� ( =     + , + n      - . - 1    ��
�� 
pnam . o     ���� 0 	theobject 	theObject , m     / / 	 add    ) k    A 0 0  1 2 1 l   �� 3��   3   Add a new contact    2  4 5 4 O    ? 6 7 6 k    > 8 8  9 : 9 l   �� ;��   ; e _ Create a contact record from the values in the text fields and add it to the list of contacts     :  < = < r    $ > ? > b     @ A @ o    ���� 0 contacts   A J     B B  C�� C n    D E D I    �� F����  0 getcontactinfo getContactInfo F  G�� G n     H I H m    ��
�� 
cwin I o    ���� 0 	theobject 	theObject��  ��   E  f    ��   ? o      ���� 0 contacts   =  J K J l  % %������  ��   K  L M L l  % %�� N��   N 0 * Tell the table view to update it's values    M  O P O O  % 5 Q R Q I  / 4������
�� .appSfupdnull���    obj ��  ��   R n   % , S T S 4   ) ,�� U
�� 
tabW U m   * + V V  contacts    T 4   % )�� W
�� 
scrV W m   ' ( X X  contacts    P  Y Z Y l  6 6������  ��   Z  [ \ [ l  6 6�� ]��   ] ( " Clear out the contact information    \  ^�� ^ n  6 > _ ` _ I   7 >�� a���� $0 clearcontactinfo clearContactInfo a  b�� b n   7 : c d c m   8 :��
�� 
cwin d o   7 8���� 0 	theobject 	theObject��  ��   `  f   6 7��   7 n     e f e m   	 ��
�� 
cwin f o    	���� 0 	theobject 	theObject 5  g�� g l  @ @������  ��  ��   *  h i h =  D I j k j n   D G l m l 1   E G��
�� 
pnam m o   D E���� 0 	theobject 	theObject k m   G H n n  update    i  o p o k   L y q q  r s r l  L L�� t��   t   Update the contact    s  u�� u O   L y v w v k   R x x x  y z y l  R R�� {��   { %  Update the contact information    z  | } | r   R g ~  ~ n  R Z � � � I   S Z�� �����  0 getcontactinfo getContactInfo �  ��� � n   S V � � � m   T V��
�� 
cwin � o   S T���� 0 	theobject 	theObject��  ��   �  f   R S  n       � � � 4   _ f�� �
�� 
cobj � o   ` e���� 0 contactindex contactIndex � o   Z _���� 0 contacts   }  � � � l  h h������  ��   �  � � � l  h h�� ���   � 0 * Tell the table view to update it's values    �  ��� � O  h x � � � I  r w������
�� .appSfupdnull���    obj ��  ��   � n   h o � � � 4   l o�� �
�� 
tabW � m   m n � �  contacts    � 4   h l�� �
�� 
scrV � m   j k � �  contacts   ��   w n   L O � � � m   M O��
�� 
cwin � o   L M���� 0 	theobject 	theObject��   p  � � � =  | � � � � n   |  � � � 1   } ��
�� 
pnam � o   | }���� 0 	theobject 	theObject � m    � � �  remove    �  ��� � k   � � � �  � � � l  � ��� ���   �   Remove the contact    �  ��� � Z   � � � ����� � F   � � � � � ?   � � � � � o   � ����� 0 contactindex contactIndex � m   � �����   � B   � � � � � o   � ����� 0 contactindex contactIndex � l  � � ��� � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 contacts  ��  ��   � O   � � � � � k   � � � �  � � � l  � ��� ���   � ' ! Remove the contact form the list    �  � � � r   � � � � � n  � � � � � I   � ��� ����� $0 deleteiteminlist deleteItemInList �  � � � o   � ����� 0 contactindex contactIndex �  ��� � o   � ����� 0 contacts  ��  ��   �  f   � � � o      ���� 0 contacts   �  � � � l  � �������  ��   �  � � � l  � ��� ���   � 0 * Tell the table view to update it's values    �  � � � O  � � � � � I  � �������
�� .appSfupdnull���    obj ��  ��   � n   � � � � � 4   � ��� �
�� 
tabW � m   � � � �  contacts    � 4   � ��� �
�� 
scrV � m   � � � �  contacts    �  � � � l  � �������  ��   �  � � � l  � ��� ���   � ( " Clear out the contact information    �  ��� � n  � � � � � I   � ��� ����� $0 clearcontactinfo clearContactInfo �  ��� � n   � � � � � m   � ���
�� 
cwin � o   � ����� 0 	theobject 	theObject��  ��   �  f   � ���   � n   � � � � � m   � ���
�� 
cwin � o   � ����� 0 	theobject 	theObject��  ��  ��  ��  ��   $  � � � l     ������  ��   �  � � � l     �� ���   � A ; Return the value of the specified column for the given row    �  � � � l     �� ���   �       �  � � � i     � � � I     �� � �
�� .daVScelVnull���    obj  � o      �� 0 	theobject 	theObject � �~ � �
�~ 
rowO � o      �}�} 0 therow theRow � �| ��{
�| 
tabC � o      �z�z 0 	thecolumn 	theColumn�{   � k     q � �  � � � l     �y ��y   � / ) Set the value to an empty string for now    �  � � � r      � � � m      � �       � o      �x�x 0 thevalue theValue �  � � � l   �w�v�w  �v   �  � � � l   �u ��u   � a [ Make sure that we aren't being asked for a row that is greater than the number of contacts    �  � � � Z    n � ��t�s � @       l   �r I   �q�p
�q .corecnte****       **** o    	�o�o 0 contacts  �p  �r   o    �n�n 0 therow theRow � k    j  r     n    	
	 4    �m
�m 
cobj o    �l�l 0 therow theRow
 o    �k�k 0 contacts   o      �j�j 0 
thecontact 
theContact  l   �i�h�i  �h    l   �g�g   d ^ Get the identifier of the column so that we can determine which field of the record to return     r    " n      1     �f
�f 
ideT o    �e�e 0 	thecolumn 	theColumn o      �d�d 0 theid theID �c Z   # j�b =  # & l  # $�a o   # $�`�` 0 theid theID�a   m   $ % 
 name    r   ) .  n   ) ,!"! 1   * ,�_
�_ 
pnam" o   ) *�^�^ 0 
thecontact 
theContact  o      �]�] 0 thevalue theValue #$# =  1 4%&% o   1 2�\�\ 0 theid theID& m   2 3''  address   $ ()( r   7 <*+* n   7 :,-, o   8 :�[�[ 0 address  - o   7 8�Z�Z 0 
thecontact 
theContact+ o      �Y�Y 0 thevalue theValue) ./. =  ? B010 o   ? @�X�X 0 theid theID1 m   @ A22 
 city   / 343 r   E J565 n   E H787 o   F H�W�W 0 city  8 o   E F�V�V 0 
thecontact 
theContact6 o      �U�U 0 thevalue theValue4 9:9 =  M P;<; o   M N�T�T 0 theid theID< m   N O==  state   : >?> r   S X@A@ n   S VBCB 1   T V�S
�S 
staBC o   S T�R�R 0 
thecontact 
theContactA o      �Q�Q 0 thevalue theValue? DED =  [ ^FGF o   [ \�P�P 0 theid theIDG m   \ ]HH 	 zip   E I�OI r   a fJKJ n   a dLML o   b d�N�N 0 zip  M o   a b�M�M 0 
thecontact 
theContactK o      �L�L 0 thevalue theValue�O  �b  �c  �t  �s   � NON l  o o�K�J�K  �J  O PQP l  o o�IR�I  R ' ! Now return the value that we set   Q S�HS L   o qTT o   o p�G�G 0 thevalue theValue�H   � UVU l     �F�E�F  �E  V WXW l     �DY�D  Y $  Return the number of contacts   X Z[Z l     �C�B�C  �B  [ \]\ i    ^_^ I     �A`�@
�A .daVSnuORnull���    obj ` o      �?�? 0 	theobject 	theObject�@  _ L     
aa I    	�>b�=
�> .corecnte****       ****b o     �<�< 0 contacts  �=  ] cdc l     �;�:�;  �:  d efe i    ghg I     �9i�8
�9 .coVSselFnull���    obj i o      �7�7 0 	theobject 	theObject�8  h Z     ejk�6�5j =    lml n     non 1    �4
�4 
pnamo o     �3�3 0 	theobject 	theObjectm m    pp  contacts   k k    aqq rsr r    tut n    vwv m   	 �2
�2 
cwinw o    	�1�1 0 	theobject 	theObjectu o      �0�0 0 	thewindow 	theWindows xyx l   �/�.�/  �.  y z{z l   �-|�-  | h b Set the contact index to the current row, so that we can use it to update the right contact later   { }~} r    � n    ��� 1    �,
�, 
selR� o    �+�+ 0 	theobject 	theObject� o      �*�* 0 contactindex contactIndex~ ��� l   �)�(�)  �(  � ��'� Z    a���&�� =    ��� o    �%�% 0 contactindex contactIndex� m    �$�$  � k   " :�� ��� l  " "�#��#  � A ; There wasn't any selected so clear the contact information   � ��� n  " (��� I   # (�"��!�" $0 clearcontactinfo clearContactInfo� �� � o   # $�� 0 	thewindow 	theWindow�   �!  �  f   " #� ��� l  ) )���  �  � ��� l  ) )���  � 0 * Disable the "Update" and "Remove" buttons   � ��� r   ) 1��� m   ) *�
� boovfals� n      ��� 1   . 0�
� 
enaB� n   * .��� 4   + .��
� 
butT� m   , -��  update   � o   * +�� 0 	thewindow 	theWindow� ��� r   2 :��� m   2 3�
� boovfals� n      ��� 1   7 9�
� 
enaB� n   3 7��� 4   4 7��
� 
butT� m   5 6��  remove   � o   3 4�� 0 	thewindow 	theWindow�  �&  � k   = a�� ��� l  = =���  � > 8 A contact was selected, so show the contact information   � ��� n  = O��� I   > O����  0 setcontactinfo setContactInfo� ��� o   > ?�� 0 	thewindow 	theWindow� ��� n   ? K��� 4   D K��
� 
cobj� o   E J�� 0 contactindex contactIndex� o   ? D�� 0 contacts  �  �  �  f   = >� ��� l  P P�
�	�
  �	  � ��� l  P P���  � / ) Enable the "Update" and "Remove" buttons   � ��� r   P X��� m   P Q�
� boovtrue� n      ��� 1   U W�
� 
enaB� n   Q U��� 4   R U��
� 
butT� m   S T��  update   � o   Q R�� 0 	thewindow 	theWindow� ��� r   Y a��� m   Y Z�
� boovtrue� n      ��� 1   ^ `�
� 
enaB� n   Z ^��� 4   [ ^� �
�  
butT� m   \ ]��  remove   � o   Z [���� 0 	thewindow 	theWindow�  �'  �6  �5  f ��� l     ������  ��  � ��� l     ������  ��  � ��� l      �����  � "  ==== Contact Handlers ====    � ��� l     ������  ��  � ��� l     �����  � #  Empty all of the text fields   � ��� l     ������  ��  � ��� i    ��� I      ������� $0 clearcontactinfo clearContactInfo� ���� o      ���� 0 	thewindow 	theWindow��  ��  � O     :��� k    9�� ��� r    ��� m    ��      � n      ��� 1   	 ��
�� 
pcnt� 4    	���
�� 
texF� m    �� 
 name   � ��� r    ��� m    ��      � n      ��� 1    ��
�� 
pcnt� 4    ���
�� 
texF� m    ��  address   � ��� r    � � m            n       1    ��
�� 
pcnt 4    ��
�� 
texF m     
 city   �  r    '	 m     

      	 n       1   $ &��
�� 
pcnt 4     $��
�� 
texF m   " #  state     r   ( 0 m   ( )       n       1   - /��
�� 
pcnt 4   ) -��
�� 
texF m   + , 	 zip    �� r   1 9 4   1 5��
�� 
texF m   3 4 
 name    1   5 8��
�� 
firS��  � o     ���� 0 	thewindow 	theWindow�  l     ������  ��     l     ��!��  ! F @ Get the values from the text fields and return a contact record     "#" l     ������  ��  # $%$ i    &'& I      ��(����  0 getcontactinfo getContactInfo( )��) o      ���� 0 	thewindow 	theWindow��  ��  ' O     0*+* L    /,, K    .-- ��./
�� 
pnam. n    010 1   	 ��
�� 
pcnt1 4    	��2
�� 
texF2 m    33 
 name   / ��45�� 0 address  4 n    676 1    ��
�� 
pcnt7 4    ��8
�� 
texF8 m    99  address   5 ��:;�� 0 city  : n    <=< 1    ��
�� 
pcnt= 4    ��>
�� 
texF> m    ?? 
 city   ; ��@A
�� 
staB@ n    $BCB 1   ! #��
�� 
pcntC 4    !��D
�� 
texFD m     EE  state   A ��F���� 0 zip  F n   % ,GHG 1   ) +��
�� 
pcntH 4   % )��I
�� 
texFI m   ' (JJ 	 zip   ��  + o     ���� 0 	thewindow 	theWindow% KLK l     ������  ��  L MNM l     ��O��  O ; 5 Set the text fields with the values from the contact   N PQP l     ��R��  R      Q STS i    "UVU I      ��W����  0 setcontactinfo setContactInfoW XYX o      ���� 0 	thewindow 	theWindowY Z��Z o      ���� 0 
thecontact 
theContact��  ��  V O     ;[\[ k    :]] ^_^ r    `a` n    bcb 1    ��
�� 
pnamc o    ���� 0 
thecontact 
theContacta n      ded 1    ��
�� 
pcnte 4    ��f
�� 
texFf m   	 
gg 
 name   _ hih r    jkj n    lml o    ���� 0 address  m o    ���� 0 
thecontact 
theContactk n      non 1    ��
�� 
pcnto 4    ��p
�� 
texFp m    qq  address   i rsr r    $tut n    vwv o    ���� 0 city  w o    ���� 0 
thecontact 
theContactu n      xyx 1   ! #��
�� 
pcnty 4    !��z
�� 
texFz m     {{ 
 city   s |}| r   % /~~ n   % (��� 1   & (��
�� 
staB� o   % &���� 0 
thecontact 
theContact n      ��� 1   , .��
�� 
pcnt� 4   ( ,���
�� 
texF� m   * +��  state   } ���� r   0 :��� n   0 3��� o   1 3���� 0 zip  � o   0 1���� 0 
thecontact 
theContact� n      ��� 1   7 9��
�� 
pcnt� 4   3 7���
�� 
texF� m   5 6�� 	 zip   ��  \ o     ���� 0 	thewindow 	theWindowT ��� l     ������  ��  � ��� l      �����  �   ==== Utilities ====    � ��� l     ������  ��  � ��� i   # &��� I      ������� $0 deleteiteminlist deleteItemInList� ��� o      ���� 0 x  � ���� o      ���� 0 thelist theList��  ��  � k     ��� ��� r     ��� l    ���� c     ��� o     ���� 0 x  � m    ��
�� 
nmbr��  � o      ���� 0 x  � ��� Z   ������� A    	��� o    ���� 0 x  � m    ���� � L    �� o    ���� 0 thelist theList��  ��  � ��� r    ��� I   �����
�� .corecnte****       ****� n   ��� 2   ��
�� 
cobj� o    ���� 0 thelist theList��  � o      ���� 0 numitems numItems� ��� Z   *������� =    ��� o    ���� 0 numitems numItems� m    ���� � L   # &�� J   # %����  ��  ��  � ��� Z  + 7������� ?   + .��� o   + ,���� 0 x  � o   , -���� 0 numitems numItems� L   1 3�� o   1 2���� 0 thelist theList��  ��  � ��� Z   8 ������ =   8 ;��� o   8 9���� 0 x  � m   9 :���� � r   > K��� l  > I���� n   > I��� 7  ? I����
�� 
cobj� m   C E���� � m   F H������� o   > ?���� 0 thelist theList��  � o      ���� 0 newlist newList� ��� =   N Q��� o   N O�� 0 x  � o   O P�~�~ 0 numitems numItems� ��}� r   T a��� l  T _��|� n   T _��� 7  U _�{��
�{ 
cobj� m   Y [�z�z � m   \ ^�y�y��� o   T U�x�x 0 thelist theList�|  � o      �w�w 0 newlist newList�}  � r   d ���� b   d ��� l  d q��v� n   d q��� 7  e q�u��
�u 
cobj� m   i k�t�t � l  l p��s� \   l p��� o   m n�r�r 0 x  � m   n o�q�q �s  � o   d e�p�p 0 thelist theList�v  � l  q ~��o� n   q ~��� 7  r ~�n��
�n 
cobj� l  v z��m� [   v z��� o   w x�l�l 0 x  � m   x y�k�k �m  � m   { }�j�j��� o   q r�i�i 0 thelist theList�o  � o      �h�h 0 newlist newList� ��g� L   � ��� o   � ��f�f 0 newlist newList�g  � ��� l     �e�d�e  �d  � ��� l     �c�b�c  �b  � ��� l      �a��a  �	2	, � Copyright 2004 Apple Computer, Inc. All rights reserved.

IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc. (�Apple�) in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this Apple software constitutes acceptance of these terms.  If you do not agree with these terms, please do not use, install, modify or redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Apple grants you a personal, non-exclusive license, under Apple�s copyrights in this original Apple software (the �Apple Software�), to use, reproduce, modify and redistribute the Apple Software, with or without modifications, in source and/or binary forms; provided that if you redistribute the Apple Software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the Apple Software.  Neither the name, trademarks, service marks or logos of Apple Computer, Inc. may be used to endorse or promote products derived from the Apple Software without specific prior written permission from Apple.  Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. 

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.    � ��� l     �`�_�`  �_  � ��^� j   ' )�]��] 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier� m   ' (�� # WithoutDataSource.applescript   �^       �\� �[��\  � �Z�Y�X�W�V�U�T�S�R�Q�P�Z 0 contacts  �Y 0 contactindex contactIndex
�X .coVScliInull���    obj 
�W .daVScelVnull���    obj 
�V .daVSnuORnull���    obj 
�U .coVSselFnull���    obj �T $0 clearcontactinfo clearContactInfo�S  0 getcontactinfo getContactInfo�R  0 setcontactinfo setContactInfo�Q $0 deleteiteminlist deleteItemInList�P 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier  �O�N�O  �N  �[   �M &�L�K	
�J
�M .coVScliInull���    obj �L 0 	theobject 	theObject�K  	 �I�I 0 	theobject 	theObject
 �H /�G�F�E X�D V�C�B n�A � � ��@�?�> � �
�H 
pnam
�G 
cwin�F  0 getcontactinfo getContactInfo
�E 
scrV
�D 
tabW
�C .appSfupdnull���    obj �B $0 clearcontactinfo clearContactInfo
�A 
cobj
�@ .corecnte****       ****
�? 
bool�> $0 deleteiteminlist deleteItemInList�J ��,�  >��, 2b   )��,k+ kv%Ec   O*��/��/ *j UO)��,k+ 	UOPY ���,�  2��, ()��,k+ b   �b  /FO*��/��/ *j UUY l��,�  cb  j	 b  b   j a & ?��, 5)b  b   l+ Ec   O*�a /�a / *j UO)��,k+ 	UY hY h �= ��<�;�:
�= .daVScelVnull���    obj �< 0 	theobject 	theObject�; �9�8
�9 
rowO�8 0 therow theRow �7�6�5
�7 
tabC�6 0 	thecolumn 	theColumn�5   �4�3�2�1�0�/�4 0 	theobject 	theObject�3 0 therow theRow�2 0 	thecolumn 	theColumn�1 0 thevalue theValue�0 0 
thecontact 
theContact�/ 0 theid theID  ��.�-�,�+'�*2�)=�(H�'
�. .corecnte****       ****
�- 
cobj
�, 
ideT
�+ 
pnam�* 0 address  �) 0 city  
�( 
staB�' 0 zip  �: r�E�Ob   j � ]b   �/E�O��,E�O��  
��,E�Y ;��  
��,E�Y -��  
��,E�Y ��  
��,E�Y ��  
��,E�Y hY hO� �&_�%�$�#
�& .daVSnuORnull���    obj �% 0 	theobject 	theObject�$   �"�" 0 	theobject 	theObject �!
�! .corecnte****       ****�# b   j   � h���
�  .coVSselFnull���    obj � 0 	theobject 	theObject�   ��� 0 	theobject 	theObject� 0 	thewindow 	theWindow �p�����������
� 
pnam
� 
cwin
� 
selR� $0 clearcontactinfo clearContactInfo
� 
butT
� 
enaB
� 
cobj�  0 setcontactinfo setContactInfo� f��,�  ^��,E�O��,Ec  Ob  j  )�k+ Of���/�,FOf���/�,FY &)�b   �b  /l+ 
Oe���/�,FOe���/�,FY h ������ $0 clearcontactinfo clearContactInfo� ��   �� 0 	thewindow 	theWindow�   �� 0 	thewindow 	theWindow ����
��
�	
� 
texF
�
 
pcnt
�	 
firS� ;� 7�*��/�,FO�*��/�,FO�*��/�,FO�*��/�,FO�*��/�,FO*��/*�,FU �'����  0 getcontactinfo getContactInfo� ��   �� 0 	thewindow 	theWindow�   �� 0 	thewindow 	theWindow �� 3����9��?��E��J��
� 
pnam
�  
texF
�� 
pcnt�� 0 address  �� 0 city  
�� 
staB�� 0 zip  �� 
� 1� -�*��/�,E�*��/�,E�*��/�,E�*��/�,E�*��/�,E�U ��V��������  0 setcontactinfo setContactInfo�� ����   ������ 0 	thewindow 	theWindow�� 0 
thecontact 
theContact��   ������ 0 	thewindow 	theWindow�� 0 
thecontact 
theContact ����g����q��{������
�� 
pnam
�� 
texF
�� 
pcnt�� 0 address  �� 0 city  
�� 
staB�� 0 zip  �� <� 8��,*��/�,FO��,*��/�,FO��,*��/�,FO��,*��/�,FO��,*��/�,FU ����������� $0 deleteiteminlist deleteItemInList�� ����   ������ 0 x  �� 0 thelist theList��   ���������� 0 x  �� 0 thelist theList�� 0 numitems numItems�� 0 newlist newList ��������
�� 
nmbr
�� 
cobj
�� .corecnte****       ****������ ���&E�O�k �Y hO��-j E�O�k  jvY hO�� �Y hO�k  �[�\[Zl\Zi2E�Y 5��  �[�\[Zk\Z�2E�Y �[�\[Zk\Z�k2�[�\[Z�k\Zi2%E�O� ascr  ��ޭ