FasdUAS 1.101.10   ��   ��    k             l      �� ��    "  WithDataSource.applescript        	  l     ������  ��   	  
  
 l      �� ��   ,& This script is used to demonstrate the scripting of a table view using a data source that is connected to the table view in Interface Builder. Basically the data source has columns added in the "will open" event handler, the "data rows" are added/updated/removed as need from the data source.          l     ������  ��        l      �� ��      ==== Properties ====          l     ������  ��        j     �� �� (0 contactsdatasource contactsDataSource  m     ��
�� 
null      l     ������  ��        l     ������  ��        l      �� ��       ==== Event Handlers ====          l     ������  ��       !   i     " # " I     �� $��
�� .coVScliInull���    obj  $ o      ���� 0 	theobject 	theObject��   # Z     � % & '�� % =     ( ) ( n      * + * 1    ��
�� 
pnam + o     ���� 0 	theobject 	theObject ) m     , , 	 add    & k    - - -  . / . l   �� 0��   0   Add a new contact    /  1 2 1 r     3 4 3 I   ���� 5
�� .corecrel****      � null��   5 �� 6 7
�� 
kocl 6 m   
 ��
�� 
datR 7 �� 8��
�� 
insh 8 l    9�� 9 n     : ; :  ;     ; l    <�� < n     = > = 2   ��
�� 
datR > o    ���� (0 contactsdatasource contactsDataSource��  ��  ��   4 o      ���� 0 therow theRow 2  ? @ ? I    $�� A����  0 getcontactinfo getContactInfo A  B C B n     D E D m    ��
�� 
cwin E o    ���� 0 	theobject 	theObject C  F�� F o     ���� 0 therow theRow��  ��   @  G H G l  % %������  ��   H  I J I l  % %�� K��   K ( " Clear out the contact information    J  L�� L I   % -�� M���� $0 clearcontactinfo clearContactInfo M  N�� N n   & ) O P O m   ' )��
�� 
cwin P o   & '���� 0 	theobject 	theObject��  ��  ��   '  Q R Q =  0 5 S T S n   0 3 U V U 1   1 3��
�� 
pnam V o   0 1���� 0 	theobject 	theObject T m   3 4 W W  update    R  X Y X k   8 q Z Z  [ \ [ r   8 C ] ^ ] n   8 A _ ` _ 4   > A�� a
�� 
tabW a m   ? @ b b  contacts    ` n   8 > c d c 4   ; >�� e
�� 
scrV e m   < = f f  contacts    d n   8 ; g h g m   9 ;��
�� 
cwin h o   8 9���� 0 	theobject 	theObject ^ o      ���� 0 	tableview 	tableView \  i j i r   D I k l k n   D G m n m 1   E G��
�� 
seDS n o   D E���� 0 	tableview 	tableView l o      ���� $0 selecteddatarows selectedDataRows j  o�� o Z   J q p q���� p ?   J Q r s r l  J O t�� t I  J O�� u��
�� .corecnte****       **** u o   J K���� $0 selecteddatarows selectedDataRows��  ��   s m   O P����   q k   T m v v  w x w l  T T�� y��   y   Update the contact    x  z { z I   T b�� |����  0 getcontactinfo getContactInfo |  } ~ } n   U X  �  m   V X��
�� 
cwin � o   U V���� 0 	theobject 	theObject ~  ��� � n   X ^ � � � 4   Y ^�� �
�� 
cobj � m   \ ]����  � o   X Y���� $0 selecteddatarows selectedDataRows��  ��   {  � � � l  c c������  ��   �  � � � l  c c�� ���   � 0 * Tell the table view to update it's values    �  ��� � O  c m � � � I  g l������
�� .appSfupdnull���    obj ��  ��   � o   c d���� 0 	tableview 	tableView��  ��  ��  ��   Y  � � � =  t { � � � n   t w � � � 1   u w��
�� 
pnam � o   t u���� 0 	theobject 	theObject � m   w z � �  remove    �  ��� � k   ~ � � �  � � � r   ~ � � � � n   ~ � � � � 4   � ��� �
�� 
tabW � m   � � � �  contacts    � n   ~ � � � � 4   � ��� �
�� 
scrV � m   � � � �  contacts    � n   ~ � � � � m    ���
�� 
cwin � o   ~ ���� 0 	theobject 	theObject � o      ���� 0 	tableview 	tableView �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
seDS � o   � ����� 0 	tableview 	tableView � o      ���� $0 selecteddatarows selectedDataRows �  ��� � Z   � � � ����� � ?   � � � � � l  � � ��� � I  � ��� ���
�� .corecnte****       **** � o   � ����� $0 selecteddatarows selectedDataRows��  ��   � m   � �����   � O   � � � � � k   � � � �  � � � l  � ��� ���   � . ( Remove the contact form the data source    �  � � � I  � ��� ���
�� .coredelonull���    obj  � l  � � ��� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� $0 selecteddatarows selectedDataRows��  ��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   � ( " Clear out the contact information    �  ��� � n  � � � � � I   � ��� ����� $0 clearcontactinfo clearContactInfo �  ��� � n   � � � � � m   � ���
�� 
cwin � o   � ����� 0 	theobject 	theObject��  ��   �  f   � ���   � n   � � � � � m   � ���
�� 
cwin � o   � ����� 0 	theobject 	theObject��  ��  ��  ��  ��   !  � � � l     ������  ��   �  � � � i    
 � � � I     �� ���
�� .appSwilOnull���    obj  � o      �� 0 	theobject 	theObject��   � k     t � �  � � � l     �~ ��~   � D > Set up the contactDataSource so that the rest will be simpler    �  � � � r      � � � n     	 � � � m    	�}
�} 
datS � n      � � � 4    �| �
�| 
tabW � m     � �  contacts    � n      � � � 4    �{ �
�{ 
scrV � m     � �  contacts    � o     �z�z 0 	theobject 	theObject � o      �y�y (0 contactsdatasource contactsDataSource �  � � � l   �x�w�x  �w   �  � � � l   �v ��v   � V P Here we will add the data columns to the data source of the contacts table view    �  ��u � O    t � � � k    s � �  � � � I   )�t�s �
�t .corecrel****      � null�s   � �r � �
�r 
kocl � m    �q
�q 
datB � �p � �
�p 
insh � l     ��o � n      � � �  ;      � l    ��n � 2   �m
�m 
datB�n  �o   � �l ��k
�l 
prdt � K   ! % � � �j ��i
�j 
pnam � m   " # � � 
 name   �i  �k   �  � � � I  * ;�h�g �
�h .corecrel****      � null�g   � �f 
�f 
kocl  m   , -�e
�e 
datB �d
�d 
insh l  . 2�c n   . 2  ;   1 2 l  . 1�b 2  . 1�a
�a 
datB�b  �c   �`�_
�` 
prdt K   3 7		 �^
�]
�^ 
pnam
 m   4 5  address   �]  �_   �  I  < M�\�[
�\ .corecrel****      � null�[   �Z
�Z 
kocl m   > ?�Y
�Y 
datB �X
�X 
insh l  @ D�W n   @ D  ;   C D l  @ C�V 2  @ C�U
�U 
datB�V  �W   �T�S
�T 
prdt K   E I �R�Q
�R 
pnam m   F G 
 city   �Q  �S    I  N _�P�O
�P .corecrel****      � null�O   �N
�N 
kocl m   P Q�M
�M 
datB �L !
�L 
insh  l  R V"�K" n   R V#$#  ;   U V$ l  R U%�J% 2  R U�I
�I 
datB�J  �K  ! �H&�G
�H 
prdt& K   W ['' �F(�E
�F 
pnam( m   X Y))  state   �E  �G   *�D* I  ` s�C�B+
�C .corecrel****      � null�B  + �A,-
�A 
kocl, m   b c�@
�@ 
datB- �?./
�? 
insh. l  d h0�>0 n   d h121  ;   g h2 l  d g3�=3 2  d g�<
�< 
datB�=  �>  / �;4�:
�; 
prdt4 K   i o55 �96�8
�9 
pnam6 m   j m77 	 zip   �8  �:  �D   � o    �7�7 (0 contactsdatasource contactsDataSource�u   � 898 l     �6�5�6  �5  9 :;: i    <=< I     �4>�3
�4 .coVSselFnull���    obj > o      �2�2 0 	theobject 	theObject�3  = Z     Y?@�1�0? =    ABA n     CDC 1    �/
�/ 
pnamD o     �.�. 0 	theobject 	theObjectB m    EE  contacts   @ k    UFF GHG r    IJI n    KLK m   	 �-
�- 
cwinL o    	�,�, 0 	theobject 	theObjectJ o      �+�+ 0 	thewindow 	theWindowH MNM l   �*�)�*  �)  N OPO l   �(Q�(  Q h b Set the contact index to the current row, so that we can use it to update the right contact later   P RSR r    TUT n    VWV 1    �'
�' 
seDSW o    �&�& 0 	theobject 	theObjectU o      �%�% $0 selecteddatarows selectedDataRowsS XYX l   �$�#�$  �#  Y Z�"Z Z    U[\�!][ =    ^_^ l   `� ` I   �a�
� .corecnte****       ****a o    �� $0 selecteddatarows selectedDataRows�  �   _ m    ��  \ k    6bb cdc l   �e�  e A ; There wasn't any selected so clear the contact information   d fgf n   $hih I    $�j�� $0 clearcontactinfo clearContactInfoj k�k o     �� 0 	thewindow 	theWindow�  �  i  f    g lml l  % %���  �  m non l  % %�p�  p 0 * Disable the "Update" and "Remove" buttons   o qrq r   % -sts m   % &�
� boovfalst n      uvu 1   * ,�
� 
enaBv n   & *wxw 4   ' *�y
� 
butTy m   ( )zz  update   x o   & '�� 0 	thewindow 	theWindowr {�{ r   . 6|}| m   . /�
� boovfals} n      ~~ 1   3 5�
� 
enaB n   / 3��� 4   0 3��
� 
butT� m   1 2��  remove   � o   / 0�� 0 	thewindow 	theWindow�  �!  ] k   9 U�� ��� l  9 9�
��
  � > 8 A contact was selected, so show the contact information   � ��� n  9 C��� I   : C�	���	  0 setcontactinfo setContactInfo� ��� o   : ;�� 0 	thewindow 	theWindow� ��� n   ; ?��� 4   < ?��
� 
cobj� m   = >�� � o   ; <�� $0 selecteddatarows selectedDataRows�  �  �  f   9 :� ��� l  D D���  �  � ��� l  D D� ��   � / ) Enable the "Update" and "Remove" buttons   � ��� r   D L��� m   D E��
�� boovtrue� n      ��� 1   I K��
�� 
enaB� n   E I��� 4   F I���
�� 
butT� m   G H��  update   � o   E F���� 0 	thewindow 	theWindow� ���� r   M U��� m   M N��
�� boovtrue� n      ��� 1   R T��
�� 
enaB� n   N R��� 4   O R���
�� 
butT� m   P Q��  remove   � o   N O���� 0 	thewindow 	theWindow��  �"  �1  �0  ; ��� l     ������  ��  � ��� l     ������  ��  � ��� l      �����  � "  ==== Contact Handlers ====    � ��� l     ������  ��  � ��� l     �����  � #  Empty all of the text fields   � ��� l     ������  ��  � ��� i    ��� I      ������� $0 clearcontactinfo clearContactInfo� ���� o      ���� 0 	thewindow 	theWindow��  ��  � O     :��� k    9�� ��� r    ��� m    ��      � n      ��� 1   	 ��
�� 
pcnt� 4    	���
�� 
texF� m    �� 
 name   � ��� r    ��� m    ��      � n      ��� 1    ��
�� 
pcnt� 4    ���
�� 
texF� m    ��  address   � ��� r    ��� m    ��      � n      ��� 1    ��
�� 
pcnt� 4    ���
�� 
texF� m    �� 
 city   � ��� r    '��� m     ��      � n      ��� 1   $ &��
�� 
pcnt� 4     $���
�� 
texF� m   " #��  state   � ��� r   ( 0��� m   ( )��      � n      ��� 1   - /��
�� 
pcnt� 4   ) -���
�� 
texF� m   + ,�� 	 zip   � ���� r   1 9��� 4   1 5���
�� 
texF� m   3 4�� 
 name   � 1   5 8��
�� 
firS��  � o     ���� 0 	thewindow 	theWindow� ��� l     ������  ��  � ��� l     �����  � P J Get the values from the text fields and set the cells in the the data row   � ��� l     ������  ��  � ��� i    ��� I      �������  0 getcontactinfo getContactInfo�    o      ���� 0 	thewindow 	theWindow �� o      ���� 0 therow theRow��  ��  � O     J k    I  r    	 n    


 1    
��
�� 
pcnt 4    ��
�� 
texF m     
 name   	 n       1    ��
�� 
pcnt n   
  4    ��
�� 
datC m     
 name    o   
 ���� 0 therow theRow  r     n     1    ��
�� 
pcnt 4    ��
�� 
texF m      address    n       1    ��
�� 
pcnt n     4    �� 
�� 
datC  m    !!  address    o    ���� 0 therow theRow "#" r     -$%$ n     &&'& 1   $ &��
�� 
pcnt' 4     $��(
�� 
texF( m   " #)) 
 city   % n      *+* 1   * ,��
�� 
pcnt+ n   & *,-, 4   ' *��.
�� 
datC. m   ( )// 
 city   - o   & '���� 0 therow theRow# 010 r   . ;232 n   . 4454 1   2 4��
�� 
pcnt5 4   . 2��6
�� 
texF6 m   0 177  state   3 n      898 1   8 :��
�� 
pcnt9 n   4 8:;: 4   5 8��<
�� 
datC< m   6 7==  state   ; o   4 5���� 0 therow theRow1 >��> r   < I?@? n   < BABA 1   @ B��
�� 
pcntB 4   < @��C
�� 
texFC m   > ?DD 	 zip   @ n      EFE 1   F H��
�� 
pcntF n   B FGHG 4   C F��I
�� 
datCI m   D EJJ 	 zip   H o   B C���� 0 therow theRow��   o     ���� 0 	thewindow 	theWindow� KLK l     ������  ��  L MNM l     ��O��  O ; 5 Set the text fields with the values from the contact   N PQP l     ��R��  R      Q STS i    UVU I      ��W����  0 setcontactinfo setContactInfoW XYX o      ���� 0 	thewindow 	theWindowY Z��Z o      ���� 0 therow theRow��  ��  V O     J[\[ k    I]] ^_^ r    `a` n    
bcb 1    
��
�� 
pcntc n    ded 4    ��f
�� 
datCf m    gg 
 name   e o    ���� 0 therow theRowa n      hih 1    ��
�� 
pcnti 4   
 ��j
�� 
texFj m    kk 
 name   _ lml r    non n    pqp 1    ��
�� 
pcntq n    rsr 4    ��t
�� 
datCt m    uu  address   s o    ���� 0 therow theRowo n      vwv 1    ��
�� 
pcntw 4    ��x
�� 
texFx m    yy  address   m z{z r     -|}| n     &~~ 1   $ &��
�� 
pcnt n     $��� 4   ! $���
�� 
datC� m   " #�� 
 city   � o     !���� 0 therow theRow} n      ��� 1   * ,��
�� 
pcnt� 4   & *���
�� 
texF� m   ( )�� 
 city   { ��� r   . ;��� n   . 4��� 1   2 4��
�� 
pcnt� n   . 2��� 4   / 2���
�� 
datC� m   0 1��  state   � o   . /���� 0 therow theRow� n      ��� 1   8 :��
�� 
pcnt� 4   4 8���
�� 
texF� m   6 7��  state   � ���� r   < I��� n   < B��� 1   @ B��
�� 
pcnt� n   < @��� 4   = @���
�� 
datC� m   > ?�� 	 zip   � o   < =���� 0 therow theRow� n      ��� 1   F H��
�� 
pcnt� 4   B F���
�� 
texF� m   D E�� 	 zip   ��  \ o     ���� 0 	thewindow 	theWindowT ��� l     ������  ��  � ��� l     ������  ��  � ��� l      �����  �	2	, � Copyright 2004 Apple Computer, Inc. All rights reserved.

IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc. (�Apple�) in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this Apple software constitutes acceptance of these terms.  If you do not agree with these terms, please do not use, install, modify or redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Apple grants you a personal, non-exclusive license, under Apple�s copyrights in this original Apple software (the �Apple Software�), to use, reproduce, modify and redistribute the Apple Software, with or without modifications, in source and/or binary forms; provided that if you redistribute the Apple Software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the Apple Software.  Neither the name, trademarks, service marks or logos of Apple Computer, Inc. may be used to endorse or promote products derived from the Apple Software without specific prior written permission from Apple.  Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. 

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.    � ��� l     ������  ��  � ���� j    ����� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier� m    ��   WithDataSource.applescript   ��       
��������������  � ����������������� (0 contactsdatasource contactsDataSource
�� .coVScliInull���    obj 
�� .appSwilOnull���    obj 
�� .coVSselFnull���    obj �� $0 clearcontactinfo clearContactInfo��  0 getcontactinfo getContactInfo��  0 setcontactinfo setContactInfo� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier
�� 
null� �~ #�}�|���{
�~ .coVScliInull���    obj �} 0 	theobject 	theObject�|  � �z�y�x�w�z 0 	theobject 	theObject�y 0 therow theRow�x 0 	tableview 	tableView�w $0 selecteddatarows selectedDataRows� �v ,�u�t�s�r�q�p�o�n W�m f�l b�k�j�i�h � � ��g
�v 
pnam
�u 
kocl
�t 
datR
�s 
insh�r 
�q .corecrel****      � null
�p 
cwin�o  0 getcontactinfo getContactInfo�n $0 clearcontactinfo clearContactInfo
�m 
scrV
�l 
tabW
�k 
seDS
�j .corecnte****       ****
�i 
cobj
�h .appSfupdnull���    obj 
�g .coredelonull���    obj �{ ���,�  **���b   �-6� E�O*��,�l+ O*��,k+ 	Y ���,�  >��,��/��/E�O��,E�O�j j *��,�a k/l+ O� *j UY hY N��,a   C��,�a /�a /E�O��,E�O�j j ��, �a k/j O)��,k+ 	UY hY h� �f ��e�d���c
�f .appSwilOnull���    obj �e 0 	theobject 	theObject�d  � �b�b 0 	theobject 	theObject� �a ��` ��_�^�]�\�[�Z ��Y�X)7
�a 
scrV
�` 
tabW
�_ 
datS
�^ 
kocl
�] 
datB
�\ 
insh
�[ 
prdt
�Z 
pnam�Y 
�X .corecrel****      � null�c u���/��/�,Ec   Ob    ]*���*�-6���l� O*���*�-6���l� O*���*�-6���l� O*���*�-6���l� O*���*�-6��a l� U� �W=�V�U���T
�W .coVSselFnull���    obj �V 0 	theobject 	theObject�U  � �S�R�Q�S 0 	theobject 	theObject�R 0 	thewindow 	theWindow�Q $0 selecteddatarows selectedDataRows� �PE�O�N�M�L�Kz�J��I�H��
�P 
pnam
�O 
cwin
�N 
seDS
�M .corecnte****       ****�L $0 clearcontactinfo clearContactInfo
�K 
butT
�J 
enaB
�I 
cobj�H  0 setcontactinfo setContactInfo�T Z��,�  R��,E�O��,E�O�j j  )�k+ Of���/�,FOf���/�,FY )���k/l+ Oe���/�,FOe���/�,FY h� �G��F�E���D�G $0 clearcontactinfo clearContactInfo�F �C��C �  �B�B 0 	thewindow 	theWindow�E  � �A�A 0 	thewindow 	theWindow� ��@��?����������>
�@ 
texF
�? 
pcnt
�> 
firS�D ;� 7�*��/�,FO�*��/�,FO�*��/�,FO�*��/�,FO�*��/�,FO*��/*�,FU� �=��<�;���:�=  0 getcontactinfo getContactInfo�< �9��9 �  �8�7�8 0 	thewindow 	theWindow�7 0 therow theRow�;  � �6�5�6 0 	thewindow 	theWindow�5 0 therow theRow� �4�3�2!)/7=DJ
�4 
texF
�3 
pcnt
�2 
datC�: K� G*��/�,���/�,FO*��/�,���/�,FO*��/�,���/�,FO*��/�,���/�,FO*��/�,���/�,FU� �1V�0�/���.�1  0 setcontactinfo setContactInfo�0 �-��- �  �,�+�, 0 	thewindow 	theWindow�+ 0 therow theRow�/  � �*�)�* 0 	thewindow 	theWindow�) 0 therow theRow� �(g�'�&kuy������
�( 
datC
�' 
pcnt
�& 
texF�. K� G���/�,*��/�,FO���/�,*��/�,FO���/�,*��/�,FO���/�,*��/�,FO���/�,*��/�,FU ascr  ��ޭ