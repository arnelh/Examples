FasdUAS 1.101.10   ��   ��    k             l      �� ��      Assistant.applescript        	  l     ������  ��   	  
  
 l      �� ��   �� This application is to present one possible implementation of an 'Assistant'. The strategy that is used is to use a tab view and use seperate tab view items to represent an information panel. The tab view is set without a border or visible tabs. This gives the appearance of a panel full of UI elements to being switched in and out. The design also supports the ability to easily add, remove or change the order of info panels. One thing of note is that and that is incorporated in this strategy is that UI elements of tab view items that are not the current tab view item are not accessible. The way a tab view works is by adding and removing the tab view item's view in and out of the view hierarchy. Since AppleScript needs to be able to walk that view hierarchy to get access to the UI elements in the sub views. Thus, the properties of each info panel is updated before the tab view item is switched out.          l     ������  ��        l      �� ��   IC The structure of this script is as follows:
	Properties		Properties needed for the application.
	Script Objects		Model/Controller objects that are specific to each info panel.
	Event Handlers	Handlers that are called by actions in the UI.
	Handlers 			Handlers that interact with the script objects and as well as the UI.
         l     ������  ��        l     ������  ��        l      �� ��      ==== Properties ===          l     ������  ��        j     �� �� 0 
infopanels 
infoPanels  J     ����        j    ��  �� .0 currentinfopanelindex currentInfoPanelIndex   m    ����    ! " ! j    
�� #�� 0 statusimages statusImages # J    	����   "  $ % $ l     ������  ��   %  & ' & l     ������  ��   '  ( ) ( l      �� *��   *    ==== Script Objects ====     )  + , + l     ������  ��   ,  - . - l     �� /��   / � � This is the parent script object that represents an info panel. It has default implementations of all of the handlers that is used throughout this application.    .  0 1 0 l     �� 2��   2       1  3 4 3 h    �� 5�� 0 	infopanel 	InfoPanel 5 k       6 6  7 8 7 l     �� 9��   9 V P This handler is called when the contents of the UI elements need to be prepared    8  : ; : i      < = < I      �� >���� 0 preparevalues prepareValues >  ?�� ? o      ���� 0 	thewindow 	theWindow��  ��   = l     �� @��   @ K E Scripts that inherit from this script need to implement this handler    ;  A B A l     ������  ��   B  C D C l     �� E��   E i c This handler is called when the properties need to be updated from the contents of the UI elements    D  F G F i     H I H I      �� J���� 0 updatevalues updateValues J  K�� K o      ���� 0 	thewindow 	theWindow��  ��   I l     �� L��   L K E Scripts that inherit from this script need to implement this handler    G  M N M l     ������  ��   N  O P O l     �� Q��   Q �  This handler is called to allow an info panel to validate it's values, returning false if the data isn't valid (or is missing)    P  R S R i     T U T I      �� V����  0 validatevalues validateValues V  W�� W o      ���� 0 	thewindow 	theWindow��  ��   U k      X X  Y Z Y l     �� [��   [ K E Scripts that inherit from this script need to implement this handler    Z  \�� \ L      ] ] m     ��
�� boovtrue��   S  ^ _ ^ l     ������  ��   _  ` a ` l     �� b��   b N H This handler is called when a summary of the property values is needed.    a  c d c i     e f e I      �������� "0 summarizevalues summarizeValues��  ��   f l     �� g��   g K E Scripts that inherit from this script need to implement this handler    d  h i h l     ������  ��   i  j k j l     �� l��   l g a This handler will set the focus on the UI element that has a problem and then presents an alert.    k  m�� m i     n o n I      �� p���� *0 postvalidationalert postValidationAlert p  q r q o      ���� 0 
themessage 
theMessage r  s t s o      ���� 0 thetextfield theTextField t  u�� u o      ���� 0 	thewindow 	theWindow��  ��   o k      v v  w x w l     �� y��   y 9 3 Move to the field that is missing it's information    x  z { z r      | } | o     ���� 0 thetextfield theTextField } n       ~  ~ 1    ��
�� 
firS  o    ���� 0 	thewindow 	theWindow {  � � � l   ������  ��   �  � � � l   �� ���   �   Display the alert    �  ��� � I   �� � �
�� .panSdisAnull���    obj  � m     � �  Missing Information    � �� � �
�� 
as A � m    	��
�� EAlTcriT � �� � �
�� 
mesS � o   
 ���� 0 
themessage 
theMessage � �� ���
�� 
attT � o    ���� 0 	thewindow 	theWindow��  ��  ��   4  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l     �� ���   � � ~ This script represents the reporter info panel that contains the personal information about the person reporting the problem.    �  � � � l     �� ���   �       �  � � � h    �� ��� &0 reporterinfopanel ReporterInfoPanel � k       � �  � � � j     �� �
�� 
pare � o     ���� 0 	infopanel 	InfoPanel �  � � � j   	 �� ��� 0 infopanelname infoPanelName � m   	 
 � �  reporter    �  � � � j    �� ��� ,0 infopanelinstruction infoPanelInstruction � m     � � - 'Please enter your personal information.    �  � � � l     ������  ��   �  � � � j    �� ��� 0 company   � m     � �       �  � � � j    �� �
�� 
pnam � m     � �       �  � � � j    �� ��� 0 address   � m     � �       �  � � � j    �� ��� 0 city   � m     � �       �  � � � j    �� ��� 0 zip   � m     � �       �  � � � j     �� �
�� 
staB � m     � �       �  � � � j   ! %�� ��� 	0 email   � m   ! $ � �       �  � � � l     ������  ��   �  � � � l     �� ���   � i c This handler is called when the properties need to be updated from the contents of the UI elements    �  � � � l     �� ���   �       �  � � � i   & ) � � � I      �� ����� 0 updatevalues updateValues �  ��� � o      ���� 0 	thewindow 	theWindow��  ��   � O     l � � � k    k � �  � � � r     � � � n     � � � 1    ��
�� 
pcnt � 4    �� �
�� 
texF � m     � �  company    � n      � � � o    ���� 0 company   �  f     �  � � � r    ( � � � n    $ � � � 1   " $��
�� 
pcnt � 4    "�� �
�� 
texF � m     ! � � 
 name    � n      � � � 1   % '��
�� 
pnam �  f   $ % �  � � � r   ) 3 � � � n   ) / � � � 1   - /��
�� 
pcnt � 4   ) -�� �
�� 
texF � m   + , � �  address    � n      � � � o   0 2���� 0 address   �  f   / 0 �  � � � r   4 > � � � n   4 : � � � 1   8 :��
�� 
pcnt � 4   4 8�� �
�� 
texF � m   6 7 � � 
 city    � n      � � � o   ; =���� 0 city   �  f   : ; �  � � � r   ? M   n   ? G 1   E G�
� 
pcnt 4   ? E�~
�~ 
texF m   A D  state    n      1   H L�}
�} 
staB  f   G H � 	 r   N \

 n   N V 1   T V�|
�| 
pcnt 4   N T�{
�{ 
texF m   P S 	 zip    n      o   W [�z�z 0 zip    f   V W	 �y r   ] k n   ] e 1   c e�x
�x 
pcnt 4   ] c�w
�w 
texF m   _ b  email    n      o   f j�v�v 	0 email    f   e f�y   � n      m    �u
�u 
view n      4    �t
�t 
taVI o    �s�s 0 infopanelname infoPanelName n      !  4    �r"
�r 
tabV" m    ##  info panels   ! n     $%$ 4    �q&
�q 
boxO& m    ''  border   % o     �p�p 0 	thewindow 	theWindow � ()( l     �o�n�o  �n  ) *+* l     �m,�m  , �  This handler is called to allow an info panel to validate it's values, returning false if the data isn't valid (or is missing)   + -.- l     �l/�l  /      . 010 i   * -232 I      �k4�j�k  0 validatevalues validateValues4 5�i5 o      �h�h 0 	thewindow 	theWindow�i  �j  3 k     ^66 787 r     9:9 m     �g
�g boovtrue: o      �f�f 0 isvalid isValid8 ;<; l   �e�d�e  �d  < =>= l   �c?�c  ? 2 , We need to have at least the name and email   > @A@ Z    [BCD�bB =   	EFE 1    �a
�a 
pnamF m    GG      C k    *HH IJI I    &�`K�_�` *0 postvalidationalert postValidationAlertK LML m    NN  You must enter a name.   M OPO n    !QRQ 4    !�^S
�^ 
texFS m     TT 
 name   R n    UVU m    �]
�] 
viewV n    WXW 4    �\Y
�\ 
taVIY o    �[�[ 0 infopanelname infoPanelNameX n    Z[Z 4    �Z\
�Z 
tabV\ m    ]]  info panels   [ n    ^_^ 4    �Y`
�Y 
boxO` m    aa  border   _ o    �X�X 0 	thewindow 	theWindowP b�Wb o   ! "�V�V 0 	thewindow 	theWindow�W  �_  J c�Uc r   ' *ded m   ' (�T
�T boovfalse o      �S�S 0 isvalid isValid�U  D fgf =  - 4hih o   - 2�R�R 	0 email  i m   2 3jj      g k�Qk k   7 Wll mnm I   7 S�Po�O�P *0 postvalidationalert postValidationAlerto pqp m   8 9rr ' !You must enter an e-mail address.   q sts n   9 Nuvu 4   I N�Nw
�N 
texFw m   J Mxx  email   v n   9 Iyzy m   G I�M
�M 
viewz n   9 G{|{ 4   @ G�L}
�L 
taVI} o   A F�K�K 0 infopanelname infoPanelName| n   9 @~~ 4   = @�J�
�J 
tabV� m   > ?��  info panels    n   9 =��� 4   : =�I�
�I 
boxO� m   ; <��  border   � o   9 :�H�H 0 	thewindow 	theWindowt ��G� o   N O�F�F 0 	thewindow 	theWindow�G  �O  n ��E� r   T W��� m   T U�D
�D boovfals� o      �C�C 0 isvalid isValid�E  �Q  �b  A ��� l  \ \�B�A�B  �A  � ��@� L   \ ^�� o   \ ]�?�? 0 isvalid isValid�@  1 ��� l     �>�=�>  �=  � ��� l     �<��<  � N H This handler is called when a summary of the property values is needed.   � ��� l     �;��;  �      � ��:� i   . 1��� I      �9�8�7�9 "0 summarizevalues summarizeValues�8  �7  � k     H�� ��� r     	��� b     ��� o     �6�6 0 company  � o    �5
�5 
ret � o      �4�4 0 
thesummary 
theSummary� ��� r   
 ��� b   
 ��� b   
 ��� o   
 �3�3 0 
thesummary 
theSummary� 1    �2
�2 
pnam� o    �1
�1 
ret � o      �0�0 0 
thesummary 
theSummary� ��� r    ��� b    ��� b    ��� o    �/�/ 0 
thesummary 
theSummary� o    �.�. 0 address  � o    �-
�- 
ret � o      �,�, 0 
thesummary 
theSummary� ��� r     9��� b     7��� b     5��� b     /��� b     -��� b     )��� b     '��� o     !�+�+ 0 
thesummary 
theSummary� o   ! &�*�* 0 city  � m   ' (��  ,    � 1   ) ,�)
�) 
staB� m   - .��      � o   / 4�(�( 0 zip  � o   5 6�'
�' 
ret � o      �&�& 0 
thesummary 
theSummary� ��� r   : E��� b   : C��� b   : A��� o   : ;�%�% 0 
thesummary 
theSummary� o   ; @�$�$ 	0 email  � o   A B�#
�# 
ret � o      �"�" 0 
thesummary 
theSummary� ��!� L   F H�� o   F G� �  0 
thesummary 
theSummary�!  �:   � ��� l     ���  �  � ��� l     ���  �  � ��� l     ���  � l f This script represents the problem info panel that contains the information about the problem itself.   � ��� l     ���  �      � ��� h    "��� $0 probleminfopanel ProblemInfoPanel� k      �� ��� j     ��
� 
pare� o     �� 0 	infopanel 	InfoPanel� ��� j   	 ��� 0 infopanelname infoPanelName� m   	 
��  problem   � ��� j    ��� ,0 infopanelinstruction infoPanelInstruction� m    �� # Please describe your problem.   � ��� l     ���  �  � ��� j    ��� 0 product  � m    ��      � ��� j    ��
� 
vers� m    ��      � ��� j    ��� 0 severity  � m    ��      � ��� j    ��� 0 reproducible  � m    ��      � ��� j    ��� 0 description  � m    ��      � ��� l     ���  �  � ��� l     ���  � i c This handler is called when the properties need to be updated from the contents of the UI elements   �    l     �
�
          i    ! I      �	��	 0 updatevalues updateValues � o      �� 0 	thewindow 	theWindow�  �   O     e	
	 k    d  r     n     1    �
� 
pcnt 4    �
� 
texF m      product    n      o    �� 0 product    f      r    ( n    $ 1   " $�
� 
pcnt 4    "�
� 
texF m     !  version    n      1   % '� 
�  
vers  f   $ %  !  r   ) 7"#" n   ) 1$%$ 1   / 1��
�� 
titl% n   ) /&'& 1   - /��
�� 
curC' 4   ) -��(
�� 
matT( m   + ,))  severity   # n     *+* o   2 6���� 0 severity  +  f   1 2! ,-, r   8 L./. n   8 F010 1   D F��
�� 
titl1 n   8 D232 1   @ D��
�� 
cuMI3 4   8 @��4
�� 
popB4 m   < ?55  reproducible   / n     676 o   G K���� 0 reproducible  7  f   F G- 8��8 r   M d9:9 n   M ^;<; 1   \ ^��
�� 
pcnt< n   M \=>= 4   U \��?
�� 
texV? m   X [@@  description   > 4   M U��A
�� 
scrVA m   Q TBB  scroll   : n     CDC o   _ c���� 0 description  D  f   ^ _��  
 n     EFE m    ��
�� 
viewF n     GHG 4    ��I
�� 
taVII o    ���� 0 infopanelname infoPanelNameH n     JKJ 4    ��L
�� 
tabVL m    MM  info panels   K n     NON 4    ��P
�� 
boxOP m    QQ  border   O o     ���� 0 	thewindow 	theWindow RSR l     ������  ��  S TUT l     ��V��  V �  This handler is called to allow an info panel to validate it's values, returning false if the data isn't valid (or is missing)   U WXW l     ��Y��  Y      X Z[Z i   " %\]\ I      ��^����  0 validatevalues validateValues^ _��_ o      ���� 0 	thewindow 	theWindow��  ��  ] k     �`` aba r     cdc m     ��
�� boovtrued o      ���� 0 isvalid isValidb efe l   ������  ��  f ghg l   ��i��  i \ V We need to have at the very least the product info, version info and description info   h jkj Z    �lmn��l =   opo o    	���� 0 product  p m   	 
qq      m k    ,rr sts I    (��u���� *0 postvalidationalert postValidationAlertu vwv m    xx $ You must enter a product name.   w yzy n    #{|{ 4     #��}
�� 
texF} m   ! "~~  product   | n     � m     ��
�� 
view� n    ��� 4    ���
�� 
taVI� o    ���� 0 infopanelname infoPanelName� n    ��� 4    ���
�� 
tabV� m    ��  info panels   � n    ��� 4    ���
�� 
boxO� m    ��  border   � o    ���� 0 	thewindow 	theWindowz ���� o   # $���� 0 	thewindow 	theWindow��  ��  t ���� r   ) ,��� m   ) *��
�� boovfals� o      ���� 0 isvalid isValid��  n ��� =  / 4��� 1   / 2��
�� 
vers� m   2 3��      � ��� k   7 W�� ��� I   7 S������� *0 postvalidationalert postValidationAlert� ��� m   8 9�� 0 *You must enter the version of the product.   � ��� n   9 N��� 4   I N���
�� 
texF� m   J M��  version   � n   9 I��� m   G I��
�� 
view� n   9 G��� 4   @ G���
�� 
taVI� o   A F���� 0 infopanelname infoPanelName� n   9 @��� 4   = @���
�� 
tabV� m   > ?��  info panels   � n   9 =��� 4   : =���
�� 
boxO� m   ; <��  border   � o   9 :���� 0 	thewindow 	theWindow� ���� o   N O���� 0 	thewindow 	theWindow��  ��  � ���� r   T W��� m   T U��
�� boovfals� o      ���� 0 isvalid isValid��  � ��� =  Z c��� o   Z _���� 0 description  � m   _ b��      � ���� k   f ��� ��� I   f �������� *0 postvalidationalert postValidationAlert� ��� m   g j�� 2 ,You must enter a description of the problem.   � ��� n   j ���� 4   ~ ����
�� 
texF� m    ���  description   � n   j ~��� m   | ~��
�� 
view� n   j |��� 4   u |���
�� 
taVI� o   v {���� 0 infopanelname infoPanelName� n   j u��� 4   p u���
�� 
tabV� m   q t��  info panels   � n   j p��� 4   k p���
�� 
boxO� m   l o��  border   � o   j k���� 0 	thewindow 	theWindow� ���� o   � ����� 0 	thewindow 	theWindow��  ��  � ���� r   � ���� m   � ���
�� boovfals� o      ���� 0 isvalid isValid��  ��  ��  k ��� l  � �������  ��  � ���� L   � ��� o   � ����� 0 isvalid isValid��  [ ��� l     ������  ��  � ��� l     �����  � N H This handler is called when a summary of the property values is needed.   � ��� l     �����  �      � ��� i   & )��� I      �������� "0 summarizevalues summarizeValues��  ��  � k     J�� ��� r     ��� b     ��� b     ��� b     ��� b     	��� b     ��� m     ��  	Product:    � 1    ��
�� 
tab � o    ���� 0 product  � m   	 
��  	 version    � 1    ��
�� 
vers� o    ��
�� 
ret � o      ���� 0 
thesummary 
theSummary� ��� r    #��� b    !��� b       b     b     o    ���� 0 
thesummary 
theSummary m      
Severity:     1    ��
�� 
tab  o    ���� 0 severity  � o     ��
�� 
ret � o      ���� 0 
thesummary 
theSummary�  r   $ 3	
	 b   $ 1 b   $ / b   $ ) b   $ ' o   $ %���� 0 
thesummary 
theSummary m   % &  Reproducible:     1   ' (��
�� 
tab  o   ) .���� 0 reproducible   o   / 0��
�� 
ret 
 o      ���� 0 
thesummary 
theSummary  r   4 ; b   4 9 b   4 7 o   4 5���� 0 
thesummary 
theSummary m   5 6  Description:     o   7 8��
�� 
ret  o      ���� 0 
thesummary 
theSummary  r   < G  b   < E!"! b   < C#$# o   < =���� 0 
thesummary 
theSummary$ o   = B���� 0 description  " o   C D��
�� 
ret   o      ���� 0 
thesummary 
theSummary %��% L   H J&& o   H I���� 0 
thesummary 
theSummary��  � '��' l     ������  ��  ��  � ()( l     ������  ��  ) *+* l     ������  ��  + ,-, l     ��.��  . c ] This script represents the comments info panel that contains the comments from the reporter.   - /0/ l     ��1��  1      0 232 h   # *��4�� &0 commentsinfopanel CommentsInfoPanel4 k      55 676 j     ��8
�� 
pare8 o     ���� 0 	infopanel 	InfoPanel7 9:9 j   	 ��;�� 0 infopanelname infoPanelName; m   	 
<<  comments   : =>= j    ��?�� ,0 infopanelinstruction infoPanelInstruction? m    @@   Please enter any comments.   > ABA l     ��~�  �~  B CDC j    �}E�} 0 comments  E m    FF      D GHG l     �|�{�|  �{  H IJI l     �zK�z  K i c This handler is called when the properties need to be updated from the contents of the UI elements   J LML l     �yN�y  N      M OPO i    QRQ I      �xS�w�x 0 updatevalues updateValuesS T�vT o      �u�u 0 	thewindow 	theWindow�v  �w  R O     !UVU r     WXW n    YZY 1    �t
�t 
pcntZ n    [\[ 4    �s]
�s 
texV] m    ^^  comments   \ 4    �r_
�r 
scrV_ m    ``  scroll   X n     aba o    �q�q 0 comments  b  f    V n     cdc m    �p
�p 
viewd n     efe 4    �og
�o 
taVIg o    �n�n 0 infopanelname infoPanelNamef n     hih 4    �mj
�m 
tabVj m    kk  info panels   i n     lml 4    �ln
�l 
boxOn m    oo  border   m o     �k�k 0 	thewindow 	theWindowP pqp l     �j�i�j  �i  q rsr l     �ht�h  t N H This handler is called when a summary of the property values is needed.   s uvu l     �gw�g  w      v x�fx i    yzy I      �e�d�c�e "0 summarizevalues summarizeValues�d  �c  z k     {{ |}| r     ~~ b     ��� m     ��  
Comments:    � o    �b
�b 
ret  o      �a�a 0 
thesummary 
theSummary} ��� r    ��� b    ��� b    ��� o    �`�` 0 
thesummary 
theSummary� o    �_�_ 0 comments  � o    �^
�^ 
ret � o      �]�] 0 
thesummary 
theSummary� ��\� L    �� o    �[�[ 0 
thesummary 
theSummary�\  �f  3 ��� l     �Z�Y�Z  �Y  � ��� l     �X�W�X  �W  � ��� l     �V��V  � � � This script represents the review info panel, that allows the reporter a chance to see a summary of all of the information before it will be sent.   � ��� l     �U��U  �      � ��� h   + 4�T��T "0 reviewinfopanel ReviewInfoPanel� k      �� ��� j     �S�
�S 
pare� o     �R�R 0 	infopanel 	InfoPanel� ��� j   	 �Q��Q 0 infopanelname infoPanelName� m   	 
��  review   � ��� j    �P��P ,0 infopanelinstruction infoPanelInstruction� m    �� # Please review before sending.   � ��� l     �O�N�O  �N  � ��� j    �M��M 0 reviewsummary reviewSummary� m    ��      � ��� l     �L�K�L  �K  � ��� l     �J��J  � V P This handler is called when the contents of the UI elements need to be prepared   � ��� l     �I��I  �      � ��� i    ��� I      �H��G�H 0 preparevalues prepareValues� ��F� o      �E�E 0 	thewindow 	theWindow�F  �G  � k     #�� ��� r     ��� I     �D�C�B�D "0 summarizevalues summarizeValues�C  �B  � o      �A�A 0 
thesummary 
theSummary� ��@� O    #��� r    "��� o    �?�? 0 
thesummary 
theSummary� n      ��� 1    !�>
�> 
pcnt� n    ��� 4    �=�
�= 
texV� m    ��  review   � 4    �<�
�< 
scrV� m    ��  scroll   � n    ��� m    �;
�; 
view� n    ��� 4    �:�
�: 
taVI� m    ��  review   � n    ��� 4    �9�
�9 
tabV� m    ��  info panels   � n    ��� 4   	 �8�
�8 
boxO� m   
 ��  border   � o    	�7�7 0 	thewindow 	theWindow�@  � ��� l     �6�5�6  �5  � ��� l     �4��4  � i c This handler is called when the properties need to be updated from the contents of the UI elements   � ��� l     �3��3  �      � ��� i    ��� I      �2��1�2 0 updatevalues updateValues� ��0� o      �/�/ 0 	thewindow 	theWindow�0  �1  � O     !��� r     ��� n    ��� 1    �.
�. 
pcnt� n    ��� 4    �-�
�- 
texV� m    ��  review   � 4    �,�
�, 
scrV� m    ��  scroll   � n     ��� o    �+�+ 0 reviewsummary reviewSummary�  f    � n     ��� m    �*
�* 
view� n     ��� 4    �)�
�) 
taVI� o    �(�( 0 infopanelname infoPanelName� n     ��� 4    �'�
�' 
tabV� m    ��  info panels   � n     � � 4    �&
�& 
boxO m      border     o     �%�% 0 	thewindow 	theWindow�  l     �$�#�$  �#    l     �"�"   N H This handler is called when a summary of the property values is needed.    	 l     �!
�!  
      	 �  i     I      ���� "0 summarizevalues summarizeValues�  �   k     2  r      m            o      �� 0 
thesummary 
theSummary  l   ���  �    l   ��   y s Since this is the review info panel, we'll get the summary from all of the other info panels and put them together     Y    /�� r    * b    ( !  b    &"#" o    �� 0 
thesummary 
theSummary# n    %$%$ I   ! %���� "0 summarizevalues summarizeValues�  �  % n    !&'& 4    !�(
� 
cobj( o     �� 0 n  ' o    �� 0 
infopanels 
infoPanels! o   & '�
� 
ret  o      �� 0 
thesummary 
theSummary� 0 n   m    ��  l   )�) \    *+* l   ,�, I   �
-�	
�
 .corecnte****       ****- o    �� 0 
infopanels 
infoPanels�	  �  + m    �� �  �   ./. l  0 0���  �  / 0�0 L   0 211 o   0 1�� 0 
thesummary 
theSummary�  �   � 232 l     ���  �  3 454 l     � ���   ��  5 676 l      ��8��  8    ==== Event Handlers ====    7 9:9 l     ������  ��  : ;<; l     ��=��  = � � This event handler is called when the application is finished launching. It's a good place to to any initialization before showing the main window.   < >?> l     ��@��  @      ? ABA l     ������  ��  B CDC i   5 8EFE I     ��G��
�� .appSlauNnull���    obj G o      ���� 0 	theobject 	theObject��  F k     BHH IJI l     ��K��  K   Load the images   J LML r     NON J     PP QRQ l    S��S I    ��T��
�� .appSloaInull���    obj T m     UU  DotBlue   ��  ��  R V��V l   
W��W I   
��X��
�� .appSloaInull���    obj X m    YY  DotGray   ��  ��  ��  O o      ���� 0 statusimages statusImagesM Z[Z l   ������  ��  [ \]\ l   ��^��  ^% Setup the info panel list. The order of the panels is established here. You can easily change the order that they are presented by changing their order here in this list. The only other thing you need to keep synchronized is the status text items in the left hand portion of the window.   ] _`_ r    /aba J    )cc ded o    ���� &0 reporterinfopanel ReporterInfoPanele fgf o    ���� $0 probleminfopanel ProblemInfoPanelg hih o    "���� &0 commentsinfopanel CommentsInfoPaneli j��j o   " '���� "0 reviewinfopanel ReviewInfoPanel��  b o      ���� 0 
infopanels 
infoPanels` klk l  0 0������  ��  l mnm l  0 0��o��  o %  Switch to the first info panel   n pqp I   0 9��r���� 00 switchtofirstinfopanel switchToFirstInfoPanelr s��s 4   1 5��t
�� 
cwint m   3 4uu 
 main   ��  ��  q vwv l  : :������  ��  w x��x r   : Byzy m   : ;��
�� boovtruez n      {|{ 1   ? A��
�� 
pvis| 4   ; ?��}
�� 
cwin} m   = >~~ 
 main   ��  D � l     ������  ��  � ��� l     ������  ��  � ��� l     �����  � o i This event handler is called when a button is clicked, in this case the 'go back' or 'continue' buttons.   � ��� l     �����  �      � ��� i   9 <��� I     �����
�� .coVScliInull���    obj � o      ���� 0 	theobject 	theObject��  � Z     D������ =    ��� n     ��� 1    ��
�� 
pnam� o     ���� 0 	theobject 	theObject� m    ��  continue   � Z    -������ =   ��� o    ���� .0 currentinfopanelindex currentInfoPanelIndex� l   ���� I   �����
�� .corecnte****       ****� o    ���� 0 
infopanels 
infoPanels��  ��  � k    "�� ��� l   �����  � \ V On the last panel, the button has changed to 'Send' so send the gathered information    � ���� I    "������� "0 sendinformation sendInformation� ���� n    ��� m    ��
�� 
cwin� o    ���� 0 	theobject 	theObject��  ��  ��  ��  � k   % -�� ��� l  % %�����  � $  Switch to the next info panel   � ���� I   % -������� .0 switchtonextinfopanel switchToNextInfoPanel� ���� n   & )��� m   ' )��
�� 
cwin� o   & '���� 0 	theobject 	theObject��  ��  ��  � ��� =  0 5��� n   0 3��� 1   1 3��
�� 
pnam� o   0 1���� 0 	theobject 	theObject� m   3 4�� 
 back   � ���� k   8 @�� ��� l  8 8�����  � ( " Switch to the previous info panel   � ���� I   8 @������� 60 switchtopreviousinfopanel switchToPreviousInfoPanel� ���� n   9 <��� m   : <��
�� 
cwin� o   9 :���� 0 	theobject 	theObject��  ��  ��  ��  ��  � ��� l     ������  ��  � ��� l     ������  ��  � ��� l     �����  ��z This event handler is called when the tab view is about to switch tab items. You can control the result by returning 'true' to allow the selection to happen, or 'false' to cancel it. Here we will collect the information from each panel and then validate the information and make our decision based upon the validation as to whether or not we will allow the selection to change.   � ��� l     �����  �      � ��� i   = @��� I     ����
�� .caVSsSTVnull���    obj � o      ���� 0 	theobject 	theObject� �����
�� 
taVI� o      ���� 0 tabviewitem tabViewItem��  � k     (�� ��� r     ��� m     ��
�� boovtrue� o      ���� 0 isvalid isValid� ��� l   ������  ��  � ��� l   �����  � C = We only want to update and validate if the window is visible   � ��� Z    %������� =   ��� n    	��� 1    	��
�� 
pvis� n    ��� m    ��
�� 
cwin� o    ���� 0 	theobject 	theObject� m   	 
��
�� boovtrue� k    !�� ��� l   �����  � @ : Update the current info panel with the contents of the UI   � ��� I    ������� 00 updatecurrentinfopanel updateCurrentInfoPanel� ���� n    ��� m    ��
�� 
cwin� o    ���� 0 	theobject 	theObject��  ��  � ��� l   ������  ��  � ��� l   �����  � C = Validate the current  info panel to see if we should move on   � ���� r    !��� I    ������� 40 validatecurrentinfopanel validateCurrentInfoPanel� ���� n    ��� m    ��
�� 
cwin� o    ���� 0 	theobject 	theObject��  ��  � o      ���� 0 isvalid isValid��  ��  ��  � ��� l  & &������  ��  � ��� l  & &�����  � X R Return the validity status (true if it's ok to select the tab, false if it's not)   �  ��  L   & ( o   & '���� 0 isvalid isValid��  �  l     �����  �    l     �~�}�~  �}    l     �|�|   U O This event handler is called when the current tab view item has been changed.     	
	 l     �{�{        
  i   A D I     �z
�z .caVSdSTVnull���    obj  o      �y�y 0 	theobject 	theObject �x�w
�x 
taVI o      �v�v 0 tabviewitem tabViewItem�w   k       l     �u�u   K E We will give the new info panel a chance to prepare it's data values    �t n      I    �s�r�s 0 preparevalues prepareValues �q n     m   	 �p
�p 
cwin o    	�o�o 0 	theobject 	theObject�q  �r   I     �n�m�n &0 infopanelwithname infoPanelWithName �l n     !  1    �k
�k 
pnam! o    �j�j 0 tabviewitem tabViewItem�l  �m  �t   "#" l     �i�h�i  �h  # $%$ l     �g�f�g  �f  % &'& l      �e(�e  (   ==== Handlers ====    ' )*) l     �d�c�d  �c  * +,+ l     �b-�b  - p j This handler will attempt to switch to the indicated info panel and change the UI to reflect that change.   , ./. l     �a0�a  0      / 121 i   E H343 I      �`5�_�` &0 switchtoinfopanel switchToInfoPanel5 676 o      �^�^ 0 theindex theIndex7 8�]8 o      �\�\ 0 	thewindow 	theWindow�]  �_  4 O    9:9 k   ;; <=< r    >?> n    @A@ o    �[�[ 0 infopanelname infoPanelNameA n    BCB 4   	 �ZD
�Z 
cobjD o   
 �Y�Y 0 theindex theIndexC o    	�X�X 0 
infopanels 
infoPanels? o      �W�W $0 theinfopanelname theInfoPanelName= EFE r    GHG n    IJI o    �V�V ,0 infopanelinstruction infoPanelInstructionJ n    KLK 4    �UM
�U 
cobjM o    �T�T 0 theindex theIndexL o    �S�S 0 
infopanels 
infoPanelsH o      �R�R 20 theinfopanelinstruction theInfoPanelInstructionF NON l   �Q�P�Q  �P  O PQP l   �OR�O  R 7 1 Attempt to switch to the indicated tab view item   Q STS O    BUVU k   ( AWW XYX r   ( 0Z[Z 4   ( ,�N\
�N 
taVI\ o   * +�M�M $0 theinfopanelname theInfoPanelName[ 1   , /�L
�L 
cTVIY ]^] l  1 1�K�J�K  �J  ^ _`_ l  1 1�Ia�I  a V P The tab may not change due to validation checking, so make sure we have changed   ` b�Hb Z   1 Acd�G�Fc >  1 8efe n   1 6ghg 1   4 6�E
�E 
pnamh 1   1 4�D
�D 
cTVIf o   6 7�C�C $0 theinfopanelname theInfoPanelNamed L   ; =�B�B  �G  �F  �H  V n    %iji 4   " %�Ak
�A 
tabVk m   # $ll  info panels   j 4    "�@m
�@ 
boxOm m     !nn  border   T opo l  C C�?�>�?  �>  p qrq l  C C�=s�=  s   Update the current index   r tut r   C Jvwv o   C D�<�< 0 theindex theIndexw o      �;�; .0 currentinfopanelindex currentInfoPanelIndexu xyx l  K K�:�9�:  �9  y z{z l  K K�8|�8  |   Update the instructions   { }~} O   K [� r   R Z��� o   R S�7�7 20 theinfopanelinstruction theInfoPanelInstruction� n      ��� 1   W Y�6
�6 
pcnt� 4   S W�5�
�5 
texF� m   U V��  instructions   � 4   K O�4�
�4 
boxO� m   M N��  instructions   ~ ��� l  \ \�3�2�3  �2  � ��� l  \ \�1��1  � !  Update the 'back' button.    � ��� Z   \ {���0�� =  \ _��� o   \ ]�/�/ 0 theindex theIndex� m   ] ^�.�. � k   b l�� ��� l  b b�-��-  � "  Hide it on the first panel.   � ��,� r   b l��� m   b c�+
�+ boovfals� n      ��� 1   g k�*
�* 
pvis� 4   c g�)�
�) 
butT� m   e f�� 
 back   �,  �0  � k   o {�� ��� l  o o�(��(  �   Show it on all others   � ��'� r   o {��� m   o p�&
�& boovtrue� n      ��� 1   v z�%
�% 
pvis� 4   p v�$�
�$ 
butT� m   r u�� 
 back   �'  � ��� l  | |�#�"�#  �"  � ��� l  | |�!��!  � %  Update the 'continue' button.    � ��� Z   | ���� �� =  | ���� o   | }�� 0 theindex theIndex� l  } ���� I  } ����
� .corecnte****       ****� o   } ��� 0 
infopanels 
infoPanels�  �  � k   � ��� ��� l  � ����  � ; 5 Set the title to 'Send' if we are on the last panel.   � ��� r   � ���� m   � ��� 
 Send   � n      ��� 1   � ��
� 
titl� 4   � ���
� 
butT� m   � ���  continue   �  �   � k   � ��� ��� l  � ����  � %  Otherwise set it to 'Continue'   � ��� r   � ���� m   � ���  Continue   � n      ��� 1   � ��
� 
titl� 4   � ���
� 
butT� m   � ���  continue   �  � ��� l  � ����  �  � ��� l  � ����  �   Update the status images   � ��� Y   ������� k   � ��� ��� l  � ����  � %  Get the name of the info panel   � ��� r   � ���� n   � ���� o   � ��� 0 infopanelname infoPanelName� n   � ���� 4   � ��
�
�
 
cobj� 1   � ��	
�	 
pidx� o   � ��� 0 
infopanels 
infoPanels� o      �� 0 infopanelname infoPanelName� ��� l  � ����  �  � ��� l  � ����  � ~ x We will be setting the status image to blue for any info panels up to the current index, otherwise we'll set it to gray   � ��� Z   � ������ B   � ���� 1   � ��
� 
pidx� o   � �� �  .0 currentinfopanelindex currentInfoPanelIndex� r   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 statusimages statusImages� n      ��� m   � ���
�� 
imaA� 4   � ����
�� 
imaV� o   � ����� 0 infopanelname infoPanelName�  � r   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 statusimages statusImages� n      � � m   � ���
�� 
imaA  4   � ���
�� 
imaV o   � ����� 0 infopanelname infoPanelName�  
� 
pidx� m   � ����� � I  � �����
�� .corecnte****       **** o   � ����� 0 
infopanels 
infoPanels��  �  �  : o     ���� 0 	thewindow 	theWindow2  l     ������  ��    l     ������  ��    l     ��	��  	 T N Switches to the the first info panel (called upon startup of the application)    

 l     ����          i   I L I      ������ 00 switchtofirstinfopanel switchToFirstInfoPanel �� o      ���� 0 	thewindow 	theWindow��  ��   k       l     ����   7 1 Switch to the first item in the info panels list    �� I     ������ &0 switchtoinfopanel switchToInfoPanel  m    ����  �� o    ���� 0 	thewindow 	theWindow��  ��  ��    l     ������  ��    l     ������  ��    !  l     ��"��  " 7 1 Switches to the the next info panel if available   ! #$# l     ��%��  %      $ &'& i   M P()( I      ��*���� .0 switchtonextinfopanel switchToNextInfoPanel* +��+ o      ���� 0 	thewindow 	theWindow��  ��  ) k     #,, -.- l     ��/��  / 9 3 Make sure that we aren't already on the last panel   . 0��0 Z     #12����1 A    343 o     ���� .0 currentinfopanelindex currentInfoPanelIndex4 l   5��5 I   ��6��
�� .corecnte****       ****6 o    
���� 0 
infopanels 
infoPanels��  ��  2 I    ��7���� &0 switchtoinfopanel switchToInfoPanel7 898 [    :;: o    ���� .0 currentinfopanelindex currentInfoPanelIndex; m    ���� 9 <��< o    ���� 0 	thewindow 	theWindow��  ��  ��  ��  ��  ' =>= l     ������  ��  > ?@? l     ������  ��  @ ABA l     ��C��  C ; 5 Switches to the the previous info panel if available   B DED l     ��F��  F      E GHG i   Q TIJI I      ��K���� 60 switchtopreviousinfopanel switchToPreviousInfoPanelK L��L o      ���� 0 	thewindow 	theWindow��  ��  J k     MM NON l     ��P��  P : 4 Make sure that we aren't already on the first panel   O Q��Q Z     RS����R ?    TUT o     ���� .0 currentinfopanelindex currentInfoPanelIndexU m    ���� S I   
 ��V���� &0 switchtoinfopanel switchToInfoPanelV WXW \    YZY o    ���� .0 currentinfopanelindex currentInfoPanelIndexZ m    ���� X [��[ o    ���� 0 	thewindow 	theWindow��  ��  ��  ��  ��  H \]\ l     ������  ��  ] ^_^ l     ������  ��  _ `a` l     ��b��  b t n This handler will tell the current info panel to set it's properties values from the UI objects in it's panel   a cdc l     ��e��  e      d fgf i   U Xhih I      ��j���� 00 updatecurrentinfopanel updateCurrentInfoPanelj k��k o      ���� 0 	thewindow 	theWindow��  ��  i O    lml I    ��n���� 0 updatevalues updateValuesn o��o o    ���� 0 	thewindow 	theWindow��  ��  m n     pqp 4    ��r
�� 
cobjr o    ���� .0 currentinfopanelindex currentInfoPanelIndexq o     ���� 0 
infopanels 
infoPanelsg sts l     ������  ��  t uvu l     ������  ��  v wxw l     ��y��  y o i This handler will validate the current info panel, to ensure that the required data is present and valid   x z{z l     ��|��  |      { }~} i   Y \� I      ������� 40 validatecurrentinfopanel validateCurrentInfoPanel� ���� o      ���� 0 	thewindow 	theWindow��  ��  � L     �� n     ��� I    �������  0 validatevalues validateValues� ���� o    ���� 0 	thewindow 	theWindow��  ��  � n     ��� 4    ���
�� 
cobj� o    ���� .0 currentinfopanelindex currentInfoPanelIndex� o     ���� 0 
infopanels 
infoPanels~ ��� l     ������  ��  � ��� l     ������  ��  � ��� l     �����  � P J This event handler handles sending the gathered information to (wherever)   � ��� l     �����  �      � ��� i   ] `��� I      ������� "0 sendinformation sendInformation� ���� o      ���� 0 	thewindow 	theWindow��  ��  � k     �� ��� l     �����  � A ; Get the summary information from the the Review info panel   � ��� r     	��� n     ��� o    ���� 0 reviewsummary reviewSummary� o     ���� "0 reviewinfopanel ReviewInfoPanel� o      ��  0 theinformation theInformation� ��� l  
 
�~�}�~  �}  � ��� l  
 
�|��|  �   Send this information   � ��{� l  
 
�z��z  � ^ X *** This is left blank as it is implementation dependent and is left as an exercise ***   �{  � ��� l     �y�x�y  �x  � ��� l     �w�v�w  �v  � ��� l     �u��u  � \ V This is a utility handler that is called to return the info panel with the given name   � ��� l     �t��t  �      � ��� i   a d��� I      �s��r�s &0 infopanelwithname infoPanelWithName� ��q� o      �p�p 0 thename theName�q  �r  � k     1�� ��� r     ��� m     �o
�o 
null� o      �n�n 0 theinfopanel theInfoPanel� ��� l   �m�l�m  �l  � ��� X    .��k�� Z    )���j�i� =   ��� n    ��� o    �h�h 0 infopanelname infoPanelName� o    �g�g 0 thepanel thePanel� o    �f�f 0 thename theName� k     %�� ��� r     #��� o     !�e�e 0 thepanel thePanel� o      �d�d 0 theinfopanel theInfoPanel� ��c�  S   $ %�c  �j  �i  �k 0 thepanel thePanel� o    �b�b 0 
infopanels 
infoPanels� ��� l  / /�a�`�a  �`  � ��_� L   / 1�� o   / 0�^�^ 0 theinfopanel theInfoPanel�_  � ��� l     �]�\�]  �\  � ��� l     �[�Z�[  �Z  � ��� l      �Y��Y  �	2	, � Copyright 2004 Apple Computer, Inc. All rights reserved.

IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc. (�Apple�) in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this Apple software constitutes acceptance of these terms.  If you do not agree with these terms, please do not use, install, modify or redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Apple grants you a personal, non-exclusive license, under Apple�s copyrights in this original Apple software (the �Apple Software�), to use, reproduce, modify and redistribute the Apple Software, with or without modifications, in source and/or binary forms; provided that if you redistribute the Apple Software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the Apple Software.  Neither the name, trademarks, service marks or logos of Apple Computer, Inc. may be used to endorse or promote products derived from the Apple Software without specific prior written permission from Apple.  Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. 

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.    � ��� l     �X�W�X  �W  � ��� l     �V�U�V  �U  � ��T� j   e k�S��S 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier� m   e h��  Assistant.applescript   �T       �R���Q��������������������R  � �P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�P 0 
infopanels 
infoPanels�O .0 currentinfopanelindex currentInfoPanelIndex�N 0 statusimages statusImages�M 0 	infopanel 	InfoPanel�L &0 reporterinfopanel ReporterInfoPanel�K $0 probleminfopanel ProblemInfoPanel�J &0 commentsinfopanel CommentsInfoPanel�I "0 reviewinfopanel ReviewInfoPanel
�H .appSlauNnull���    obj 
�G .coVScliInull���    obj 
�F .caVSsSTVnull���    obj 
�E .caVSdSTVnull���    obj �D &0 switchtoinfopanel switchToInfoPanel�C 00 switchtofirstinfopanel switchToFirstInfoPanel�B .0 switchtonextinfopanel switchToNextInfoPanel�A 60 switchtopreviousinfopanel switchToPreviousInfoPanel�@ 00 updatecurrentinfopanel updateCurrentInfoPanel�? 40 validatecurrentinfopanel validateCurrentInfoPanel�> "0 sendinformation sendInformation�= &0 infopanelwithname infoPanelWithName�< 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier� �;�:�;  �:  �Q � �9�8�9  �8  � �7 5  ��7 0 	infopanel 	InfoPanel�  ������� �6�5�4�3�2�6 0 preparevalues prepareValues�5 0 updatevalues updateValues�4  0 validatevalues validateValues�3 "0 summarizevalues summarizeValues�2 *0 postvalidationalert postValidationAlert� �1 =�0�/ �.�1 0 preparevalues prepareValues�0 �-�-   �,�, 0 	thewindow 	theWindow�/    �+�+ 0 	thewindow 	theWindow  �. h� �* I�)�(�'�* 0 updatevalues updateValues�) �&�&   �%�% 0 	thewindow 	theWindow�(   �$�$ 0 	thewindow 	theWindow  �' h� �# U�"�!� �#  0 validatevalues validateValues�" ��   �� 0 	thewindow 	theWindow�!   �� 0 	thewindow 	theWindow  �  e� � f��	
�� "0 summarizevalues summarizeValues�  �  	  
  � h� � o���� *0 postvalidationalert postValidationAlert� ��   ���� 0 
themessage 
theMessage� 0 thetextfield theTextField� 0 	thewindow 	theWindow�   ���� 0 
themessage 
theMessage� 0 thetextfield theTextField� 0 	thewindow 	theWindow � ����
�	��
� 
firS
� 
as A
� EAlTcriT
�
 
mesS
�	 
attT� 
� .panSdisAnull���    obj � ���,FO������ � � ��� &0 reporterinfopanel ReporterInfoPanel  � � � � � � � � � � ����� ����������������
� 
pare� 0 infopanelname infoPanelName� ,0 infopanelinstruction infoPanelInstruction� 0 company  
�  
pnam�� 0 address  �� 0 city  �� 0 zip  
�� 
staB�� 	0 email  �� 0 updatevalues updateValues��  0 validatevalues validateValues�� "0 summarizevalues summarizeValues�   �� ��������� 0 updatevalues updateValues�� ����   ���� 0 	thewindow 	theWindow��   ���� 0 	thewindow 	theWindow ��'��#������ ����� ��� ��� ���������
�� 
boxO
�� 
tabV
�� 
taVI
�� 
view
�� 
texF
�� 
pcnt�� 0 company  
�� 
pnam�� 0 address  �� 0 city  
�� 
staB�� 0 zip  �� 	0 email  �� m���/��/�b  /�, Z*��/�,)�,FO*��/�,)�,FO*��/�,)�,FO*��/�,)�,FO*�a /�,)a ,FO*�a /�,)a ,FO*�a /�,)a ,FU ��3��������  0 validatevalues validateValues�� ����   ���� 0 	thewindow 	theWindow��   ������ 0 	thewindow 	theWindow�� 0 isvalid isValid ��GN��a��]������T��jr��x
�� 
pnam
�� 
boxO
�� 
tabV
�� 
taVI
�� 
view
�� 
texF�� *0 postvalidationalert postValidationAlert�� _eE�O*�,�  #*���/��/�b  /�,��/�m+ OfE�Y 0b  	�  %*����/��/�b  /�,�a /�m+ OfE�Y hO� ����������� "0 summarizevalues summarizeValues��  ��   ���� 0 
thesummary 
theSummary ��������
�� 
ret 
�� 
pnam
�� 
staB�� Ib  �%E�O�*�,%�%E�O�b  %�%E�O�b  %�%*�,%�%b  %�%E�O�b  	%�%E�O�� ������ $0 probleminfopanel ProblemInfoPanel  ��������� ����������������������
�� 
pare�� 0 infopanelname infoPanelName�� ,0 infopanelinstruction infoPanelInstruction�� 0 product  
�� 
vers�� 0 severity  �� 0 reproducible  �� 0 description  �� 0 updatevalues updateValues��  0 validatevalues validateValues�� "0 summarizevalues summarizeValues��   ������ !���� 0 updatevalues updateValues�� ��"�� "  ���� 0 	thewindow 	theWindow��    ���� 0 	thewindow 	theWindow! ��Q��M��������������)��������5������B��@��
�� 
boxO
�� 
tabV
�� 
taVI
�� 
view
�� 
texF
�� 
pcnt�� 0 product  
�� 
vers
�� 
matT
�� 
curC
�� 
titl�� 0 severity  
�� 
popB
�� 
cuMI�� 0 reproducible  
�� 
scrV
�� 
texV�� 0 description  �� f���/��/�b  /�, S*��/�,)�,FO*��/�,)�,FO*��/�,�,)a ,FO*a a /a ,�,)a ,FO*a a /a a /�,)a ,FU ��]����#$����  0 validatevalues validateValues�� ��%�� %  ���� 0 	thewindow 	theWindow��  # ������ 0 	thewindow 	theWindow�� 0 isvalid isValid$ qx������������~��������������
�� 
boxO
�� 
tabV
�� 
taVI
�� 
view
�� 
texF�� *0 postvalidationalert postValidationAlert
�� 
vers�� �eE�Ob  �  #*���/��/�b  /�,��/�m+ 
OfE�Y c*�,�  %*����/��/�b  /�,�a /�m+ 
OfE�Y 8b  a   +*a ��a /�a /�b  /�,�a /�m+ 
OfE�Y hO� �������&'���� "0 summarizevalues summarizeValues��  ��  & ���� 0 
thesummary 
theSummary' ��������
�� 
tab 
�� 
vers
�� 
ret �� K��%b  %�%*�,%�%E�O��%�%b  %�%E�O��%�%b  %�%E�O��%�%E�O�b  %�%E�O�� ��4�(�� &0 commentsinfopanel CommentsInfoPanel(  )��<@F*+) ������������
�� 
pare�� 0 infopanelname infoPanelName�� ,0 infopanelinstruction infoPanelInstruction�� 0 comments  �� 0 updatevalues updateValues�� "0 summarizevalues summarizeValues��  * ��R����,-���� 0 updatevalues updateValues�� ��.�� .  ���� 0 	thewindow 	theWindow��  , ���� 0 	thewindow 	theWindow- ��o�k�~�}�|`�{^�z�y
�� 
boxO
� 
tabV
�~ 
taVI
�} 
view
�| 
scrV
�{ 
texV
�z 
pcnt�y 0 comments  �� "���/��/�b  /�, *��/��/�,)�,FU+ �xz�w�v/0�u�x "0 summarizevalues summarizeValues�w  �v  / �t�t 0 
thesummary 
theSummary0 ��s
�s 
ret �u ��%E�O�b  %�%E�O�� �r��1�r "0 reviewinfopanel ReviewInfoPanel1 	 2�q���3452 �p�o�n�m�l�k�j
�p 
pare�o 0 infopanelname infoPanelName�n ,0 infopanelinstruction infoPanelInstruction�m 0 reviewsummary reviewSummary�l 0 preparevalues prepareValues�k 0 updatevalues updateValues�j "0 summarizevalues summarizeValues�q  3 �i��h�g67�f�i 0 preparevalues prepareValues�h �e8�e 8  �d�d 0 	thewindow 	theWindow�g  6 �c�b�c 0 	thewindow 	theWindow�b 0 
thesummary 
theSummary7 �a�`��_��^��]�\��[��Z�a "0 summarizevalues summarizeValues
�` 
boxO
�_ 
tabV
�^ 
taVI
�] 
view
�\ 
scrV
�[ 
texV
�Z 
pcnt�f $*j+  E�O���/��/��/�, �*��/��/�,FU4 �Y��X�W9:�V�Y 0 updatevalues updateValues�X �U;�U ;  �T�T 0 	thewindow 	theWindow�W  9 �S�S 0 	thewindow 	theWindow: �R�Q��P�O�N��M��L�K
�R 
boxO
�Q 
tabV
�P 
taVI
�O 
view
�N 
scrV
�M 
texV
�L 
pcnt�K 0 reviewsummary reviewSummary�V "���/��/�b  /�, *��/��/�,)�,FU5 �J�I�H<=�G�J "0 summarizevalues summarizeValues�I  �H  < �F�E�F 0 
thesummary 
theSummary�E 0 n  = �D�C�B�A
�D .corecnte****       ****
�C 
cobj�B "0 summarizevalues summarizeValues
�A 
ret �G 3�E�O *kb   j kkh �b   �/j+ %�%E�[OY��O�� �@F�?�>>?�=
�@ .appSlauNnull���    obj �? 0 	theobject 	theObject�>  > �<�< 0 	theobject 	theObject? 	U�;Y�:�9u�8~�7
�; .appSloaInull���    obj �: 
�9 
cwin�8 00 switchtofirstinfopanel switchToFirstInfoPanel
�7 
pvis�= C�j �j lvEc  Ob  b  b  b  �vEc   O**��/k+ Oe*��/�,F� �6��5�4@A�3
�6 .coVScliInull���    obj �5 0 	theobject 	theObject�4  @ �2�2 0 	theobject 	theObjectA �1��0�/�.�-��,
�1 
pnam
�0 .corecnte****       ****
�/ 
cwin�. "0 sendinformation sendInformation�- .0 switchtonextinfopanel switchToNextInfoPanel�, 60 switchtopreviousinfopanel switchToPreviousInfoPanel�3 E��,�  *b  b   j   *��,k+ Y 
*��,k+ Y ��,�  *��,k+ Y h� �+��*�)BC�(
�+ .caVSsSTVnull���    obj �* 0 	theobject 	theObject�) �'�&�%
�' 
taVI�& 0 tabviewitem tabViewItem�%  B �$�#�"�$ 0 	theobject 	theObject�# 0 tabviewitem tabViewItem�" 0 isvalid isValidC �!� ��
�! 
cwin
�  
pvis� 00 updatecurrentinfopanel updateCurrentInfoPanel� 40 validatecurrentinfopanel validateCurrentInfoPanel�( )eE�O��,�,e  *��,k+ O*��,k+ E�Y hO�� ���DE�
� .caVSdSTVnull���    obj � 0 	theobject 	theObject� ���
� 
taVI� 0 tabviewitem tabViewItem�  D ��� 0 	theobject 	theObject� 0 tabviewitem tabViewItemE ����
� 
pnam� &0 infopanelwithname infoPanelWithName
� 
cwin� 0 preparevalues prepareValues� *��,k+ ��,k+ � �4��FG�� &0 switchtoinfopanel switchToInfoPanel� �H� H  ��
� 0 theindex theIndex�
 0 	thewindow 	theWindow�  F �	������	 0 theindex theIndex� 0 	thewindow 	theWindow� $0 theinfopanelname theInfoPanelName� 20 theinfopanelinstruction theInfoPanelInstruction
� 
pidx� 0 infopanelname infoPanelNameG ���� n��l������������������������������
� 
cobj� 0 infopanelname infoPanelName� ,0 infopanelinstruction infoPanelInstruction
�  
boxO
�� 
tabV
�� 
taVI
�� 
cTVI
�� 
pnam
�� 
texF
�� 
pcnt
�� 
butT
�� 
pvis
�� .corecnte****       ****
�� 
titl
�� 
imaV
�� 
imaA�� b   �/�,E�Ob   �/�,E�O*��/��/ *�/*�,FO*�,�,� hY hUO�Ec  O*��/ 
�*��/�,FUO�k  f*��/a ,FY e*�a /a ,FO�b   j   a *�a /a ,FY a *�a /a ,FO Wkb   j kh b   �E/�,E�O�b   b  �k/*a �/a ,FY b  �l/*a �/a ,F[OY��U� ������IJ���� 00 switchtofirstinfopanel switchToFirstInfoPanel�� ��K�� K  ���� 0 	thewindow 	theWindow��  I ���� 0 	thewindow 	theWindowJ ���� &0 switchtoinfopanel switchToInfoPanel�� *k�l+  � ��)����LM���� .0 switchtonextinfopanel switchToNextInfoPanel�� ��N�� N  ���� 0 	thewindow 	theWindow��  L ���� 0 	thewindow 	theWindowM ����
�� .corecnte****       ****�� &0 switchtoinfopanel switchToInfoPanel�� $b  b   j   *b  k�l+ Y h� ��J����OP���� 60 switchtopreviousinfopanel switchToPreviousInfoPanel�� ��Q�� Q  ���� 0 	thewindow 	theWindow��  O ���� 0 	thewindow 	theWindowP ���� &0 switchtoinfopanel switchToInfoPanel�� b  k *b  k�l+  Y h� ��i����RS���� 00 updatecurrentinfopanel updateCurrentInfoPanel�� ��T�� T  ���� 0 	thewindow 	theWindow��  R ���� 0 	thewindow 	theWindowS ����
�� 
cobj�� 0 updatevalues updateValues�� b   �b  / *�k+ U� �������UV���� 40 validatecurrentinfopanel validateCurrentInfoPanel�� ��W�� W  ���� 0 	thewindow 	theWindow��  U ���� 0 	thewindow 	theWindowV ����
�� 
cobj��  0 validatevalues validateValues�� b   �b  /�k+ � �������XY���� "0 sendinformation sendInformation�� ��Z�� Z  ���� 0 	thewindow 	theWindow��  X ������ 0 	thewindow 	theWindow��  0 theinformation theInformationY ���� 0 reviewsummary reviewSummary�� b  �,E�OP� �������[\���� &0 infopanelwithname infoPanelWithName�� ��]�� ]  ���� 0 thename theName��  [ �������� 0 thename theName�� 0 theinfopanel theInfoPanel�� 0 thepanel thePanel\ ����������
�� 
null
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 infopanelname infoPanelName�� 2�E�O )b   [��l kh ��,�  
�E�OY h[OY��O�ascr  ��ޭ