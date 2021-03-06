FasdUAS 1.101.10   ��   ��    k             l      �� ��      Table Sort.applescript        	  l     ������  ��   	  
  
 l      �� ��    � � This example demonstrates how easy it is to add sorting to your tables. In the example, you can click on different columns to sort on that column. Clicking more than once in the same column changes the sort order of that column.          l     ������  ��        l      �� ��      ==== Properties ====          l     ������  ��        j     I�� �� 0 	tabledata 	tableData  J     H       K     
   ��  �� 0 name    m        Bart Simpson     ��  �� 0 city    m          Springfield     �� ! "�� 0 zip   ! m     # #  19542    " �� $���� 0 age   $ m    ���� ��     % & % K   
  ' ' �� ( )�� 0 name   ( m     * *  Ally McBiel    ) �� + ,�� 0 city   + m     - -  Chicago    , �� . /�� 0 zip   . m     0 0  91544    / �� 1���� 0 age   1 m    ���� ��   &  2 3 2 K      4 4 �� 5 6�� 0 name   5 m     7 7  Joan of Ark    6 �� 8 9�� 0 city   8 m     : :  Paris    9 �� ; <�� 0 zip   ; m     = =  53255    < �� >���� 0 age   > m    ���� $��   3  ? @ ? K     2 A A �� B C�� 0 name   B m   ! $ D D  King Tut    C �� E F�� 0 city   E m   % ( G G  Egypt    F �� H I�� 0 zip   H m   ) , J J  00245    I �� K���� 0 age   K m   - 0���� -��   @  L�� L K   2 D M M �� N O�� 0 name   N m   3 6 P P  James Taylor    O �� Q R�� 0 city   Q m   7 : S S  Atlanta    R �� T U�� 0 zip   T m   ; > V V  21769    U �� W���� 0 age   W m   ? B���� *��  ��     X Y X l     ������  ��   Y  Z [ Z l     ������  ��   [  \ ] \ l      �� ^��   ^    ==== Event Handlers ====     ]  _ ` _ l     ������  ��   `  a b a l     �� c��   c � � The "awake from nib" event handler is attached to the table view. It will be called when the table view is loaded from the nib. It's a good place to create our data source and set up the data columns.    b  d e d l     ������  ��   e  f g f i   J M h i h I     �� j��
�� .appSawFNnull���    obj  j o      ���� 0 	theobject 	theObject��   i k     � k k  l m l l     �� n��   n   Create the data source    m  o p o r      q r q I    ���� s
�� .corecrel****      � null��   s �� t u
�� 
kocl t m    ��
�� 
datS u �� v w
�� 
insh v n     x y x  ;     y 2   ��
�� 
datS w �� z��
�� 
prdt z K   	  { { �� |��
�� 
pnam | m   
  } }  names   ��  ��   r o      ���� 0 thedatasource theDataSource p  ~  ~ l   ������  ��     � � � l   �� ���   � V P Create each of the data columns, including the sort information for each column    �  � � � I   -���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m    ��
�� 
datB � �� � �
�� 
insh � n     � � �  ;     � n     � � � 2   ��
�� 
datB � o    ���� 0 thedatasource theDataSource � �� ���
�� 
prdt � K    ) � � �� � �
�� 
pnam � m     � � 
 name    � �� � �
�� 
sorO � m     !��
�� ESoDascN � �� � �
�� 
sorT � m   " #��
�� ESoTalpB � �� ���
�� 
soCS � m   $ %��
�� EScScasS��  ��   �  � � � I  . I���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   0 1��
�� 
datB � �� � �
�� 
insh � n   2 6 � � �  ;   5 6 � n   2 5 � � � 2  3 5��
�� 
datB � o   2 3���� 0 thedatasource theDataSource � �� ���
�� 
prdt � K   7 E � � �� � �
�� 
pnam � m   8 ; � � 
 city    � �� � �
�� 
sorO � m   < =��
�� ESoDascN � �� � �
�� 
sorT � m   > ?��
�� ESoTalpB � �� ���
�� 
soCS � m   @ A��
�� EScScasS��  ��   �  � � � I  J e���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   L M��
�� 
datB � �� � �
�� 
insh � n   N R � � �  ;   Q R � n   N Q � � � 2  O Q��
�� 
datB � o   N O���� 0 thedatasource theDataSource � �� ���
�� 
prdt � K   S a � � �� � �
�� 
pnam � m   T W � � 	 zip    � �� � �
�� 
sorO � m   X Y��
�� ESoDascN � �� � �
�� 
sorT � m   Z [��
�� ESoTalpB � �� ���
�� 
soCS � m   \ ]��
�� EScScasS��  ��   �  � � � I  f ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   h i��
�� 
datB � �� � �
�� 
insh � n   j n � � �  ;   m n � n   j m � � � 2  k m��
�� 
datB � o   j k���� 0 thedatasource theDataSource � � ��~
� 
prdt � K   o  � � �} � �
�} 
pnam � m   p s � � 	 age    � �| � �
�| 
sorO � m   t u�{
�{ ESoDascN � �z � �
�z 
sorT � m   v y�y
�y ESoTnumR � �x ��w
�x 
soCS � m   z {�v
�v EScScasS�w  �~   �  � � � l  � ��u�t�u  �t   �  � � � l  � ��s ��s   � %  Make this a sorted data source    �  � � � r   � � � � � m   � ��r
�r boovtrue � n       � � � 1   � ��q
�q 
sorR � o   � ��p�p 0 thedatasource theDataSource �  � � � l  � ��o�n�o  �n   �  � � � l  � ��m ��m   � 4 . Set the "name" data column as the sort column    �  � � � r   � � � � � n   � � � � � 4   � ��l �
�l 
datB � m   � � � � 
 name    � o   � ��k�k 0 thedatasource theDataSource � n       � � � 1   � ��j
�j 
sorC � o   � ��i�i 0 thedatasource theDataSource �  � � � l  � ��h�g�h  �g   �  � � � l  � ��f ��f   � C = Set the data source of the table view to the new data source    �  � � � r   � � � � � o   � ��e�e 0 thedatasource theDataSource � n       � � � m   � ��d
�d 
datS � o   � ��c�c 0 	theobject 	theObject �  � � � l  � ��b�a�b  �a   �  � � � l  � ��` �`    : 4 Add the table data (using the new "append" command)    � �_ I  � ��^
�^ .daVSappPnull���    obj  o   � ��]�] 0 thedatasource theDataSource �\�[
�\ 
with o   � ��Z�Z 0 	tabledata 	tableData�[  �_   g  l     �Y�X�Y  �X    l     �W�V�W  �V   	
	 l     �U�U   � � The "launched" event handler is attached to the application object ("File's Owner of MainMenu.nib"). It is called towards the end of the startup sequence.   
  l     �T�S�T  �S    i   N Q I     �R�Q
�R .appSlauNnull���    obj  o      �P�P 0 	theobject 	theObject�Q   k       l     �O�O     Show the main window    �N I    �M�L
�M .appSshoHnull���    obj  4     �K
�K 
cwin m     
 main   �L  �N    l     �J�I�J  �I    l     �H�G�H  �G     l     �F!�F  ! � � The "column clicked" event handler is called when the user clicks on a table column in the table view. We will use this handler to change the sort column of the data source as well as the sort order.     "#" l     �E�D�E  �D  # $%$ i   R U&'& I     �C()
�C .daVScolCnull���    obj ( o      �B�B 0 	theobject 	theObject) �A*�@
�A 
tabC* o      �?�? 0 tablecolumn tableColumn�@  ' k     @++ ,-, l     �>.�>  . , & Get the data source of the table view   - /0/ r     121 n     343 m    �=
�= 
datS4 o     �<�< 0 	theobject 	theObject2 o      �;�; 0 thedatasource theDataSource0 565 l   �:�9�:  �9  6 787 l   �89�8  9 5 / Get the identifier of the clicked table column   8 :;: r    <=< n    	>?> 1    	�7
�7 
ideT? o    �6�6 0 tablecolumn tableColumn= o      �5�5 *0 thecolumnidentifier theColumnIdentifier; @A@ l   �4�3�4  �3  A BCB l   �2D�2  D 5 / Get the current sort column of the data source   C EFE r    GHG n    IJI 1    �1
�1 
sorCJ o    �0�0 0 thedatasource theDataSourceH o      �/�/ 0 thesortcolumn theSortColumnF KLK l   �.�-�.  �-  L MNM l   �,O�,  O c ] If the current sort column is not the same as the clicked column then switch the sort column   N PQP Z    :RS�+TR >   UVU l   W�*W n    XYX 1    �)
�) 
pnamY o    �(�( 0 thesortcolumn theSortColumn�*  V o    �'�' *0 thecolumnidentifier theColumnIdentifierS r    "Z[Z n    \]\ 4    �&^
�& 
datB^ o    �%�% *0 thecolumnidentifier theColumnIdentifier] o    �$�$ 0 thedatasource theDataSource[ l     _�#_ n      `a` 1    !�"
�" 
sorCa o    �!�! 0 thedatasource theDataSource�#  �+  T k   % :bb cdc l  % %� e�   e &   Otherwise change the sort order   d f�f Z   % :gh�ig =  % *jkj n   % (lml 1   & (�
� 
sorOm o   % &�� 0 thesortcolumn theSortColumnk m   ( )�
� ESoDascNh r   - 2non m   - .�
� ESoDdesEo n      pqp 1   / 1�
� 
sorOq o   . /�� 0 thesortcolumn theSortColumn�  i r   5 :rsr m   5 6�
� ESoDascNs n      tut 1   7 9�
� 
sorOu o   6 7�� 0 thesortcolumn theSortColumn�  Q vwv l  ; ;���  �  w xyx l  ; ;�z�  z ? 9 We need to update the table view (so it will be redrawn)   y {�{ I  ; @�|�
� .appSfupdnull���    obj | o   ; <�� 0 	theobject 	theObject�  �  % }~} l     ���  �  ~ � l     ��
�  �
  � ��� l      �	��	  �	2	, � Copyright 2004 Apple Computer, Inc. All rights reserved.

IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc. (�Apple�) in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this Apple software constitutes acceptance of these terms.  If you do not agree with these terms, please do not use, install, modify or redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Apple grants you a personal, non-exclusive license, under Apple�s copyrights in this original Apple software (the �Apple Software�), to use, reproduce, modify and redistribute the Apple Software, with or without modifications, in source and/or binary forms; provided that if you redistribute the Apple Software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the Apple Software.  Neither the name, trademarks, service marks or logos of Apple Computer, Inc. may be used to endorse or promote products derived from the Apple Software without specific prior written permission from Apple.  Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. 

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.    � ��� l     ���  �  � ��� l     ���  �  � ��� j   V Z��� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier� m   V Y��  Table Sort.applescript   �       ��������  � �� ������� 0 	tabledata 	tableData
�  .appSawFNnull���    obj 
�� .appSlauNnull���    obj 
�� .daVScolCnull���    obj �� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier� ����� �  ������ �� ��� 0 name  � ��  ��� 0 city  � �� #��� 0 zip  � �������� 0 age  �� ��  � �� *��� 0 name  � �� -��� 0 city  � �� 0��� 0 zip  � �������� 0 age  �� ��  � �� 7��� 0 name  � �� :��� 0 city  � �� =��� 0 zip  � �������� 0 age  �� $��  � �� D��� 0 name  � �� G��� 0 city  � �� J��� 0 zip  � �������� 0 age  �� -��  � �� P��� 0 name  � �� S��� 0 city  � �� V��� 0 zip  � �������� 0 age  �� *��  � �� i��������
�� .appSawFNnull���    obj �� 0 	theobject 	theObject��  � ������ 0 	theobject 	theObject�� 0 thedatasource theDataSource� ���������� }������ ��������������� � � ����� �������
�� 
kocl
�� 
datS
�� 
insh
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null
�� 
datB
�� 
sorO
�� ESoDascN
�� 
sorT
�� ESoTalpB
�� 
soCS
�� EScScasS�� 
�� ESoTnumR
�� 
sorR
�� 
sorC
�� 
with
�� .daVSappPnull���    obj �� �*���*�-6���l� E�O*����-6���������a � O*����-6��a ������a � O*����-6��a ������a � O*����-6��a ���a ��a � Oe�a ,FO��a /�a ,FO���,FO�a b   l � ����������
�� .appSlauNnull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject� ����
�� 
cwin
�� .appSshoHnull���    obj �� 	*��/j � ��'��������
�� .daVScolCnull���    obj �� 0 	theobject 	theObject�� ������
�� 
tabC�� 0 tablecolumn tableColumn��  � ������������ 0 	theobject 	theObject�� 0 tablecolumn tableColumn�� 0 thedatasource theDataSource�� *0 thecolumnidentifier theColumnIdentifier�� 0 thesortcolumn theSortColumn� 	������������������
�� 
datS
�� 
ideT
�� 
sorC
�� 
pnam
�� 
datB
�� 
sorO
�� ESoDascN
�� ESoDdesE
�� .appSfupdnull���    obj �� A��,E�O��,E�O��,E�O��,� ��/��,FY ��,�  
��,FY ��,FO�j  ascr  ��ޭ