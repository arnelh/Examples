FasdUAS 1.101.10   ��   ��    k             l      �� ��      Application.applescript        	  l     ������  ��   	  
  
 l      �� ��      ==== Properties ====          l     ������  ��        j     �� �� 0 endrace endRace  m     ��
�� boovfals      j    �� �� 0 
finishline 
finishLine  m    ����s      j    �� �� 0 	betamount 	betAmount  m    ����       j   	 �� ��  0 holdingsamount holdingsAmount  m   	 
�����      l     ������  ��        p       ��  �� "0 caroneorgbounds carOneOrgbounds   �� !�� "0 cartwoorgbounds carTwoOrgbounds ! �� "�� &0 carthreeorgbounds carThreeOrgbounds " �� #�� $0 carfourorgbounds carFourOrgbounds # �� $�� $0 carfiveorgbounds carFiveOrgbounds $ �� %�� 0 	pickedcar 	pickedCar % �� &�� 
0 winner   & ������ 0 racespeedval raceSpeedval��     ' ( ' l     ������  ��   (  ) * ) l     ������  ��   *  + , + l      �� -��   -   ==== Handlers ====     ,  . / . l     ������  ��   /  0 1 0 i     2 3 2 I      �������� 0 	resetrace 	resetRace��  ��   3 k     � 4 4  5 6 5 r      7 8 7 m      9 9  Car 1    8 l      :�� : n       ; < ; 1    
��
�� 
titl < n     = > = 4    �� ?
�� 
butT ? m     @ @  Car 1    > 4    �� A
�� 
cwin A m     B B  	Drag Race   ��   6  C D C r     E F E m     G G  Car 2    F l      H�� H n       I J I 1    ��
�� 
titl J n     K L K 4    �� M
�� 
butT M m     N N  Car 2    L 4    �� O
�� 
cwin O m     P P  	Drag Race   ��   D  Q R Q r    # S T S m     U U  Car 3    T l      V�� V n       W X W 1     "��
�� 
titl X n      Y Z Y 4     �� [
�� 
butT [ m     \ \  Car 3    Z 4    �� ]
�� 
cwin ] m     ^ ^  	Drag Race   ��   R  _ ` _ r   $ / a b a m   $ % c c  Car 4    b l      d�� d n       e f e 1   , .��
�� 
titl f n   % , g h g 4   ) ,�� i
�� 
butT i m   * + j j  Car 4    h 4   % )�� k
�� 
cwin k m   ' ( l l  	Drag Race   ��   `  m n m r   0 ? o p o m   0 1 q q  Car 5    p l      r�� r n       s t s 1   < >��
�� 
titl t n   1 < u v u 4   7 <�� w
�� 
butT w m   8 ; x x  Car 5    v 4   1 7�� y
�� 
cwin y m   3 6 z z  	Drag Race   ��   n  { | { r   @ Q } ~ } m   @ A��
�� boovfals ~ l      ��  n       � � � 1   L P��
�� 
enaB � n   A L � � � 4   G L�� �
�� 
butT � m   H K � �  
Start Race    � 4   A G�� �
�� 
cwin � m   C F � �  	Drag Race   ��   |  � � � r   R e � � � o   R U���� "0 caroneorgbounds carOneOrgbounds � l      ��� � n       � � � 1   ` d��
�� 
pbnd � n   U ` � � � 4   [ `�� �
�� 
butT � m   \ _ � �  Car 1    � 4   U [�� �
�� 
cwin � m   W Z � �  	Drag Race   ��   �  � � � r   f y � � � o   f i���� "0 cartwoorgbounds carTwoOrgbounds � l      ��� � n       � � � 1   t x��
�� 
pbnd � n   i t � � � 4   o t�� �
�� 
butT � m   p s � �  Car 2    � 4   i o�� �
�� 
cwin � m   k n � �  	Drag Race   ��   �  � � � r   z � � � � o   z }���� &0 carthreeorgbounds carThreeOrgbounds � l      ��� � n       � � � 1   � ���
�� 
pbnd � n   } � � � � 4   � ��� �
�� 
butT � m   � � � �  Car 3    � 4   } ��� �
�� 
cwin � m    � � �  	Drag Race   ��   �  � � � r   � � � � � o   � ����� $0 carfourorgbounds carFourOrgbounds � l      ��� � n       � � � 1   � ���
�� 
pbnd � n   � � � � � 4   � ��� �
�� 
butT � m   � � � �  Car 4    � 4   � ��� �
�� 
cwin � m   � � � �  	Drag Race   ��   �  ��� � r   � � � � � o   � ����� $0 carfiveorgbounds carFiveOrgbounds � l      ��� � n       � � � 1   � ���
�� 
pbnd � n   � � � � � 4   � ��� �
�� 
butT � m   � � � �  Car 5    � 4   � ��� �
�� 
cwin � m   � � � �  	Drag Race   ��  ��   1  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � i     � � � I      �������� 0 movecar1 moveCar1��  ��   � O     � � � k    � �  � � � r     � � � l    ��� � n     � � � 1    ��
�� 
pbnd � 4    �� �
�� 
butT � m   	 
 � �  Car 1   ��   � o      ���� 0 caroneorgpos carOneOrgPos �  � � � r     � � � I   ���� �
�� .sysorandnmbr    ��� nmbr��   � �� � �
�� 
from � m    ����  � �� ���
�� 
to   � o    ���� 0 racespeedval raceSpeedval��   � o      ���� 0 stepval stepVal �  � � � r    9 � � � J    2 � �  � � � l   " ��� � [    " � � � l     ��� � n      � � � 4     �� �
�� 
cobj � m    ����  � o    ���� 0 caroneorgpos carOneOrgPos��   � o     !���� 0 stepval stepVal��   �  � � � n   " & � � � 4   # &�� �
�� 
cobj � m   $ %����  � o   " #���� "0 caroneorgbounds carOneOrgbounds �  � � � l  & , ��� � [   & , � � � l  & * ��� � n   & * � � � 4   ' *�� �
�� 
cobj � m   ( )����  � o   & '���� 0 caroneorgpos carOneOrgPos��   � o   * +���� 0 stepval stepVal��   �  ��  n   , 0 4   - 0��
�� 
cobj m   . /����  o   , -���� "0 caroneorgbounds carOneOrgbounds��   � n       1   6 8��
�� 
pbnd 4   2 6��
�� 
butT m   4 5  Car 1    � 	 l  : :�����  �  	 

 r   : B l  : @�~ n   : @ 1   > @�}
�} 
pbnd 4   : >�|
�| 
butT m   < =  Car 1   �~   o      �{�{ 0 caroneorgpos carOneOrgPos �z Z   C�y�x ?   C I n   C G 4   D G�w
�w 
cobj m   E F�v�v  o   C D�u�u 0 caroneorgpos carOneOrgPos m   G H�t�tv k   L  r   L Q m   L M    Car 1    o      �s�s 
0 winner   !"! r   R Y#$# m   R S�r
�r boovtrue$ o      �q�q 0 endrace endRace" %&% r   Z f'(' m   Z [�p
�p boovfals( l     )�o) n      *+* 1   a e�n
�n 
enaB+ 4   [ a�m,
�m 
butT, m   ] `--  
Start Race   �o  & .�l. Z   g/0�k1/ =   g n232 o   g j�j�j 0 	pickedcar 	pickedCar3 m   j m44  Car 1   0 k   q �55 676 r   q �898 m   q t::  Car 1, you won!   9 l     ;�i; n      <=< 1   | ��h
�h 
pcnt= 4   t |�g>
�g 
texF> m   x {??  results   �i  7 @A@ O  � �BCB I  � ��f�e�d
�f .coVSstoTnull���    obj �e  �d  C 4   � ��cD
�c 
proID m   � �EE  ProgressBar   A FGF r   � �HIH m   � ��b
�b boovfalsI n      JKJ 1   � ��a
�a 
pvisK 4   � ��`L
�` 
proIL m   � �MM  ProgressBar   G N�_N r   � �OPO l  � �Q�^Q [   � �RSR o   � ��]�] 0 	betamount 	betAmountS o   � ��\�\  0 holdingsamount holdingsAmount�^  P n      TUT 1   � ��[
�[ 
pcntU 4   � ��ZV
�Z 
texFV m   � �WW  holdings   �_  �k  1 k   �XX YZY r   � �[\[ b   � �]^] o   � ��Y�Y 
0 winner  ^ m   � �__   won, you lost!   \ l     `�X` n      aba 1   � ��W
�W 
pcntb 4   � ��Vc
�V 
texFc m   � �dd  results   �X  Z efe O  � �ghg I  � ��U�T�S
�U .coVSstoTnull���    obj �T  �S  h 4   � ��Ri
�R 
proIi m   � �jj  ProgressBar   f klk r   � �mnm m   � ��Q
�Q boovfalsn n      opo 1   � ��P
�P 
pvisp 4   � ��Oq
�O 
proIq m   � �rr  ProgressBar   l s�Ns r   �tut l  � �v�Mv \   � �wxw o   � ��L�L  0 holdingsamount holdingsAmountx o   � ��K�K 0 	betamount 	betAmount�M  u n      yzy 1  �J
�J 
pcntz 4   ��I{
�I 
texF{ m  ||  holdings   �N  �l  �y  �x  �z   � 4     �H}
�H 
cwin} m    ~~  	Drag Race    � � l     �G�F�G  �F  � ��� i    ��� I      �E�D�C�E 0 movecar2 moveCar2�D  �C  � O    ��� k   �� ��� r    ��� l   ��B� n    ��� 1    �A
�A 
pbnd� 4    �@�
�@ 
butT� m   	 
��  Car 2   �B  � o      �?�? 0 cartwoorgpos cartwoOrgPos� ��� r    ��� I   �>�=�
�> .sysorandnmbr    ��� nmbr�=  � �<��
�< 
from� m    �;�; � �:��9
�: 
to  � o    �8�8 0 racespeedval raceSpeedval�9  � o      �7�7 0 stepval stepVal� ��� r    9��� J    2�� ��� l   "��6� [    "��� l    ��5� n     ��� 4     �4�
�4 
cobj� m    �3�3 � o    �2�2 0 cartwoorgpos cartwoOrgPos�5  � o     !�1�1 0 stepval stepVal�6  � ��� n   " &��� 4   # &�0�
�0 
cobj� m   $ %�/�/ � o   " #�.�. "0 cartwoorgbounds carTwoOrgbounds� ��� l  & ,��-� [   & ,��� l  & *��,� n   & *��� 4   ' *�+�
�+ 
cobj� m   ( )�*�* � o   & '�)�) 0 cartwoorgpos cartwoOrgPos�,  � o   * +�(�( 0 stepval stepVal�-  � ��'� n   , 0��� 4   - 0�&�
�& 
cobj� m   . /�%�% � o   , -�$�$ "0 cartwoorgbounds carTwoOrgbounds�'  � n      ��� 1   6 8�#
�# 
pbnd� 4   2 6�"�
�" 
butT� m   4 5��  Car 2   � ��� l  : :�!� �!  �   � ��� r   : B��� l  : @��� n   : @��� 1   > @�
� 
pbnd� 4   : >��
� 
butT� m   < =��  Car 2   �  � o      �� 0 cartwoorgpos cartwoOrgPos� ��� Z   C����� ?   C M��� n   C G��� 4   D G��
� 
cobj� m   E F�� � o   C D�� 0 cartwoorgpos cartwoOrgPos� o   G L�� 0 
finishline 
finishLine� k   P�� ��� r   P S��� m   P Q��  Car 2   � o      �� 
0 winner  � ��� r   T [��� m   T U�
� boovtrue� o      �� 0 endrace endRace� ��� r   \ h��� m   \ ]�
� boovfals� l     ��� n      ��� 1   c g�
� 
enaB� 4   ] c��
� 
butT� m   _ b��  
Start Race   �  � ��� Z   i����� =   i p��� o   i l�� 0 	pickedcar 	pickedCar� m   l o��  Car 2   � k   s ��� ��� r   s ���� m   s v��  Car 2, you won!   � l     ��
� n      ��� 1   ~ ��	
�	 
pcnt� 4   v ~��
� 
texF� m   z }��  results   �
  � ��� O  � ���� I  � ����
� .coVSstoTnull���    obj �  �  � 4   � ���
� 
proI� m   � ���  ProgressBar   � ��� r   � ���� m   � ��
� boovfals� n      � � 1   � ��
� 
pvis  4   � ��
� 
proI m   � �  ProgressBar   � �  r   � � l  � ��� [   � � o   � ����� 0 	betamount 	betAmount o   � �����  0 holdingsamount holdingsAmount��   n      	
	 1   � ���
�� 
pcnt
 4   � ���
�� 
texF m   � �  holdings   �   �  � k   �  r   � � b   � � o   � ����� 
0 winner   m   � �   won, you lost!    l     �� n       1   � ���
�� 
pcnt 4   � ���
�� 
texF m   � �  results   ��    O  � � I  � �������
�� .coVSstoTnull���    obj ��  ��   4   � ���
�� 
proI m   � �  ProgressBar     !  r   � �"#" m   � ���
�� boovfals# n      $%$ 1   � ���
�� 
pvis% 4   � ���&
�� 
proI& m   � �''  ProgressBar   ! (��( r   �)*) l  � �+��+ \   � �,-, o   � �����  0 holdingsamount holdingsAmount- o   � ����� 0 	betamount 	betAmount��  * n      ./. 1  ��
�� 
pcnt/ 4   ���0
�� 
texF0 m  11  holdings   ��  �  �  �  �  � 4     ��2
�� 
cwin2 m    33  	Drag Race   � 454 l     ������  ��  5 676 i    898 I      �������� 0 movecar3 moveCar3��  ��  9 O    :;: k   << =>= r    ?@? l   A��A n    BCB 1    ��
�� 
pbndC 4    ��D
�� 
butTD m   	 
EE  Car 3   ��  @ o      ����  0 carthreeorgpos carThreeOrgPos> FGF r    HIH I   ����J
�� .sysorandnmbr    ��� nmbr��  J ��KL
�� 
fromK m    ���� L ��M��
�� 
to  M o    ���� 0 racespeedval raceSpeedval��  I o      ���� 0 stepval stepValG NON r    9PQP J    2RR STS l   "U��U [    "VWV l    X��X n     YZY 4     ��[
�� 
cobj[ m    ���� Z o    ����  0 carthreeorgpos carThreeOrgPos��  W o     !���� 0 stepval stepVal��  T \]\ n   " &^_^ 4   # &��`
�� 
cobj` m   $ %���� _ o   " #���� &0 carthreeorgbounds carThreeOrgbounds] aba l  & ,c��c [   & ,ded l  & *f��f n   & *ghg 4   ' *��i
�� 
cobji m   ( )���� h o   & '����  0 carthreeorgpos carThreeOrgPos��  e o   * +���� 0 stepval stepVal��  b j��j n   , 0klk 4   - 0��m
�� 
cobjm m   . /���� l o   , -���� &0 carthreeorgbounds carThreeOrgbounds��  Q n      non 1   6 8��
�� 
pbndo 4   2 6��p
�� 
butTp m   4 5qq  Car 3   O rsr r   : Btut l  : @v��v n   : @wxw 1   > @��
�� 
pbndx 4   : >��y
�� 
butTy m   < =zz  Car 3   ��  u o      ����  0 carthreeorgpos carThreeOrgPoss {��{ Z   C|}����| ?   C M~~ n   C G��� 4   D G���
�� 
cobj� m   E F���� � o   C D����  0 carthreeorgpos carThreeOrgPos o   G L���� 0 
finishline 
finishLine} k   P�� ��� r   P S��� m   P Q��  Car 3   � o      ���� 
0 winner  � ��� r   T [��� m   T U��
�� boovtrue� o      ���� 0 endrace endRace� ��� r   \ h��� m   \ ]��
�� boovfals� l     ���� n      ��� 1   c g��
�� 
enaB� 4   ] c���
�� 
butT� m   _ b��  
Start Race   ��  � ���� Z   i������ =   i p��� o   i l���� 0 	pickedcar 	pickedCar� m   l o��  Car 3   � k   s ��� ��� r   s ���� m   s v��  Car 3, you won!   � l     ���� n      ��� 1   ~ ���
�� 
pcnt� 4   v ~���
�� 
texF� m   z }��  results   ��  � ��� O  � ���� I  � �������
�� .coVSstoTnull���    obj ��  ��  � 4   � ����
�� 
proI� m   � ���  ProgressBar   � ��� r   � ���� m   � ���
�� boovfals� n      ��� 1   � ���
�� 
pvis� 4   � ����
�� 
proI� m   � ���  ProgressBar   � ���� r   � ���� l  � ����� [   � ���� o   � ����� 0 	betamount 	betAmount� o   � �����  0 holdingsamount holdingsAmount��  � n      ��� 1   � ���
�� 
pcnt� 4   � ����
�� 
texF� m   � ���  holdings   ��  ��  � k   ��� ��� r   � ���� b   � ���� o   � ����� 
0 winner  � m   � ���   won, you lost!   � l     ���� n      ��� 1   � ���
�� 
pcnt� 4   � ����
�� 
texF� m   � ���  results   ��  � ��� O  � ���� I  � �������
�� .coVSstoTnull���    obj ��  ��  � 4   � ����
�� 
proI� m   � ���  ProgressBar   � ��� r   � ���� m   � ���
�� boovfals� n      ��� 1   � ���
�� 
pvis� 4   � ����
�� 
proI� m   � ���  ProgressBar   � ���� r   ���� l  � ����� \   � ���� o   � �����  0 holdingsamount holdingsAmount� o   � ����� 0 	betamount 	betAmount��  � n      ��� 1  ��
�� 
pcnt� 4   ����
�� 
texF� m  ��  holdings   ��  ��  ��  ��  ��  ; 4     ���
�� 
cwin� m    ��  	Drag Race   7 ��� l     ������  ��  � ��� i    ��� I      �������� 0 movecar4 moveCar4��  ��  � O    ��� k   �� ��� r    ��� l   ���� n    ��� 1    ��
�� 
pbnd� 4    ���
�� 
butT� m   	 
��  Car 4   ��  � o      ���� 0 carfourorgpos carFourOrgPos� ��� r    ��� I   �����
�� .sysorandnmbr    ��� nmbr��  � ����
�� 
from� m    �� � �~ �}
�~ 
to    o    �|�| 0 racespeedval raceSpeedval�}  � o      �{�{ 0 stepval stepVal�  r    9 J    2  l   "�z [    "	
	 l    �y n      4     �x
�x 
cobj m    �w�w  o    �v�v 0 carfourorgpos carFourOrgPos�y  
 o     !�u�u 0 stepval stepVal�z    n   " & 4   # &�t
�t 
cobj m   $ %�s�s  o   " #�r�r $0 carfourorgbounds carFourOrgbounds  l  & ,�q [   & , l  & *�p n   & * 4   ' *�o
�o 
cobj m   ( )�n�n  o   & '�m�m 0 carfourorgpos carFourOrgPos�p   o   * +�l�l 0 stepval stepVal�q   �k n   , 0 4   - 0�j 
�j 
cobj  m   . /�i�i  o   , -�h�h $0 carfourorgbounds carFourOrgbounds�k   n      !"! 1   6 8�g
�g 
pbnd" 4   2 6�f#
�f 
butT# m   4 5$$  Car 4    %&% r   : B'(' l  : @)�e) n   : @*+* 1   > @�d
�d 
pbnd+ 4   : >�c,
�c 
butT, m   < =--  Car 4   �e  ( o      �b�b 0 carfourorgpos carFourOrgPos& .�a. Z   C/0�`�_/ ?   C M121 n   C G343 4   D G�^5
�^ 
cobj5 m   E F�]�] 4 o   C D�\�\ 0 carfourorgpos carFourOrgPos2 o   G L�[�[ 0 
finishline 
finishLine0 k   P66 787 r   P S9:9 m   P Q;;  Car 4   : o      �Z�Z 
0 winner  8 <=< r   T [>?> m   T U�Y
�Y boovtrue? o      �X�X 0 endrace endRace= @A@ r   \ hBCB m   \ ]�W
�W boovfalsC l     D�VD n      EFE 1   c g�U
�U 
enaBF 4   ] c�TG
�T 
butTG m   _ bHH  
Start Race   �V  A I�SI Z   iJK�RLJ =   i pMNM o   i l�Q�Q 0 	pickedcar 	pickedCarN m   l oOO  Car 4   K k   s �PP QRQ r   s �STS m   s vUU  Car 4, you won!   T l     V�PV n      WXW 1   ~ ��O
�O 
pcntX 4   v ~�NY
�N 
texFY m   z }ZZ  results   �P  R [\[ O  � �]^] I  � ��M�L�K
�M .coVSstoTnull���    obj �L  �K  ^ 4   � ��J_
�J 
proI_ m   � �``  ProgressBar   \ aba r   � �cdc m   � ��I
�I boovfalsd n      efe 1   � ��H
�H 
pvisf 4   � ��Gg
�G 
proIg m   � �hh  ProgressBar   b i�Fi r   � �jkj l  � �l�El [   � �mnm o   � ��D�D 0 	betamount 	betAmountn o   � ��C�C  0 holdingsamount holdingsAmount�E  k n      opo 1   � ��B
�B 
pcntp 4   � ��Aq
�A 
texFq m   � �rr  holdings   �F  �R  L k   �ss tut r   � �vwv b   � �xyx o   � ��@�@ 
0 winner  y m   � �zz   won, you lost!   w l     {�?{ n      |}| 1   � ��>
�> 
pcnt} 4   � ��=~
�= 
texF~ m   � �  results   �?  u ��� O  � ���� I  � ��<�;�:
�< .coVSstoTnull���    obj �;  �:  � 4   � ��9�
�9 
proI� m   � ���  ProgressBar   � ��� r   � ���� m   � ��8
�8 boovfals� n      ��� 1   � ��7
�7 
pvis� 4   � ��6�
�6 
proI� m   � ���  ProgressBar   � ��5� r   ���� l  � ���4� \   � ���� o   � ��3�3  0 holdingsamount holdingsAmount� o   � ��2�2 0 	betamount 	betAmount�4  � n      ��� 1  �1
�1 
pcnt� 4   ��0�
�0 
texF� m  ��  holdings   �5  �S  �`  �_  �a  � 4     �/�
�/ 
cwin� m    ��  	Drag Race   � ��� l     �.�-�.  �-  � ��� i     #��� I      �,�+�*�, 0 movecar5 moveCar5�+  �*  � O    ��� k   �� ��� r    ��� l   ��)� n    ��� 1    �(
�( 
pbnd� 4    �'�
�' 
butT� m   	 
��  Car 5   �)  � o      �&�& 0 carfiveorgpos carFiveOrgPos� ��� r    ��� I   �%�$�
�% .sysorandnmbr    ��� nmbr�$  � �#��
�# 
from� m    �"�" � �!�� 
�! 
to  � o    �� 0 racespeedval raceSpeedval�   � o      �� 0 stepval stepVal� ��� r    9��� J    2�� ��� l   "��� [    "��� l    ��� n     ��� 4     ��
� 
cobj� m    �� � o    �� 0 carfiveorgpos carFiveOrgPos�  � o     !�� 0 stepval stepVal�  � ��� n   " &��� 4   # &��
� 
cobj� m   $ %�� � o   " #�� $0 carfiveorgbounds carFiveOrgbounds� ��� l  & ,��� [   & ,��� l  & *��� n   & *��� 4   ' *��
� 
cobj� m   ( )�� � o   & '�� 0 carfiveorgpos carFiveOrgPos�  � o   * +�� 0 stepval stepVal�  � ��� n   , 0��� 4   - 0��
� 
cobj� m   . /�� � o   , -�� $0 carfiveorgbounds carFiveOrgbounds�  � n      ��� 1   6 8�

�
 
pbnd� 4   2 6�	�
�	 
butT� m   4 5��  Car 5   � ��� r   : B��� l  : @��� n   : @��� 1   > @�
� 
pbnd� 4   : >��
� 
butT� m   < =��  Car 5   �  � o      �� 0 carfiveorgpos carFiveOrgPos� ��� Z   C����� ?   C M��� n   C G��� 4   D G��
� 
cobj� m   E F� �  � o   C D���� 0 carfiveorgpos carFiveOrgPos� o   G L���� 0 
finishline 
finishLine� k   P�� ��� r   P S��� m   P Q��  Car 5   � o      ���� 
0 winner  � ��� r   T [��� m   T U��
�� boovtrue� o      ���� 0 endrace endRace� ��� r   \ h��� m   \ ]��
�� boovfals� l     ���� n      ��� 1   c g��
�� 
enaB� 4   ] c���
�� 
butT� m   _ b��  
Start Race   ��  � ���� Z   i������ =   i p   o   i l���� 0 	pickedcar 	pickedCar m   l o  Car 5   � k   s �  r   s � m   s v  Car 5, you won!    l     	��	 n      

 1   ~ ���
�� 
pcnt 4   v ~��
�� 
texF m   z }  results   ��    O  � � I  � �������
�� .coVSstoTnull���    obj ��  ��   4   � ���
�� 
proI m   � �  ProgressBar     r   � � m   � ���
�� boovfals n       1   � ���
�� 
pvis 4   � ���
�� 
proI m   � �  ProgressBar    �� r   � � l  � ��� [   � � !  o   � ����� 0 	betamount 	betAmount! o   � �����  0 holdingsamount holdingsAmount��   n      "#" 1   � ���
�� 
pcnt# 4   � ���$
�� 
texF$ m   � �%%  holdings   ��  ��  � k   �&& '(' r   � �)*) b   � �+,+ o   � ����� 
0 winner  , m   � �--   won, you lost!   * l     .��. n      /0/ 1   � ���
�� 
pcnt0 4   � ���1
�� 
texF1 m   � �22  results   ��  ( 343 O  � �565 I  � �������
�� .coVSstoTnull���    obj ��  ��  6 4   � ���7
�� 
proI7 m   � �88  ProgressBar   4 9:9 r   � �;<; m   � ���
�� boovfals< n      =>= 1   � ���
�� 
pvis> 4   � ���?
�� 
proI? m   � �@@  ProgressBar   : A��A r   �BCB l  � �D��D \   � �EFE o   � �����  0 holdingsamount holdingsAmountF o   � ����� 0 	betamount 	betAmount��  C n      GHG 1  ��
�� 
pcntH 4   ���I
�� 
texFI m  JJ  holdings   ��  ��  �  �  �  � 4     ��K
�� 
cwinK m    LL  	Drag Race   � MNM l     ������  ��  N OPO l     ������  ��  P QRQ l      ��S��  S    ==== Event Handlers ====    R TUT l     ������  ��  U VWV i   $ 'XYX I     ��Z��
�� .appSwilOnull���    obj Z o      ���� 0 	theobject 	theObject��  Y k     �[[ \]\ r     ^_^ m     ��
�� boovfals_ n      `a` 1    
��
�� 
pvisa n    bcb 4    ��d
�� 
proId m    ee  ProgressBar   c 4    ��f
�� 
cwinf m    gg  	Drag Race   ] hih r    jkj n    lml 1    ��
�� 
pcntm n    non 4    ��p
�� 
texFp m    qq 	 bet   o 4    ��r
�� 
cwinr m    ss  	Drag Race   k o      ���� 0 	betamount 	betAmounti tut r    +vwv n    %xyx 1   # %��
�� 
pcnty n    #z{z 4     #��|
�� 
texF| m   ! "}}  holdings   { 4     ��~
�� 
cwin~ m      	Drag Race   w o      ����  0 holdingsamount holdingsAmountu ��� r   , 9��� c   , 7��� n   , 5��� 1   3 5��
�� 
pcnt� n   , 3��� 4   0 3���
�� 
sliI� m   1 2��  	RaceSpeed   � 4   , 0���
�� 
cwin� m   . /��  	Drag Race   � m   5 6��
�� 
long� o      ���� 0 racespeedval raceSpeedval� ��� r   : O��� l  : K���� n   : K��� 1   G K��
�� 
pbnd� n   : G��� 4   @ G���
�� 
butT� m   C F��  Car 1   � 4   : @���
�� 
cwin� m   < ?��  	Drag Race   ��  � o      ���� "0 caroneorgbounds carOneOrgbounds� ��� r   P e��� l  P a���� n   P a��� 1   ] a��
�� 
pbnd� n   P ]��� 4   V ]���
�� 
butT� m   Y \��  Car 2   � 4   P V���
�� 
cwin� m   R U��  	Drag Race   ��  � o      ���� "0 cartwoorgbounds carTwoOrgbounds� ��� r   f {��� l  f w���� n   f w��� 1   s w��
�� 
pbnd� n   f s��� 4   l s���
�� 
butT� m   o r��  Car 3   � 4   f l���
�� 
cwin� m   h k��  	Drag Race   ��  � o      ���� &0 carthreeorgbounds carThreeOrgbounds� ��� r   | ���� l  | ����� n   | ���� 1   � ���
�� 
pbnd� n   | ���� 4   � ����
�� 
butT� m   � ���  Car 4   � 4   | ����
�� 
cwin� m   ~ ���  	Drag Race   ��  � o      ���� $0 carfourorgbounds carFourOrgbounds� ��� r   � ���� l  � ����� n   � ���� 1   � ���
�� 
pbnd� n   � ���� 4   � ����
�� 
butT� m   � ���  Car 5   � 4   � ����
�� 
cwin� m   � ���  	Drag Race   ��  � o      ���� $0 carfiveorgbounds carFiveOrgbounds� ��� r   � ���� m   � ���  Pick a car!   � l     ���� n      ��� 1   � ���
�� 
pcnt� n   � ���� 4   � ����
�� 
texF� m   � ���  results   � 4   � ����
�� 
cwin� m   � ���  	Drag Race   ��  � ��� r   � ���� m   � ���
�� boovfals� l     ���� n      ��� 1   � ���
�� 
enaB� n   � ���� 4   � ����
�� 
butT� m   � ���  
Start Race   � 4   � ����
�� 
cwin� m   � ���  	Drag Race   ��  � ���� r   � ���� m   � ���
�� boovfals� l     ���� n      ��� 1   � ���
�� 
enaB� n   � ���� 4   � ����
�� 
butT� m   � ���  Reset   � 4   � ����
�� 
cwin� m   � ���  	Drag Race   ��  ��  W ��� l     ������  ��  � ��� l     ������  ��  � ��� i   ( +��� I     �����
�� .coVScliInull���    obj � o      ���� 0 	theobject 	theObject��  � k    ���    l     ������  ��    Z    �� =      n     	
	 1    ��
�� 
titl
 o     ���� 0 	theobject 	theObject m      Car 1    k    K  I    �������� 0 	resetrace 	resetRace��  ��    r     m      Car 1 �    l     � n       1    �~
�~ 
titl n     4    �}
�} 
butT m      Car 1    4    �|
�| 
cwin m      	Drag Race   �    r    %  m    !!  You picked car 1     n      "#" 1   " $�{
�{ 
pcnt# n    "$%$ 4    "�z&
�z 
texF& m     !''  results   % 4    �y(
�y 
cwin( m    ))  	Drag Race    *+* r   & ),-, m   & '..  Car 1   - o      �x�x 0 	pickedcar 	pickedCar+ /0/ r   * 9121 m   * +�w
�w boovtrue2 l     3�v3 n      454 1   4 8�u
�u 
enaB5 n   + 4676 4   / 4�t8
�t 
butT8 m   0 399  
Start Race   7 4   + /�s:
�s 
cwin: m   - .;;  	Drag Race   �v  0 <�r< r   : K=>= m   : ;�q
�q boovtrue> l     ?�p? n      @A@ 1   F J�o
�o 
enaBA n   ; FBCB 4   A F�nD
�n 
butTD m   B EEE  Reset   C 4   ; A�mF
�m 
cwinF m   = @GG  	Drag Race   �p  �r   HIH =   N UJKJ n   N QLML 1   O Q�l
�l 
titlM o   N O�k�k 0 	theobject 	theObjectK m   Q TNN  Car 2   I OPO k   X �QQ RSR I   X ]�j�i�h�j 0 	resetrace 	resetRace�i  �h  S TUT r   ^ oVWV m   ^ aXX  Car 2 �   W l     Y�gY n      Z[Z 1   l n�f
�f 
titl[ n   a l\]\ 4   g l�e^
�e 
butT^ m   h k__  Car 2   ] 4   a g�d`
�d 
cwin` m   c faa  	Drag Race   �g  U bcb r   p �ded m   p sff  You picked car 2   e n      ghg 1   ~ ��c
�c 
pcnth n   s ~iji 4   y ~�bk
�b 
texFk m   z }ll  results   j 4   s y�am
�a 
cwinm m   u xnn  	Drag Race   c opo r   � �qrq m   � �ss  Car 2   r o      �`�` 0 	pickedcar 	pickedCarp tut r   � �vwv m   � ��_
�_ boovtruew l     x�^x n      yzy 1   � ��]
�] 
enaBz n   � �{|{ 4   � ��\}
�\ 
butT} m   � �~~  
Start Race   | 4   � ��[
�[ 
cwin m   � ���  	Drag Race   �^  u ��Z� r   � ���� m   � ��Y
�Y boovtrue� l     ��X� n      ��� 1   � ��W
�W 
enaB� n   � ���� 4   � ��V�
�V 
butT� m   � ���  Reset   � 4   � ��U�
�U 
cwin� m   � ���  	Drag Race   �X  �Z  P ��� =   � ���� n   � ���� 1   � ��T
�T 
titl� o   � ��S�S 0 	theobject 	theObject� m   � ���  Car 3   � ��� k   ��� ��� I   � ��R�Q�P�R 0 	resetrace 	resetRace�Q  �P  � ��� r   � ���� m   � ���  Car 3 �   � l     ��O� n      ��� 1   � ��N
�N 
titl� n   � ���� 4   � ��M�
�M 
butT� m   � ���  Car 3   � 4   � ��L�
�L 
cwin� m   � ���  	Drag Race   �O  � ��� r   � ���� m   � ���  You picked car 3   � n      ��� 1   � ��K
�K 
pcnt� n   � ���� 4   � ��J�
�J 
texF� m   � ���  results   � 4   � ��I�
�I 
cwin� m   � ���  	Drag Race   � ��� r   � ���� m   � ���  Car 3   � o      �H�H 0 	pickedcar 	pickedCar� ��� r   � ���� m   � ��G
�G boovtrue� l     ��F� n      ��� 1   � ��E
�E 
enaB� n   � ���� 4   � ��D�
�D 
butT� m   � ���  
Start Race   � 4   � ��C�
�C 
cwin� m   � ���  	Drag Race   �F  � ��B� r   ���� m   � ��A
�A boovtrue� l     ��@� n      ��� 1  
�?
�? 
enaB� n   ���� 4  �>�
�> 
butT� m  ��  Reset   � 4   ��=�
�= 
cwin� m   � ��  	Drag Race   �@  �B  � ��� =  ��� n  ��� 1  �<
�< 
titl� o  �;�; 0 	theobject 	theObject� m  ��  Car 4   � ��� k  k�� ��� I  �:�9�8�: 0 	resetrace 	resetRace�9  �8  � ��� r  /��� m  !��  Car 4 �   � l     ��7� n      ��� 1  ,.�6
�6 
titl� n  !,��� 4  ',�5�
�5 
butT� m  (+��  Car 4   � 4  !'�4�
�4 
cwin� m  #&��  	Drag Race   �7  � ��� r  0A��� m  03��  You picked car 4   � n      ��� 1  >@�3
�3 
pcnt� n  3>��� 4  9>�2�
�2 
texF� m  :=��  results   � 4  39�1�
�1 
cwin� m  58��  	Drag Race   � ��� r  BG��� m  BE��  Car 4   � o      �0�0 0 	pickedcar 	pickedCar� ��� r  HY   m  HI�/
�/ boovtrue l     �. n       1  TX�-
�- 
enaB n  IT 4  OT�,
�, 
butT m  PS  
Start Race    4  IO�+	
�+ 
cwin	 m  KN

  	Drag Race   �.  � �* r  Zk m  Z[�)
�) boovtrue l     �( n       1  fj�'
�' 
enaB n  [f 4  af�&
�& 
butT m  be  Reset    4  [a�%
�% 
cwin m  ]`  	Drag Race   �(  �*  �  =  nu n  nq 1  oq�$
�$ 
titl o  no�#�# 0 	theobject 	theObject m  qt  Car 5     k  x�   !"! I  x}�"�!� �" 0 	resetrace 	resetRace�!  �   " #$# r  ~�%&% m  ~�''  Car 5 �   & l     (�( n      )*) 1  ���
� 
titl* n  ��+,+ 4  ���-
� 
butT- m  ��..  Car 5   , 4  ���/
� 
cwin/ m  ��00  	Drag Race   �  $ 121 r  ��343 m  ��55  You picked car 5   4 n      676 1  ���
� 
pcnt7 n  ��898 4  ���:
� 
texF: m  ��;;  results   9 4  ���<
� 
cwin< m  ��==  	Drag Race   2 >?> r  ��@A@ m  ��BB  Car 5   A o      �� 0 	pickedcar 	pickedCar? CDC r  ��EFE m  ���
� boovtrueF l     G�G n      HIH 1  ���
� 
enaBI n  ��JKJ 4  ���L
� 
butTL m  ��MM  
Start Race   K 4  ���N
� 
cwinN m  ��OO  	Drag Race   �  D P�P r  ��QRQ m  ���
� boovtrueR l     S�S n      TUT 1  ���
� 
enaBU n  ��VWV 4  ���X
� 
butTX m  ��YY  Reset   W 4  ���Z
� 
cwinZ m  ��[[  	Drag Race   �  �   \]\ =  ��^_^ n  ��`a` 1  ���
� 
titla o  ���� 0 	theobject 	theObject_ m  ��bb  Reset   ] c�
c k  �dd efe r  ��ghg m  ���	
�	 boovtrueh o      �� 0 endrace endRacef iji O ��klk I �����
� .coVSstoTnull���    obj �  �  l n  ��mnm 4  ���o
� 
proIo m  ��pp  ProgressBar   n 4  ���q
� 
cwinq m  ��rr  	Drag Race   j sts I  ����� � 0 	resetrace 	resetRace�  �   t u��u r  �vwv m  � xx  Pick a car!   w l     y��y n      z{z 1  ��
�� 
pcnt{ n   |}| 4  ��~
�� 
texF~ m  
  results   } 4   ���
�� 
cwin� m  ��  	Drag Race   ��  ��  �
  ��   ��� l ������  ��  � ���� Z  �������� >  $��� n   ��� 1   ��
�� 
pcnt� n  ��� 4  ���
�� 
texF� m  ��  results   � 4  ���
�� 
cwin� m  ��  	Drag Race   � m   #��  Pick a car!   � Z  '�������� =  '.��� n  '*��� 1  (*��
�� 
titl� o  '(���� 0 	theobject 	theObject� m  *-��  
Start Race   � k  1��� ��� r  18��� m  12��
�� boovfals� o      ���� 0 endrace endRace� ��� r  9L��� n  9F��� 1  DF��
�� 
pcnt� n  9D��� 4  ?D���
�� 
texF� m  @C�� 	 bet   � 4  9?���
�� 
cwin� m  ;>��  	Drag Race   � o      ���� 0 	betamount 	betAmount� ��� r  M`��� n  MZ��� 1  XZ��
�� 
pcnt� n  MX��� 4  SX���
�� 
texF� m  TW��  holdings   � 4  MS���
�� 
cwin� m  OR��  	Drag Race   � o      ����  0 holdingsamount holdingsAmount� ��� r  at��� m  ab��
�� boovtrue� n      ��� 1  os��
�� 
pvis� n  bo��� 4  ho���
�� 
proI� m  kn��  ProgressBar   � 4  bh���
�� 
cwin� m  dg��  	Drag Race   � ��� O u���� I ��������
�� .coVSstaAnull���    obj ��  ��  � n  u���� 4  {����
�� 
proI� m  ~���  ProgressBar   � 4  u{���
�� 
cwin� m  wz��  	Drag Race   � ���� V  ����� k  ���� ��� I  ���������� 0 movecar1 moveCar1��  ��  � ��� I  ���������� 0 movecar2 moveCar2��  ��  � ��� I  ���������� 0 movecar3 moveCar3��  ��  � ��� I  ���������� 0 movecar4 moveCar4��  ��  � ���� I  ���������� 0 movecar5 moveCar5��  ��  ��  � =  ����� o  ������ 0 endrace endRace� m  ����
�� boovfals��  ��  ��  ��  ��  ��  � ��� l     ������  ��  � ��� i   , /��� I     �����
�� .coVSactTnull���    obj � o      ���� 0 	theobject 	theObject��  � r     ��� c     ��� n     	��� 1    	��
�� 
pcnt� n     ��� 4    ���
�� 
sliI� m    ��  	RaceSpeed   � 4     ���
�� 
cwin� m    ��  	Drag Race   � m   	 
��
�� 
long� o      ���� 0 racespeedval raceSpeedval� ��� l     ������  ��  � ��� l      �����  �	2	, � Copyright 2004 Apple Computer, Inc. All rights reserved.

IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc. (�Apple�) in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this Apple software constitutes acceptance of these terms.  If you do not agree with these terms, please do not use, install, modify or redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Apple grants you a personal, non-exclusive license, under Apple�s copyrights in this original Apple software (the �Apple Software�), to use, reproduce, modify and redistribute the Apple Software, with or without modifications, in source and/or binary forms; provided that if you redistribute the Apple Software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the Apple Software.  Neither the name, trademarks, service marks or logos of Apple Computer, Inc. may be used to endorse or promote products derived from the Apple Software without specific prior written permission from Apple.  Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. 

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.    � ��� l     ������  ��  � ���� j   0 4����� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier� m   0 3��  Application.applescript   ��       ������������������ ���  � ������������������������������ 0 endrace endRace�� 0 
finishline 
finishLine�� 0 	betamount 	betAmount��  0 holdingsamount holdingsAmount�� 0 	resetrace 	resetRace�� 0 movecar1 moveCar1�� 0 movecar2 moveCar2�� 0 movecar3 moveCar3�� 0 movecar4 moveCar4�� 0 movecar5 moveCar5
�� .appSwilOnull���    obj 
�� .coVScliInull���    obj 
�� .coVSactTnull���    obj �� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier
�� boovfals��s�� ���� �� 3�������� 0 	resetrace 	resetRace��  ��     % 9�� B�� @�� G P N U ^ \ c l j q z x � ����� � ����� � ��� � ��� � ��� � �
�� 
cwin
�� 
butT
�� 
titl
�� 
enaB�� "0 caroneorgbounds carOneOrgbounds
�� 
pbnd�� "0 cartwoorgbounds carTwoOrgbounds�� &0 carthreeorgbounds carThreeOrgbounds�� $0 carfourorgbounds carFourOrgbounds�� $0 carfiveorgbounds carFiveOrgbounds�� ��*��/��/�,FO�*��/��/�,FO�*��/��/�,FO�*��/��/�,FO�*�a /�a /�,FOf*�a /�a /a ,FO_ *�a /�a /a ,FO_ *�a /�a /a ,FO_ *�a /�a /a ,FO_ *�a  /�a !/a ,FO_ "*�a #/�a $/a ,F� �� ��������� 0 movecar1 moveCar1��  ��   ������ 0 caroneorgpos carOneOrgPos�� 0 stepval stepVal $��~�� ������������������� ��-����4:��?����E�M�~W_djr|
�� 
cwin
�� 
butT
�� 
pbnd
�� 
from
�� 
to  �� 0 racespeedval raceSpeedval�� 
�� .sysorandnmbr    ��� nmbr
�� 
cobj�� "0 caroneorgbounds carOneOrgbounds��v�� 
0 winner  
�� 
enaB�� 0 	pickedcar 	pickedCar
�� 
texF
�� 
pcnt
�� 
proI
� .coVSstoTnull���    obj 
�~ 
pvis��*��/*��/�,E�O*�k��� 	E�O��k/���l/��m/����/�v*��/�,FO*��/�,E�O��m/� ��E` OeEc   Of*�a /a ,FO_ a   Oa *a a /a ,FO*a a / *j UOf*a a /a ,FOb  b  *a a /a ,FY P_ a %*a a  /a ,FO*a a !/ *j UOf*a a "/a ,FOb  b  *a a #/a ,FY hU� �}��|�{�z�} 0 movecar2 moveCar2�|  �{   �y�x�y 0 cartwoorgpos cartwoOrgPos�x 0 stepval stepVal #�w3�v��u�t�s�r�q�p�o�n����m��l�k���j��i�h��g�f'1
�w 
cwin
�v 
butT
�u 
pbnd
�t 
from
�s 
to  �r 0 racespeedval raceSpeedval�q 
�p .sysorandnmbr    ��� nmbr
�o 
cobj�n "0 cartwoorgbounds carTwoOrgbounds�m 
0 winner  
�l 
enaB�k 0 	pickedcar 	pickedCar
�j 
texF
�i 
pcnt
�h 
proI
�g .coVSstoTnull���    obj 
�f 
pvis�z*��/*��/�,E�O*�k��� 	E�O��k/���l/��m/����/�v*��/�,FO*��/�,E�O��m/b   ��E�OeEc   Of*�a /a ,FO_ a   Oa *a a /a ,FO*a a / *j UOf*a a /a ,FOb  b  *a a /a ,FY N�a %*a a /a ,FO*a a  / *j UOf*a a !/a ,FOb  b  *a a "/a ,FY hU� �e9�d�c	�b�e 0 movecar3 moveCar3�d  �c   �a�`�a  0 carthreeorgpos carThreeOrgPos�` 0 stepval stepVal	 #�_��^E�]�\�[�Z�Y�X�W�Vqz��U��T�S���R��Q�P��O��N������
�_ 
cwin
�^ 
butT
�] 
pbnd
�\ 
from
�[ 
to  �Z 0 racespeedval raceSpeedval�Y 
�X .sysorandnmbr    ��� nmbr
�W 
cobj�V &0 carthreeorgbounds carThreeOrgbounds�U 
0 winner  
�T 
enaB�S 0 	pickedcar 	pickedCar
�R 
texF
�Q 
pcnt
�P 
proI
�O .coVSstoTnull���    obj 
�N 
pvis�b*��/*��/�,E�O*�k��� 	E�O��k/���l/��m/����/�v*��/�,FO*��/�,E�O��m/b   ��E�OeEc   Of*�a /a ,FO_ a   Oa *a a /a ,FO*a a / *j UOf*a a /a ,FOb  b  *a a /a ,FY N�a %*a a /a ,FO*a a  / *j UOf*a a !/a ,FOb  b  *a a "/a ,FY hU� �M��L�K
�J�M 0 movecar4 moveCar4�L  �K  
 �I�H�I 0 carfourorgpos carFourOrgPos�H 0 stepval stepVal #�G��F��E�D�C�B�A�@�?�>$-;�=H�<�;OU�:Z�9�8`�7h�6rz���
�G 
cwin
�F 
butT
�E 
pbnd
�D 
from
�C 
to  �B 0 racespeedval raceSpeedval�A 
�@ .sysorandnmbr    ��� nmbr
�? 
cobj�> $0 carfourorgbounds carFourOrgbounds�= 
0 winner  
�< 
enaB�; 0 	pickedcar 	pickedCar
�: 
texF
�9 
pcnt
�8 
proI
�7 .coVSstoTnull���    obj 
�6 
pvis�J*��/*��/�,E�O*�k��� 	E�O��k/���l/��m/����/�v*��/�,FO*��/�,E�O��m/b   ��E�OeEc   Of*�a /a ,FO_ a   Oa *a a /a ,FO*a a / *j UOf*a a /a ,FOb  b  *a a /a ,FY N�a %*a a /a ,FO*a a  / *j UOf*a a !/a ,FOb  b  *a a "/a ,FY hU� �5��4�3�2�5 0 movecar5 moveCar5�4  �3   �1�0�1 0 carfiveorgpos carFiveOrgPos�0 0 stepval stepVal #�/L�.��-�,�+�*�)�(�'�&����%��$�#�"�!� ��%-28@J
�/ 
cwin
�. 
butT
�- 
pbnd
�, 
from
�+ 
to  �* 0 racespeedval raceSpeedval�) 
�( .sysorandnmbr    ��� nmbr
�' 
cobj�& $0 carfiveorgbounds carFiveOrgbounds�% 
0 winner  
�$ 
enaB�# 0 	pickedcar 	pickedCar
�" 
texF
�! 
pcnt
�  
proI
� .coVSstoTnull���    obj 
� 
pvis�2*��/*��/�,E�O*�k��� 	E�O��k/���l/��m/����/�v*��/�,FO*��/�,E�O��m/b   ��E�OeEc   Of*�a /a ,FO_ a   Oa *a a /a ,FO*a a / *j UOf*a a /a ,FOb  b  *a a /a ,FY N�a %*a a /a ,FO*a a  / *j UOf*a a !/a ,FOb  b  *a a "/a ,FY hU� �Y���
� .appSwilOnull���    obj � 0 	theobject 	theObject�   �� 0 	theobject 	theObject )�g�e�s�q�}����������������������
������	��
� 
cwin
� 
proI
� 
pvis
� 
texF
� 
pcnt
� 
sliI
� 
long� 0 racespeedval raceSpeedval
� 
butT
� 
pbnd� "0 caroneorgbounds carOneOrgbounds� "0 cartwoorgbounds carTwoOrgbounds� &0 carthreeorgbounds carThreeOrgbounds� $0 carfourorgbounds carFourOrgbounds�
 $0 carfiveorgbounds carFiveOrgbounds
�	 
enaB� �f*��/��/�,FO*��/��/�,Ec  O*��/��/�,Ec  O*��/��/�,�&E�O*�a /a a /a ,E` O*�a /a a /a ,E` O*�a /a a /a ,E` O*�a /a a /a ,E` O*�a /a a /a ,E`  Oa !*�a "/�a #/�,FOf*�a $/a a %/a &,FOf*�a '/a a (/a &,F  �����
� .coVScliInull���    obj � 0 	theobject 	theObject�   �� 0 	theobject 	theObject _���� !)��'��.��;9��GENXa_fnls�~����������������������
'0.5=;BOM[Ybr��p��x���������������������������
� 
titl� 0 	resetrace 	resetRace
� 
cwin
�  
butT
�� 
texF
�� 
pcnt�� 0 	pickedcar 	pickedCar
�� 
enaB
�� 
proI
�� .coVSstoTnull���    obj 
�� 
pvis
�� .coVSstaAnull���    obj �� 0 movecar1 moveCar1�� 0 movecar2 moveCar2�� 0 movecar3 moveCar3�� 0 movecar4 moveCar4�� 0 movecar5 moveCar5�à�,�  H*j+ O�*��/��/�,FO�*��/��/�,FO�E�Oe*��/�a /a ,FOe*�a /�a /a ,FYƠ�,a   X*j+ Oa *�a /�a /�,FOa *�a /�a /�,FOa E�Oe*�a /�a /a ,FOe*�a /�a /a ,FYf��,a    X*j+ Oa !*�a "/�a #/�,FOa $*�a %/�a &/�,FOa 'E�Oe*�a (/�a )/a ,FOe*�a */�a +/a ,FY��,a ,  X*j+ Oa -*�a ./�a //�,FOa 0*�a 1/�a 2/�,FOa 3E�Oe*�a 4/�a 5/a ,FOe*�a 6/�a 7/a ,FY ���,a 8  X*j+ Oa 9*�a :/�a ;/�,FOa <*�a =/�a >/�,FOa ?E�Oe*�a @/�a A/a ,FOe*�a B/�a C/a ,FY F��,a D  ;eEc   O*�a E/a Fa G/ *j HUO*j+ Oa I*�a J/�a K/�,FY hO*�a L/�a M/�,a N ���,a O  �fEc   O*�a P/�a Q/�,Ec  O*�a R/�a S/�,Ec  Oe*�a T/a Fa U/a V,FO*�a W/a Fa X/ *j YUO -hb   f *j+ ZO*j+ [O*j+ \O*j+ ]O*j+ ^[OY��Y hY h ���������
�� .coVSactTnull���    obj �� 0 	theobject 	theObject��   ���� 0 	theobject 	theObject ������������
�� 
cwin
�� 
sliI
�� 
pcnt
�� 
long�� 0 racespeedval raceSpeedval�� *��/��/�,�&E�ascr  ��ޭ