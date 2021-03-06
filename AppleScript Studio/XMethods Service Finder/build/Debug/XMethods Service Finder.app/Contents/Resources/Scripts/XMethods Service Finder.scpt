FasdUAS 1.101.10   ��   ��    k             l      �� ��    + % XMethods Service Finder.applescript        	  l     ������  ��   	  
  
 l      �� ��    � This is an example that demonstrates how to use Web Services. It utilizes a service from XMethods.org that provides information about all of the services available at their site. It also demonstrates how to create and use data sources for a table view.          l     ������  ��        l      �� ��   '! The strategy used in this script is to populate the "services" list with all of the services avialable (which is also used to populate the "all services" data source. Then whenever a "find" is requested, the "found services" list is filled out the listing found in the "services" list, and then a new temporary data source is created, using the "found services" list to populate it. That data source is then set as the current data source of the table. If the user deletes the search text field, then the data rows of the "found services" data source are removed and the "all services" data source is set to be the current data source of the table view. In essence, it's just a matter of switching in and out the "all services" and "found services" data sources according to the actions of the user.          l     ������  ��        l      �� ��      ==== Properties ====          l     ������  ��        j     �� �� 0 services    J     ����        j    �� �� 0 foundservices foundServices  J    ����         j    
�� !�� &0 servicestableview servicesTableView ! m    	��
�� 
msng    " # " j    �� $�� 0 detailwindow detailWindow $ m    ��
�� 
msng #  % & % l     ������  ��   &  ' ( ' l     ������  ��   (  ) * ) l      �� +��   +    ==== Event Handlers ====     *  , - , l     ������  ��   -  . / . l     �� 0��   0 � z The "launched" event handler is called near the end of the launch sequence. This is a good place to show our main window.    /  1 2 1 l     ������  ��   2  3 4 3 i     5 6 5 I     �� 7��
�� .appSlauNnull���    obj  7 o      ���� 0 	theobject 	theObject��   6 I    �� 8��
�� .appSshoHnull���    obj  8 4     �� 9
�� 
cwin 9 m     : : 
 main   ��   4  ; < ; l     ������  ��   <  = > = l     ������  ��   >  ? @ ? l     �� A��   A � � The "idle" event handler is called on a periodic basis. For our purposes, we are using it to do the initial work of getting all of the services. This is done so that the window will have already been opened and made the active window.    @  B C B l     ������  ��   C  D E D i     F G F I     �� H��
�� .appSidlenull���    obj  H o      ���� 0 	theobject 	theObject��   G k     Y I I  J K J l     �� L��   L $  Only do this once (hopefully)    K  M N M Z     V O P���� O =     Q R Q l    	 S�� S I    	�� T��
�� .corecnte****       **** T o     ���� 0 services  ��  ��   R m   	 
����   P k    R U U  V W V l   �� X��   X > 8 Show the status items in the main window with a message    W  Y Z Y I    �� [���� 0 
showstatus 
showStatus [  \�� \ 4    �� ]
�� 
cwin ] m     ^ ^ 
 main   ��  ��   Z  _ ` _ I    "�� a���� *0 updatestatusmessage updateStatusMessage a  b c b 4    �� d
�� 
cwin d m     e e 
 main    c  f�� f m     g g  Getting Services...   ��  ��   `  h i h l  # #������  ��   i  j k j l  # #�� l��   l 0 * Get the services from the xmethods server    k  m n m r   # . o p o I   # (�������� 0 getservices getServices��  ��   p o      ���� 0 services   n  q r q l  / /������  ��   r  s t s l  / /�� u��   u    Update the status message    t  v w v I   / 9�� x���� *0 updatestatusmessage updateStatusMessage x  y z y 4   0 4�� {
�� 
cwin { m   2 3 | | 
 main    z  }�� } m   4 5 ~ ~  Adding Services...   ��  ��   w   �  l  : :������  ��   �  � � � l  : :�� ���   � * $ Add the services to our data source    �  � � � I   : H�� ����� 20 addservicestodatasource addServicesToDataSource �  � � � o   ; @���� 0 services   �  ��� � 4   @ D�� �
�� 
datS � m   B C � �  all services   ��  ��   �  � � � l  I I������  ��   �  � � � l  I I�� ���   �   Hide the status items    �  ��� � I   I R�� ����� 0 
hidestatus 
hideStatus �  ��� � 4   J N�� �
�� 
cwin � m   L M � � 
 main   ��  ��  ��  ��  ��   N  � � � l  W W������  ��   �  ��� � L   W Y � � m   W X����p��   E  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l     �� ���   � � � The "awake from nib" event handler is called whenever the object attached to this handler is loaded from a nib. It's a great place to do any initialization for a particular object, as it's not necessary to locate the object within it's hierarchy.    �  � � � l     ������  ��   �  � � � i     � � � I     �� ���
�� .appSawFNnull���    obj  � o      ���� 0 	theobject 	theObject��   � Z     N � � ��� � =     � � � n      � � � 1    ��
�� 
pnam � o     ���� 0 	theobject 	theObject � m     � �  services    � k    6 � �  � � � l   �� ���   � ) # Save a reference to the table view    �  � � � r     � � � o    	���� 0 	theobject 	theObject � o      ���� &0 servicestableview servicesTableView �  � � � l   ������  ��   �  � � � l   �� ���   �  y Create a data source that will always contain all of the services, and one that will contain the currently found service    �  � � � I    �� ����� 60 makedatasourcewithcolumns makeDataSourceWithColumns �  � � � m     � �  all services    �  ��� � J     � �  � � � m     � �  publisherid    �  � � � m     � � 
 name    �  � � � m     � �  shortdescription    �  ��� � m     � �  id   ��  ��  ��   �  � � � I    )�� ����� 60 makedatasourcewithcolumns makeDataSourceWithColumns �  � � � m     � �  found services    �  ��� � J    % � �  � � � m      � �  publisherid    �  � � � m     ! � � 
 name    �  � � � m   ! " � �  shortdescription    �  ��� � m   " # � �  id   ��  ��  ��   �  � � � l  * *������  ��   �  � � � l  * *�� ���   � 2 , Use the "all services" data source at first    �  �� � r   * 6 � � � 4   * .�~ �
�~ 
datS � m   , - � �  all services    � n       � � � m   3 5�}
�} 
datS � o   . 3�|�| &0 servicestableview servicesTableView�   �  � � � =  9 @ � � � n   9 < � � � 1   : <�{
�{ 
pnam � o   9 :�z�z 0 	theobject 	theObject � m   < ? � �  detail    �  ��y � k   C J � �  � � � l  C C�x ��x   � 0 * Save a reference to the new detail window    �  ��w � r   C J � � � o   C D�v�v 0 	theobject 	theObject � o      �u�u 0 detailwindow detailWindow�w  �y  ��   �  � � � l     �t�s�t  �s   �    l     �r�q�r  �q    l     �p�p   b \ The "double clicked" event handler is called when someone double clicks on the table view.      l     �o�n�o  �n    i    	
	 I     �m�l
�m .coVSdouCnull���    obj  o      �k�k 0 	theobject 	theObject�l  
 Z     ��j�i =     n      1    �h
�h 
pnam o     �g�g 0 	theobject 	theObject m      services    k    �  l   �f�f   ; 5 Show and update the message items in the main window     I    �e�d�e 0 
showstatus 
showStatus �c n   	  m   
 �b
�b 
cwin o   	 
�a�a 0 	theobject 	theObject�c  �d    I    �`�_�` *0 updatestatusmessage updateStatusMessage  !  n    "#" m    �^
�^ 
cwin# o    �]�] 0 	theobject 	theObject! $�\$ m    %%   Getting Service Details...   �\  �_   &'& l   �[�Z�[  �Z  ' ()( l   �Y*�Y  * , & Get the clicked row of the table view   ) +,+ r     -.- n    /0/ 1    �X
�X 
clDR0 o    �W�W 0 	theobject 	theObject. o      �V�V 0 
thedatarow 
theDataRow, 121 l  ! !�U�T�U  �T  2 343 l  ! !�S5�S  5 2 , Get the name and id of the selected service   4 676 r   ! )898 n   ! ':;: 1   % '�R
�R 
pcnt; n   ! %<=< 4   " %�Q>
�Q 
datC> m   # $??  id   = o   ! "�P�P 0 
thedatarow 
theDataRow9 o      �O�O 0 theserviceid theServiceID7 @A@ r   * 2BCB n   * 0DED 1   . 0�N
�N 
pcntE n   * .FGF 4   + .�MH
�M 
datCH m   , -II 
 name   G o   * +�L�L 0 
thedatarow 
theDataRowC o      �K�K  0 theservicename theServiceNameA JKJ l  3 3�J�I�J  �I  K LML l  3 3�HN�H  N ) # See if the listing is already open   M OPO r   3 ;QRQ I   3 9�GS�F�G *0 findwindowwithtitle findWindowWithTitleS T�ET o   4 5�D�D  0 theservicename theServiceName�E  �F  R o      �C�C 0 	thewindow 	theWindowP UVU Z   < ~WX�BYW >  < ?Z[Z o   < =�A�A 0 	thewindow 	theWindow[ m   = >�@
�@ 
msngX k   B G\\ ]^] l  B B�?_�?  _ !  Just bring it to the front   ^ `�>` I  B G�=a�<
�= .appSshoHnull���    obj a o   B C�;�; 0 	thewindow 	theWindow�<  �>  �B  Y k   J ~bb cdc l  J J�:e�:  e ; 5 Load a new instance of the detail window and show it   d fgf I  J O�9h�8
�9 .appSloaNnull���    obj h m   J Kii  ServiceDetail   �8  g jkj r   P [lml o   P Q�7�7  0 theservicename theServiceNamem n      non 1   V Z�6
�6 
titlo o   Q V�5�5 0 detailwindow detailWindowk pqp l  \ \�4�3�4  �3  q rsr l  \ \�2t�2  t : 4 Load the service detail and update it in the window   s uvu r   \ hwxw I   \ f�1y�0�1 00 getservicedetailwithid getServiceDetailWithIDy z�/z c   ] b{|{ o   ] ^�.�. 0 theserviceid theServiceID| m   ^ a�-
�- 
TEXT�/  �0  x o      �,�, $0 theservicedetail theServiceDetailv }~} I   i t�+�*�+ :0 updateservicedetailinwindow updateServiceDetailInWindow ��� o   j k�)�) $0 theservicedetail theServiceDetail� ��(� o   k p�'�' 0 detailwindow detailWindow�(  �*  ~ ��� l  u u�&�%�&  �%  � ��� l  u u�$��$  �   Show the window   � ��#� I  u ~�"��!
�" .appSshoHnull���    obj � o   u z� �  0 detailwindow detailWindow�!  �#  V ��� l   ���  �  � ��� l   ���  �   Hide the status items   � ��� I    ����� 0 
hidestatus 
hideStatus� ��� n   � ���� m   � ��
� 
cwin� o   � ��� 0 	theobject 	theObject�  �  �  �j  �i   ��� l     ���  �  � ��� l     ���  �  � ��� l     ���  � � � The "action" event handler is called when someone chooses a menu item from the popup button. In this case the script will just cause another "find" to happen.   � ��� l     ���  �  � ��� i    !��� I     ���
� .coVSactTnull���    obj � o      �� 0 	theobject 	theObject�  � I     ���� 0 find  � ��
� n    ��� m    �	
�	 
cwin� o    �� 0 	theobject 	theObject�
  �  � ��� l     ���  �  � ��� i   " %��� I     ���
� .daVScolCnull���    obj � o      �� 0 	theobject 	theObject� ���
� 
tabC� o      �� 0 tablecolumn tableColumn�  � k     S�� ��� l     � ��   � , & Get the data source of the table view   � ��� r     ��� n     ��� m    ��
�� 
datS� o     ���� 0 	theobject 	theObject� o      ���� 0 thedatasource theDataSource� ��� l   ������  ��  � ��� l   �����  � 5 / Get the identifier of the clicked table column   � ��� r    ��� n    	��� 1    	��
�� 
ideT� o    ���� 0 tablecolumn tableColumn� o      ���� *0 thecolumnidentifier theColumnIdentifier� ��� l   ������  ��  � ��� l   �����  � 5 / Get the current sort column of the data source   � ��� Q    M���� k    =�� ��� r    ��� n    ��� 1    ��
�� 
sorC� o    ���� 0 thedatasource theDataSource� o      ���� 0 thesortcolumn theSortColumn� ��� l   ������  ��  � ��� l   �����  � c ] If the current sort column is not the same as the clicked column then switch the sort column   � ���� Z    =������ >   ��� l   ���� n    ��� 1    ��
�� 
pnam� o    ���� 0 thesortcolumn theSortColumn��  � o    ���� *0 thecolumnidentifier theColumnIdentifier� r    %��� n    !��� 4    !���
�� 
datB� o     ���� *0 thecolumnidentifier theColumnIdentifier� o    ���� 0 thedatasource theDataSource� l     ���� n      ��� 1   " $��
�� 
sorC� o   ! "���� 0 thedatasource theDataSource��  ��  � k   ( =�� ��� l  ( (�����  � &   Otherwise change the sort order   � ���� Z   ( =������ =  ( -��� n   ( +��� 1   ) +��
�� 
sorO� o   ( )���� 0 thesortcolumn theSortColumn� m   + ,��
�� ESoDascN� r   0 5��� m   0 1��
�� ESoDdesE� n      ��� 1   2 4��
�� 
sorO� o   1 2���� 0 thesortcolumn theSortColumn��  � r   8 =��� m   8 9��
�� ESoDascN� n      ��� 1   : <��
�� 
sorO� o   9 :���� 0 thesortcolumn theSortColumn��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � r   E M� � n   E I 4   F I��
�� 
datB o   G H���� *0 thecolumnidentifier theColumnIdentifier o   E F���� 0 thedatasource theDataSource  n       1   J L��
�� 
sorC o   I J���� 0 thedatasource theDataSource�  l  N N������  ��   	 l  N N��
��  
 ? 9 We need to update the table view (so it will be redrawn)   	 �� I  N S����
�� .appSfupdnull���    obj  o   N O���� 0 	theobject 	theObject��  ��  �  l     ������  ��    l     ������  ��    l      ����     ==== Handlers ====      l     ������  ��    l     ����   z t This handler will show the status items in the main window. It also starts the animation of the progress indicator.     l     ������  ��    i   & ) I      ������ 0 
showstatus 
showStatus  ��  o      ���� 0 	thewindow 	theWindow��  ��   O     (!"! k    '## $%$ l   ��&��  & 1 + Show the text field and progress indicator   % '(' r    )*) m    ��
�� boovtrue* n      +,+ 1   	 ��
�� 
pvis, 4    	��-
�� 
texF- m    ..  status   ( /0/ r    121 m    ��
�� boovtrue2 n      343 1    ��
�� 
pvis4 4    ��5
�� 
proI5 m    66  progress   0 787 l   ������  ��  8 9:9 l   ��;��  ; ; 5 Make sure it's using threaded animation and start it   : <=< r    >?> m    ��
�� boovtrue? n      @A@ 1    ��
�� 
usTAA 4    ��B
�� 
proIB m    CC  progress   = D��D I   '��E��
�� .coVSstaAnull���    obj E 4    #��F
�� 
proIF m   ! "GG  progress   ��  ��  " o     ���� 0 	thewindow 	theWindow HIH l     ������  ��  I JKJ l     ������  ��  K LML l     ��N��  N y s This handler will hide the status items in the main window. It also stops the animation of the progress indicator.   M OPO l     ������  ��  P QRQ i   * -STS I      ��U���� 0 
hidestatus 
hideStatusU V��V o      ���� 0 	thewindow 	theWindow��  ��  T O     WXW k    YY Z[Z l   ��\��  \ 1 + Hide the text field and progress indicator   [ ]^] r    _`_ m    ��
�� boovfals` n      aba 1   	 ��
�� 
pvisb 4    	��c
�� 
texFc m    dd  status   ^ efe r    ghg m    ��
�� boovfalsh n      iji 1    ��
�� 
pvisj 4    ��k
�� 
proIk m    ll  progress   f mnm l   ������  ��  n opo l   ��q��  q "  Stop the progress indicator   p r��r I   ��s��
�� .coVSstoTnull���    obj s 4    ��t
�� 
proIt m    uu  progress   ��  ��  X o     ���� 0 	thewindow 	theWindowR vwv l     ������  ��  w xyx l     ������  ��  y z{z l     ��|��  | C = This handler will update the contents of the status message.   { }~} l     ������  ��  ~ � i   . 1��� I      ������� *0 updatestatusmessage updateStatusMessage� ��� o      ���� 0 	thewindow 	theWindow� ���� o      ���� 0 
themessage 
theMessage��  ��  � r     ��� o     ���� 0 
themessage 
theMessage� n      ��� 1    �
� 
pcnt� n    ��� 4    �~�
�~ 
texF� m    ��  status   � o    �}�} 0 	thewindow 	theWindow� ��� l     �|�{�|  �{  � ��� l     �z�y�z  �y  � ��� l     �x��x  � n h The "find" handler is used to query the data source based on the state of where, how, and what to find.   � ��� l     �w�v�w  �v  � ��� i   2 5��� I      �u��t�u 0 find  � ��s� o      �r�r 0 	thewindow 	theWindow�s  �t  � k     ��� ��� l     �q��q  � 5 / Show and update the status items in the window   � ��� I     �p��o�p 0 
showstatus 
showStatus� ��n� o    �m�m 0 	thewindow 	theWindow�n  �o  � ��� I    �l��k�l *0 updatestatusmessage updateStatusMessage� ��� o    	�j�j 0 	thewindow 	theWindow� ��i� m   	 
��  Finding Services...   �i  �k  � ��� l   �h�g�h  �g  � ��� l   �f��f  � 7 1 Get the where, how, and what to find form the UI   � ��� O    .��� k    -�� ��� r    ��� n    ��� 1    �e
�e 
titl� 4    �d�
�d 
popB� m    ��  where   � o      �c�c 0 	findwhere 	findWhere� ��� r    $��� n    "��� 1     "�b
�b 
titl� 4     �a�
�a 
popB� m    �� 	 how   � o      �`�` 0 findhow findHow� ��_� r   % -��� n   % +��� 1   ) +�^
�^ 
pcnt� 4   % )�]�
�] 
texF� m   ' (�� 
 what   � o      �\�\ 0 findwhat findWhat�_  � o    �[�[ 0 	thewindow 	theWindow� ��� l  / /�Z�Y�Z  �Y  � ��� l  / /�X��X  � e _ If there isn't anything specified in the "what", then switch in the "all services" data source   � ��� Z   / ����W�� =  / 2��� o   / 0�V�V 0 findwhat findWhat� m   0 1��      � k   5 K�� ��� r   5 A��� 4   5 9�U�
�U 
datS� m   7 8��  all services   � n      ��� m   > @�T
�T 
datS� o   9 >�S�S &0 servicestableview servicesTableView� ��R� I  B K�Q��P
�Q .appSfupdnull���    obj � o   B G�O�O &0 servicestableview servicesTableView�P  �R  �W  � k   N ��� ��� l  N N�N��N  � , & Otherwise, find the matching services   � ��� r   N \��� I   N V�M��L�M 0 findservices findServices� ��� o   O P�K�K 0 	findwhere 	findWhere� ��� o   P Q�J�J 0 findhow findHow� ��I� o   Q R�H�H 0 findwhat findWhat�I  �L  � o      �G�G 0 foundservices foundServices� ��� l  ] ]�F�E�F  �E  � ��� l  ] ]�D��D  � R L Turn off the updating of the table view while we manipulate the data source   � ��� r   ] g��� m   ] ^�C
�C boovfals� n      ��� 1   b f�B
�B 
updV� 4   ^ b�A�
�A 
datS� m   ` a    found services   �  l  h h�@�?�@  �?    l  h h�>�>   5 / Delete all of the data rows in the data source     I  h v�=�<
�= .coredelonull���    obj  n   h r	
	 2   n r�;
�; 
datR
 4   h n�:
�: 
datS m   j m  found services   �<    l  w w�9�8�9  �8    l  w w�7�7   i c Make sure that we have at least one found web service and then add the services to the data source     Z   w ��6�5 ?   w � l  w ��4 I  w ��3�2
�3 .corecnte****       **** o   w |�1�1 0 foundservices foundServices�2  �4   m   � ��0�0   I   � ��/�.�/ 20 addservicestodatasource addServicesToDataSource  o   � ��-�- 0 foundservices foundServices �, 4   � ��+
�+ 
datS m   � �  found services   �,  �.  �6  �5    !  l  � ��*�)�*  �)  ! "#" l  � ��($�(  $ F @ Switch in the "found  services" data source into the table view   # %&% r   � �'(' 4   � ��')
�' 
datS) m   � �**  found services   ( n      +,+ m   � ��&
�& 
datS, o   � ��%�% &0 servicestableview servicesTableView& -.- l  � ��$�#�$  �#  . /0/ l  � ��"1�"  1 2 , Turn back on the updating of the table view   0 2�!2 r   � �343 m   � �� 
�  boovtrue4 n      565 1   � ��
� 
updV6 4   � ��7
� 
datS7 m   � �88  found services   �!  � 9:9 l  � ����  �  : ;<; l  � ��=�  =   Hide the status items   < >�> I   � ��?�� 0 
hidestatus 
hideStatus? @�@ o   � ��� 0 	thewindow 	theWindow�  �  �  � ABA l     ���  �  B CDC l     ���  �  D EFE l     �G�  G j d This is a utility handler that will create a new data source with the given name and columns names.   F HIH l     ���  �  I JKJ i   6 9LML I      �N�� 60 makedatasourcewithcolumns makeDataSourceWithColumnsN OPO o      �� 0 thename theNameP Q�Q o      �
�
  0 thecolumnnames theColumnNames�  �  M k     eRR STS l     �	U�	  U   Make the data source   T VWV I    ��X
� .corecrel****      � null�  X �YZ
� 
koclY m    �
� 
datSZ �[\
� 
insh[ l   ]�] n    ^_^  ;    _ l   `�` 2   �
� 
datS�  �  \ � a��
�  
prdta K   	 bb ��c��
�� 
pnamc o   
 ���� 0 thename theName��  ��  W ded l   ������  ��  e fgf l   ��h��  h   Add the data columns   g iji X    Ck��lk I  " >����m
�� .corecrel****      � null��  m ��no
�� 
kocln m   $ %��
�� 
datBo ��pq
�� 
inshp l  & -r��r n   & -sts  ;   , -t l  & ,u��u n   & ,vwv 2  * ,��
�� 
datBw 4   & *��x
�� 
datSx o   ( )���� 0 thename theName��  ��  q ��y��
�� 
prdty K   . :zz ��{|
�� 
pnam{ o   / 0���� 0 
columnname 
columnName| ��}~
�� 
sorO} m   1 2��
�� ESoDascN~ ���
�� 
sorT m   3 4��
�� ESoTalpB� �����
�� 
soCS� m   5 6��
�� EScScasI��  ��  �� 0 
columnname 
columnNamel o    ����  0 thecolumnnames theColumnNamesj ��� l  D D������  ��  � ��� l  D D�����  � 2 , Set the first column to be  the sort column   � ��� r   D X��� n   D O��� 4   H O���
�� 
datB� l  I N���� n   I N��� 4   J M���
�� 
cobj� m   K L���� � o   I J����  0 thecolumnnames theColumnNames��  � 4   D H���
�� 
datS� o   F G���� 0 thename theName� n      ��� 1   S W��
�� 
sorC� 4   O S���
�� 
datS� o   Q R���� 0 thename theName� ��� l  Y Y������  ��  � ��� l  Y Y�����  � "  Make the data source sorted   � ��� r   Y c��� m   Y Z��
�� boovtrue� n      ��� 1   ^ b��
�� 
sorR� 4   Z ^���
�� 
datS� o   \ ]���� 0 thename theName� ���� l  d d������  ��  ��  K ��� l     ������  ��  � ��� l     ������  ��  � ��� l     �����  � S M This handler adds the records to the data source using the "append" command.   � ��� l     ������  ��  � ��� i   : =��� I      ������� 20 addservicestodatasource addServicesToDataSource� ��� o      ���� 0 theservices theServices� ���� o      ���� 0 thedatasource theDataSource��  ��  � k     �� ��� l     �����  � 2 , Turn off updating the associated table view   � ��� r     ��� m     ��
�� boovfals� n      ��� 1    ��
�� 
updV� o    ���� 0 thedatasource theDataSource� ��� l   ������  ��  � ��� l   �����  � ) # Add the records to the data source   � ��� I   ����
�� .daVSappPnull���    obj � o    ���� 0 thedatasource theDataSource� �����
�� 
with� o    	���� 0 theservices theServices��  � ��� l   ������  ��  � ��� l   �����  � 2 , Turn the updating of the table view back on   � ���� r    ��� m    ��
�� boovtrue� n      ��� 1    ��
�� 
updV� o    ���� 0 thedatasource theDataSource��  � ��� l     ������  ��  � ��� l     ������  ��  � ��� l     �����  � w q This is handler will do the actual searching of the "services" list based on the where, how and what parameters.   � ��� l     ������  ��  � ��� i   > A��� I      ������� 0 findservices findServices� ��� o      ���� 0 	findwhere 	findWhere� ��� o      ���� 0 findhow findHow� ���� o      ���� 0 findwhat findWhat��  ��  � k    ��� ��� l     �����  � &   Set the result to an empty list   � ��� r     ��� J     ����  � o      ���� 0 theservices theServices� ��� l   ������  ��  � ��� l   �����  � E ? Determine which field of the record to search based on "where"   � ��� Z   ������� =   ��� o    ���� 0 	findwhere 	findWhere� m    ��  	Publisher   � X    ����� k    z�� ��� r    $� � n    " o     "���� 0 publisherid   o     ���� 0 service    o      ���� 0 thevalue theValue� �� Z   % z�� F   % 0 =  % (	
	 o   % &���� 0 findhow findHow
 m   & '  begins with    C  + . o   + ,���� 0 thevalue theValue o   , -���� 0 findwhat findWhat s   3 7 o   3 4���� 0 service   l     �� n        ;   5 6 o   4 5���� 0 theservices theServices��    F   : E =  : = o   : ;���� 0 findhow findHow m   ; <  contains    E   @ C o   @ A���� 0 thevalue theValue o   A B���� 0 findwhat findWhat  s   H L o   H I���� 0 service   l      ��  n      !"!  ;   J K" o   I J���� 0 theservices theServices��   #$# F   O Z%&% =  O R'(' o   O P���� 0 findhow findHow( m   P Q))  	ends with   & D   U X*+* o   U V���� 0 thevalue theValue+ o   V W���� 0 findwhat findWhat$ ,-, s   ] a./. o   ] ^���� 0 service  / l     0��0 n      121  ;   _ `2 o   ^ _�� 0 theservices theServices��  - 343 F   d o565 =  d g787 o   d e�~�~ 0 findhow findHow8 m   e f99  is   6 =  j m:;: o   j k�}�} 0 thevalue theValue; o   k l�|�| 0 findwhat findWhat4 <�{< s   r v=>= o   r s�z�z 0 service  > l     ?�y? n      @A@  ;   t uA o   s t�x�x 0 theservices theServices�y  �{  ��  ��  �� 0 service  � o    �w�w 0 services  � BCB =  � �DED o   � ��v�v 0 	findwhere 	findWhereE m   � �FF  Service Name   C GHG X   � �I�uJI k   � �KK LML r   � �NON n   � �PQP o   � ��t�t 0 name  Q o   � ��s�s 0 service  O o      �r�r 0 thevalue theValueM R�qR Z   � �STU�pS F   � �VWV =  � �XYX o   � ��o�o 0 findhow findHowY m   � �ZZ  begins with   W C  � �[\[ o   � ��n�n 0 thevalue theValue\ o   � ��m�m 0 findwhat findWhatT s   � �]^] o   � ��l�l 0 service  ^ l     _�k_ n      `a`  ;   � �a o   � ��j�j 0 theservices theServices�k  U bcb F   � �ded =  � �fgf o   � ��i�i 0 findhow findHowg m   � �hh  contains   e E   � �iji o   � ��h�h 0 thevalue theValuej o   � ��g�g 0 findwhat findWhatc klk s   � �mnm o   � ��f�f 0 service  n l     o�eo n      pqp  ;   � �q o   � ��d�d 0 theservices theServices�e  l rsr F   � �tut =  � �vwv o   � ��c�c 0 findhow findHoww m   � �xx  	ends with   u D   � �yzy o   � ��b�b 0 thevalue theValuez o   � ��a�a 0 findwhat findWhats {|{ s   � �}~} o   � ��`�` 0 service  ~ l     �_ n      ���  ;   � �� o   � ��^�^ 0 theservices theServices�_  | ��� F   � ���� =  � ���� o   � ��]�] 0 findhow findHow� m   � ���  is   � =  � ���� o   � ��\�\ 0 thevalue theValue� o   � ��[�[ 0 findwhat findWhat� ��Z� s   � ���� o   � ��Y�Y 0 service  � l     ��X� n      ���  ;   � �� o   � ��W�W 0 theservices theServices�X  �Z  �p  �q  �u 0 service  J o   � ��V�V 0 services  H ��� =  ���� o   � �U�U 0 	findwhere 	findWhere� m   ��  Description   � ��T� X  ���S�� k  ��� ��� r  "��� n   ��� o   �R�R 0 shortdescription  � o  �Q�Q 0 service  � o      �P�P 0 thevalue theValue� ��O� Z  #�����N� F  #0��� = #(��� o  #$�M�M 0 findhow findHow� m  $'��  begins with   � C +.��� o  +,�L�L 0 thevalue theValue� o  ,-�K�K 0 findwhat findWhat� s  37��� o  34�J�J 0 service  � l     ��I� n      ���  ;  56� o  45�H�H 0 theservices theServices�I  � ��� F  :G��� = :?��� o  :;�G�G 0 findhow findHow� m  ;>��  contains   � E  BE��� o  BC�F�F 0 thevalue theValue� o  CD�E�E 0 findwhat findWhat� ��� s  JN��� o  JK�D�D 0 service  � l     ��C� n      ���  ;  LM� o  KL�B�B 0 theservices theServices�C  � ��� F  Q^��� = QV��� o  QR�A�A 0 findhow findHow� m  RU��  	ends with   � D  Y\��� o  YZ�@�@ 0 thevalue theValue� o  Z[�?�? 0 findwhat findWhat� ��� s  ae��� o  ab�>�> 0 service  � l     ��=� n      ���  ;  cd� o  bc�<�< 0 theservices theServices�=  � ��� F  hu��� = hm��� o  hi�;�; 0 findhow findHow� m  il��  is   � = ps��� o  pq�:�: 0 thevalue theValue� o  qr�9�9 0 findwhat findWhat� ��8� s  x|��� o  xy�7�7 0 service  � l     ��6� n      ���  ;  z{� o  yz�5�5 0 theservices theServices�6  �8  �N  �O  �S 0 service  � o  
�4�4 0 services  �T  ��  � ��� l ���3�2�3  �2  � ��� l ���1��1  � * $ Return the services that were found   � ��0� L  ���� o  ���/�/ 0 theservices theServices�0  � ��� l     �.�-�.  �-  � ��� l     �,�+�,  �+  � ��� l     �*��*  � � � This handler is called when the user has double clicked on one of the services in the table view. It will update the UI elements in the specified detail window with the given service detail record.   � ��� l     �)�(�)  �(  � ��� i   B E��� I      �'��&�' :0 updateservicedetailinwindow updateServiceDetailInWindow� ��� o      �%�% $0 theservicedetail theServiceDetail� ��$� o      �#�# 0 	thewindow 	theWindow�$  �&  � O     Y��� k    X�� ��� l   �"��"  � k e Update the contents of each of the text fields with the corresponding fields from the detail record.   � ��� r    � � n     o    �!�! 0 name   o    � �  $0 theservicedetail theServiceDetail  n       1    �
� 
pcnt 4    �
� 
texF m   	 
 
 name   �  r    	
	 n     o    �� 0 shortdescription   o    �� $0 theservicedetail theServiceDetail
 n       1    �
� 
pcnt 4    �
� 
texF m      description     r    $ n     o    �� 0 publisherid   o    �� $0 theservicedetail theServiceDetail n       1   ! #�
� 
pcnt 4    !�
� 
texF m       	publisher     r   % / n   % (  o   & (�� 	0 email    o   % &�� $0 theservicedetail theServiceDetail n      !"! 1   , .�
� 
pcnt" 4   ( ,�#
� 
texF# m   * +$$  email    %&% l  0 0�'�  ' J Dset contents of text field "info url" to infourl of theServiceDetail   & ()( r   0 :*+* n   0 3,-, o   1 3�� 0 wsdlurl  - o   0 1�� $0 theservicedetail theServiceDetail+ n      ./. 1   7 9�
� 
pcnt/ 4   3 7�0
� 
texF0 m   5 611  wsdl url   ) 232 l  ; ;���  �  3 454 l  ; ;�
6�
  6 7 1 Check to see if we actually have a "note" field.   5 7�	7 Z   ; X89��8 >  ; @:;: n   ; ><=< o   < >�� 	0 notes  = o   ; <�� $0 theservicedetail theServiceDetail; m   > ?>>  <<nil not supported>>   9 r   C T?@? n   C FABA o   D F�� 	0 notes  B o   C D�� $0 theservicedetail theServiceDetail@ n      CDC 1   Q S�
� 
pcntD n   F QEFE 4   J Q�G
� 
texVG m   M PHH  notes   F 4   F J� I
�  
scrVI m   H IJJ  notes   �  �  �	  � o     ���� 0 	thewindow 	theWindow� KLK l     ������  ��  L MNM l     ������  ��  N OPO l      ��Q��  Q ' ! ==== Web Services Handlers ====    P RSR l     ������  ��  S TUT l     ��V��  V � { The "getServices" handler is used to get a list of records that describes all of the services available from XMethods.org.   U WXW l     ������  ��  X YZY i   F I[\[ I      �������� 0 getservices getServices��  ��  \ k     *]] ^_^ l     ��`��  ` &   Set the result to an empty list   _ aba r     cdc J     ����  d o      ���� 0 theservices theServicesb efe l   ������  ��  f ghg l   ��i��  i / ) Get the list of services from the server   h jkj Q    'lm��l O    non r    pqp I   ��r��
�� .rpc SOAPlist       recor K    ss ��tu
�� 
metht m    vv  getAllServiceSummaries   u ��wx
�� 
mspuw m    yy . (http://www.xmethods.net/interfaces/query   x ��z{
�� 
parmz J    ����  { ��|��
�� 
sact| m    }}      ��  ��  q o      ���� 0 theservices theServiceso m    	~~ �null     ߀                                                                      BAD*@  aprlhttp://www.xmethods.net/interfaces/querym R      ������
�� .ascrerr ****      � ****��  ��  ��  k � l  ( (������  ��  � ��� l  ( (�����  � "  Return the list of services   � ���� L   ( *�� o   ( )���� 0 theservices theServices��  Z ��� l     ������  ��  � ��� l     ������  ��  � ��� l     �����  � � } The "getServiceDetailWithID" handler will return a record that contains the details about the service with the specified ID.   � ��� l     ������  ��  � ��� i   J M��� I      ������� 00 getservicedetailwithid getServiceDetailWithID� ���� o      ���� 0 theserviceid theServiceID��  ��  � k     4�� ��� l     �����  � &   Set the result to a known value   � ��� r     ��� m     ��
�� 
msng� o      ���� 0 	thedetail 	theDetail� ��� l   ������  ��  � ��� l   �����  � � � We need to convert the supplied service id as plain text (as it is given as unicode text). This is a workaround for a known bug in the "call soap" command, as it can not except unicode or styled text at this time.   � ��� r    ��� I    
������� 0 getplaintext getPlainText� ���� o    ���� 0 theserviceid theServiceID��  ��  � o      ���� 0 theserviceid theServiceID� ��� l   ������  ��  � ��� l   �����  � - ' Get the detailed info from the server.   � ��� Q    1����� O    (��� r    '��� I   %�����
�� .rpc SOAPlist       reco� K    !�� ����
�� 
meth� m    ��  getServiceDetail   � ����
�� 
mspu� m    �� . (http://www.xmethods.net/interfaces/query   � ����
�� 
parm� K    �� ������� 0 id  � o    ���� 0 theserviceid theServiceID��  � �����
�� 
sact� m    ��      ��  ��  � o      ���� 0 	thedetail 	theDetail� m    ~� R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l  2 2������  ��  � ��� l  2 2�����  � . ( Return the requested detail information   � ���� L   2 4�� o   2 3���� 0 	thedetail 	theDetail��  � ��� l     ������  ��  � ��� l     ������  ��  � ��� l      �����  � "  ==== Utility Handlers ====    � ��� l     ������  ��  � ��� l     �����  � [ U This is a utility handler that will simply find the window with the specified title.   � ��� l     ������  ��  � ��� i   N Q��� I      ������� *0 findwindowwithtitle findWindowWithTitle� ���� o      ���� 0 thetitle theTitle��  ��  � k     *�� ��� r     ��� m     ��
�� 
msng� o      ���� 0 	thewindow 	theWindow� ��� l   ������  ��  � ��� r    ��� 6   ��� 2    ��
�� 
cwin� =   ��� 1   	 ��
�� 
titl� o    ���� 0 thetitle theTitle� o      ���� 0 
thewindows 
theWindows� ��� Z    '������� ?    ��� l   ���� I   �����
�� .corecnte****       ****� o    ���� 0 
thewindows 
theWindows��  ��  � m    ����  � r    #��� n    !��� 4    !���
�� 
cobj� m     ���� � o    ���� 0 
thewindows 
theWindows� o      ���� 0 	thewindow 	theWindow��  ��  � ��� l  ( (������  ��  � ���� L   ( *�� o   ( )���� 0 	thewindow 	theWindow��  � ��� l     ������  ��  �    l     ����   f ` This is a workaround that will convert the given unicode text into plain text (not styled text)     l     ������  ��    i   R U I      ��	���� 0 getplaintext getPlainText	 
��
 o      �� &0 fromunicodestring fromUnicodeString��  ��   k       r      c      o     �~�~ &0 fromunicodestring fromUnicodeString m    �}
�} 
TEXT o      �|�| 0 
styledtext 
styledText  r     c    	 o    �{�{ 0 
styledtext 
styledText m    �z
�z 
reco o      �y�y 0 styledrecord styledRecord �x L     n     m    �w
�w 
ktxt o    �v�v 0 styledrecord styledRecord�x    l     �u�t�u  �t    l      �s �s   	2	, � Copyright 2004 Apple Computer, Inc. All rights reserved.

IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc. (�Apple�) in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this Apple software constitutes acceptance of these terms.  If you do not agree with these terms, please do not use, install, modify or redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Apple grants you a personal, non-exclusive license, under Apple�s copyrights in this original Apple software (the �Apple Software�), to use, reproduce, modify and redistribute the Apple Software, with or without modifications, in source and/or binary forms; provided that if you redistribute the Apple Software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the Apple Software.  Neither the name, trademarks, service marks or logos of Apple Computer, Inc. may be used to endorse or promote products derived from the Apple Software without specific prior written permission from Apple.  Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. 

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     !"! l     �r�q�r  �q  " #$# l     �p�o�p  �o  $ %�n% j   V \�m&�m 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier& m   V Y'' ) #XMethods Service Finder.applescript   �n       �l()*�k�j+,-./0123456789:;<'�l  ( �i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�i 0 services  �h 0 foundservices foundServices�g &0 servicestableview servicesTableView�f 0 detailwindow detailWindow
�e .appSlauNnull���    obj 
�d .appSidlenull���    obj 
�c .appSawFNnull���    obj 
�b .coVSdouCnull���    obj 
�a .coVSactTnull���    obj 
�` .daVScolCnull���    obj �_ 0 
showstatus 
showStatus�^ 0 
hidestatus 
hideStatus�] *0 updatestatusmessage updateStatusMessage�\ 0 find  �[ 60 makedatasourcewithcolumns makeDataSourceWithColumns�Z 20 addservicestodatasource addServicesToDataSource�Y 0 findservices findServices�X :0 updateservicedetailinwindow updateServiceDetailInWindow�W 0 getservices getServices�V 00 getservicedetailwithid getServiceDetailWithID�U *0 findwindowwithtitle findWindowWithTitle�T 0 getplaintext getPlainText�S 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier) �R�Q�R  �Q  * �P�O�P  �O  
�k 
msng
�j 
msng+ �N 6�M�L=>�K
�N .appSlauNnull���    obj �M 0 	theobject 	theObject�L  = �J�J 0 	theobject 	theObject> �I :�H
�I 
cwin
�H .appSshoHnull���    obj �K 	*��/j , �G G�F�E?@�D
�G .appSidlenull���    obj �F 0 	theobject 	theObject�E  ? �C�C 0 	theobject 	theObject@ �B�A ^�@ e g�?�> | ~�= ��< ��;�:
�B .corecnte****       ****
�A 
cwin�@ 0 
showstatus 
showStatus�? *0 updatestatusmessage updateStatusMessage�> 0 getservices getServices
�= 
datS�< 20 addservicestodatasource addServicesToDataSource�; 0 
hidestatus 
hideStatus�:p�D Zb   j  j  I**��/k+ O**��/�l+ O*j+ Ec   O**��/�l+ O*b   *��/l+ O**��/k+ Y hO�- �9 ��8�7AB�6
�9 .appSawFNnull���    obj �8 0 	theobject 	theObject�7  A �5�5 0 	theobject 	theObjectB �4 � � � � � ��3�2 � � � � ��1 � �
�4 
pnam�3 �2 60 makedatasourcewithcolumns makeDataSourceWithColumns
�1 
datS�6 O��,�  3�Ec  O*������vl+ O*������vl+ O*��/b  �,FY ��,a   �Ec  Y h. �0
�/�.CD�-
�0 .coVSdouCnull���    obj �/ 0 	theobject 	theObject�.  C �,�+�*�)�(�'�, 0 	theobject 	theObject�+ 0 
thedatarow 
theDataRow�* 0 theserviceid theServiceID�)  0 theservicename theServiceName�( 0 	thewindow 	theWindow�' $0 theservicedetail theServiceDetailD �&�%�$%�#�"�!?� I���i������
�& 
pnam
�% 
cwin�$ 0 
showstatus 
showStatus�# *0 updatestatusmessage updateStatusMessage
�" 
clDR
�! 
datC
�  
pcnt� *0 findwindowwithtitle findWindowWithTitle
� 
msng
� .appSshoHnull���    obj 
� .appSloaNnull���    obj 
� 
titl
� 
TEXT� 00 getservicedetailwithid getServiceDetailWithID� :0 updateservicedetailinwindow updateServiceDetailInWindow� 0 
hidestatus 
hideStatus�- ���,�  �*��,k+ O*��,�l+ O��,E�O���/�,E�O���/�,E�O*�k+ E�O�� 
�j Y 6�j O�b  a ,FO*�a &k+ E�O*�b  l+ Ob  j O*��,k+ Y h/ ����EF�
� .coVSactTnull���    obj � 0 	theobject 	theObject�  E �� 0 	theobject 	theObjectF ��
� 
cwin� 0 find  � 	*��,k+ 0 ����GH�
� .daVScolCnull���    obj � 0 	theobject 	theObject� ��
�	
� 
tabC�
 0 tablecolumn tableColumn�	  G ������ 0 	theobject 	theObject� 0 tablecolumn tableColumn� 0 thedatasource theDataSource� *0 thecolumnidentifier theColumnIdentifier� 0 thesortcolumn theSortColumnH ���� ��������������
� 
datS
� 
ideT
� 
sorC
�  
pnam
�� 
datB
�� 
sorO
�� ESoDascN
�� ESoDdesE��  ��  
�� .appSfupdnull���    obj � T��,E�O��,E�O 3��,E�O��,� ��/��,FY ��,�  
��,FY ��,FW X  	��/��,FO�j 
1 ������IJ���� 0 
showstatus 
showStatus�� ��K�� K  ���� 0 	thewindow 	theWindow��  I ���� 0 	thewindow 	theWindowJ 	��.����6C��G��
�� 
texF
�� 
pvis
�� 
proI
�� 
usTA
�� .coVSstaAnull���    obj �� )� %e*��/�,FOe*��/�,FOe*��/�,FO*��/j U2 ��T����LM���� 0 
hidestatus 
hideStatus�� ��N�� N  ���� 0 	thewindow 	theWindow��  L ���� 0 	thewindow 	theWindowM ��d����lu��
�� 
texF
�� 
pvis
�� 
proI
�� .coVSstoTnull���    obj ��  � f*��/�,FOf*��/�,FO*��/j U3 �������OP���� *0 updatestatusmessage updateStatusMessage�� ��Q�� Q  ������ 0 	thewindow 	theWindow�� 0 
themessage 
theMessage��  O ������ 0 	thewindow 	theWindow�� 0 
themessage 
theMessageP �����
�� 
texF
�� 
pcnt�� 	����/�,F4 �������RS���� 0 find  �� ��T�� T  ���� 0 	thewindow 	theWindow��  R ���������� 0 	thewindow 	theWindow�� 0 	findwhere 	findWhere�� 0 findhow findHow�� 0 findwhat findWhatS ������������������������ ����������*8���� 0 
showstatus 
showStatus�� *0 updatestatusmessage updateStatusMessage
�� 
popB
�� 
titl
�� 
texF
�� 
pcnt
�� 
datS
�� .appSfupdnull���    obj �� 0 findservices findServices
�� 
updV
�� 
datR
�� .coredelonull���    obj 
�� .corecnte****       ****�� 20 addservicestodatasource addServicesToDataSource�� 0 
hidestatus 
hideStatus�� �*�k+  O*��l+ O� *��/�,E�O*��/�,E�O*��/�,E�UO��  *��/b  �,FOb  j Y i*���m+ Ec  Of*��/a ,FO*�a /a -j Ob  j j *b  *�a /l+ Y hO*�a /b  �,FOe*�a /a ,FO*�k+ 5 ��M����UV���� 60 makedatasourcewithcolumns makeDataSourceWithColumns�� ��W�� W  ������ 0 thename theName��  0 thecolumnnames theColumnNames��  U �������� 0 thename theName��  0 thecolumnnames theColumnNames�� 0 
columnname 
columnNameV ��������������������������������������
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
cobj
�� .corecnte****       ****
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
�� EScScasI�� 
�� 
sorC
�� 
sorR�� f*���*�-6��l� O 0�[��l kh *���*�/�-6��������a � [OY��O*�/��k/E/*�/a ,FOe*�/a ,FOP6 �������XY���� 20 addservicestodatasource addServicesToDataSource�� ��Z�� Z  ������ 0 theservices theServices�� 0 thedatasource theDataSource��  X ������ 0 theservices theServices�� 0 thedatasource theDataSourceY ������
�� 
updV
�� 
with
�� .daVSappPnull���    obj �� f��,FO��l Oe��,F7 �������[\���� 0 findservices findServices�� ��]�� ]  �������� 0 	findwhere 	findWhere�� 0 findhow findHow�� 0 findwhat findWhat��  [ �������������� 0 	findwhere 	findWhere�� 0 findhow findHow�� 0 findwhat findWhat�� 0 theservices theServices�� 0 service  �� 0 thevalue theValue\ �����������)9F��Zhx��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 publisherid  
�� 
bool�� 0 name  �� 0 shortdescription  ���jvE�O��  y sb   [��l kh ��,E�O�� 	 ���& 	��6GY B�� 	 ���& 	��6GY -�� 	 ���& 	��6GY �� 	 �� �& 	��6GY h[OY��Y	��  y sb   [��l kh ��,E�O�� 	 ���& 	��6GY B�� 	 ���& 	��6GY -�� 	 ���& 	��6GY �� 	 �� �& 	��6GY h[OY��Y ��a   � }b   [��l kh �a ,E�O�a  	 ���& 	��6GY H�a  	 ���& 	��6GY 1�a  	 ���& 	��6GY �a  	 �� �& 	��6GY h[OY��Y hO�8 ���~�}^_�|� :0 updateservicedetailinwindow updateServiceDetailInWindow�~ �{`�{ `  �z�y�z $0 theservicedetail theServiceDetail�y 0 	thewindow 	theWindow�}  ^ �x�w�x $0 theservicedetail theServiceDetail�w 0 	thewindow 	theWindow_ �v�u�t�s�r�q$�p1�o>�nJ�mH�v 0 name  
�u 
texF
�t 
pcnt�s 0 shortdescription  �r 0 publisherid  �q 	0 email  �p 0 wsdlurl  �o 	0 notes  
�n 
scrV
�m 
texV�| Z� V��,*��/�,FO��,*��/�,FO��,*��/�,FO��,*��/�,FO��,*��/�,FO��,� ��,*��/a a /�,FY hU9 �l\�k�jab�i�l 0 getservices getServices�k  �j  a �h�h 0 theservices theServicesb ~�gv�fy�e�d}�c�b�a�`
�g 
meth
�f 
mspu
�e 
parm
�d 
sact�c 
�b .rpc SOAPlist       reco�a  �`  �i +jvE�O � �����jv���j 	E�UW X 
 hO�: �_��^�]cd�\�_ 00 getservicedetailwithid getServiceDetailWithID�^ �[e�[ e  �Z�Z 0 theserviceid theServiceID�]  c �Y�X�Y 0 theserviceid theServiceID�X 0 	thedetail 	theDetaild �W�V~�U��T��S�R�Q��P�O�N�M
�W 
msng�V 0 getplaintext getPlainText
�U 
meth
�T 
mspu
�S 
parm�R 0 id  
�Q 
sact�P 
�O .rpc SOAPlist       reco�N  �M  �\ 5�E�O*�k+ E�O � ������l���j E�UW X  hO�; �L��K�Jfg�I�L *0 findwindowwithtitle findWindowWithTitle�K �Hh�H h  �G�G 0 thetitle theTitle�J  f �F�E�D�F 0 thetitle theTitle�E 0 	thewindow 	theWindow�D 0 
thewindows 
theWindowsg �C�Bi�A�@�?
�C 
msng
�B 
cwini  
�A 
titl
�@ .corecnte****       ****
�? 
cobj�I +�E�O*�-�[�,\Z�81E�O�j j ��k/E�Y hO�< �>�=�<jk�;�> 0 getplaintext getPlainText�= �:l�: l  �9�9 &0 fromunicodestring fromUnicodeString�<  j �8�7�6�8 &0 fromunicodestring fromUnicodeString�7 0 
styledtext 
styledText�6 0 styledrecord styledRecordk �5�4�3
�5 
TEXT
�4 
reco
�3 
ktxt�; ��&E�O��&E�O��,Eascr  ��ޭ