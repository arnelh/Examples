FasdUAS 1.101.10   ��   ��    k             l      �� ��    %  Coordinate System.applescript        	  l     ������  ��   	  
  
 l      �� ��    K E This is an example of how to use the new coordinate system support.          l     ������  ��        l      �� ��    "  ===== Event Handlers =====          l     ������  ��        i         I     �� ��
�� .appSlauNnull���    obj   o      ���� 0 	theobject 	theObject��    I    �� ��
�� .appSshoHnull���    obj   4     �� 
�� 
cwin  m       
 main   ��        l     ������  ��        l     ��  ��     � � This event handler is attached to the window and will be called when it is loaded. It is a good time to update the display in the window to show the current coordinates.      ! " ! l     ������  ��   "  # $ # i     % & % I     �� '��
�� .appSawFNnull���    obj  ' o      ���� 0 	theobject 	theObject��   & I     �� (���� 0 updatedisplay updateDisplay (  )�� ) o    ���� 0 	theobject 	theObject��  ��   $  * + * l     ������  ��   +  , - , l     �� .��   . � � This event handler is called when the button in our document window is clicked. It will test the various settings of the coordinate system by moving the window and then by moving the button.    -  / 0 / l     ������  ��   0  1 2 1 i     3 4 3 I     �� 5��
�� .coVScliInull���    obj  5 o      ���� 0 	theobject 	theObject��   4 k    ] 6 6  7 8 7 r      9 : 9 n      ; < ; m    ��
�� 
cwin < o     ���� 0 	theobject 	theObject : o      ���� 0 	thewindow 	theWindow 8  = > = r    	 ? @ ? o    ���� 0 	thewindow 	theWindow @ o      ���� 0 
testobject 
testObject >  A B A l  
 
������  ��   B  C D C l  
 
�� E��   E � � Test the Cocoa coordinate system on a window. This system uses {x, y, width, height}, with the origin of a window or view in the lower left corner being 0, 0    D  F G F r   
  H I H m   
 ��
�� cooScoCS I 1    ��
�� 
cooS G  J K J r     L M L n     N O N 1    ��
�� 
pbnd O o    ���� 0 
testobject 
testObject M o      ���� 0 
testbounds 
testBounds K  P Q P r     R S R n     T U T 1    ��
�� 
posn U o    ���� 0 
testobject 
testObject S o      ���� 0 testposition testPosition Q  V W V r    & X Y X J    " Z Z  [ \ [ m    ���� 2 \  ] ^ ] m    ���� 2 ^  _ ` _ m    ����� `  a�� a m     �������   Y n       b c b 1   # %��
�� 
pbnd c o   " #���� 0 
testobject 
testObject W  d e d I  ' ,�� f��
�� .sysodelanull��� ��� nmbr f m   ' (���� ��   e  g h g r   - 5 i j i J   - 1 k k  l m l m   - .���� � m  n�� n m   . /���� ���   j n       o p o 1   2 4��
�� 
posn p o   1 2���� 0 
testobject 
testObject h  q r q I   6 <�� s���� 0 updatedisplay updateDisplay s  t�� t o   7 8���� 0 	thewindow 	theWindow��  ��   r  u v u I  = B�� w��
�� .sysodelanull��� ��� nmbr w m   = >���� ��   v  x y x l  C C������  ��   y  z { z l  C C�� |��   | � � Test the old (classic) coordinate system on a window. This system uses {left, bottom, right, top}, with the origin of a window or view in the bottom left corner being 0, 0    {  } ~ } r   C H  �  m   C D��
�� cooSstCS � 1   D G��
�� 
cooS ~  � � � r   I N � � � n   I L � � � 1   J L��
�� 
pbnd � o   I J���� 0 
testobject 
testObject � o      ���� 0 
testbounds 
testBounds �  � � � r   O T � � � n   O R � � � 1   P R��
�� 
posn � o   O P���� 0 
testobject 
testObject � o      ���� 0 testposition testPosition �  � � � r   U _ � � � J   U [ � �  � � � m   U V���� 2 �  � � � m   V W���� 2 �  � � � m   W X����� �  ��� � m   X Y�������   � n       � � � 1   \ ^��
�� 
pbnd � o   [ \���� 0 
testobject 
testObject �  � � � I  ` e�� ���
�� .sysodelanull��� ��� nmbr � m   ` a���� ��   �  � � � r   f n � � � J   f j � �  � � � m   f g���� � �  ��� � m   g h���� ���   � n       � � � 1   k m��
�� 
posn � o   j k���� 0 
testobject 
testObject �  � � � I   o u�� ����� 0 updatedisplay updateDisplay �  ��� � o   p q���� 0 	thewindow 	theWindow��  ��   �  � � � I  v {�� ���
�� .sysodelanull��� ��� nmbr � m   v w���� ��   �  � � � l  | |������  ��   �  � � � l  | |�� ���   � � � Test the AppleScript coordinate system on a window. This system uses {left, top, right, bottom}, with the origin of a window or view in the top left corner being 0, 0    �  � � � r   | � � � � m   | }��
�� cooSclCS � 1   } ���
�� 
cooS �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
pbnd � o   � ����� 0 
testobject 
testObject � o      ���� 0 
testbounds 
testBounds �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
posn � o   � ����� 0 
testobject 
testObject � o      ���� 0 testposition testPosition �  � � � r   � � � � � J   � � � �  � � � m   � ����� 2 �  � � � m   � ����� 2 �  � � � m   � ������ �  ��� � m   � ��������   � n       � � � 1   � ���
�� 
pbnd � o   � ����� 0 
testobject 
testObject �  � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� ��   �  � � � r   � � � � � J   � � � �  � � � m   � ��� � �  ��~ � m   � ��}�} ��~   � n       � � � 1   � ��|
�| 
posn � o   � ��{�{ 0 
testobject 
testObject �  � � � I   � ��z ��y�z 0 updatedisplay updateDisplay �  ��x � o   � ��w�w 0 	thewindow 	theWindow�x  �y   �  � � � I  � ��v ��u
�v .sysodelanull��� ��� nmbr � m   � ��t�t �u   �  � � � l  � ��s�r�s  �r   �  � � � r   � � � � � o   � ��q�q 0 	theobject 	theObject � o      �p�p 0 
testobject 
testObject �  � � � l  � ��o�n�o  �n   �  � � � l  � ��m ��m   � � � Test the Cocoa coordinate system on our button. This system uses {x, y, width, height}, with the origin of a window or view in the lower left corner being 0, 0    �  � � � r   � � � � � m   � ��l
�l cooScoCS � 1   � ��k
�k 
cooS �  � � � r   � � � � � n   � � � � � 1   � ��j
�j 
pbnd � o   � ��i�i 0 
testobject 
testObject � o      �h�h 0 
testbounds 
testBounds �  � � � r   � � � � � n   � � �  � 1   � ��g
�g 
posn  o   � ��f�f 0 
testobject 
testObject � o      �e�e 0 testposition testPosition �  r   � � J   � �  m   � ��d�d   	 m   � ��c�c  	 

 m   � ��b�b R �a m   � ��`�` �a   n       1   � ��_
�_ 
pbnd o   � ��^�^ 0 
testobject 
testObject  I  � ��]�\
�] .sysodelanull��� ��� nmbr m   � ��[�[ �\    r   � � J   � �  m   � ��Z�Z 
 �Y m   � ��X�X 
�Y   n       1   � ��W
�W 
posn o   � ��V�V 0 
testobject 
testObject  I   � ��U�T�U 0 updatedisplay updateDisplay �S o   � ��R�R 0 	thewindow 	theWindow�S  �T    !  I  � ��Q"�P
�Q .sysodelanull��� ��� nmbr" m   � ��O�O �P  ! #$# l  � ��N�M�N  �M  $ %&% l  � ��L'�L  ' � � Test the old (classic) coordinate system on our button. This system uses {left, bottom, right, top}, with the origin of a window or view in the bottom left corner being 0, 0   & ()( r   � �*+* m   � ��K
�K cooSstCS+ 1   � ��J
�J 
cooS) ,-, r   � �./. n   � �010 1   � ��I
�I 
pbnd1 o   � ��H�H 0 
testobject 
testObject/ o      �G�G 0 
testbounds 
testBounds- 232 r   �454 n   �676 1   ��F
�F 
posn7 o   � ��E�E 0 
testobject 
testObject5 o      �D�D 0 testposition testPosition3 898 r  :;: J  
<< =>= m  �C�C  > ?@? m  �B�B  @ ABA m  �A�A RB C�@C m  �?�? �@  ; n      DED 1  �>
�> 
pbndE o  
�=�= 0 
testobject 
testObject9 FGF I �<H�;
�< .sysodelanull��� ��� nmbrH m  �:�: �;  G IJI r  KLK J  MM NON m  �9�9 
O P�8P m  �7�7 
�8  L n      QRQ 1  �6
�6 
posnR o  �5�5 0 
testobject 
testObjectJ STS I  $�4U�3�4 0 updatedisplay updateDisplayU V�2V o   �1�1 0 	thewindow 	theWindow�2  �3  T WXW I %*�0Y�/
�0 .sysodelanull��� ��� nmbrY m  %&�.�. �/  X Z[Z l ++�-�,�-  �,  [ \]\ l ++�+^�+  ^ � � Test the AppleScript coordinate system on our button. This system uses {left, top, right, bottom}, with the origin of a window or view in the top left corner being 0, 0   ] _`_ r  +0aba m  +,�*
�* cooSclCSb 1  ,/�)
�) 
cooS` cdc r  16efe n  14ghg 1  24�(
�( 
pbndh o  12�'�' 0 
testobject 
testObjectf o      �&�& 0 
testbounds 
testBoundsd iji r  7<klk n  7:mnm 1  8:�%
�% 
posnn o  78�$�$ 0 
testobject 
testObjectl o      �#�# 0 testposition testPositionj opo r  =Gqrq J  =Css tut m  =>�"�"  u vwv m  >?�!�!  w xyx m  ?@� �  Ry z�z m  @A�� �  r n      {|{ 1  DF�
� 
pbnd| o  CD�� 0 
testobject 
testObjectp }~} I HM��
� .sysodelanull��� ��� nmbr m  HI�� �  ~ ��� r  NV��� J  NR�� ��� m  NO�� 
� ��� m  OP�� 
�  � n      ��� 1  SU�
� 
posn� o  RS�� 0 
testobject 
testObject� ��� I  W]���� 0 updatedisplay updateDisplay� ��� o  XY�� 0 	thewindow 	theWindow�  �  �   2 ��� l     ���  �  � ��� l     ���  � � � This event handler is called when the coordinate system popup button is changed. It will change the coordinate system and update the display.   � ��� l     ��
�  �
  � ��� i    ��� I     �	��
�	 .coVSactTnull���    obj � o      �� 0 	theobject 	theObject�  � k     :�� ��� r     ��� n     ��� 1    �
� 
conT� o     �� 0 	theobject 	theObject� o      �� 0 popupchoice popupChoice� ��� l   ���  �  � ��� Z    1����� =   	��� o    � �  0 popupchoice popupChoice� m    ����  � r    ��� m    ��
�� cooScoCS� 1    ��
�� 
cooS� ��� =   ��� o    ���� 0 popupchoice popupChoice� m    ���� � ��� r    ��� m    ��
�� cooSstCS� 1    ��
�� 
cooS� ��� =  " %��� o   " #���� 0 popupchoice popupChoice� m   # $���� � ���� r   ( -��� m   ( )��
�� cooSclCS� 1   ) ,��
�� 
cooS��  �  � ��� l  2 2������  ��  � ���� I   2 :������� 0 updatedisplay updateDisplay� ���� n   3 6��� m   4 6��
�� 
cwin� o   3 4���� 0 	theobject 	theObject��  ��  ��  � ��� l     ������  ��  � ��� l     �����  � v p This event handler is called when the window moves. It will update the display to show the current coordinates.   � ��� l     ������  ��  � ��� i    ��� I     �����
�� .appSmovVnull���    obj � o      ���� 0 	theobject 	theObject��  � I     ������� 0 updatedisplay updateDisplay� ���� o    ���� 0 	theobject 	theObject��  ��  � ��� l     ������  ��  � ��� l     �����  � x r This event handler is called when the window resizes. It will update the display to show the current coordinates.   � ��� l     ������  ��  � ��� i    ��� I     �����
�� .appSresJnull���    obj � o      ���� 0 	theobject 	theObject��  � I     ������� 0 updatedisplay updateDisplay� ���� o    ���� 0 	theobject 	theObject��  ��  � ��� l     ������  ��  � ��� l      �����  �   =====  Handlers =====    � ��� l     ������  ��  � ��� l     �����  � t n This handler is used to get the coordinates of the window and button and display a description in the window.   � ��� l     ������  ��  � ��� i    ��� I      ������� 0 updatedisplay updateDisplay� ���� o      ���� 0 	thewindow 	theWindow��  ��  � k    �� ��� r     ��� n     ��� 4    ���
�� 
butT� m    ��  button   � o     ���� 0 	thewindow 	theWindow� o      ���� 0 	thebutton 	theButton� ��� l   ������  ��  � ��� r    ��� n    
��� 1    
��
�� 
pbnd� o    ���� 0 	thewindow 	theWindow� o      ���� 0 windowbounds windowBounds�    r     n     1    ��
�� 
posn o    ���� 0 	thewindow 	theWindow o      ����  0 windowposition windowPosition  r    	 n    

 1    ��
�� 
pbnd o    ���� 0 	thebutton 	theButton	 o      ���� 0 buttonbounds buttonBounds  r     n     1    ��
�� 
posn o    ���� 0 	thebutton 	theButton o      ����  0 buttonposition buttonPosition  l   ������  ��    Z   ��� =   $ 1    "��
�� 
cooS m   " #��
�� cooScoCS k   ' �  r   ' * m   ' (����   o      ���� :0 coordinatesystemdescription coordinateSystemDescription  !  r   + J"#" b   + H$%$ b   + F&'& b   + A()( b   + ?*+* b   + :,-, b   + 8./. b   + 3010 b   + 1232 m   + ,44 
 {x:    3 n   , 0565 4   - 0��7
�� 
cobj7 m   . /���� 6 o   , -���� 0 windowbounds windowBounds1 m   1 288  , y:    / n   3 79:9 4   4 7��;
�� 
cobj; m   5 6���� : o   3 4���� 0 windowbounds windowBounds- m   8 9<<  , w:    + n   : >=>= 4   ; >��?
�� 
cobj? m   < =���� > o   : ;���� 0 windowbounds windowBounds) m   ? @@@  , h:    ' n   A EABA 4   B E��C
�� 
cobjC m   C D���� B o   A B���� 0 windowbounds windowBounds% m   F GDD  }   # o      ���� 20 windowboundsdescription windowBoundsDescription! EFE r   K \GHG b   K ZIJI b   K XKLK b   K SMNM b   K QOPO m   K LQQ 
 {x:    P n   L PRSR 4   M P��T
�� 
cobjT m   N O���� S o   L M����  0 windowposition windowPositionN m   Q RUU  , y:    L n   S WVWV 4   T W��X
�� 
cobjX m   U V���� W o   S T����  0 windowposition windowPositionJ m   X YYY  }   H o      ���� 60 windowpositiondescription windowPositionDescriptionF Z[Z r   ] �\]\ b   ] �^_^ b   ] �`a` b   ] {bcb b   ] wded b   ] rfgf b   ] nhih b   ] ijkj b   ] elml m   ] `nn 
 {x:    m n   ` dopo 4   a d��q
�� 
cobjq m   b c���� p o   ` a���� 0 buttonbounds buttonBoundsk m   e hrr  , y:    i n   i msts 4   j m��u
�� 
cobju m   k l���� t o   i j���� 0 buttonbounds buttonBoundsg m   n qvv  , w:    e n   r vwxw 4   s v��y
�� 
cobjy m   t u���� x o   r s���� 0 buttonbounds buttonBoundsc m   w zzz  , h:    a n   { {|{ 4   | ��}
�� 
cobj} m   } ~���� | o   { |���� 0 buttonbounds buttonBounds_ m   � �~~  }   ] o      ���� 20 buttonboundsdescription buttonBoundsDescription[ �� r   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� 
 {x:    � n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � �����  0 buttonposition buttonPosition� m   � ���  , y:    � n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � �����  0 buttonposition buttonPosition� m   � ���  }   � o      ���� 60 buttonpositiondescription buttonPositionDescription��   ��� =  � ���� 1   � ���
�� 
cooS� m   � ���
�� cooSstCS� ��� k   �2�� ��� r   � ���� m   � ����� � o      ���� :0 coordinatesystemdescription coordinateSystemDescription� ��� r   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� 
 {l:    � n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 windowbounds windowBounds� m   � ���  , b:    � n   � ���� 4   � ���
� 
cobj� m   � ��~�~ � o   � ��}�} 0 windowbounds windowBounds� m   � ���  , r:    � n   � ���� 4   � ��|�
�| 
cobj� m   � ��{�{ � o   � ��z�z 0 windowbounds windowBounds� m   � ���  , t:    � n   � ���� 4   � ��y�
�y 
cobj� m   � ��x�x � o   � ��w�w 0 windowbounds windowBounds� m   � ���  }   � o      �v�v 20 windowboundsdescription windowBoundsDescription� ��� r   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� 
 {l:    � n   � ���� 4   � ��u�
�u 
cobj� m   � ��t�t � o   � ��s�s  0 windowposition windowPosition� m   � ���  , b:    � n   � ���� 4   � ��r�
�r 
cobj� m   � ��q�q � o   � ��p�p  0 windowposition windowPosition� m   � ���  }   � o      �o�o 60 windowpositiondescription windowPositionDescription� ��� r   ���� b   ���� b   ���� b   ���� b   ���� b   ���� b   ���� b   � ���� b   � ���� m   � ��� 
 {l:    � n   � ���� 4   � ��n�
�n 
cobj� m   � ��m�m � o   � ��l�l 0 buttonbounds buttonBounds� m   � ���  , b:    � n   ���� 4   ��k�
�k 
cobj� m   � �j�j � o   � ��i�i 0 buttonbounds buttonBounds� m  ��  , r:    � n  
��� 4  
�h�
�h 
cobj� m  	�g�g � o  �f�f 0 buttonbounds buttonBounds� m  ��  , t:    � n  ��� 4  �e�
�e 
cobj� m  �d�d � o  �c�c 0 buttonbounds buttonBounds� m  ��  }   � o      �b�b 20 buttonboundsdescription buttonBoundsDescription� ��a� r  2��� b  0   b  , b  ' b  # m   
 {l:     n  "	
	 4  "�`
�` 
cobj m   !�_�_ 
 o  �^�^  0 buttonposition buttonPosition m  #&  , b:     n  '+ 4  (+�]
�] 
cobj m  )*�\�\  o  '(�[�[  0 buttonposition buttonPosition m  ,/  }   � o      �Z�Z 60 buttonpositiondescription buttonPositionDescription�a  �  = 5< 1  58�Y
�Y 
cooS m  8;�X
�X cooSclCS �W k  ?�  r  ?B m  ?@�V�V  o      �U�U :0 coordinatesystemdescription coordinateSystemDescription  r  Cl b  Cj  b  Cf!"! b  Ca#$# b  C]%&% b  CX'(' b  CT)*) b  CO+,+ b  CK-.- m  CF// 
 {l:    . n  FJ010 4  GJ�T2
�T 
cobj2 m  HI�S�S 1 o  FG�R�R 0 windowbounds windowBounds, m  KN33  , t:    * n  OS454 4  PS�Q6
�Q 
cobj6 m  QR�P�P 5 o  OP�O�O 0 windowbounds windowBounds( m  TW77  , r:    & n  X\898 4  Y\�N:
�N 
cobj: m  Z[�M�M 9 o  XY�L�L 0 windowbounds windowBounds$ m  ]`;;  , b:    " n  ae<=< 4  be�K>
�K 
cobj> m  cd�J�J = o  ab�I�I 0 windowbounds windowBounds  m  fi??  }    o      �H�H 20 windowboundsdescription windowBoundsDescription @A@ r  m�BCB b  m�DED b  m~FGF b  myHIH b  muJKJ m  mpLL 
 {l:    K n  ptMNM 4  qt�GO
�G 
cobjO m  rs�F�F N o  pq�E�E  0 windowposition windowPositionI m  uxPP  , t:    G n  y}QRQ 4  z}�DS
�D 
cobjS m  {|�C�C R o  yz�B�B  0 windowposition windowPositionE m  ~�TT  }   C o      �A�A 60 windowpositiondescription windowPositionDescriptionA UVU r  ��WXW b  ��YZY b  ��[\[ b  ��]^] b  ��_`_ b  ��aba b  ��cdc b  ��efe b  ��ghg m  ��ii 
 {l:    h n  ��jkj 4  ���@l
�@ 
cobjl m  ���?�? k o  ���>�> 0 buttonbounds buttonBoundsf m  ��mm  , t:    d n  ��non 4  ���=p
�= 
cobjp m  ���<�< o o  ���;�; 0 buttonbounds buttonBoundsb m  ��qq  , r:    ` n  ��rsr 4  ���:t
�: 
cobjt m  ���9�9 s o  ���8�8 0 buttonbounds buttonBounds^ m  ��uu  , b:    \ n  ��vwv 4  ���7x
�7 
cobjx m  ���6�6 w o  ���5�5 0 buttonbounds buttonBoundsZ m  ��yy  }   X o      �4�4 20 buttonboundsdescription buttonBoundsDescriptionV z�3z r  ��{|{ b  ��}~} b  ��� b  ����� b  ����� m  ���� 
 {l:    � n  ����� 4  ���2�
�2 
cobj� m  ���1�1 � o  ���0�0  0 buttonposition buttonPosition� m  ����  , t:    � n  ����� 4  ���/�
�/ 
cobj� m  ���.�. � o  ���-�-  0 buttonposition buttonPosition~ m  ����  }   | o      �,�, 60 buttonpositiondescription buttonPositionDescription�3  �W  ��   ��� l ���+�*�+  �*  � ��)� O  ���� k  ��� ��� r  ����� o  ���(�( :0 coordinatesystemdescription coordinateSystemDescription� n      ��� 1  ���'
�' 
conT� 4  ���&�
�& 
popB� m  ����  coordinate system   � ��� r  ����� o  ���%�% 20 windowboundsdescription windowBoundsDescription� n      ��� 1  ���$
�$ 
conT� 4  ���#�
�# 
texF� m  ����  window bounds   � ��� r  ����� o  ���"�" 60 windowpositiondescription windowPositionDescription� n      ��� 1  ���!
�! 
conT� 4  ��� �
�  
texF� m  ����  window position   � ��� r  �
��� o  ���� 20 buttonboundsdescription buttonBoundsDescription� n      ��� 1  	�
� 
conT� 4  ���
� 
texF� m  ��  button bounds   � ��� r  ��� o  �� 60 buttonpositiondescription buttonPositionDescription� n      ��� 1  �
� 
conT� 4  ��
� 
texF� m  ��  button position   �  � o  ���� 0 	thewindow 	theWindow�)  � ��� l     ���  �  � ��� l      ���  �	2	, � Copyright 2005 Apple Computer, Inc. All rights reserved.

IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc. (�Apple�) in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this Apple software constitutes acceptance of these terms.  If you do not agree with these terms, please do not use, install, modify or redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Apple grants you a personal, non-exclusive license, under Apple�s copyrights in this original Apple software (the �Apple Software�), to use, reproduce, modify and redistribute the Apple Software, with or without modifications, in source and/or binary forms; provided that if you redistribute the Apple Software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the Apple Software.  Neither the name, trademarks, service marks or logos of Apple Computer, Inc. may be used to endorse or promote products derived from the Apple Software without specific prior written permission from Apple.  Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. 

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.    � ��� l     ���  �  � ��� l     ���  �  � ��� j    ��� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier� m    �� # Coordinate System.applescript   �       
�����������  � ����
�	���
� .appSlauNnull���    obj 
� .appSawFNnull���    obj 
� .coVScliInull���    obj 
�
 .coVSactTnull���    obj 
�	 .appSmovVnull���    obj 
� .appSresJnull���    obj � 0 updatedisplay updateDisplay� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier� � �����
� .appSlauNnull���    obj � 0 	theobject 	theObject�  � �� 0 	theobject 	theObject� �  ��
�  
cwin
�� .appSshoHnull���    obj � 	*��/j � �� &��������
�� .appSawFNnull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject� ���� 0 updatedisplay updateDisplay�� *�k+  � �� 4��������
�� .coVScliInull���    obj �� 0 	theobject 	theObject��  � ������������ 0 	theobject 	theObject�� 0 	thewindow 	theWindow�� 0 
testobject 
testObject�� 0 
testbounds 
testBounds�� 0 testposition testPosition� ��������������������������������
�� 
cwin
�� cooScoCS
�� 
cooS
�� 
pbnd
�� 
posn�� 2����� 
�� .sysodelanull��� ��� nmbr�� ��� 0 updatedisplay updateDisplay
�� cooSstCS
�� cooSclCS�� R�� �� 
��^��,E�O�E�O�*�,FO��,E�O��,E�O�����v��,FOkj O��lv��,FO*�k+ 
Okj O�*�,FO��,E�O��,E�O�����v��,FOkj O��lv��,FO*�k+ 
Okj O�*�,FO��,E�O��,E�O�����v��,FOkj O��lv��,FO*�k+ 
Okj O�E�O�*�,FO��,E�O��,E�Ojj���v��,FOkj O��lv��,FO*�k+ 
Okj O�*�,FO��,E�O��,E�Ojj���v��,FOkj O��lv��,FO*�k+ 
Okj O�*�,FO��,E�O��,E�Ojj���v��,FOkj O��lv��,FO*�k+ 
� �����������
�� .coVSactTnull���    obj �� 0 	theobject 	theObject��  � ������ 0 	theobject 	theObject�� 0 popupchoice popupChoice� ��������������
�� 
conT
�� cooScoCS
�� 
cooS
�� cooSstCS
�� cooSclCS
�� 
cwin�� 0 updatedisplay updateDisplay�� ;��,E�O�j  
�*�,FY �k  
�*�,FY �l  
�*�,FY hO*��,k+ � �����������
�� .appSmovVnull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject� ���� 0 updatedisplay updateDisplay�� *�k+  � �����������
�� .appSresJnull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject� ���� 0 updatedisplay updateDisplay�� *�k+  � ������������� 0 updatedisplay updateDisplay�� ����� �  ���� 0 	thewindow 	theWindow��  � ������������������������ 0 	thewindow 	theWindow�� 0 	thebutton 	theButton�� 0 windowbounds windowBounds��  0 windowposition windowPosition�� 0 buttonbounds buttonBounds��  0 buttonposition buttonPosition�� :0 coordinatesystemdescription coordinateSystemDescription�� 20 windowboundsdescription windowBoundsDescription�� 60 windowpositiondescription windowPositionDescription�� 20 buttonboundsdescription buttonBoundsDescription�� 60 buttonpositiondescription buttonPositionDescription� B�����������4��8<@��DQUYnrvz~��������������������/37;?LPTimquy��������������
�� 
butT
�� 
pbnd
�� 
posn
�� 
cooS
�� cooScoCS
�� 
cobj�� 
�� cooSstCS
�� cooSclCS
�� 
popB
�� 
conT
�� 
texF�����/E�O��,E�O��,E�O��,E�O��,E�O*�,�  |jE�O��k/%�%��l/%�%��m/%�%���/%�%E�O���k/%�%��l/%�%E�Oa ��k/%a %��l/%a %��m/%a %���/%a %E�Oa ��k/%a %��l/%a %E�Y+*�,a   �kE�Oa ��k/%a %��l/%a %��m/%a %���/%a %E�Oa ��k/%a %��l/%a  %E�Oa !��k/%a "%��l/%a #%��m/%a $%���/%a %%E�Oa &��k/%a '%��l/%a (%E�Y �*�,a )  �lE�Oa *��k/%a +%��l/%a ,%��m/%a -%���/%a .%E�Oa /��k/%a 0%��l/%a 1%E�Oa 2��k/%a 3%��l/%a 4%��m/%a 5%���/%a 6%E�Oa 7��k/%a 8%��l/%a 9%E�Y hO� L�*a :a ;/a <,FO�*a =a >/a <,FO�*a =a ?/a <,FO�*a =a @/a <,FO�*a =a A/a <,FU ascr  ��ޭ