FasdUAS 1.101.10   ��   ��    k             l      �� ��      Application.applescript        	  l     ������  ��   	  
  
 l      �� ��   \V This example employs many UI features in Cocoa, such as a 'drawer' and 'panels' as well as using the 'do shell script' to provide a UI frontend to the 'gnutar' shell tool to build tar archives. It also demonstrates how to design an application that is a droplet as well. You can also fine an example of how to use the 'user-defaults' class.          l     ������  ��        l      �� ��    � � The structure of this script is as follows:
	Properties		Properties needed for the application.
	Event Handlers	Handlers that are called by actions in the UI.
	Handlers 		Handlers that are called within the script.
         l     ������  ��        l      �� ��      ==== Properties ====          l     ������  ��        l     �� ��     	 Settings         j     �� �� (0 openwindowonlaunch openWindowOnLaunch  m     ��
�� boovtrue       j    �� !�� 0 showprogress showProgress ! m    ��
�� boovtrue    " # " j    �� $�� "0 compressarchive compressArchive $ m    ��
�� boovtrue #  % & % j   	 �� '�� 0 preserveids preserveIDs ' m   	 
��
�� boovtrue &  ( ) ( j    �� *�� 0 followlinks followLinks * m    ��
�� boovfals )  + , + j    �� -�� 0 verbosemode verboseMode - m    ��
�� boovfals ,  . / . j    �� 0�� "0 defaultlocation defaultLocation 0 m     1 1       /  2 3 2 l     ������  ��   3  4 5 4 l     �� 6��   6   Others    5  7 8 7 j    �� 9�� 0 windowopened windowOpened 9 m    ��
�� boovfals 8  : ; : j    �� <�� 0 progresspanel progressPanel < m    ��
�� 
msng ;  = > = j    �� ?�� 0 	filenames 	fileNames ? J    ����   >  @ A @ j    !�� B�� "0 filesdatasource filesDataSource B m     ��
�� 
msng A  C D C l     ������  ��   D  E F E l     ������  ��   F  G H G l      �� I��   I    ==== Event Handlers ====     H  J K J l     ������  ��   K  L M L l     �� N��   N � � This event handler is called as early in the process of launching an application as is possible. The handler is a good place to register our settings as well as read in the current set of settings.     M  O P O l     �� Q��   Q       P  R S R i   " % T U T I     �� V��
�� .appSwiFLnull���    obj  V o      ���� 0 	theobject 	theObject��   U k      W W  X Y X r      Z [ Z m     ��
�� boovfals [ o      ���� 0 windowopened windowOpened Y  \ ] \ l   ������  ��   ]  ^ _ ^ I    �������� $0 registersettings registerSettings��  ��   _  `�� ` I    �������� 0 readsettings readSettings��  ��  ��   S  a b a l     ������  ��   b  c d c l     �� e��   e
 This event handler is the last handler called in the process of launching an application. If the handler is called and a window hasn't been shown yet (via the 'open' event handler) then we need to show the main window here (as well was opening the settings drawer).    d  f g f l     �� h��   h       g  i j i i   & ) k l k I     �� m��
�� .appSlauNnull���    obj  m o      ���� 0 	theobject 	theObject��   l Z      n o���� n =     p q p o     ���� 0 windowopened windowOpened q m    ��
�� boovfals o k   
  r r  s t s I   
 �������� 0 
showwindow 
showWindow��  ��   t  u�� u I    �������� 0 showsettings showSettings��  ��  ��  ��  ��   j  v w v l     ������  ��   w  x y x l     �� z��   z � � This event handler is called when the object that is associated with it is loaded from its nib file. It's a good place to do any one-time initialization, which in this case is to create the data source for the table view.    y  { | { l     ������  ��   |  } ~ } i   * -  �  I     �� ���
�� .appSawFNnull���    obj  � o      ���� 0 	theobject 	theObject��   � k     G � �  � � � l     �� ���   � 0 * Create the data source for the table view    �  � � � r      � � � I    ���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m    ��
�� 
datS � �� � �
�� 
insh � n     � � �  ;     � 2   ��
�� 
datS � �� ���
�� 
prdt � K   	  � � �� ���
�� 
pnam � m   
  � �  files   ��  ��   � o      ���� "0 filesdatasource filesDataSource �  � � � l   ������  ��   �  � � � l   �� ���   � %  Create the "files" data column    �  � � � I   -���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m    ��
�� 
datB � �� � �
�� 
insh � n    $ � � �  ;   # $ � n    # � � � 2  ! #��
�� 
datB � o    !���� "0 filesdatasource filesDataSource � �� ���
�� 
prdt � K   % ) � � �� ���
�� 
pnam � m   & ' � �  files   ��  ��   �  � � � l  . .������  ��   �  � � � l  . .�� ���   � / ) Assign the data source to the table view    �  � � � r   . 7 � � � o   . 3���� "0 filesdatasource filesDataSource � n       � � � m   4 6��
�� 
datS � o   3 4���� 0 	theobject 	theObject �  � � � l  8 8������  ��   �  � � � l  8 8�� ���   � / ) Register for the "file names" drag types    �  ��� � O  8 G � � � I  < F���� �
�� .appSregInull���    obj ��   � �� ���
�� 
draT � J   > B � �  � � � m   > ? � �  
file names    �  ��� � m   ? @ � �  color   ��  ��   � o   8 9�� 0 	theobject 	theObject��   ~  � � � l     �~�}�~  �}   �  � � � l     �| ��|   � o i This event handler is called (in this example) when the user drags any finder items over the table view.    �  � � � l     �{�z�{  �z   �  � � � i   . 1 � � � I     �y � �
�y .drADdroRnull���    obj  � o      �x�x 0 	theobject 	theObject � �w ��v
�w 
draI � o      �u�u 0 draginfo dragInfo�v   � k     � � �  � � � l     �t ��t   � 3 - Get the list of data types on the pasteboard    �  � � � r      � � � n      � � � 1    �s
�s 
typP � n      � � � m    �r
�r 
pasE � o     �q�q 0 draginfo dragInfo � o      �p�p 0 	datatypes 	dataTypes �  � � � l   �o�n�o  �n   �  � � � l   �m ��m   � J D We are only interested in either "file names" or "color" data types    �  � � � Z    � � ��l�k � E    � � � o    	�j�j 0 	datatypes 	dataTypes � m   	 
 � �  
file names    � k    � � �  � � � l   �i ��i   � 4 . Initialize the list of files to an empty list    �  � � � r     � � � J    �h�h   � o      �g�g 0 thefiles theFiles �  � � � l   �f�e�f  �e   �  � � � l   �d ��d   � Z T We want the data as a list of file names, so set the preferred type to "file names"    �  � � � r     � � � m     � �  
file names    � n       � � � 1    �c
�c 
preQ � n     � � � m    �b
�b 
pasE � o    �a�a 0 draginfo dragInfo �    l   �`�_�`  �_    l   �^�^   0 * Get the list of files from the pasteboard     r    " n     	
	 1     �]
�] 
pcnt
 n     m    �\
�\ 
pasE o    �[�[ 0 draginfo dragInfo o      �Z�Z 0 thefiles theFiles  l  # #�Y�X�Y  �X    l  # #�W�W   * $ Make sure we have at least one item    �V Z   # ��U�T ?   # * l  # (�S I  # (�R�Q
�R .corecnte****       **** o   # $�P�P 0 thefiles theFiles�Q  �S   m   ( )�O�O   k   - �  l  - -�N�N   ) # Turn off the updating of the views     r   - 6  m   - .�M
�M boovfals  n      !"! 1   3 5�L
�L 
updV" o   . 3�K�K "0 filesdatasource filesDataSource #$# l  7 7�J�I�J  �I  $ %&% l  7 7�H'�H  ' L F For every item in the list, make a new data row and set it's contents   & ()( X   7 }*�G+* k   G x,, -.- r   G Y/0/ I  G W�F�E1
�F .corecrel****      � null�E  1 �D23
�D 
kocl2 m   I J�C
�C 
datR3 �B4�A
�B 
insh4 n   K S565  ;   R S6 n   K R787 2  P R�@
�@ 
datR8 o   K P�?�? "0 filesdatasource filesDataSource�A  0 o      �>�> 0 
thedatarow 
theDataRow. 9:9 r   Z f;<; n   Z ]=>= 1   [ ]�=
�= 
strq> o   Z [�<�< 0 theitem theItem< n      ?@? 1   c e�;
�; 
pcnt@ n   ] cABA 4   ^ c�:C
�: 
datCC m   _ bDD  files   B o   ] ^�9�9 0 
thedatarow 
theDataRow: E�8E r   g xFGF b   g rHIH o   g l�7�7 0 	filenames 	fileNamesI J   l qJJ K�6K n   l oLML 1   m o�5
�5 
strqM o   l m�4�4 0 theitem theItem�6  G o      �3�3 0 	filenames 	fileNames�8  �G 0 theitem theItem+ o   : ;�2�2 0 thefiles theFiles) NON l  ~ ~�1�0�1  �0  O PQP l  ~ ~�/R�/  R - ' Turn back on the updating of the views   Q S�.S r   ~ �TUT m   ~ �-
�- boovtrueU n      VWV 1   � ��,
�, 
updVW o    ��+�+ "0 filesdatasource filesDataSource�.  �U  �T  �V  �l  �k   � XYX l  � ��*�)�*  �)  Y Z[Z l  � ��(\�(  \ 1 + Set the preferred type back to the default   [ ]^] r   � �_`_ m   � �aa      ` n      bcb 1   � ��'
�' 
preQc n   � �ded m   � ��&
�& 
pasEe o   � ��%�% 0 draginfo dragInfo^ fgf l  � ��$�#�$  �#  g h�"h L   � �ii m   � ��!
�! boovtrue�"   � jkj l     � ��   �  k lml l     �n�  n�� This event handler is called when you drag any file/folder items in the Finder onto the application icon (either in the Finder or in the Dock). It can be called as many times as the user drags items onto the application icon, therefore the main process here is to append the list of names the existing list of names. Then we conditionally open the window, make the archive (displaying a progress bar if requested) and then if a window hasn't been opened we simply quit.    m opo l     �q�  q      p rsr i   2 5tut I     �v�
� .aevtodocnull  �    alisv o      �� 	0 names  �  u k    %ww xyx l     �z�  z 3 - Append the list of names to our current list   y {|{ Y     )}�~�} r    $��� b    ��� o    �� 0 	filenames 	fileNames� J    �� ��� n    ��� 1    �
� 
strq� l   ��� n    ��� 1    �
� 
psxp� l   ��� n    ��� 4    ��
� 
cobj� o    �� 0 i  � o    �� 	0 names  �  �  �  � o      �� 0 	filenames 	fileNames� 0 i  ~ m    ��  I   	���

� .corecnte****       ****� o    �	�	 	0 names  �
  �  | ��� l  * *���  �  � ��� l  * *���  � #  Show the window if requested   � ��� Z   * H����� o   * /�� (0 openwindowonlaunch openWindowOnLaunch� k   2 D�� ��� l  2 2���  � < 6 Of course, only show if it hasn't already been opened   � ��� Z   2 D��� ��� H   2 8�� o   2 7���� 0 windowopened windowOpened� I   ; @�������� 0 
showwindow 
showWindow��  ��  �   ��  �  �  �  � ��� l  I I������  ��  � ��� l  I I�����  � ~ x If the main window wasn't opened then go ahead and process the list of files, making an archive with a determined name.   � ���� Z   I%������ H   I O�� o   I N���� 0 windowopened windowOpened� k   R ��� ��� r   R Y��� m   R S��
�� boovtrue� o      ���� 0 windowopened windowOpened� ��� l  Z Z������  ��  � ��� l  Z Z�����  � %  Get the generated archive name   � ��� r   Z a��� I   Z _�������� (0 getarchivefilename getArchiveFileName��  ��  � o      ���� "0 archivefilename archiveFileName� ��� l  b b������  ��  � ��� l  b b�����  � + % Show the progress panel if requested   � ��� Z   b u������� o   b g���� 0 showprogress showProgress� I   j q������� &0 showprogresspanel showProgressPanel� ��� m   k l��
�� boovfals� ���� o   l m���� "0 archivefilename archiveFileName��  ��  ��  ��  � ��� l  v v������  ��  � ��� l  v v�����  �   Make the archive   � ��� r   v ~��� I   v |������� 0 makearchive makeArchive� ���� o   w x���� "0 archivefilename archiveFileName��  ��  � o      ���� 0 	theresult 	theResult� ��� l   ������  ��  � ��� l   �����  � I C If we are in verbose mode, then show the results in the log window   � ��� Z    �������� o    ����� 0 verbosemode verboseMode� k   � ��� ��� r   � ���� o   � ����� 0 	theresult 	theResult� n      ��� 1   � ���
�� 
pcnt� n   � ���� 4   � ����
�� 
texV� m   � ��� 	 log   � n   � ���� 4   � ����
�� 
scrV� m   � ��� 	 log   � 4   � ����
�� 
cwin� m   � ��� 	 log   � ���� I  � ������
�� .appSshoHnull���    obj � 4   � ����
�� 
cwin� m   � ��� 	 log   ��  ��  ��  ��  � ��� l  � �������  ��  � ��� l  � ������  � ) # Hide the progress panel (if shown)   � ��� Z   � �������� o   � ����� 0 showprogress showProgress� I   � �������� &0 hideprogresspanel hideProgressPanel� ���� m   � ���
�� boovfals��  ��  ��  ��  � ��� l  � �������  ��  � ��� l  � ������  � � � Go ahead and quit, as we are done. (This might need some rethinking, as it probably isn't the right thing to do if for instance the log window is shown, with the verbose mode on.   � ���� I  � �������
�� .aevtquitnull���    obj ��  ��  ��  �    o   � ����� (0 openwindowonlaunch openWindowOnLaunch �� k   �!  l  � �����   ) # Turn off the updating of the views     r   � �	
	 m   � ���
�� boovfals
 n       1   � ���
�� 
updV o   � ����� "0 filesdatasource filesDataSource  l  � �������  ��    l  � �����   ' ! Add the files to the data source     Y   ����� k   �  r   � � I  � �����
�� .corecrel****      � null��   ��
�� 
kocl m   � ���
�� 
datR ����
�� 
insh n   � � !   ;   � �! n   � �"#" 2  � ���
�� 
datR# o   � ����� "0 filesdatasource filesDataSource��   o      ���� 0 
thedatarow 
theDataRow $��$ r   �%&% n   �'(' 1  ��
�� 
strq( l  �)��) n   �*+* 1  ��
�� 
psxp+ l  �,��, n   �-.- 4   ���/
�� 
cobj/ o   � ���� 0 i  . o   � ����� 	0 names  ��  ��  & n      010 1  ��
�� 
pcnt1 n  232 4  ��4
�� 
datC4 m  	55  files   3 o  ���� 0 
thedatarow 
theDataRow��  �� 0 i   m   � �����  I  � ���6��
�� .corecnte****       ****6 o   � ����� 	0 names  ��  ��   787 l ������  ��  8 9:9 l ��;��  ; - ' Turn back on the updating of the views   : <��< r  !=>= m  ��
�� boovtrue> n      ?@? 1   ��
�� 
updV@ o  ���� "0 filesdatasource filesDataSource��  ��  ��  ��  s ABA l     ������  ��  B CDC l     ��E��  E � � This handler is the last handler to be called before the application quits. It's a good place to the get current settings from the setting drawer and write them out (but only if the window has been opened).   D FGF l     ��H��  H      G IJI i   6 9KLK I     ��M��
�� .appSwilQnull���    obj M o      ���� 0 	theobject 	theObject��  L Z     NO����N o     ���� 0 windowopened windowOpenedO k    PP QRQ I    �������� &0 getsettingsfromui getSettingsFromUI��  ��  R S��S I    ����~�� 0 writesettings writeSettings�  �~  ��  ��  ��  J TUT l     �}�|�}  �|  U VWV l     �{X�{  X � � This event handler is called when a UI object is clicked (any object that is linked to this handler in Interface Builder that is...).    W YZY l     �z[�z  [      Z \]\ i   : =^_^ I     �y`�x
�y .coVScliInull���    obj ` o      �w�w 0 	theobject 	theObject�x  _ Z     �abc�va =    ded n     fgf 1    �u
�u 
pnamg o     �t�t 0 	theobject 	theObjecte m    hh 
 make   b k    �ii jkj l   �sl�s  l I C Make sure that we have at least one item to make into an archive.    k m�rm Z    �no�qpn ?   qrq l   s�ps I   �ot�n
�o .corecnte****       ****t o    �m�m 0 	filenames 	fileNames�n  �p  r m    �l�l  o k    tuu vwv l   �kx�k  x C = Get the current settings in the UI from the settings drawer.   w yzy I    �j�i�h�j &0 getsettingsfromui getSettingsFromUI�i  �h  z {|{ l   �g�f�g  �f  | }~} l   �e�e   e _ Determine a good default name based on the first file item, and then ask for the archive name.   ~ ��� r    -��� b    +��� n    )��� 4  & )�d�
�d 
cwor� m   ' (�c�c��� l   &��b� c    &��� n    $��� 4   ! $�a�
�a 
cobj� m   " #�`�` � o    !�_�_ 0 	filenames 	fileNames� m   $ %�^
�^ 
TEXT�b  � m   ) *�� 
 .tar   � o      �]�] 0 defaultname defaultName� ��� Z  . ?���\�[� o   . 3�Z�Z "0 compressarchive compressArchive� r   6 ;��� b   6 9��� o   6 7�Y�Y 0 defaultname defaultName� m   7 8�� 	 .gz   � o      �X�X 0 defaultname defaultName�\  �[  � ��� l  @ @�W�V�W  �V  � ��� l  @ @�U��U  �   Setup the 'save panel'   � ��� O   @ X��� k   F W�� ��� r   F K��� m   F G��  Save Archive As   � 1   G J�T
�T 
titl� ��� r   L Q��� m   L M�� 
 Make   � 1   M P�S
�S 
proO� ��R� r   R W��� m   R S�Q
�Q boovfals� 1   S V�P
�P 
tPAD�R  � 1   @ C�O
�O 
savP� ��� l  Y Y�N�M�N  �M  � ��� l  Y Y�L��L  � d ^ Display the save panel as a sheet (we will do the processing in the 'on panel ended' handler)   � ��K� I  Y t�J��
�J .panSdisPnull���    obj � 1   Y \�I
�I 
savP� �H��
�H 
in D� o   ] b�G�G "0 defaultlocation defaultLocation� �F��
�F 
wiFN� o   e f�E�E 0 defaultname defaultName� �D��C
�D 
attT� n   i n��� m   j n�B
�B 
cwin� o   i j�A�A 0 	theobject 	theObject�C  �K  �q  p k   w ��� ��� l  w w�@��@  � D > Alert the user that they need to have at least one file item.   � ��?� I  w ��>��
�> .panSdisAnull���    obj � m   w z��  Missing Files/Folders   � �=��
�= 
as A� m   } ��<
�< EAlTcriT� �;��
�; 
mesS� m   � ��� l fYou must add files or folders by dragging them on to the application icon in order to make an archive.   � �:��9
�: 
attT� 4   � ��8�
�8 
cwin� m   � ��� 
 main   �9  �?  �r  c ��� =  � ���� n   � ���� 1   � ��7
�7 
pnam� o   � ��6�6 0 	theobject 	theObject� m   � ���  settings   � ��� k   � ��� ��� l  � ��5��5  � l f This simply toggles the state of the 'settings' button, showing/hiding the settings drawer as needed.   � ��4� O   � ���� k   � ��� ��� r   � ���� n   � ���� 1   � ��3
�3 
staB� 4   � ��2�
�2 
draA� m   � ���  settings   � o      �1�1 0 currentstate currentState� ��� l  � ��0�/�0  �/  � ��� Z   � �����.� =  � ���� o   � ��-�- 0 currentstate currentState� m   � ��,
�, EDrEdrCS� n  � ���� I   � ��+�*�)�+ 0 showsettings showSettings�*  �)  �  f   � �� ��� =  � ���� o   � ��(�( 0 currentstate currentState� m   � ��'
�' EDrEdrOT� ��&� n  � ���� I   � ��%�$�#�% 0 hidesettings hideSettings�$  �#  �  f   � ��&  �.  � ��"� l  � ��!� �!  �   �"  � 4   � ���
� 
cwin� m   � ��� 
 main   �4  � ��� =  � �� � n   � � 1   � ��
� 
pnam o   � ��� 0 	theobject 	theObject  m   � �  choose   � � k   � �  l  � ���   � � Choose the default location (folder) in which to store the archive when the application is used as a droplet (without the main window begin shown.)    	�	 I   � ����� .0 choosedefaultlocation chooseDefaultLocation�  �  �  �  �v  ] 

 l     ���  �    l     ��   h b This event handler is called when the save panel (which was shown as a sheet) has been concluded.     l     ���  �    i   > A I     �
� .panSpanEnull���    obj  o      �� 0 	theobject 	theObject ��
� 
witS o      �� 0 
withresult 
withResult�   Z     �� =     o     �� 0 	theobject 	theObject l   �
 1    �	
�	 
opeP�
   Z    /�� =    !  o    	�� 0 
withresult 
withResult! m   	 
��  k    +"" #$# r    %&% n    '(' 4    �)
� 
cobj) m    �� ( l   *�* c    +,+ n    -.- 1    �
� 
filO. 1    � 
�  
opeP, m    ��
�� 
list�  & o      ���� 0 thelocation theLocation$ /��/ r    +010 c    232 o    ���� 0 thelocation theLocation3 m    ��
�� 
TEXT1 n      454 1   ( *��
�� 
pcnt5 n    (676 4   % (��8
�� 
texF8 m   & '99  default location   7 n    %:;: 4   " %��<
�� 
draA< m   # $==  settings   ; 4    "��>
�� 
cwin> m     !?? 
 main   ��  �  �   @A@ F   2 ?BCB =  2 7DED o   2 3���� 0 	theobject 	theObjectE l  3 6F��F 1   3 6��
�� 
savP��  C =  : =GHG o   : ;���� 0 
withresult 
withResultH m   ; <���� A I��I k   B �JJ KLK l  B B��M��  M P J We need to hide the panel as we might be putting up a progress panel next   L NON r   B IPQP m   B C��
�� boovfalsQ n      RSR 1   F H��
�� 
pvisS 1   C F��
�� 
savPO TUT l  J J������  ��  U VWV l  J J��X��  X . ( Show the progress panel (if requested).   W YZY Z   J a[\����[ o   J O���� 0 showprogress showProgress\ I   R ]��]���� &0 showprogresspanel showProgressPanel] ^_^ m   S T��
�� boovtrue_ `��` n   T Yaba 1   W Y��
�� 
filNb 1   T W��
�� 
savP��  ��  ��  ��  Z cdc l  b b������  ��  d efe l  b b��g��  g p j The main point of this entire application. Make the archive (which expects everything to be a POSIX path.   f hih r   b njkj I   b l��l���� 0 makearchive makeArchivel m��m n   c hnon 1   f h��
�� 
filNo 1   c f��
�� 
savP��  ��  k o      ���� 0 	theresult 	theResulti pqp l  o o������  ��  q rsr l  o o��t��  t C = If requested, show the results of the make in the log window   s uvu Z   o �wx����w o   o t���� 0 verbosemode verboseModex k   w �yy z{z r   w �|}| o   w x���� 0 	theresult 	theResult} n      ~~ 1   � ���
�� 
pcnt n   x ���� 4   � ����
�� 
texV� m   � ��� 	 log   � n   x ���� 4   ~ ����
�� 
scrV� m   � ��� 	 log   � 4   x ~���
�� 
cwin� m   z }�� 	 log   { ���� I  � ������
�� .appSshoHnull���    obj � 4   � ����
�� 
cwin� m   � ��� 	 log   ��  ��  ��  ��  v ��� l  � �������  ��  � ��� l  � ������  � ( " Hide the progres panel (if shown)   � ���� Z   � �������� o   � ����� 0 showprogress showProgress� I   � �������� &0 hideprogresspanel hideProgressPanel� ���� m   � ���
�� boovtrue��  ��  ��  ��  ��  ��  �   ��� l     ������  ��  � ��� l     ������  ��  � ��� l      �����  �   ==== Handlers ====    � ��� l     ������  ��  � ��� l     �����  � � � This is the bread and butter of the application. It simply creates the command to be issued to 'do shell script' and returns the result.   � ��� l     �����  �      � ��� i   B E��� I      ������� 0 makearchive makeArchive� ���� o      ���� 0 archivename archiveName��  ��  � k     5�� ��� l     �����  � 3 - The 'gnutar' command in it's basic strucure.   � ��� r     ��� b     ��� b     	��� b     ��� m     ��  gnutar    � I    �������� $0 getoptionsstring getOptionsString��  ��  � m    �� 
  -f    � o   	 
���� 0 archivename archiveName� o      ���� 0 scriptcommand scriptCommand� ��� l   ������  ��  � ��� l   �����  � 1 + Add each of the file items to the command.   � ��� X    .����� r   " )��� b   " '��� b   " %��� o   " #���� 0 scriptcommand scriptCommand� 1   # $��
�� 
spac� o   % &���� 0 filename fileName� o      ���� 0 scriptcommand scriptCommand�� 0 filename fileName� o    ���� 0 	filenames 	fileNames� ��� l  / /������  ��  � ��� l  / /�����  � ' ! Tell the shell to do it's thing.   � ���� L   / 5�� I  / 4�����
�� .sysoexecTEXT���     TEXT� o   / 0���� 0 scriptcommand scriptCommand��  ��  � ��� l     ������  ��  � ��� l     �����  � � � Returns the various options chosen by the user in a simple string beginning with the required '-c' which is used to tell 'gnutar' to create a new archive. You can do a 'man gnutar' to see all of the options in a terminal window.   � ��� l     �����  �      � ��� i   F I��� I      �������� $0 getoptionsstring getOptionsString��  ��  � k     N�� ��� r     ��� m     ��  -c   � o      ���� 0 optionsstring optionsString� ��� l   ������  ��  � ��� Z    ������� o    	���� "0 compressarchive compressArchive� r    ��� b    ��� o    ���� 0 optionsstring optionsString� m    ��  z   � o      ���� 0 optionsstring optionsString��  ��  � ��� Z    '������� o    ���� 0 preserveids preserveIDs� r    #��� b    !��� o    ���� 0 optionsstring optionsString� m     ��  p   � o      ���� 0 optionsstring optionsString��  ��  � ��� Z   ( 9������� o   ( -���� 0 followlinks followLinks� r   0 5��� b   0 3   o   0 1���� 0 optionsstring optionsString m   1 2  h   � o      ���� 0 optionsstring optionsString��  ��  �  Z   : K���� o   : ?�� 0 verbosemode verboseMode r   B G b   B E	
	 o   B C�~�~ 0 optionsstring optionsString
 m   C D  v    o      �}�} 0 optionsstring optionsString��  ��    l  L L�|�{�|  �{   �z L   L N o   L M�y�y 0 optionsstring optionsString�z  �  l     �x�w�x  �w    l     �v�v   \ V Returns a self determined archive name based on the first item in the file item list.     l     �u�u          i   J M I      �t�s�r�t (0 getarchivefilename getArchiveFileName�s  �r   k     S  r       m     !!        o      �q�q "0 archivefilename archiveFileName "#" l   �p�o�p  �o  # $%$ l   �n&�n  & 6 0 Prepend the file name with the default location   % '(' Z    *)*�m�l) >   +,+ o    	�k�k "0 defaultlocation defaultLocation, m   	 
--      * k    &.. /0/ r    121 o    �j�j "0 defaultlocation defaultLocation2 o      �i�i "0 archivefilename archiveFileName0 3�h3 Z    &45�g�f4 H    66 D    787 o    �e�e "0 archivefilename archiveFileName8 m    99  /   5 r    ":;: b     <=< o    �d�d "0 archivefilename archiveFileName= m    >>  /   ; o      �c�c "0 archivefilename archiveFileName�g  �f  �h  �m  �l  ( ?@? l  + +�b�a�b  �a  @ ABA l  + +�`C�`  C w q Append the last word of the first item plus a '.tar'  or '.tar.gz' (which is the normal extension for tar files.   B DED r   + >FGF b   + <HIH b   + :JKJ o   + ,�_�_ "0 archivefilename archiveFileNameK n   , 9LML 4  6 9�^N
�^ 
cworN m   7 8�]�]��M l  , 6O�\O c   , 6PQP n   , 4RSR 4   1 4�[T
�[ 
cobjT m   2 3�Z�Z S o   , 1�Y�Y 0 	filenames 	fileNamesQ m   4 5�X
�X 
TEXT�\  I m   : ;UU 
 .tar   G o      �W�W "0 archivefilename archiveFileNameE VWV Z  ? PXY�V�UX o   ? D�T�T "0 compressarchive compressArchiveY r   G LZ[Z b   G J\]\ o   G H�S�S "0 archivefilename archiveFileName] m   H I^^ 	 .gz   [ o      �R�R "0 archivefilename archiveFileName�V  �U  W _`_ l  Q Q�Q�P�Q  �P  ` a�Oa L   Q Sbb o   Q R�N�N "0 archivefilename archiveFileName�O   cdc l     �M�L�M  �L  d efe l     �Kg�K  g A ; Loads the progress panel (if needed) and then displays it.   f hih l     �Jj�J  j      i klk i   N Qmnm I      �Io�H�I &0 showprogresspanel showProgressPanelo pqp o      �G�G $0 attachedtowindow attachedToWindowq r�Fr o      �E�E "0 archivefilename archiveFileName�F  �H  n k     |ss tut l     �Dv�D  v ) # Only load the progress panel once.   u wxw Z     yz�C�By =    {|{ o     �A�A 0 progresspanel progressPanel| m    �@
�@ 
msngz k   
 }} ~~ I  
 �?��>
�? .appSloaNnull���    obj � m   
 ��  ProgressPanel   �>   ��=� r    ��� 4    �<�
�< 
cwin� m    ��  progress   � o      �;�; 0 progresspanel progressPanel�=  �C  �B  x ��� l   �:�9�:  �9  � ��� l   �8��8  � 0 * Set the status item in the progress panel   � ��� r    3��� b    (��� m     ��  Making Archive:    � l    '��7� I    '�6��
�6 .appScalMnull���    obj � m     !��  lastPathComponent   � �5��4
�5 
psof� o   " #�3�3 "0 archivefilename archiveFileName�4  �7  � n      ��� 1   0 2�2
�2 
conT� n   ( 0��� 4   - 0�1�
�1 
texF� m   . /��  status   � o   ( -�0�0 0 progresspanel progressPanel� ��� l  4 4�/�.�/  �.  � ��� l  4 4�-��-  � 0 * Display the progress panel appropriately.   � ��� Z   4 R���,�� o   4 5�+�+ $0 attachedtowindow attachedToWindow� I  8 F�*��
�* .panSdisQnull���    obj � o   8 =�)�) 0 progresspanel progressPanel� �(��'
�( 
attT� 4   > B�&�
�& 
cwin� m   @ A�� 
 main   �'  �,  � I  I R�%��$
�% .appSshoHnull���    obj � o   I N�#�# 0 progresspanel progressPanel�$  � ��� l  S S�"�!�"  �!  � ��� l  S S� ��   � ' ! Start spinning the progress bar.   � ��� O   S |��� k   [ {�� ��� r   [ i��� m   [ \�
� boovtrue� n      ��� 1   d h�
� 
usTA� 4   \ d��
� 
proI� m   ` c��  progress   � ��� O  j {��� I  u z���
� .coVSstaAnull���    obj �  �  � 4   j r��
� 
proI� m   n q��  progress   �  � o   S X�� 0 progresspanel progressPanel�  l ��� l     ���  �  � ��� l     ���  �    Hides the progress panel.   � ��� l     ���  �      � ��� i   R U��� I      ���� &0 hideprogresspanel hideProgressPanel� ��� o      �� $0 attachedtowindow attachedToWindow�  �  � k     8�� ��� Z     +����� o     �� $0 attachedtowindow attachedToWindow� k    �� ��� O   ��� I   ��
�	
� .coVSstoTnull���    obj �
  �	  � n    ��� 4   	 ��
� 
proI� m   
 ��  progress   � o    	�� 0 progresspanel progressPanel� ��� I   ���
� .panScloPnull���    obj � o    �� 0 progresspanel progressPanel�  �  �  � I  " +���
� .appShidInull���    obj � o   " '� �  0 progresspanel progressPanel�  � ��� l  , ,������  ��  � ��� l  , ,�����  � 0 * Set the status item in the progress panel   � ���� r   , 8��� m   , -��      � n      ��� 1   5 7��
�� 
conT� n   - 5��� 4   2 5���
�� 
texF� m   3 4��  status   � o   - 2���� 0 progresspanel progressPanel��  � ��� l     ������  ��  � ��� l     �����  � S M Shows the main window, doing any necessary setup of the drawer as necessary.   � ��� l     �����  �      � ��� i   V Y��� I      �������� 0 
showwindow 
showWindow��  ��  � k     J��    O     B k    A  O    ; k    :		 

 l   ����   Initialize some settings to appropriate values for the settings drawer. These will set the current, min and max contents size to be the same, which will have the effect of keeping the settings drawer size appropriate to it's contents. (In other words it can't grow or shrink.)      r     m    ����  1    ��
�� 
leaO  r     m    ����  1    ��
�� 
traO  r    " J      m    ����� �� m    ���� ���   1    !��
�� 
conS  r   # +  J   # '!! "#" m   # $�����# $��$ m   $ %���� ���    1   ' *��
�� 
miCS %&% r   , 4'(' J   , 0)) *+* m   , -�����+ ,��, m   - .���� ���  ( 1   0 3��
�� 
maCS& -.- l  5 5������  ��  . /0/ l  5 5��1��  1   Set the UI settings   0 2��2 n  5 :343 I   6 :�������� "0 setsettingsinui setSettingsInUI��  ��  4  f   5 6��   4    ��5
�� 
draA5 m   	 
66  settings    787 l  < <������  ��  8 9��9 r   < A:;: m   < =��
�� boovtrue; 1   = @��
�� 
pvis��   4     ��<
�� 
cwin< m    == 
 main    >?> l  C C������  ��  ? @��@ r   C JABA m   C D��
�� boovtrueB o      ���� 0 windowopened windowOpened��  � CDC l     ������  ��  D EFE l     ��G��  G e _ Shows the current list of file names as a list of strings in the text view of the main window.   F HIH l     ��J��  J      I KLK i   Z ]MNM I      �������� *0 updatefilenamesinui updateFileNamesInUI��  ��  N O     %OPO k    $QQ RSR r    TUT o    ��
�� 
ret U n     VWV 1   	 ��
�� 
txdlW 1    	��
�� 
ascrS XYX r    Z[Z c    \]\ o    ���� 0 	filenames 	fileNames] m    ��
�� 
TEXT[ n      ^_^ 1    ��
�� 
pcnt_ n    `a` 4    ��b
�� 
texVb m    cc  files   a 4    ��d
�� 
scrVd m    ee  files   Y f��f r    $ghg m     ii      h n     jkj 1   ! #��
�� 
txdlk 1     !��
�� 
ascr��  P 4     ��l
�� 
cwinl m    mm 
 main   L non l     ������  ��  o pqp l     ��r��  r F @ Prompts the user to select a default location for new archives.   q sts l     ��u��  u      t vwv i   ^ axyx I      �������� .0 choosedefaultlocation chooseDefaultLocation��  ��  y k     %zz {|{ l     ��}��  } &   Setup the open panel properties   | ~~ O     ��� k    �� ��� r    ��� m    ��
�� boovtrue� 1    
��
�� 
caCD� ��� r    ��� m    ��
�� boovfals� 1    ��
�� 
caCF� ���� r    ��� m    ��  Choose   � 1    ��
�� 
proO��  � 1     ��
�� 
opeP ��� l   ������  ��  � ���� I   %����
�� .panSdisPnull���    obj � 1    ��
�� 
opeP� �����
�� 
attT� 4    !���
�� 
cwin� m     �� 
 main   ��  ��  w ��� l     ������  ��  � ��� l     �����  � U O Show's the settings drawer, also adjusting the title of the 'settings' button.   � ��� l     �����  �      � ��� i   b e��� I      �������� 0 showsettings showSettings��  ��  � O      ��� k    �� ��� O   ��� I   �����
�� .caVSopeDnull���    obj ��  � �����
�� 
on O� m    ��
�� EReTbotE��  � 4    ���
�� 
draA� m   	 
��  settings   � ���� r    ��� m    ��  Hide Settings   � n      ��� 1    ��
�� 
titl� 4    ���
�� 
butT� m    ��  settings   ��  � 4     ���
�� 
cwin� m    �� 
 main   � ��� l     ������  ��  � ��� l     �����  � U O Hide's the settings drawer, also adjusting the title of the 'settings' button.   � ��� l     �����  �      � ��� i   f i��� I      �������� 0 hidesettings hideSettings��  ��  � O     ��� k    �� ��� O   ��� I   ������
�� .caVScloDnull���    obj ��  ��  � 4    ���
�� 
draA� m   	 
��  settings   � ���� r    ��� m    ��  Show Settings   � n      ��� 1    ��
�� 
titl� 4    ���
�� 
butT� m    ��  settings   ��  � 4     ���
�� 
cwin� m    �� 
 main   � ��� l     ������  ��  � ��� l     �����  � g a Sets the settings properties based on the states of the various UI items in the settings drawer.   � ��� l     �����  �      � ��� i   j m��� I      ��~�}� &0 getsettingsfromui getSettingsFromUI�~  �}  � O     q��� k   
 p�� ��� r   
 ��� n   
 ��� 1    �|
�| 
pcnt� 4   
 �{�
�{ 
texF� m    ��  default location   � o      �z�z "0 defaultlocation defaultLocation� ��� r    %��� c    ��� l   ��y� n    ��� 1    �x
�x 
staB� 4    �w�
�w 
butT� m    ��  open window   �y  � m    �v
�v 
bool� o      �u�u (0 openwindowonlaunch openWindowOnLaunch� ��� r   & 4��� c   & .��� l  & ,��t� n   & ,   1   * ,�s
�s 
staB 4   & *�r
�r 
butT m   ( )  show progress   �t  � m   , -�q
�q 
bool� o      �p�p 0 showprogress showProgress�  r   5 C c   5 =	 l  5 ;
�o
 n   5 ; 1   9 ;�n
�n 
staB 4   5 9�m
�m 
butT m   7 8  compress archive   �o  	 m   ; <�l
�l 
bool o      �k�k "0 compressarchive compressArchive  r   D R c   D L l  D J�j n   D J 1   H J�i
�i 
staB 4   D H�h
�h 
butT m   F G  preserve ids   �j   m   J K�g
�g 
bool o      �f�f 0 preserveids preserveIDs  r   S a c   S [ l  S Y �e  n   S Y!"! 1   W Y�d
�d 
staB" 4   S W�c#
�c 
butT# m   U V$$  follow links   �e   m   Y Z�b
�b 
bool o      �a�a 0 followlinks followLinks %�`% r   b p&'& c   b j()( l  b h*�_* n   b h+,+ 1   f h�^
�^ 
staB, 4   b f�]-
�] 
butT- m   d e..  verbose mode   �_  ) m   h i�\
�\ 
bool' o      �[�[ 0 verbosemode verboseMode�`  � n     /0/ 4    �Z1
�Z 
draA1 m    22  settings   0 4     �Y3
�Y 
cwin3 m    44 
 main   � 565 l     �X�W�X  �W  6 787 l     �V9�V  9 c ] Sets the state of the UI elements int he settings drawer based upon the settings properties.   8 :;: l     �U<�U  <      ; =>= i   n q?@? I      �T�S�R�T "0 setsettingsinui setSettingsInUI�S  �R  @ O     eABA k   
 dCC DED r   
 FGF o   
 �Q�Q "0 defaultlocation defaultLocationG n      HIH 1    �P
�P 
pcntI 4    �OJ
�O 
texFJ m    KK  default location   E LML r    #NON o    �N�N (0 openwindowonlaunch openWindowOnLaunchO n      PQP 1     "�M
�M 
staBQ 4     �LR
�L 
butTR m    SS  open window   M TUT r   $ 0VWV o   $ )�K�K 0 showprogress showProgressW n      XYX 1   - /�J
�J 
staBY 4   ) -�IZ
�I 
butTZ m   + ,[[  show progress   U \]\ r   1 =^_^ o   1 6�H�H "0 compressarchive compressArchive_ n      `a` 1   : <�G
�G 
staBa 4   6 :�Fb
�F 
butTb m   8 9cc  compress archive   ] ded r   > Jfgf o   > C�E�E 0 preserveids preserveIDsg n      hih 1   G I�D
�D 
staBi 4   C G�Cj
�C 
butTj m   E Fkk  preserve ids   e lml r   K Wnon o   K P�B�B 0 followlinks followLinkso n      pqp 1   T V�A
�A 
staBq 4   P T�@r
�@ 
butTr m   R Sss  follow links   m t�?t r   X duvu o   X ]�>�> 0 verbosemode verboseModev n      wxw 1   a c�=
�= 
staBx 4   ] a�<y
�< 
butTy m   _ `zz  verbose mode   �?  B n     {|{ 4    �;}
�; 
draA} m    ~~  settings   | 4     �:
�: 
cwin m    �� 
 main   > ��� l     �9�8�9  �8  � ��� l     �7��7  � R L Registers the settings (application preferences) with the 'user defaults'.    � ��� l     �6��6  �      � ��� i   r u��� I      �5�4�3�5 $0 registersettings registerSettings�4  �3  � O     ���� k    ��� ��� l   �2��2  � ( " Add all of the new defalt entries   � ��� I   �1�0�
�1 .corecrel****      � null�0  � �/��
�/ 
kocl� m    	�.
�. 
defE� �-��
�- 
insh� n   
 ���  ;    � 2  
 �,
�, 
defE� �+��*
�+ 
prdt� K    �� �)��
�) 
pnam� m    ��  openWindowOnLaunch   � �(��'
�( 
pcnt� o    �&�& (0 openwindowonlaunch openWindowOnLaunch�'  �*  � ��� I   5�%�$�
�% .corecrel****      � null�$  � �#��
�# 
kocl� m     !�"
�" 
defE� �!��
�! 
insh� n   " &���  ;   % &� 2  " %� 
�  
defE� ���
� 
prdt� K   ' 1�� ���
� 
pnam� m   ( )��  showProgress   � ���
� 
pcnt� o   * /�� 0 showprogress showProgress�  �  � ��� I  6 M���
� .corecrel****      � null�  � ���
� 
kocl� m   8 9�
� 
defE� ���
� 
insh� n   : >���  ;   = >� 2  : =�
� 
defE� ���
� 
prdt� K   ? I�� ���
� 
pnam� m   @ A��  compressArchive   � ���
� 
pcnt� o   B G�� "0 compressarchive compressArchive�  �  � ��� I  N e���
� .corecrel****      � null�  � ���
� 
kocl� m   P Q�

�
 
defE� �	��
�	 
insh� n   R V���  ;   U V� 2  R U�
� 
defE� ���
� 
prdt� K   W a�� ���
� 
pnam� m   X Y��  preserveIDs   � ���
� 
pcnt� o   Z _�� 0 preserveids preserveIDs�  �  � ��� I  f }�� �
� .corecrel****      � null�   � ����
�� 
kocl� m   h i��
�� 
defE� ����
�� 
insh� n   j n���  ;   m n� 2  j m��
�� 
defE� �����
�� 
prdt� K   o y�� ����
�� 
pnam� m   p q��  followLinks   � �����
�� 
pcnt� o   r w���� 0 followlinks followLinks��  ��  � ��� I  ~ ������
�� .corecrel****      � null��  � ����
�� 
kocl� m   � ���
�� 
defE� ����
�� 
insh� n   � ����  ;   � �� 2  � ���
�� 
defE� �����
�� 
prdt� K   � ��� ����
�� 
pnam� m   � ���  verboseMode   � �����
�� 
pcnt� o   � ����� 0 verbosemode verboseMode��  ��  � ��� I  � ������
�� .corecrel****      � null��  � ����
�� 
kocl� m   � ���
�� 
defE� ����
�� 
insh� n   � ����  ;   � �� 2  � ���
�� 
defE� �����
�� 
prdt� K   � ��� ����
�� 
pnam� m   � ���  defaultLocation   � �����
�� 
pcnt� o   � ����� "0 defaultlocation defaultLocation��  ��  � ��� l  � �������  ��  � ��� l  � ��� ��    C = Now we need to register the new entries in the user defaults   � �� I  � �������
�� .appSregInull���    obj ��  ��  ��  � 1     ��
�� 
useD�  l     ������  ��    l     ����   N H Reads the settings (application preferences) from the 'user defaults'.      l     ��	��  	       

 i   v y I      �������� 0 readsettings readSettings��  ��   O     m k    l  r     c     n     1   
 ��
�� 
pcnt 4    
��
�� 
defE m    	  openWindowOnLaunch    m    ��
�� 
bool o      ���� (0 openwindowonlaunch openWindowOnLaunch  r    # c      n    !"! 1    ��
�� 
pcnt" 4    ��#
�� 
defE# m    $$  showProgress     m    ��
�� 
bool o      ���� 0 showprogress showProgress %&% r   $ 2'(' c   $ ,)*) n   $ *+,+ 1   ( *��
�� 
pcnt, 4   $ (��-
�� 
defE- m   & '..  compressArchive   * m   * +��
�� 
bool( o      ���� "0 compressarchive compressArchive& /0/ r   3 A121 c   3 ;343 n   3 9565 1   7 9��
�� 
pcnt6 4   3 7��7
�� 
defE7 m   5 688  preserveIDs   4 m   9 :��
�� 
bool2 o      ���� 0 preserveids preserveIDs0 9:9 r   B P;<; c   B J=>= n   B H?@? 1   F H��
�� 
pcnt@ 4   B F��A
�� 
defEA m   D EBB  followLinks   > m   H I��
�� 
bool< o      ���� 0 followlinks followLinks: CDC r   Q _EFE c   Q YGHG n   Q WIJI 1   U W��
�� 
pcntJ 4   Q U��K
�� 
defEK m   S TLL  verboseMode   H m   W X��
�� 
boolF o      ���� 0 verbosemode verboseModeD M��M r   ` lNON n   ` fPQP 1   d f��
�� 
pcntQ 4   ` d��R
�� 
defER m   b cSS  defaultLocation   O o      ���� "0 defaultlocation defaultLocation��   1     ��
�� 
useD TUT l     ������  ��  U VWV l     ��X��  X M G Writes the settings (application preferences) to the 'user defaults'.    W YZY l     ��[��  [      Z \]\ i   z }^_^ I      �������� 0 writesettings writeSettings��  ��  _ O     a`a` k    `bb cdc r    efe o    ���� (0 openwindowonlaunch openWindowOnLaunchf n      ghg 1    ��
�� 
pcnth 4    ��i
�� 
defEi m    jj  openWindowOnLaunch   d klk r    mnm o    ���� 0 showprogress showProgressn n      opo 1    ��
�� 
pcntp 4    ��q
�� 
defEq m    rr  showProgress   l sts r     ,uvu o     %���� "0 compressarchive compressArchivev n      wxw 1   ) +��
�� 
pcntx 4   % )��y
�� 
defEy m   ' (zz  compressArchive   t {|{ r   - 9}~} o   - 2���� 0 preserveids preserveIDs~ n      � 1   6 8��
�� 
pcnt� 4   2 6���
�� 
defE� m   4 5��  preserveIDs   | ��� r   : F��� o   : ?���� 0 followlinks followLinks� n      ��� 1   C E��
�� 
pcnt� 4   ? C���
�� 
defE� m   A B��  followLinks   � ��� r   G S��� o   G L���� 0 verbosemode verboseMode� n      ��� 1   P R��
�� 
pcnt� 4   L P���
�� 
defE� m   N O��  verboseMode   � ���� r   T `��� o   T Y���� "0 defaultlocation defaultLocation� n      ��� 1   ] _��
�� 
pcnt� 4   Y ]���
�� 
defE� m   [ \��  defaultLocation   ��  a 1     ��
�� 
useD] ��� l     ������  ��  � ��� l     ������  ��  � ��� l      �����  �	2	, � Copyright 2004 Apple Computer, Inc. All rights reserved.

IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc. (�Apple�) in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this Apple software constitutes acceptance of these terms.  If you do not agree with these terms, please do not use, install, modify or redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Apple grants you a personal, non-exclusive license, under Apple�s copyrights in this original Apple software (the �Apple Software�), to use, reproduce, modify and redistribute the Apple Software, with or without modifications, in source and/or binary forms; provided that if you redistribute the Apple Software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the Apple Software.  Neither the name, trademarks, service marks or logos of Apple Computer, Inc. may be used to endorse or promote products derived from the Apple Software without specific prior written permission from Apple.  Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. 

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.    � ��� l     ������  ��  � ��� l     ������  ��  � ���� j   ~ ������ 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier� m   ~ ���  Application.applescript   ��       %��������������� 1��������������������������������  � #�~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�~ (0 openwindowonlaunch openWindowOnLaunch�} 0 showprogress showProgress�| "0 compressarchive compressArchive�{ 0 preserveids preserveIDs�z 0 followlinks followLinks�y 0 verbosemode verboseMode�x "0 defaultlocation defaultLocation�w 0 windowopened windowOpened�v 0 progresspanel progressPanel�u 0 	filenames 	fileNames�t "0 filesdatasource filesDataSource
�s .appSwiFLnull���    obj 
�r .appSlauNnull���    obj 
�q .appSawFNnull���    obj 
�p .drADdroRnull���    obj 
�o .aevtodocnull  �    alis
�n .appSwilQnull���    obj 
�m .coVScliInull���    obj 
�l .panSpanEnull���    obj �k 0 makearchive makeArchive�j $0 getoptionsstring getOptionsString�i (0 getarchivefilename getArchiveFileName�h &0 showprogresspanel showProgressPanel�g &0 hideprogresspanel hideProgressPanel�f 0 
showwindow 
showWindow�e *0 updatefilenamesinui updateFileNamesInUI�d .0 choosedefaultlocation chooseDefaultLocation�c 0 showsettings showSettings�b 0 hidesettings hideSettings�a &0 getsettingsfromui getSettingsFromUI�` "0 setsettingsinui setSettingsInUI�_ $0 registersettings registerSettings�^ 0 readsettings readSettings�] 0 writesettings writeSettings�\ 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier
�� boovtrue
�� boovtrue
�� boovtrue
�� boovtrue
�� boovfals
�� boovfals
�� boovfals
�� 
msng� �[�Z�[  �Z  
� 
msng� �Y U�X�W���V
�Y .appSwiFLnull���    obj �X 0 	theobject 	theObject�W  � �U�U 0 	theobject 	theObject� �T�S�T $0 registersettings registerSettings�S 0 readsettings readSettings�V fEc  O*j+  O*j+ � �R l�Q�P���O
�R .appSlauNnull���    obj �Q 0 	theobject 	theObject�P  � �N�N 0 	theobject 	theObject� �M�L�M 0 
showwindow 
showWindow�L 0 showsettings showSettings�O b  f  *j+  O*j+ Y h� �K ��J�I���H
�K .appSawFNnull���    obj �J 0 	theobject 	theObject�I  � �G�G 0 	theobject 	theObject� �F�E�D�C�B ��A�@�? ��> � ��=
�F 
kocl
�E 
datS
�D 
insh
�C 
prdt
�B 
pnam�A 
�@ .corecrel****      � null
�? 
datB
�> 
draT
�= .appSregInull���    obj �H H*���*�-6���l� Ec  
O*���b  
�-6���l� Ob  
��,FO� *���lvl U� �< ��;�:���9
�< .drADdroRnull���    obj �; 0 	theobject 	theObject�: �8�7�6
�8 
draI�7 0 draginfo dragInfo�6  � �5�4�3�2�1�0�5 0 	theobject 	theObject�4 0 draginfo dragInfo�3 0 	datatypes 	dataTypes�2 0 thefiles theFiles�1 0 theitem theItem�0 0 
thedatarow 
theDataRow� �/�. � ��-�,�+�*�)�(�'�&�%�$�#�"Da
�/ 
pasE
�. 
typP
�- 
preQ
�, 
pcnt
�+ .corecnte****       ****
�* 
updV
�) 
kocl
�( 
cobj
�' 
datR
�& 
insh�% 
�$ .corecrel****      � null
�# 
strq
�" 
datC�9 ���,�,E�O�� �jvE�O��,�,FO��,�,E�O�j j _fb  
�,FO E�[��l kh *���b  
�-6� E�O��,��a /�,FOb  	��,kv%Ec  	[OY��Oeb  
�,FY hY hOa ��,�,FOe� �!u� ����
�! .aevtodocnull  �    alis�  	0 names  �  � ������ 	0 names  � 0 i  � "0 archivefilename archiveFileName� 0 	theresult 	theResult� 0 
thedatarow 
theDataRow� �������������������
�	������5
� .corecnte****       ****
� 
cobj
� 
psxp
� 
strq� 0 
showwindow 
showWindow� (0 getarchivefilename getArchiveFileName� &0 showprogresspanel showProgressPanel� 0 makearchive makeArchive
� 
cwin
� 
scrV
� 
texV
� 
pcnt
� .appSshoHnull���    obj � &0 hideprogresspanel hideProgressPanel
�
 .aevtquitnull���    obj 
�	 
updV
� 
kocl
� 
datR
� 
insh� 
� .corecrel****      � null
� 
datC�& (k�j  kh b  	��/�,�,kv%Ec  	[OY��Ob    b   
*j+ Y hY hOb   neEc  O*j+ E�Ob   *f�l+ Y hO*�k+ E�Ob   �*��/��/��/�,FO*��/j Y hOb   *fk+ Y hO*j Y ib    `fb  
a ,FO Bk�j  kh *a a a b  
a -6a  E�O��/�,�,�a a /�,F[OY��Oeb  
a ,FY h� �L�� ����
� .appSwilQnull���    obj � 0 	theobject 	theObject�   � ���� 0 	theobject 	theObject� ������ &0 getsettingsfromui getSettingsFromUI�� 0 writesettings writeSettings�� b   *j+  O*j+ Y h� ��_��������
�� .coVScliInull���    obj �� 0 	theobject 	theObject��  � �������� 0 	theobject 	theObject�� 0 defaultname defaultName�� 0 currentstate currentState� '��h��������������������������������������������������������������
�� 
pnam
�� .corecnte****       ****�� &0 getsettingsfromui getSettingsFromUI
�� 
cobj
�� 
TEXT
�� 
cwor
�� 
savP
�� 
titl
�� 
proO
�� 
tPAD
�� 
in D
�� 
wiFN
�� 
attT
�� 
cwin�� 
�� .panSdisPnull���    obj 
�� 
as A
�� EAlTcriT
�� 
mesS
�� .panSdisAnull���    obj 
�� 
draA
�� 
staB
�� EDrEdrCS�� 0 showsettings showSettings
�� EDrEdrOT�� 0 hidesettings hideSettings�� .0 choosedefaultlocation chooseDefaultLocation�� ���,�  �b  	j j c*j+ Ob  	�k/�&�i/�%E�Ob   
��%E�Y hO*�, �*�,FO�*�,FOf*�,FUO*�,�b  a �a �a ,a  Y "a a a a a a *a a /a  Y `��,a   C*a a / 4*a a /a  ,E�O�a !  
)j+ "Y �a #  
)j+ $Y hOPUY ��,a %  
*j+ &Y h� ����������
�� .panSpanEnull���    obj �� 0 	theobject 	theObject�� ������
�� 
witS�� 0 
withresult 
withResult��  � ���������� 0 	theobject 	theObject�� 0 
withresult 
withResult�� 0 thelocation theLocation�� 0 	theresult 	theResult� ������������?��=��9��������������������������
�� 
opeP
�� 
filO
�� 
list
�� 
cobj
�� 
TEXT
�� 
cwin
�� 
draA
�� 
texF
�� 
pcnt
�� 
savP
�� 
bool
�� 
pvis
�� 
filN�� &0 showprogresspanel showProgressPanel�� 0 makearchive makeArchive
�� 
scrV
�� 
texV
�� .appSshoHnull���    obj �� &0 hideprogresspanel hideProgressPanel�� ��*�,  ,�k  "*�,�,�&�k/E�O��&*��/��/��/�,FY hY ��*�, 	 �k �& tf*�,�,FOb   *e*�,�,l+ Y hO**�,�,k+ E�Ob   (�*�a /a a /a a /�,FO*�a /j Y hOb   *ek+ Y hY h� ������������� 0 makearchive makeArchive�� ����� �  ���� 0 archivename archiveName��  � �������� 0 archivename archiveName�� 0 scriptcommand scriptCommand�� 0 filename fileName� ���������������� $0 getoptionsstring getOptionsString
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
spac
�� .sysoexecTEXT���     TEXT�� 6�*j+ %�%�%E�O b  	[��l kh ��%�%E�[OY��O�j � ������������� $0 getoptionsstring getOptionsString��  ��  � ���� 0 optionsstring optionsString� ����� O�E�Ob   
��%E�Y hOb   
��%E�Y hOb   
��%E�Y hOb   
��%E�Y hO�� ������������ (0 getarchivefilename getArchiveFileName��  ��  � ���� "0 archivefilename archiveFileName� 	!-9>������U^
�� 
cobj
�� 
TEXT
�� 
cwor�� T�E�Ob  � b  E�O�� 
��%E�Y hY hO�b  	�k/�&�i/%�%E�Ob   
��%E�Y hO�� ��n���������� &0 showprogresspanel showProgressPanel�� ����� �  ������ $0 attachedtowindow attachedToWindow�� "0 archivefilename archiveFileName��  � ������ $0 attachedtowindow attachedToWindow�� "0 archivefilename archiveFileName� ����������������������������������
�� 
msng
�� .appSloaNnull���    obj 
�� 
cwin
�� 
psof
�� .appScalMnull���    obj 
�� 
texF
�� 
conT
�� 
attT
�� .panSdisQnull���    obj 
�� .appSshoHnull���    obj 
�� 
proI
�� 
usTA
�� .coVSstaAnull���    obj �� }b  �  �j O*��/Ec  Y hO���l %b  ��/�,FO� b  �*��/l Y b  j Ob   "e*a a /a ,FO*a a / *j UU� ������������� &0 hideprogresspanel hideProgressPanel�� ����� �  ���� $0 attachedtowindow attachedToWindow��  � ���� $0 attachedtowindow attachedToWindow� 	����������~��}
�� 
proI
�� .coVSstoTnull���    obj 
�� .panScloPnull���    obj 
� .appShidInull���    obj 
�~ 
texF
�} 
conT�� 9�  b  ��/ *j UOb  j Y b  j O�b  ��/�,F� �|��{�z���y�| 0 
showwindow 
showWindow�{  �z  �  � �x=�w6�v�u�t�s�r�q�p�o�n�m
�x 
cwin
�w 
draA�v 
�u 
leaO
�t 
traO�s��r �
�q 
conS
�p 
miCS
�o 
maCS�n "0 setsettingsinui setSettingsInUI
�m 
pvis�y K*��/ <*��/ .�*�,FO�*�,FO��lv*�,FO��lv*�,FO��lv*�,FO)j+ UOe*�,FUOeEc  � �lN�k�j���i�l *0 updatefilenamesinui updateFileNamesInUI�k  �j  �  � �hm�g�f�e�d�ce�bc�ai
�h 
cwin
�g 
ret 
�f 
ascr
�e 
txdl
�d 
TEXT
�c 
scrV
�b 
texV
�a 
pcnt�i &*��/ ���,FOb  	�&*��/��/�,FO���,FU� �`y�_�^���]�` .0 choosedefaultlocation chooseDefaultLocation�_  �^  �  � 	�\�[�Z��Y�X�W��V
�\ 
opeP
�[ 
caCD
�Z 
caCF
�Y 
proO
�X 
attT
�W 
cwin
�V .panSdisPnull���    obj �] &*�, e*�,FOf*�,FO�*�,FUO*�,�*��/l � �U��T�S���R�U 0 showsettings showSettings�T  �S  �  � �Q��P��O�N�M��L��K
�Q 
cwin
�P 
draA
�O 
on O
�N EReTbotE
�M .caVSopeDnull���    obj 
�L 
butT
�K 
titl�R !*��/ *��/ 	*��l UO�*��/�,FU� �J��I�H���G�J 0 hidesettings hideSettings�I  �H  �  � 	�F��E��D��C��B
�F 
cwin
�E 
draA
�D .caVScloDnull���    obj 
�C 
butT
�B 
titl�G *��/ *��/ *j UO�*��/�,FU� �A��@�?���>�A &0 getsettingsfromui getSettingsFromUI�@  �?  �  � �=4�<2�;��:�9��8�7$.
�= 
cwin
�< 
draA
�; 
texF
�: 
pcnt
�9 
butT
�8 
staB
�7 
bool�> r*��/��/ h*��/�,Ec  O*��/�,�&Ec   O*��/�,�&Ec  O*��/�,�&Ec  O*��/�,�&Ec  O*��/�,�&Ec  O*��/�,�&Ec  U� �6@�5�4���3�6 "0 setsettingsinui setSettingsInUI�5  �4  �  � �2��1~�0K�/�.S�-[cksz
�2 
cwin
�1 
draA
�0 
texF
�/ 
pcnt
�. 
butT
�- 
staB�3 f*��/��/ \b  *��/�,FOb   *��/�,FOb  *��/�,FOb  *��/�,FOb  *��/�,FOb  *��/�,FOb  *��/�,FU� �,��+�*���)�, $0 registersettings registerSettings�+  �*  �  � �(�'�&�%�$�#��"�!� ��������
�( 
useD
�' 
kocl
�& 
defE
�% 
insh
�$ 
prdt
�# 
pnam
�" 
pcnt�! �  
� .corecrel****      � null
� .appSregInull���    obj �) �*�, �*���*�-6����b   �� 
O*���*�-6����b  �� 
O*���*�-6����b  �� 
O*���*�-6����b  �� 
O*���*�-6����b  �� 
O*���*�-6����b  �� 
O*���*�-6��a �b  �� 
O*j U� ������� 0 readsettings readSettings�  �  �  � ����$.8BLS
� 
useD
� 
defE
� 
pcnt
� 
bool� n*�, h*��/�,�&Ec   O*��/�,�&Ec  O*��/�,�&Ec  O*��/�,�&Ec  O*��/�,�&Ec  O*��/�,�&Ec  O*��/�,Ec  U� �_������ 0 writesettings writeSettings�  �  �  � 
��j�rz����
� 
useD
� 
defE
� 
pcnt� b*�, \b   *��/�,FOb  *��/�,FOb  *��/�,FOb  *��/�,FOb  *��/�,FOb  *��/�,FOb  *��/�,FUascr  ��ޭ