FasdUAS 1.101.10   ��   ��    k             l      �� ��      Document.applescript        	  l     ������  ��   	  
  
 l      �� ��   �� This is a good example of several different features of AppleScript Studio. The main one is to demonstrate how to write a document bases application using the higher level handlers "data representation" and "load data representation" (as opposed to the lower level handlers "write to file" and "read from file". It also demonstrates how to work with a table view (including support for sorting). Menu Item handling is also included in this example.          l     ������  ��        l      �� ��       ==== Event Handlers ====          l     ������  ��        l     �� ��    � � The "awake from nib" handler is called (in this example) when the table view is loaded from the "Documents.nib" nib file. This is a good place to create a new data source and data columns and set various properties of said items.         l     ������  ��        i         I     �� ��
�� .appSawFNnull���    obj   o      ���� 0 	theobject 	theObject��    Z     �  ����  =       !   n      " # " 1    ��
�� 
pnam # o     ���� 0 	theobject 	theObject ! m     $ $  tasks     k    � % %  & ' & l   �� (��   ( 8 2 Create the data source for our "tasks" table view    '  ) * ) r     + , + I   ���� -
�� .corecrel****      � null��   - �� . /
�� 
kocl . m   
 ��
�� 
datS / �� 0 1
�� 
insh 0 n     2 3 2  ;     3 2   ��
�� 
datS 1 �� 4��
�� 
prdt 4 K     5 5 �� 6��
�� 
pnam 6 m     7 7  tasks   ��  ��   , o      ���� 0 thedatasource theDataSource *  8 9 8 l   ������  ��   9  : ; : l   �� <��   < � � Create the data columns, "priority", "task" and "status". We also set the sort properties of each of the data columns, including the sort order, the type of data in each column and what type of sensitivity to use.    ;  = > = I   7���� ?
�� .corecrel****      � null��   ? �� @ A
�� 
kocl @ m    ��
�� 
datB A �� B C
�� 
insh B n     $ D E D  ;   # $ E n     # F G F 2  ! #��
�� 
datB G o     !���� 0 thedatasource theDataSource C �� H��
�� 
prdt H K   % 3 I I �� J K
�� 
pnam J m   & ' L L  priority    K �� M N
�� 
sorO M m   ( )��
�� ESoDascN N �� O P
�� 
sorT O m   * +��
�� ESoTnumR P �� Q��
�� 
soCS Q m   , /��
�� EScScasS��  ��   >  R S R I  8 W���� T
�� .corecrel****      � null��   T �� U V
�� 
kocl U m   : ;��
�� 
datB V �� W X
�� 
insh W n   < @ Y Z Y  ;   ? @ Z n   < ? [ \ [ 2  = ?��
�� 
datB \ o   < =���� 0 thedatasource theDataSource X �� ]��
�� 
prdt ] K   A S ^ ^ �� _ `
�� 
pnam _ m   B E a a 
 task    ` �� b c
�� 
sorO b m   F G��
�� ESoDascN c �� d e
�� 
sorT d m   H K��
�� ESoTalpB e �� f��
�� 
soCS f m   L O��
�� EScScasS��  ��   S  g h g I  X w���� i
�� .corecrel****      � null��   i �� j k
�� 
kocl j m   Z [��
�� 
datB k �� l m
�� 
insh l n   \ ` n o n  ;   _ ` o n   \ _ p q p 2  ] _��
�� 
datB q o   \ ]���� 0 thedatasource theDataSource m �� r��
�� 
prdt r K   a s s s �� t u
�� 
pnam t m   b e v v  status    u �� w x
�� 
sorO w m   f g��
�� ESoDascN x �� y z
�� 
sorT y m   h k��
�� ESoTalpB z �� {��
�� 
soCS { m   l o��
�� EScScasS��  ��   h  | } | l  x x������  ��   }  ~  ~ l  x x�� ���   � $  Set the data source as sorted      � � � r   x  � � � m   x y��
�� boovtrue � n       � � � 1   z ~��
�� 
sorR � o   y z���� 0 thedatasource theDataSource �  � � � l  � �������  ��   �  � � � l  � ��� ���   � 8 2 Set the "priority" data column as the sort column    �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
datB � m   � � � �  priority    � o   � ����� 0 thedatasource theDataSource � n       � � � 1   � ���
�� 
sorC � o   � ����� 0 thedatasource theDataSource �  � � � l  � �������  ��   �  � � � l  � ��� ���   � K E Finally, assign the data source of the table view to our data source    �  ��� � r   � � � � � o   � ����� 0 thedatasource theDataSource � n       � � � m   � ���
�� 
datS � o   � ����� 0 	theobject 	theObject��  ��  ��     � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l     �� ���   � � � The "action" event handler is called whenever the user chooses a menu in the popup buttons or presses (in this example) the enter key in the text field.    �  � � � l     ������  ��   �  � � � i     � � � I     �� ���
�� .coVSactTnull���    obj  � o      ���� 0 	theobject 	theObject��   � k     � � �  � � � l     �� ���   � < 6 Set some local variables to various objects in the UI    �  � � � r      � � � n      � � � m    ��
�� 
cwin � o     ���� 0 	theobject 	theObject � o      ���� 0 	thewindow 	theWindow �  � � � r     � � � n     � � � 4   
 �� �
�� 
tabW � m     � �  tasks    � n    
 � � � 4    
�� �
�� 
scrV � m    	 � �  tasks    � o    ���� 0 	thewindow 	theWindow � o      ���� 0 thetableview theTableView �  � � � r     � � � n     � � � m    ��
�� 
datS � o    ���� 0 thetableview theTableView � o      ���� 0 thedatasource theDataSource �  � � � l   �����  �   �  � � � l   �~ ��~   � h b The behavior from here will be determined by whether or not an task in the table view is selected    �  ��} � Z    � � ��| � � =    � � � l    ��{ � I   �z ��y
�z .corecnte****       **** � n     � � � 1    �x
�x 
selW � o    �w�w 0 thetableview theTableView�y  �{   � m    �v�v   � k   " Z � �  � � � l  " "�u ��u   � z t Since nothing is selected we will create a new task (but only if the enter key is pressed in the "task" text field)    �  ��t � Z   " Z � ��s�r � =  " ' � � � n   " % � � � 1   # %�q
�q 
pnam � o   " #�p�p 0 	theobject 	theObject � m   % & � � 
 task    � k   * V � �  � � � l  * *�o ��o   �   Make a new data row    �  � � � r   * 8 � � � I  * 6�n�m �
�n .corecrel****      � null�m   � �l � �
�l 
kocl � m   , -�k
�k 
datR � �j ��i
�j 
insh � n   . 2 � � �  ;   1 2 � n   . 1 � � � 2  / 1�h
�h 
datR � o   . /�g�g 0 thedatasource theDataSource�i   � o      �f�f 0 thetask theTask �  � � � l  9 9�e�d�e  �d   �  � � � l  9 9�c ��c   � / ) Populate the task using values in the UI    �  � � � I   9 @�b ��a�b 60 settaskvalueswithuivalues setTaskValuesWithUIValues �  � � � o   : ;�`�` 0 thetask theTask �  ��_ � o   ; <�^�^ 0 	thewindow 	theWindow�_  �a   �    l  A A�]�\�]  �\    l  A A�[�[   ' ! Now set the UI to default values     I   A G�Z�Y�Z (0 setdefaultuivalues setDefaultUIValues �X o   B C�W�W 0 	thewindow 	theWindow�X  �Y   	
	 l  H H�V�U�V  �U  
  l  H H�T�T   _ Y Make the "task" text field the object with the focus so that it will be ready for typing    �S r   H V n   H P 4   I P�R
�R 
texF m   L O 
 task    o   H I�Q�Q 0 	thewindow 	theWindow n       1   Q U�P
�P 
firS o   P Q�O�O 0 	thewindow 	theWindow�S  �s  �r  �t  �|   � k   ] �  l  ] ]�N�N   0 * Get the selected task from the table view     r   ] d n   ] b  1   ^ b�M
�M 
seDR  o   ] ^�L�L 0 thetableview theTableView o      �K�K 0 thetask theTask !"! l  e e�J�I�J  �I  " #$# l  e e�H%�H  % #  See which object was touched   $ &�G& Z   e �'()�F' =  e l*+* n   e h,-, 1   f h�E
�E 
pnam- o   e f�D�D 0 	theobject 	theObject+ m   h k..  priority   ( r   o �/0/ n   o t121 1   p t�C
�C 
titl2 o   o p�B�B 0 	theobject 	theObject0 n      343 1   | ��A
�A 
pcnt4 n   t |565 4   u |�@7
�@ 
datC7 m   x {88  priority   6 o   t u�?�? 0 thetask theTask) 9:9 =  � �;<; n   � �=>= 1   � ��>
�> 
pnam> o   � ��=�= 0 	theobject 	theObject< m   � �?? 
 task   : @A@ r   � �BCB n   � �DED 1   � ��<
�< 
conTE o   � ��;�; 0 	theobject 	theObjectC n      FGF 1   � ��:
�: 
pcntG n   � �HIH 4   � ��9J
�9 
datCJ m   � �KK 
 task   I o   � ��8�8 0 thetask theTaskA LML =  � �NON n   � �PQP 1   � ��7
�7 
pnamQ o   � ��6�6 0 	theobject 	theObjectO m   � �RR  status   M S�5S r   � �TUT n   � �VWV 1   � ��4
�4 
titlW o   � ��3�3 0 	theobject 	theObjectU n      XYX 1   � ��2
�2 
pcntY n   � �Z[Z 4   � ��1\
�1 
datC\ m   � �]]  status   [ o   � ��0�0 0 thetask theTask�5  �F  �G  �}   � ^_^ l     �/�.�/  �.  _ `a` l     �-�,�-  �,  a bcb l      �+d�+  d ) # ==== Document Event Handlers ====    c efe l     �*�)�*  �)  f ghg l     �(i�(  i�� The "data representation" event handler is called when the document needs to be saved. It is the responsiblity of the handler to return the data that is to be saved. This can be nearly any AppleScript object, whether it be a string, a list, a record, etc. In this case we are going to return a record that contains the list of tasks, the name of the current sort column and the sort order of the current sort column.    h jkj l     �'�&�'  �&  k lml i    non I     �%pq
�% .docSdatNnull���    obj p o      �$�$ 0 	theobject 	theObjectq �#r�"
�# 
of Tr o      �!�! 0 oftype ofType�"  o k     4ss tut l     � v�   v < 6 Set some local variables to various objects in the UI   u wxw r     yzy n     {|{ 4    �}
� 
cwin} m    �� | o     �� 0 	theobject 	theObjectz o      �� 0 	thewindow 	theWindowx ~~ r    ��� n    ��� m    �
� 
datS� n    ��� 4    ��
� 
tabW� m    ��  tasks   � n    ��� 4    ��
� 
scrV� m   	 
��  tasks   � o    �� 0 	thewindow 	theWindow� o      �� 0 thedatasource theDataSource ��� r    ��� n    ��� 1    �
� 
pcnt� n    ��� 2    �
� 
datC� n    ��� 2    �
� 
datR� o    �� 0 thedatasource theDataSource� o      �� 0 thetasks theTasks� ��� r    "��� n     ��� 1     �
� 
sorC� o    �� 0 thedatasource theDataSource� o      �� 0 thesortcolumn theSortColumn� ��� l  # #���  �  � ��� l  # #���  � } w Create our record containing the list of tasks (just a list of lists), the name of the sort column and the sort order.   � ��� r   # 1��� K   # /�� ���� 	0 tasks  � o   $ %�
�
 0 thetasks theTasks� �	���	  0 sortcolumnname sortColumnName� n   & )��� 1   ' )�
� 
pnam� o   & '�� 0 thesortcolumn theSortColumn� ���� "0 sortcolumnorder sortColumnOrder� n   * -��� 1   + -�
� 
sorO� o   * +�� 0 thesortcolumn theSortColumn�  � o      �� 0 thedata theData� ��� l  2 2�� �  �   � ���� L   2 4�� o   2 3���� 0 thedata theData��  m ��� l     ������  ��  � ��� l     ������  ��  � ��� l     �����  � � � The "load data representation" event handler is called when the document is being loaded. The data that you provided in the "data representation" event handler is passed to you in the "theData" parameter.   � ��� l     ������  ��  � ��� i    ��� I     ����
�� .docSloDRnull���    obj � o      ���� 0 	theobject 	theObject� ����
�� 
of T� o      ���� 0 oftype ofType� �����
�� 
witD� o      ���� 0 thedata theData��  � k     5�� ��� l     �����  � < 6 Set some local variables to various objects in the UI   � ��� r     ��� n     ��� 4    ���
�� 
cwin� m    ���� � o     ���� 0 	theobject 	theObject� o      ���� 0 	thewindow 	theWindow� ��� r    ��� n    ��� m    ��
�� 
datS� n    ��� 4    ���
�� 
tabW� m    ��  tasks   � n    ��� 4    ���
�� 
scrV� m   	 
��  tasks   � o    ���� 0 	thewindow 	theWindow� o      ���� 0 thedatasource theDataSource� ��� l   ������  ��  � ��� l   �����  � _ Y Restore the sort column and sort order of the data source based on the information saved   � ��� r    ��� n    ��� 4    ���
�� 
datB� l   ���� n    ��� o    ����  0 sortcolumnname sortColumnName� o    ���� 0 thedata theData��  � o    ���� 0 thedatasource theDataSource� n      ��� 1    ��
�� 
sorC� o    ���� 0 thedatasource theDataSource� ��� r    (��� l   "���� n    "��� o     "���� "0 sortcolumnorder sortColumnOrder� o     ���� 0 thedata theData��  � n      ��� 1   % '��
�� 
sorO� n   " %��� 1   # %��
�� 
sorC� o   " #���� 0 thedatasource theDataSource� ��� l  ) )������  ��  � ��� l  ) )�����  � W Q Use the "append" verb to quickly populate the data source with the list of tasks   � � � I  ) 2��
�� .daVSappPnull���    obj  l  ) *�� o   ) *���� 0 thedatasource theDataSource��   ����
�� 
with l  + .�� n   + . o   , .���� 	0 tasks   o   + ,���� 0 thedata theData��  ��    	 l  3 3������  ��  	 

 l  3 3����   � � We return true, signaling that everything worked correctly. If you return "false" then the document will fail to load and an alert will be presented.    �� L   3 5 m   3 4��
�� boovtrue��  �  l     ������  ��    l     ������  ��    l      ����   * $ ==== Data View Event Handlers ====      l     ������  ��    l     ����   � � The "selection changing" event handler is called whenever the selection in the table view is changing. We will use this to update the values in the UI based on the selection.     l     ������  ��    i      I     ��!��
�� .coVSselGnull���    obj ! o      ���� 0 	theobject 	theObject��    Z     2"#����" =    $%$ n     &'& 1    ��
�� 
pnam' o     ���� 0 	theobject 	theObject% m    ((  tasks   # k    .)) *+* l   ��,��  , b \ If there is a selection then we'll update the UI, otherwise we set the UI to default values   + -��- Z    ../��0. ?    121 l   3��3 I   ��4��
�� .corecnte****       ****4 n    565 1   	 ��
�� 
selW6 o    	���� 0 	theobject 	theObject��  ��  2 m    ����  / k    #77 898 l   ��:��  : 2 , Get the selected data row of the table view   9 ;<; r    =>= n    ?@? 1    ��
�� 
seDR@ o    ���� 0 	theobject 	theObject> o      ���� 0 thetask theTask< ABA l   ������  ��  B CDC l   ��E��  E , & Update the UI using the selected task   D F��F I    #��G���� 60 setuivalueswithtaskvalues setUIValuesWithTaskValuesG HIH n    JKJ m    ��
�� 
cwinK o    ���� 0 	theobject 	theObjectI L��L o    ���� 0 thetask theTask��  ��  ��  ��  0 k   & .MM NON l  & &��P��  P #  Set the UI to default values   O Q��Q I   & .��R���� (0 setdefaultuivalues setDefaultUIValuesR S��S n   ' *TUT m   ( *��
�� 
cwinU o   ' (���� 0 	theobject 	theObject��  ��  ��  ��  ��  ��   VWV l     ������  ��  W XYX l     ������  ��  Y Z[Z l     ��\��  \ � � The "selection changing" event handler is called whenever the selection in the table view is changing. We will use this to update the values in the UI based on the selection.   [ ]^] l     ������  ��  ^ _`_ i    aba I     ��c��
�� .coVSselFnull���    obj c o      ���� 0 	theobject 	theObject��  b Z     2de����d =    fgf n     hih 1    ��
�� 
pnami o     ���� 0 	theobject 	theObjectg m    jj  tasks   e k    .kk lml l   ��n��  n b \ If there is a selection then we'll update the UI, otherwise we set the UI to default values   m o��o Z    .pq��rp ?    sts l   u��u I   ��v��
�� .corecnte****       ****v n    wxw 1   	 ��
�� 
selWx o    	���� 0 	theobject 	theObject��  ��  t m    ����  q k    #yy z{z l   �|�  | 2 , Get the selected data row of the table view   { }~} r    � n    ��� 1    �~
�~ 
seDR� o    �}�} 0 	theobject 	theObject� o      �|�| 0 thetask theTask~ ��� l   �{�z�{  �z  � ��� l   �y��y  � , & Update the UI using the selected task   � ��x� I    #�w��v�w 60 setuivalueswithtaskvalues setUIValuesWithTaskValues� ��� n    ��� m    �u
�u 
cwin� o    �t�t 0 	theobject 	theObject� ��s� o    �r�r 0 thetask theTask�s  �v  �x  ��  r k   & .�� ��� l  & &�q��q  � #  Set the UI to default values   � ��p� I   & .�o��n�o (0 setdefaultuivalues setDefaultUIValues� ��m� n   ' *��� m   ( *�l
�l 
cwin� o   ' (�k�k 0 	theobject 	theObject�m  �n  �p  ��  ��  ��  ` ��� l     �j�i�j  �i  � ��� l     �h�g�h  �g  � ��� l     �f��f  � The "column clicked" event handler is called whenever the user clickes on a column in the table view. We will change the sort state based on the column clicked. This event handler can be used as is in most applications when utilizing the sort support built into data sources.   � ��� l     �e�d�e  �d  � ��� i    ��� I     �c��
�c .daVScolCnull���    obj � o      �b�b 0 	theobject 	theObject� �a��`
�a 
tabC� o      �_�_ 0 tablecolumn tableColumn�`  � k     @�� ��� l     �^��^  � , & Get the data source of the table view   � ��� r     ��� n     ��� m    �]
�] 
datS� o     �\�\ 0 	theobject 	theObject� o      �[�[ 0 thedatasource theDataSource� ��� l   �Z�Y�Z  �Y  � ��� l   �X��X  � / ) Get the name of the clicked table column   � ��� r    ��� n    	��� 1    	�W
�W 
pnam� o    �V�V 0 tablecolumn tableColumn� o      �U�U 0 thecolumnname theColumnName� ��� l   �T�S�T  �S  � ��� l   �R��R  � 5 / Get the current sort column of the data source   � ��� r    ��� n    ��� 1    �Q
�Q 
sorC� o    �P�P 0 thedatasource theDataSource� o      �O�O 0 thesortcolumn theSortColumn� ��� l   �N�M�N  �M  � ��� l   �L��L  � c ] If the current sort column is not the same as the clicked column then switch the sort column   � ��� Z    :���K�� >   ��� l   ��J� n    ��� 1    �I
�I 
pnam� o    �H�H 0 thesortcolumn theSortColumn�J  � o    �G�G 0 thecolumnname theColumnName� r    "��� n    ��� 4    �F�
�F 
datB� o    �E�E 0 thecolumnname theColumnName� o    �D�D 0 thedatasource theDataSource� l     ��C� n      ��� 1    !�B
�B 
sorC� o    �A�A 0 thedatasource theDataSource�C  �K  � k   % :�� ��� l  % %�@��@  � &   Otherwise change the sort order   � ��?� Z   % :���>�� =  % *��� n   % (��� 1   & (�=
�= 
sorO� o   % &�<�< 0 thesortcolumn theSortColumn� m   ( )�;
�; ESoDascN� r   - 2��� m   - .�:
�: ESoDdesE� n      ��� 1   / 1�9
�9 
sorO� o   . /�8�8 0 thesortcolumn theSortColumn�>  � r   5 :��� m   5 6�7
�7 ESoDascN� n      ��� 1   7 9�6
�6 
sorO� o   6 7�5�5 0 thesortcolumn theSortColumn�?  � ��� l  ; ;�4�3�4  �3  � ��� l  ; ;�2��2  � ? 9 We need to update the table view (so it will be redrawn)   � ��1� I  ; @�0��/
�0 .appSfupdnull���    obj � o   ; <�.�. 0 	theobject 	theObject�/  �1  � ��� l     �-�,�-  �,  � ��� l     �+�*�+  �*  � ��� l      �) �)    * $ ==== Menu Item Event Handlers ====    �  l     �(�'�(  �'    l     �&�&   � � The "choose menu item" is called (in this example) whenever the user chooses one of the "New Task, Duplicate Task, and Delete Task" menu items.     l     �%�$�%  �$   	 i    

 I     �#�"
�# .menSchMInull���    obj  o      �!�! 0 	theobject 	theObject�"   k     �  l     � �    < 6 Set some local variables to various objects in the UI     r      4    �
� 
cwin m    ��  o      �� 0 	thewindow 	theWindow  r     n     4    �
� 
tabW m      tasks    n     4    � 
� 
scrV  m   	 
!!  tasks    o    �� 0 	thewindow 	theWindow o      �� 0 thetableview theTableView "#" r    $%$ n    &'& m    �
� 
datS' o    �� 0 thetableview theTableView% o      �� 0 thedatasource theDataSource# ()( l   ���  �  ) *�* Z    �+,-�+ =   ./. n    010 1    �
� 
pnam1 o    �� 0 	theobject 	theObject/ m    22 	 new   , k    G33 454 l   �6�  6  	 New Task   5 787 r    -9:9 I   +��;
� .corecrel****      � null�  ; �<=
� 
kocl< m   ! "�
� 
datR= �
>�	
�
 
insh> n   # '?@?  ;   & '@ n   # &ABA 2  $ &�
� 
datRB o   # $�� 0 thedatasource theDataSource�	  : o      �� 0 thetask theTask8 CDC l  . .���  �  D EFE l  . .�G�  G #  Set the UI to default values   F HIH I   . 4�J�� ,0 setdefaulttaskvalues setDefaultTaskValuesJ K� K o   / 0���� 0 thetask theTask�   �  I LML l  5 5������  ��  M NON l  5 5��P��  P "  Select the newly added task   O QRQ r   5 :STS o   5 6���� 0 thetask theTaskT n      UVU 1   7 9��
�� 
seDRV o   6 7���� 0 thetableview theTableViewR WXW l  ; ;������  ��  X YZY l  ; ;��[��  [ _ Y Make the "task" text field the object with the focus so that it will be ready for typing   Z \��\ r   ; G]^] n   ; A_`_ 4   < A��a
�� 
texFa m   = @bb 
 task   ` o   ; <���� 0 	thewindow 	theWindow^ n      cdc 1   B F��
�� 
firSd o   A B���� 0 	thewindow 	theWindow��  - efe =  J Qghg n   J Miji 1   K M��
�� 
pnamj o   J K���� 0 	theobject 	theObjecth m   M Pkk  	duplicate   f lml k   T �nn opo l  T T��q��  q J D Duplicate Task (only if there is a task selected in the table view)   p r��r Z   T �st����s ?   T _uvu l  T ]w��w I  T ]��x��
�� .corecnte****       ****x n   T Yyzy 1   U Y��
�� 
seDSz o   T U���� 0 thetableview theTableView��  ��  v m   ] ^����  t k   b �{{ |}| l  b b��~��  ~   Get the selected task   } � r   b g��� n   b e��� 1   c e��
�� 
seDR� o   b c���� 0 thetableview theTableView� o      ���� 0 thetask theTask� ��� l  h h������  ��  � ��� l  h h�����  � � � Make a new task and copy the values from the selected one to the new one. (There is a bug in the copy of a data row such that you can't simply say "copy theTask to end of data rows of theDataSource").   � ��� r   h v��� I  h t�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   j k��
�� 
datR� �����
�� 
insh� n   l p���  ;   o p� n   l o��� 2  m o��
�� 
datR� o   l m���� 0 thedatasource theDataSource��  � o      ���� 0 newtask newTask� ��� r   w ���� n   w ���� 1    ���
�� 
pcnt� n   w ��� 4   x ���
�� 
datC� m   { ~��  priority   � o   w x���� 0 thetask theTask� n      ��� 1   � ���
�� 
pcnt� n   � ���� 4   � ����
�� 
datC� m   � ���  priority   � o   � ����� 0 newtask newTask� ��� r   � ���� n   � ���� 1   � ���
�� 
pcnt� n   � ���� 4   � ����
�� 
datC� m   � ��� 
 task   � o   � ����� 0 thetask theTask� n      ��� 1   � ���
�� 
pcnt� n   � ���� 4   � ����
�� 
datC� m   � ��� 
 task   � o   � ����� 0 newtask newTask� ���� r   � ���� n   � ���� 1   � ���
�� 
pcnt� n   � ���� 4   � ����
�� 
datC� m   � ���  status   � o   � ����� 0 thetask theTask� n      ��� 1   � ���
�� 
pcnt� n   � ���� 4   � ����
�� 
datC� m   � ���  status   � o   � ����� 0 newtask newTask��  ��  ��  ��  m ��� =  � ���� n   � ���� 1   � ���
�� 
pnam� o   � ����� 0 	theobject 	theObject� m   � ���  delete   � ���� k   � ��� ��� l  � ������  �   Delete Task   � ���� Z   � �������� ?   � ���� l  � ����� I  � ������
�� .corecnte****       ****� n   � ���� 1   � ���
�� 
seDS� o   � ����� 0 thetableview theTableView��  ��  � m   � �����  � k   � ��� ��� l  � ������  �   Get the selected task   � ��� r   � ���� n   � ���� 1   � ���
�� 
seDR� o   � ����� 0 thetableview theTableView� o      ���� 0 thetask theTask� ��� l  � �������  ��  � ��� l  � ������  �  
 Delete it   � ���� I  � ������
�� .coredelonull���    obj � o   � ����� 0 thetask theTask��  ��  ��  ��  ��  ��  �  �  	 ��� l     ������  ��  � ��� l     ������  ��  � ��� l     �����  � � � The "update menu item" is called whenever the status of any the "Task" menu items need to be updated (for instance when the user clicks on the "Edit" menu where these menu items are).    � ��� l     ������  ��  � ��� i     #��� I     �����
�� .menSupMInull���    obj � o      ���� 0 	theobject 	theObject��  � k     l�� ��� l     �����  � 4 . By default we will enable each of these items   � ��� Z     i� ��� I    ����
�� .coredoexbool       obj  4    ��
�� 
cwin m    ���� ��    k    c  r     m    ��
�� boovtrue o      ���� 0 shouldenable shouldEnable 	
	 l   ������  ��  
  l   ����   < 6 Set some local variables to various objects in the UI     r     4   ��
�� 
cwin m    ����  o      ���� 0 	thewindow 	theWindow  r     n     4    ��
�� 
tabW m      tasks    n     4    ��
�� 
scrV m      tasks    o    ���� 0 	thewindow 	theWindow o      ���� 0 thetableview theTableView   r     %!"! n     ##$# m   ! #��
�� 
datS$ o     !���� 0 thetableview theTableView" o      ���� 0 thedatasource theDataSource  %&% l  & &������  ��  & '��' Z   & c()*��( =  & ++,+ n   & )-.- 1   ' )��
�� 
pnam. o   & '���� 0 	theobject 	theObject, m   ) *//  	duplicate   ) k   . A00 121 l  . .��3��  3 L F If there isn't a task selected disable the "Duplicate Task" menu item   2 4��4 Z   . A56����5 =  . 7787 l  . 59��9 I  . 5�:�~
� .corecnte****       ****: n   . 1;<; 1   / 1�}
�} 
seDS< o   . /�|�| 0 thetableview theTableView�~  ��  8 m   5 6�{�{  6 r   : ==>= m   : ;�z
�z boovfals> o      �y�y 0 shouldenable shouldEnable��  ��  ��  * ?@? =  D IABA n   D GCDC 1   E G�x
�x 
pnamD o   D E�w�w 0 	theobject 	theObjectB m   G HEE  delete   @ F�vF k   L _GG HIH l  L L�uJ�u  J I C If there isn't a task selected disable the "Delete Task" menu item   I K�tK Z   L _LM�s�rL =  L UNON l  L SP�qP I  L S�pQ�o
�p .corecnte****       ****Q n   L ORSR 1   M O�n
�n 
seDSS o   L M�m�m 0 thetableview theTableView�o  �q  O m   S T�l�l  M r   X [TUT m   X Y�k
�k boovfalsU o      �j�j 0 shouldenable shouldEnable�s  �r  �t  �v  ��  ��  ��   r   f iVWV m   f g�i
�i boovfalsW o      �h�h 0 shouldenable shouldEnable� XYX l  j j�g�f�g  �f  Y Z[Z l  j j�e\�e  \   Return out enable state   [ ]�d] L   j l^^ o   j k�c�c 0 shouldenable shouldEnable�d  � _`_ l     �b�a�b  �a  ` aba l     �`�_�`  �_  b cdc l      �^e�^  e   ==== Handlers ====    d fgf l     �]�\�]  �\  g hih l     �[j�[  j = 7 This handler will set the default values of a new task   i klk l     �Z�Y�Z  �Y  l mnm i   $ 'opo I      �Xq�W�X ,0 setdefaulttaskvalues setDefaultTaskValuesq r�Vr o      �U�U 0 thetask theTask�V  �W  p k     ss tut r     vwv m     xx  3   w n      yzy 1    �T
�T 
pcntz n    {|{ 4    �S}
�S 
datC} m    ~~  priority   | o    �R�R 0 thetask theTasku � r   	 ��� m   	 
��      � n      ��� 1    �Q
�Q 
pcnt� n   
 ��� 4    �P�
�P 
datC� m    �� 
 task   � o   
 �O�O 0 thetask theTask� ��N� r    ��� m    ��  Not Started   � n      ��� 1    �M
�M 
pcnt� n    ��� 4    �L�
�L 
datC� m    ��  status   � o    �K�K 0 thetask theTask�N  n ��� l     �J�I�J  �I  � ��� l     �H��H  � 5 / This handler will set the default values of UI   � ��� l     �G�F�G  �F  � ��� i   ( +��� I      �E��D�E (0 setdefaultuivalues setDefaultUIValues� ��C� o      �B�B 0 	thewindow 	theWindow�C  �D  � O     ��� k    �� ��� r    ��� m    ��  3   � n      ��� 1   	 �A
�A 
titl� 4    	�@�
�@ 
popB� m    ��  priority   � ��� r    ��� m    ��      � n      ��� 1    �?
�? 
pcnt� 4    �>�
�> 
texF� m    �� 
 task   � ��=� r    ��� m    ��  Not Started   � n      ��� 1    �<
�< 
titl� 4    �;�
�; 
popB� m    ��  status   �=  � o     �:�: 0 	thewindow 	theWindow� ��� l     �9�8�9  �8  � ��� l     �7��7  � T N This handler will set the values of the given task using the values in the UI   � ��� l     �6�5�6  �5  � ��� i   , /��� I      �4��3�4 60 settaskvalueswithuivalues setTaskValuesWithUIValues� ��� o      �2�2 0 thetask theTask� ��1� o      �0�0 0 	thewindow 	theWindow�1  �3  � k     )�� ��� r     ��� n     ��� 1    �/
�/ 
titl� n     ��� 4    �.�
�. 
popB� m    ��  priority   � o     �-�- 0 	thewindow 	theWindow� n      ��� 1   
 �,
�, 
pcnt� n    
��� 4    
�+�
�+ 
datC� m    	��  priority   � o    �*�* 0 thetask theTask� ��� r    ��� n    ��� 1    �)
�) 
pcnt� n    ��� 4    �(�
�( 
texF� m    �� 
 task   � o    �'�' 0 	thewindow 	theWindow� n      ��� 1    �&
�& 
pcnt� n    ��� 4    �%�
�% 
datC� m    �� 
 task   � o    �$�$ 0 thetask theTask� ��#� r    )��� n    "��� 1     "�"
�" 
titl� n     ��� 4     �!�
�! 
popB� m    ��  status   � o    � �  0 	thewindow 	theWindow� n      ��� 1   & (�
� 
pcnt� n   " &��� 4   # &��
� 
datC� m   $ %��  status   � o   " #�� 0 thetask theTask�#  � ��� l     ���  �  � � � l     ��   F @ This handler will set the values of the UI using the given task      l     ���  �    i   0 3 I      ��� 60 setuivalueswithtaskvalues setUIValuesWithTaskValues 	
	 o      �� 0 	thewindow 	theWindow
 � o      �� 0 thetask theTask�  �   k     )  r      n      1    �
� 
pcnt n      4    �
� 
datC m      priority    o     �� 0 thetask theTask n       1   
 �
� 
titl n    
 4    
�
� 
popB m    	  priority    o    �� 0 	thewindow 	theWindow  r      n    !"! 1    �
� 
pcnt" n    #$# 4    �%
� 
datC% m    && 
 task   $ o    �
�
 0 thetask theTask  n      '(' 1    �	
�	 
pcnt( n    )*) 4    �+
� 
texF+ m    ,, 
 task   * o    �� 0 	thewindow 	theWindow -�- r    )./. n    "010 1     "�
� 
pcnt1 n     232 4     �4
� 
datC4 m    55  status   3 o    �� 0 thetask theTask/ n      676 1   & (�
� 
titl7 n   " &898 4   # &�:
� 
popB: m   $ %;;  status   9 o   " #� �  0 	thewindow 	theWindow�   <=< l     ������  ��  = >?> l     ������  ��  ? @A@ l      ��B��  B	2	, � Copyright 2004 Apple Computer, Inc. All rights reserved.

IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc. (�Apple�) in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this Apple software constitutes acceptance of these terms.  If you do not agree with these terms, please do not use, install, modify or redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Apple grants you a personal, non-exclusive license, under Apple�s copyrights in this original Apple software (the �Apple Software�), to use, reproduce, modify and redistribute the Apple Software, with or without modifications, in source and/or binary forms; provided that if you redistribute the Apple Software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the Apple Software.  Neither the name, trademarks, service marks or logos of Apple Computer, Inc. may be used to endorse or promote products derived from the Apple Software without specific prior written permission from Apple.  Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. 

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.    A CDC l     ������  ��  D E��E j   4 6��F�� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifierF m   4 5GG  Document.applescript   ��       ��HIJKLMNOPQRSTUG��  H ����������������������������
�� .appSawFNnull���    obj 
�� .coVSactTnull���    obj 
�� .docSdatNnull���    obj 
�� .docSloDRnull���    obj 
�� .coVSselGnull���    obj 
�� .coVSselFnull���    obj 
�� .daVScolCnull���    obj 
�� .menSchMInull���    obj 
�� .menSupMInull���    obj �� ,0 setdefaulttaskvalues setDefaultTaskValues�� (0 setdefaultuivalues setDefaultUIValues�� 60 settaskvalueswithuivalues setTaskValuesWithUIValues�� 60 setuivalueswithtaskvalues setUIValuesWithTaskValues�� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifierI �� ����VW��
�� .appSawFNnull���    obj �� 0 	theobject 	theObject��  V ������ 0 	theobject 	theObject�� 0 thedatasource theDataSourceW �� $�������� 7������ L�������������� a�� v�� ���
�� 
pnam
�� 
kocl
�� 
datS
�� 
insh
�� 
prdt�� 
�� .corecrel****      � null
�� 
datB
�� 
sorO
�� ESoDascN
�� 
sorT
�� ESoTnumR
�� 
soCS
�� EScScasS�� 
�� ESoTalpB
�� 
sorR
�� 
sorC�� ���,�  �*���*�-6���l� E�O*����-6��������a a � O*����-6��a ���a �a a � O*����-6��a ���a �a a � Oe�a ,FO��a /�a ,FO���,FY hJ �� �����XY��
�� .coVSactTnull���    obj �� 0 	theobject 	theObject��  X ������������ 0 	theobject 	theObject�� 0 	thewindow 	theWindow�� 0 thetableview theTableView�� 0 thedatasource theDataSource�� 0 thetask theTaskY ���� ��� ��������� ���������������������.����8��?��KR]
�� 
cwin
�� 
scrV
�� 
tabW
�� 
datS
�� 
selW
�� .corecnte****       ****
�� 
pnam
�� 
kocl
�� 
datR
�� 
insh�� 
�� .corecrel****      � null�� 60 settaskvalueswithuivalues setTaskValuesWithUIValues�� (0 setdefaultuivalues setDefaultUIValues
�� 
texF
�� 
firS
�� 
seDR
�� 
titl
�� 
datC
�� 
pcnt
�� 
conT�� Ġ�,E�O���/��/E�O��,E�O��,j j  =��,�  1*����-6� E�O*��l+ O*�k+ O�a a /�a ,FY hY h�a ,E�O��,a   �a ,�a a /a ,FY A��,a   �a ,�a a /a ,FY "��,a   �a ,�a a /a ,FY hK ��o����Z[��
�� .docSdatNnull���    obj �� 0 	theobject 	theObject�� ������
�� 
of T�� 0 oftype ofType��  Z ���������������� 0 	theobject 	theObject�� 0 oftype ofType�� 0 	thewindow 	theWindow�� 0 thedatasource theDataSource�� 0 thetasks theTasks�� 0 thesortcolumn theSortColumn�� 0 thedata theData[ ������������������������������
�� 
cwin
�� 
scrV
�� 
tabW
�� 
datS
�� 
datR
�� 
datC
�� 
pcnt
�� 
sorC�� 	0 tasks  ��  0 sortcolumnname sortColumnName
�� 
pnam�� "0 sortcolumnorder sortColumnOrder
�� 
sorO�� �� 5��k/E�O���/��/�,E�O��-�-�,E�O��,E�O���,���,�E�O�L �������\]��
�� .docSloDRnull���    obj �� 0 	theobject 	theObject�� ����^
�� 
of T�� 0 oftype ofType^ ������
�� 
witD�� 0 thedata theData��  \ ������������ 0 	theobject 	theObject�� 0 oftype ofType�� 0 thedata theData�� 0 	thewindow 	theWindow�� 0 thedatasource theDataSource] ��������������������~�}�|
�� 
cwin
�� 
scrV
�� 
tabW
�� 
datS
�� 
datB��  0 sortcolumnname sortColumnName
�� 
sorC�� "0 sortcolumnorder sortColumnOrder
� 
sorO
�~ 
with�} 	0 tasks  
�| .daVSappPnull���    obj �� 6��k/E�O���/��/�,E�O���,E/��,FO��,��,�,FO���,l OeM �{ �z�y_`�x
�{ .coVSselGnull���    obj �z 0 	theobject 	theObject�y  _ �w�v�w 0 	theobject 	theObject�v 0 thetask theTask` �u(�t�s�r�q�p�o
�u 
pnam
�t 
selW
�s .corecnte****       ****
�r 
seDR
�q 
cwin�p 60 setuivalueswithtaskvalues setUIValuesWithTaskValues�o (0 setdefaultuivalues setDefaultUIValues�x 3��,�  +��,j j ��,E�O*��,�l+ Y 
*��,k+ Y hN �nb�m�lab�k
�n .coVSselFnull���    obj �m 0 	theobject 	theObject�l  a �j�i�j 0 	theobject 	theObject�i 0 thetask theTaskb �hj�g�f�e�d�c�b
�h 
pnam
�g 
selW
�f .corecnte****       ****
�e 
seDR
�d 
cwin�c 60 setuivalueswithtaskvalues setUIValuesWithTaskValues�b (0 setdefaultuivalues setDefaultUIValues�k 3��,�  +��,j j ��,E�O*��,�l+ Y 
*��,k+ Y hO �a��`�_cd�^
�a .daVScolCnull���    obj �` 0 	theobject 	theObject�_ �]�\�[
�] 
tabC�\ 0 tablecolumn tableColumn�[  c �Z�Y�X�W�V�Z 0 	theobject 	theObject�Y 0 tablecolumn tableColumn�X 0 thedatasource theDataSource�W 0 thecolumnname theColumnName�V 0 thesortcolumn theSortColumnd �U�T�S�R�Q�P�O�N
�U 
datS
�T 
pnam
�S 
sorC
�R 
datB
�Q 
sorO
�P ESoDascN
�O ESoDdesE
�N .appSfupdnull���    obj �^ A��,E�O��,E�O��,E�O��,� ��/��,FY ��,�  
��,FY ��,FO�j P �M�L�Kef�J
�M .menSchMInull���    obj �L 0 	theobject 	theObject�K  e �I�H�G�F�E�D�I 0 	theobject 	theObject�H 0 	thewindow 	theWindow�G 0 thetableview theTableView�F 0 thedatasource theDataSource�E 0 thetask theTask�D 0 newtask newTaskf �C�B!�A�@�?2�>�=�<�;�:�9�8�7b�6k�5�4�3��2�������1
�C 
cwin
�B 
scrV
�A 
tabW
�@ 
datS
�? 
pnam
�> 
kocl
�= 
datR
�< 
insh�; 
�: .corecrel****      � null�9 ,0 setdefaulttaskvalues setDefaultTaskValues
�8 
seDR
�7 
texF
�6 
firS
�5 
seDS
�4 .corecnte****       ****
�3 
datC
�2 
pcnt
�1 .coredelonull���    obj �J �*�k/E�O���/��/E�O��,E�O��,�  -*����-6� E�O*�k+ O���,FO��a /�a ,FY ���,a   y�a ,j j g��,E�O*����-6� E�O�a a /a ,�a a /a ,FO�a a /a ,�a a /a ,FO�a a /a ,�a a /a ,FY hY -��,a   "�a ,j j ��,E�O�j Y hY hQ �0��/�.gh�-
�0 .menSupMInull���    obj �/ 0 	theobject 	theObject�.  g �,�+�*�)�(�, 0 	theobject 	theObject�+ 0 shouldenable shouldEnable�* 0 	thewindow 	theWindow�) 0 thetableview theTableView�( 0 thedatasource theDataSourceh �'�&�%�$�#�"/�!� E
�' 
cwin
�& .coredoexbool       obj 
�% 
scrV
�$ 
tabW
�# 
datS
�" 
pnam
�! 
seDS
�  .corecnte****       ****�- m*�k/j  ]eE�O*�k/E�O���/��/E�O��,E�O��,�  ��,j 
j  fE�Y hY !��,�  ��,j 
j  fE�Y hY hY fE�O�R �p��ij�� ,0 setdefaulttaskvalues setDefaultTaskValues� �k� k  �� 0 thetask theTask�  i �� 0 thetask theTaskj x�~�����
� 
datC
� 
pcnt� ���/�,FO���/�,FO���/�,FS ����lm�� (0 setdefaultuivalues setDefaultUIValues� �n� n  �� 0 	thewindow 	theWindow�  l �� 0 	thewindow 	theWindowm 
����������
� 
popB
� 
titl
� 
texF
� 
pcnt�  � �*��/�,FO�*��/�,FO�*��/�,FUT ���
�	op�� 60 settaskvalueswithuivalues setTaskValuesWithUIValues�
 �q� q  ��� 0 thetask theTask� 0 	thewindow 	theWindow�	  o ��� 0 thetask theTask� 0 	thewindow 	theWindowp ���� ���������
� 
popB
� 
titl
�  
datC
�� 
pcnt
�� 
texF� *���/�,���/�,FO���/�,���/�,FO���/�,���/�,FU ������rs���� 60 setuivalueswithtaskvalues setUIValuesWithTaskValues�� ��t�� t  ������ 0 	thewindow 	theWindow�� 0 thetask theTask��  r ������ 0 	thewindow 	theWindow�� 0 thetask theTasks ��������&��,5;
�� 
datC
�� 
pcnt
�� 
popB
�� 
titl
�� 
texF�� *���/�,���/�,FO���/�,���/�,FO���/�,���/�,F ascr  ��ޭ