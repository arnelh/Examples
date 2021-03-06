FasdUAS 1.101.10   ��   ��    k             l      �� ��      Tool Helper.applescript        	  l     ������  ��   	  
  
 l      �� ��   �� This example will help to find shell commands and then provide a window containing the man page for that command. You choose how to search by choosing from several choices in a popup button: "begins with", "contains", "ends with" and "is". The strategy employed is to get a list of all of the command names at starup and then search through that list when requested, displaying the results of the ones found.          l     ������  ��        l     ������  ��        l      �� ��      ==== Properties ====          l     ������  ��        j     �� �� (0 commandsdatasource commandsDataSource  m     ��
�� 
msng      j    �� �� 0 commandnames commandNames  J    ����        j    	�� �� 0 manpagewindow manPageWindow  m    ��
�� 
msng       l     ������  ��      ! " ! l     ������  ��   "  # $ # l      �� %��   %    ==== Event Handlers ====     $  & ' & l     ������  ��   '  ( ) ( l     �� *��   * � The "will finish launching" event handler is the first event handler called in the startup sequence and is a good place to do any type of initialization work that doesn't require any UI. For this example we will get a list of all of the command names.    )  + , + l     ������  ��   ,  - . - i   
  / 0 / I     �� 1��
�� .appSwiFLnull���    obj  1 o      ���� 0 	theobject 	theObject��   0 k      2 2  3 4 3 l     �� 5��   5WQ The quickest method of getting a list of all of the command names appears to be to get the information using "ls" in a "do shell script". We want to get a list of all of the commands from the following locations: /bin, /usr/bin, /usr/sbin. We can do this by concating the commands together with the ";" character and then piping ("|") the results through the "sort" shell command passing it the "-u" option which eliminates any duplicates. We then take the result from the do shell command (which will be a string with return characters between each item) and convert it to a list of strings.    4  6�� 6 r      7 8 7 n      9 : 9 2    ��
�� 
cpar : l     ;�� ; I    �� <��
�� .sysoexecTEXT���     TEXT < m      = = 4 .ls /usr/bin ; ls /usr/sbin ; ls /bin | sort -u   ��  ��   8 o      ���� 0 commandnames commandNames��   .  > ? > l     ������  ��   ?  @ A @ l     ������  ��   A  B C B l     �� D��   D � � The "awake from nib" event handler is called when the object is loaded from a nib file. It's a good place to initialize one or more items.    C  E F E l     ������  ��   F  G H G i     I J I I     �� K��
�� .appSawFNnull���    obj  K o      ���� 0 	theobject 	theObject��   J Z     | L M N�� L =     O P O n      Q R Q 1    ��
�� 
pnam R o     ���� 0 	theobject 	theObject P m     S S 
 main    M k     T T  U V U l   �� W��   W B < When the window is loaded, be sure to hide the status items    V  X�� X I    �� Y���� 0 
hidestatus 
hideStatus Y  Z�� Z o   	 
���� 0 	theobject 	theObject��  ��  ��   N  [ \ [ =    ] ^ ] n     _ ` _ 1    ��
�� 
pnam ` o    ���� 0 	theobject 	theObject ^ m     a a  man page    \  b c b k      d d  e f e l   �� g��   g H B If the man page window is being loaded then set a reference to it    f  h�� h r      i j i o    ���� 0 	theobject 	theObject j o      ���� 0 manpagewindow manPageWindow��   c  k l k =  # ( m n m n   # & o p o 1   $ &��
�� 
pnam p o   # $���� 0 	theobject 	theObject n m   & ' q q  commands    l  r�� r k   + x s s  t u t l  + +�� v��   v   Create the data source    u  w x w r   + B y z y I  + <���� {
�� .corecrel****      � null��   { �� | }
�� 
kocl | m   - .��
�� 
datS } �� ~ 
�� 
insh ~ n   / 3 � � �  ;   2 3 � 2  / 2��
�� 
datS  �� ���
�� 
prdt � K   4 8 � � �� ���
�� 
pnam � m   5 6 � �  commands   ��  ��   z o      ���� (0 commandsdatasource commandsDataSource x  � � � l  C C������  ��   �  � � � l  C C�� ���   �   Create the data columns    �  � � � I  C X���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   E F��
�� 
datB � �� � �
�� 
insh � n   G O � � �  ;   N O � n   G N � � � 2  L N��
�� 
datB � o   G L���� (0 commandsdatasource commandsDataSource � �� ���
�� 
prdt � K   P T � � �� ���
�� 
pnam � m   Q R � �  command   ��  ��   �  � � � I  Y n���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   [ \��
�� 
datB � �� � �
�� 
insh � n   ] e � � �  ;   d e � n   ] d � � � 2  b d��
�� 
datB � o   ] b���� (0 commandsdatasource commandsDataSource � �� ���
�� 
prdt � K   f j � � �� ���
�� 
pnam � m   g h � �  description   ��  ��   �  � � � l  o o������  ��   �  � � � l  o o�� ���   � / ) Assign the data source to the table view    �  ��� � r   o x � � � o   o t���� (0 commandsdatasource commandsDataSource � n       � � � m   u w��
�� 
datS � o   t u���� 0 	theobject 	theObject��  ��  ��   H  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l     �� ���   � � � The "launched" is one of the last event handlers that is called in the startup sequence. In this case we want to show our main window.    �  � � � l     ������  ��   �  � � � i     � � � I     �� ���
�� .appSlauNnull���    obj  � o      ���� 0 	theobject 	theObject��   � I    �� ���
�� .appSshoHnull���    obj  � 4     �� �
�� 
cwin � m     � � 
 main   ��   �  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l     �� ���   � � ~ The "clicked" event handler is called (in this example) when the "Find" button is clicked. We then initiate our find process.    �  � � � l     ��~�  �~   �  � � � i     � � � I     �} ��|
�} .coVScliInull���    obj  � o      �{�{ 0 	theobject 	theObject�|   � Z      � ��z�y � =     � � � n      � � � 1    �x
�x 
pnam � o     �w�w 0 	theobject 	theObject � m     � � 
 find    � I    �v ��u�v 0 findcommands findCommands �  ��t � n   	  � � � m   
 �s
�s 
cwin � o   	 
�r�r 0 	theobject 	theObject�t  �u  �z  �y   �  � � � l     �q�p�q  �p   �  � � � l     �o�n�o  �n   �  � � � i     � � � I     �m ��l
�m .coVSdouCnull���    obj  � o      �k�k 0 	theobject 	theObject�l   � Z     � � ��j�i � =     � � � n      � � � 1    �h
�h 
pnam � o     �g�g 0 	theobject 	theObject � m     � �  commands    � k    � � �  � � � l   �f ��f   � ; 5 Show and update the message items in the main window    �  � � � I    �e ��d�e 0 
showstatus 
showStatus �  ��c � n   	  � � � m   
 �b
�b 
cwin � o   	 
�a�a 0 	theobject 	theObject�c  �d   �  � � � I    �` ��_�` *0 updatestatusmessage updateStatusMessage �  � � � n     � � � m    �^
�^ 
cwin � o    �]�] 0 	theobject 	theObject �  ��\ � m     � �  Getting the man page...   �\  �_   �    l   �[�Z�[  �Z    l   �Y�Y   , & Get the clicked row of the table view     r      n    	
	 1    �X
�X 
cliR
 o    �W�W 0 	theobject 	theObject o      �V�V 0 therow theRow  r   ! ) n   ! ' 4   $ '�U
�U 
datR o   % &�T�T 0 therow theRow n   ! $ m   " $�S
�S 
datS o   ! "�R�R 0 	theobject 	theObject o      �Q�Q 0 
thedatarow 
theDataRow  l  * *�P�O�P  �O    l  * *�N�N   "  Get the name of the command     r   * 2 n   * 0 1   . 0�M
�M 
pcnt n   * .  4   + .�L!
�L 
datC! m   , -""  command     o   * +�K�K 0 
thedatarow 
theDataRow o      �J�J  0 thecommandname theCommandName #$# l  3 3�I�H�I  �H  $ %&% l  3 3�G'�G  ' ( " See if the window is already open   & ()( r   3 ;*+* I   3 9�F,�E�F *0 findwindowwithtitle findWindowWithTitle, -�D- o   4 5�C�C  0 thecommandname theCommandName�D  �E  + o      �B�B 0 	thewindow 	theWindow) ./. Z   < �01�A20 >  < ?343 o   < =�@�@ 0 	thewindow 	theWindow4 m   = >�?
�? 
msng1 k   B G55 676 l  B B�>8�>  8 !  Just bring it to the front   7 9�=9 I  B G�<:�;
�< .appSshoHnull���    obj : o   B C�:�: 0 	thewindow 	theWindow�;  �=  �A  2 k   J �;; <=< l  J J�9>�9  > = 7 Load a new instance of the man page window and show it   = ?@? I  J O�8A�7
�8 .appSloaNnull���    obj A m   J KBB  ManPage   �7  @ CDC r   P [EFE o   P Q�6�6  0 thecommandname theCommandNameF n      GHG 1   V Z�5
�5 
titlH o   Q V�4�4 0 manpagewindow manPageWindowD IJI l  \ \�3�2�3  �2  J KLK l  \ \�1M�1  M F @ Get the man page for the command, cleaning it up in the process   L NON r   \ kPQP I  \ i�0R�/
�0 .sysoexecTEXT���     TEXTR b   \ eSTS b   \ aUVU m   \ _WW 
 man    V o   _ `�.�.  0 thecommandname theCommandNameT m   a dXX   | perl -pe 's/.\x08//g'   �/  Q o      �-�- 0 	theresult 	theResultO YZY l  l l�,�+�,  �+  Z [\[ l  l l�*]�*  ] @ : Put the results into the text view of our man page window   \ ^_^ r   l �`a` o   l m�)�) 0 	theresult 	theResulta n      bcb 1   � ��(
�( 
pcntc n   m �ded 4   y ��'f
�' 
texVf m   | gg  man page   e n   m yhih 4   r y�&j
�& 
scrVj m   u xkk  man page   i o   m r�%�% 0 manpagewindow manPageWindow_ lml l  � ��$�#�$  �#  m non l  � ��"p�"  p   Show the window   o q�!q I  � �� r�
�  .appSshoHnull���    obj r o   � ��� 0 manpagewindow manPageWindow�  �!  / sts l  � ����  �  t uvu l  � ��w�  w   Hide the status items   v x�x I   � ��y�� 0 
hidestatus 
hideStatusy z�z n   � �{|{ m   � ��
� 
cwin| o   � ��� 0 	theobject 	theObject�  �  �  �j  �i   � }~} l     ���  �  ~ � l     ���  �  � ��� l     ���  � � � The "action" event handler is called (in this example) when a menu item is chosen from the popup button. We then initiate our find process.   � ��� l     ���  �  � ��� i    !��� I     ���
� .coVSactTnull���    obj � o      �� 0 	theobject 	theObject�  � Z     ���
�	� =    ��� n     ��� 1    �
� 
pnam� o     �� 0 	theobject 	theObject� m    �� 	 how   � I    ���� 0 findcommands findCommands� ��� n   	 ��� m   
 �
� 
cwin� o   	 
�� 0 	theobject 	theObject�  �  �
  �	  � ��� l     �� �  �   � ��� l     ������  ��  � ��� l      �����  �   ==== Handlers ====    � ��� l     ������  ��  � ��� l     �����  � � � This handler is called to find any commands that meet the criteria specified in the UI (how and what). It also is responsible for providing any feedback during the find, such as showing, updating and hiding the status items in the window.   � ��� l     ������  ��  � ��� i   " %��� I      ������� 0 findcommands findCommands� ���� o      ���� 0 	thewindow 	theWindow��  ��  � k     k�� ��� l     �����  �    Show the the status items   � ��� I     ������� 0 
showstatus 
showStatus� ���� o    ���� 0 	thewindow 	theWindow��  ��  � ��� I    ������� *0 updatestatusmessage updateStatusMessage� ��� o    	���� 0 	thewindow 	theWindow� ���� m   	 
��  Finding commands...   ��  ��  � ��� l   ������  ��  � ��� l   �����  � c ] Find the commands with what coming from the text field, and how coming from the popup button   � ��� r    "��� I     ������� $0 commandswithname commandsWithName� ��� n    ��� 1    ��
�� 
pcnt� n    ��� 4    ���
�� 
texF� m    �� 
 name   � o    ���� 0 	thewindow 	theWindow� ���� n    ��� 1    ��
�� 
titl� n    ��� 4    ���
�� 
popB� m    �� 	 how   � o    ���� 0 	thewindow 	theWindow��  ��  � o      ���� 0 thecommands theCommands� ��� l  # #������  ��  � ��� l  # #�����  � L F Turn off the updating of the table view while we load the data source   � ��� r   # ,��� m   # $��
�� boovfals� n      ��� 1   ) +��
�� 
updV� o   $ )���� (0 commandsdatasource commandsDataSource� ��� l  - -������  ��  � ��� l  - -�����  � 3 - Delete any existing items in the data source   � ��� I  - 8�����
�� .coredelonull���    obj � n   - 4��� 2   2 4��
�� 
datR� o   - 2���� (0 commandsdatasource commandsDataSource��  � ��� l  9 9������  ��  � ��� l  9 9�����  � < 6 Make sure that we actually found at least one command   � ��� Z   9 Z������� ?   9 @��� l  9 >���� I  9 >�����
�� .corecnte****       ****� o   9 :���� 0 thecommands theCommands��  ��  � m   > ?����  � k   C V�� ��� l  C C�����  �    Update the status message   � ��� I   C J������� *0 updatestatusmessage updateStatusMessage� ��� o   D E���� 0 	thewindow 	theWindow� ���� m   E F��  Adding commands...   ��  ��  � � � l  K K������  ��     l  K K����   M G Add the list of commands to the data source using the "append" command    �� I  K V��
�� .daVSappPnull���    obj  o   K P���� (0 commandsdatasource commandsDataSource ����
�� 
with o   Q R���� 0 thecommands theCommands��  ��  ��  ��  � 	 l  [ [������  ��  	 

 l  [ [����   2 , Turn back on the updating of the table view     r   [ d m   [ \��
�� boovtrue n       1   a c��
�� 
updV o   \ a���� (0 commandsdatasource commandsDataSource  l  e e������  ��    l  e e����     Hide the status items    �� I   e k������ 0 
hidestatus 
hideStatus �� o   f g���� 0 	thewindow 	theWindow��  ��  ��  �  l     ������  ��    l     ������  ��     l     ��!��  ! � � This handler is used to look through our list of command names, returning a list of found commands, which also includes getting and returning the description of the command     "#" l     ������  ��  # $%$ i   & )&'& I      ��(���� $0 commandswithname commandsWithName( )*) o      ���� 0 
whattofind 
whatToFind* +��+ o      ���� 0 	howtofind 	howToFind��  ��  ' k    U,, -.- l     ��/��  / Y S Set our result to a known good value, in this case an empty list will do just fine   . 010 r     232 J     ����  3 o      ���� 0 thecommands theCommands1 454 l   ������  ��  5 676 l   ��8��  8 1 + Make sure that we have a value to find for   7 9:9 Z   R;<����; ?    =>= l   
?��? I   
��@��
�� .corecnte****       ****@ o    ���� 0 
whattofind 
whatToFind��  ��  > m   
 ����  < k   NAA BCB l   ��D��  D 0 * Set our found names list to an empty list   C EFE r    GHG J    ����  H o      ���� &0 foundcommandnames foundCommandNamesF IJI l   ������  ��  J KLK l   ��M��  M � � Based on the "howToFind" repeat through each of the command names in our commandNames list finding the appropriate items and adding it to the foundCommandNames list   L NON Z    �PQR��P =   STS o    ���� 0 	howtofind 	howToFindT m    UU  begins with   Q X    AV��WV Z   . <XY����X C  . 1Z[Z o   . /���� 0 i  [ o   / 0���� 0 
whattofind 
whatToFindY s   4 8\]\ o   4 5���� 0 i  ] n      ^_^  ;   6 7_ o   5 6���� &0 foundcommandnames foundCommandNames��  ��  �� 0 i  W o    "���� 0 commandnames commandNamesR `a` =  D Gbcb o   D E���� 0 	howtofind 	howToFindc m   E Fdd  contains   a efe X   J qg��hg Z   ^ lij��~i E   ^ aklk o   ^ _�}�} 0 i  l o   _ `�|�| 0 
whattofind 
whatToFindj s   d hmnm o   d e�{�{ 0 i  n n      opo  ;   f gp o   e f�z�z &0 foundcommandnames foundCommandNames�  �~  �� 0 i  h o   M R�y�y 0 commandnames commandNamesf qrq =  t wsts o   t u�x�x 0 	howtofind 	howToFindt m   u vuu  	ends with   r vwv X   z �x�wyx Z   � �z{�v�uz D   � �|}| o   � ��t�t 0 i  } o   � ��s�s 0 
whattofind 
whatToFind{ s   � �~~ o   � ��r�r 0 i   n      ���  ;   � �� o   � ��q�q &0 foundcommandnames foundCommandNames�v  �u  �w 0 i  y o   } ��p�p 0 commandnames commandNamesw ��� =  � ���� o   � ��o�o 0 	howtofind 	howToFind� m   � ���  is   � ��n� X   � ���m�� Z   � ����l�k� =  � ���� l  � ���j� c   � ���� o   � ��i�i 0 i  � m   � ��h
�h 
TEXT�j  � o   � ��g�g 0 
whattofind 
whatToFind� s   � ���� o   � ��f�f 0 i  � n      ���  ;   � �� o   � ��e�e &0 foundcommandnames foundCommandNames�l  �k  �m 0 i  � o   � ��d�d 0 commandnames commandNames�n  ��  O ��� l  � ��c�b�c  �b  � ��� l  � ��a��a  � 8 2 Make sure that we found at least one command name   � ��`� Z   �N���_�^� ?   � ���� l  � ���]� I  � ��\��[
�\ .corecnte****       ****� o   � ��Z�Z &0 foundcommandnames foundCommandNames�[  �]  � m   � ��Y�Y  � k   �J�� ��� l  � ��X��X  � . ( Iterate through each of the found names   � ��W� X   �J��V�� Q   �E���U� k   �<�� ��� r   � ���� m   � ���      � o      �T�T  0 thedescription theDescription� ��� l  � ��S�R�S  �R  � ��� l  � ��Q��Q  � H B We will use the "whatis" shell command to get the description of    � ��� r   ���� I  ��P��O
�P .sysoexecTEXT���     TEXT� l  � ���N� b   � ���� m   � ���  whatis    � l  � ���M� c   � ���� o   � ��L�L 0 i  � m   � ��K
�K 
TEXT�M  �N  �O  � o      �J�J 0 	theresult 	theResult� ��� l �I�H�I  �H  � ��� l �G��G  � � � Unfortunately, the result will look something like "more(1), page(1)         - file perusal filter for crt viewing". We only want to get portion of the text following the " - " characters. This can be done using the following bit of script.   � ��� r  ��� I �F�E�
�F .sysooffslong    ��� null�E  � �D��
�D 
psof� m  �� 	  -    � �C��B
�C 
psin� o  	
�A�A 0 	theresult 	theResult�B  � o      �@�@ 0 
dashoffset  � ��� r  ��� I �?�>�
�? .sysooffslong    ��� null�>  � �=��
�= 
psof� o  �<
�< 
ret � �;��:
�; 
psin� o  �9�9 0 	theresult 	theResult�:  � o      �8�8 0 firstreturn firstReturn� ��� r  4��� c  2��� n  0��� 7 0�7��
�7 
cha � l &*��6� [  &*��� o  '(�5�5 0 
dashoffset  � m  ()�4�4 �6  � l +/��3� \  +/��� o  ,-�2�2 0 firstreturn firstReturn� m  -.�1�1 �3  � o   �0�0 0 	theresult 	theResult� m  01�/
�/ 
TEXT� o      �.�.  0 thedescription theDescription� ��� l 55�-�,�-  �,  � ��� l 55�+��+  � Q K Add the command name and description as a list the end of our command list   � ��*� s  5<��� J  59�� ��� o  56�)�) 0 i  � ��(� o  67�'�'  0 thedescription theDescription�(  � n      ���  ;  :;� o  9:�&�& 0 thecommands theCommands�*  � R      �%�$�#
�% .ascrerr ****      � ****�$  �#  �U  �V 0 i  � o   � ��"�" &0 foundcommandnames foundCommandNames�W  �_  �^  �`  ��  ��  : ��� l SS�!� �!  �   � ��� l SS���  �   Return our result   � ��� L  SU�� o  ST�� 0 thecommands theCommands�  % ��� l     ���  �  � ��� l     ���  �  �    l      ��   !  ==== Status Handlers ====      l     ���  �    l     ��   � { This handler will show the various status items in the window, along with starting the animation of the progress indicator    	 l     ���  �  	 

 i   * - I      ��� 0 
showstatus 
showStatus � o      �� 0 	thewindow 	theWindow�  �   O     ( k    '  r     m    �
� boovtrue n       1   	 �
� 
pvis 4    	�
� 
proI m      progress     r     m    �
� boovtrue n        1    �

�
 
pvis  4    �	!
�	 
texF! m    ""  status    #$# r    %&% m    �
� boovtrue& n      '(' 1    �
� 
usTA( 4    �)
� 
proI) m    **  progress   $ +�+ I   '�,�
� .coVSstaAnull���    obj , 4    #�-
� 
proI- m   ! "..  progress   �  �   o     �� 0 	thewindow 	theWindow /0/ l     � ���   ��  0 121 l     ������  ��  2 343 l     ��5��  5  y This handler will hide all of the status items in the window, including stopping the animation of the progress indicator   4 676 l     ������  ��  7 898 i   . 1:;: I      ��<���� 0 
hidestatus 
hideStatus< =��= o      ���� 0 	thewindow 	theWindow��  ��  ; O     >?> k    @@ ABA r    CDC m    ��
�� boovfalsD n      EFE 1   	 ��
�� 
pvisF 4    	��G
�� 
proIG m    HH  progress   B IJI r    KLK m    ��
�� boovfalsL n      MNM 1    ��
�� 
pvisN 4    ��O
�� 
texFO m    PP  status   J Q��Q I   ��R��
�� .coVSstoTnull���    obj R 4    ��S
�� 
proIS m    TT  progress   ��  ��  ? o     ���� 0 	thewindow 	theWindow9 UVU l     ������  ��  V WXW l     ������  ��  X YZY l     ��[��  [ T N This handler will update the status message in the status items of the window   Z \]\ l     ������  ��  ] ^_^ i   2 5`a` I      ��b���� *0 updatestatusmessage updateStatusMessageb cdc o      ���� 0 	thewindow 	theWindowd e��e o      ���� 0 
themessage 
theMessage��  ��  a r     fgf o     ���� 0 
themessage 
theMessageg n      hih 1    ��
�� 
pcnti n    jkj 4    ��l
�� 
texFl m    mm  status   k o    ���� 0 	thewindow 	theWindow_ non l     ������  ��  o pqp l     ������  ��  q rsr l      ��t��  t "  ==== Utility Handlers ====    s uvu l     ������  ��  v wxw l     ��y��  y [ U This is a utility handler that will simply find the window with the specified title.   x z{z l     ������  ��  { |}| i   6 9~~ I      ������� *0 findwindowwithtitle findWindowWithTitle� ���� o      ���� 0 thetitle theTitle��  ��   k     *�� ��� r     ��� m     ��
�� 
msng� o      ���� 0 	thewindow 	theWindow� ��� l   ������  ��  � ��� r    ��� 6   ��� 2    ��
�� 
cwin� =   ��� 1   	 ��
�� 
titl� o    ���� 0 thetitle theTitle� o      ���� 0 
thewindows 
theWindows� ��� Z    '������� ?    ��� l   ���� I   �����
�� .corecnte****       ****� o    ���� 0 
thewindows 
theWindows��  ��  � m    ����  � r    #��� n    !��� 4    !���
�� 
cobj� m     ���� � o    ���� 0 
thewindows 
theWindows� o      ���� 0 	thewindow 	theWindow��  ��  � ��� l  ( (������  ��  � ���� L   ( *�� o   ( )���� 0 	thewindow 	theWindow��  } ��� l     ������  ��  � ��� l      �����  �	2	, � Copyright 2004 Apple Computer, Inc. All rights reserved.

IMPORTANT:  This Apple software is supplied to you by Apple Computer, Inc. (�Apple�) in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this Apple software constitutes acceptance of these terms.  If you do not agree with these terms, please do not use, install, modify or redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Apple grants you a personal, non-exclusive license, under Apple�s copyrights in this original Apple software (the �Apple Software�), to use, reproduce, modify and redistribute the Apple Software, with or without modifications, in source and/or binary forms; provided that if you redistribute the Apple Software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the Apple Software.  Neither the name, trademarks, service marks or logos of Apple Computer, Inc. may be used to endorse or promote products derived from the Apple Software without specific prior written permission from Apple.  Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. 

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.    � ��� l     ������  ��  � ��� l     ������  ��  � ���� j   : >����� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier� m   : =��   Command Finder.applescript   ��       �����������������������  � ���������������������������������� (0 commandsdatasource commandsDataSource�� 0 commandnames commandNames�� 0 manpagewindow manPageWindow
�� .appSwiFLnull���    obj 
�� .appSawFNnull���    obj 
�� .appSlauNnull���    obj 
�� .coVScliInull���    obj 
�� .coVSdouCnull���    obj 
�� .coVSactTnull���    obj �� 0 findcommands findCommands�� $0 commandswithname commandsWithName�� 0 
showstatus 
showStatus�� 0 
hidestatus 
hideStatus�� *0 updatestatusmessage updateStatusMessage�� *0 findwindowwithtitle findWindowWithTitle�� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier
�� 
msng� ������  ��  
�� 
msng� �� 0��������
�� .appSwiFLnull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject�  =����
�� .sysoexecTEXT���     TEXT
�� 
cpar�� �j �-Ec  � �� J��������
�� .appSawFNnull���    obj �� 0 	theobject 	theObject��  � ���� 0 	theobject 	theObject� �� S�� a q�������� ������� � �
�� 
pnam�� 0 
hidestatus 
hideStatus
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
datB�� }��,�  *�k+ Y m��,�  �Ec  Y [��,�  R*���*�-6���l� Ec   O*���b   �-6���l� O*���b   �-6���l� Ob   ��,FY h� �� ��������
�� .appSlauNnull���    obj �� 0 	theobject 	theObject��  � �~�~ 0 	theobject 	theObject� �} ��|
�} 
cwin
�| .appSshoHnull���    obj � 	*��/j � �{ ��z�y���x
�{ .coVScliInull���    obj �z 0 	theobject 	theObject�y  � �w�w 0 	theobject 	theObject� �v ��u�t
�v 
pnam
�u 
cwin�t 0 findcommands findCommands�x ��,�  *��,k+ Y h� �s ��r�q���p
�s .coVSdouCnull���    obj �r 0 	theobject 	theObject�q  � �o�n�m�l�k�j�o 0 	theobject 	theObject�n 0 therow theRow�m 0 
thedatarow 
theDataRow�l  0 thecommandname theCommandName�k 0 	thewindow 	theWindow�j 0 	theresult 	theResult� �i ��h�g ��f�e�d�c�b"�a�`�_�^B�]�\WX�[�Zk�Yg�X
�i 
pnam
�h 
cwin�g 0 
showstatus 
showStatus�f *0 updatestatusmessage updateStatusMessage
�e 
cliR
�d 
datS
�c 
datR
�b 
datC
�a 
pcnt�` *0 findwindowwithtitle findWindowWithTitle
�_ 
msng
�^ .appSshoHnull���    obj 
�] .appSloaNnull���    obj 
�\ 
titl
�[ .sysoexecTEXT���     TEXT
�Z 
scrV
�Y 
texV�X 0 
hidestatus 
hideStatus�p ���,�  �*��,k+ O*��,�l+ O��,E�O��,�/E�O���/�,E�O*�k+ E�O�� 
�j Y E�j O�b  a ,FOa �%a %j E�O�b  a a /a a /�,FOb  j O*��,k+ Y h� �W��V�U���T
�W .coVSactTnull���    obj �V 0 	theobject 	theObject�U  � �S�S 0 	theobject 	theObject� �R��Q�P
�R 
pnam
�Q 
cwin�P 0 findcommands findCommands�T ��,�  *��,k+ Y h� �O��N�M���L�O 0 findcommands findCommands�N �K��K �  �J�J 0 	thewindow 	theWindow�M  � �I�H�I 0 	thewindow 	theWindow�H 0 thecommands theCommands� �G��F�E��D�C��B�A�@�?�>�=��<�;�:�G 0 
showstatus 
showStatus�F *0 updatestatusmessage updateStatusMessage
�E 
texF
�D 
pcnt
�C 
popB
�B 
titl�A $0 commandswithname commandsWithName
�@ 
updV
�? 
datR
�> .coredelonull���    obj 
�= .corecnte****       ****
�< 
with
�; .daVSappPnull���    obj �: 0 
hidestatus 
hideStatus�L l*�k+  O*��l+ O*���/�,���/�,l+ 	E�Ofb   �,FOb   �-j O�j j *��l+ Ob   �l Y hOeb   �,FO*�k+ � �9'�8�7���6�9 $0 commandswithname commandsWithName�8 �5��5 �  �4�3�4 0 
whattofind 
whatToFind�3 0 	howtofind 	howToFind�7  � 	�2�1�0�/�.�-�,�+�*�2 0 
whattofind 
whatToFind�1 0 	howtofind 	howToFind�0 0 thecommands theCommands�/ &0 foundcommandnames foundCommandNames�. 0 i  �-  0 thedescription theDescription�, 0 	theresult 	theResult�+ 0 
dashoffset  �* 0 firstreturn firstReturn� �)U�(�'du��&���%�$��#�"�!� ���
�) .corecnte****       ****
�( 
kocl
�' 
cobj
�& 
TEXT
�% .sysoexecTEXT���     TEXT
�$ 
psof
�# 
psin�" 
�! .sysooffslong    ��� null
�  
ret 
� 
cha �  �  �6VjvE�O�j  jDjvE�O��  , &b  [��l  kh �� 	��6GY h[OY��Y ���  , &b  [��l  kh �� 	��6GY h[OY��Y e��  , &b  [��l  kh �� 	��6GY h[OY��Y 5��  . (b  [��l  kh ��&�  	��6GY h[OY��Y hO�j  j m g�[��l  kh  L�E�O��&%j 
E�O*����� E�O*�_ ��� E�O�[a \[Z�l\Z�k2�&E�O��lv�6GW X  h[OY��Y hY hO�� ������� 0 
showstatus 
showStatus� ��� �  �� 0 	thewindow 	theWindow�  � �� 0 	thewindow 	theWindow� 	���"*�.�
� 
proI
� 
pvis
� 
texF
� 
usTA
� .coVSstaAnull���    obj � )� %e*��/�,FOe*��/�,FOe*��/�,FO*��/j U� �;������ 0 
hidestatus 
hideStatus� ��� �  �� 0 	thewindow 	theWindow�  � �
�
 0 	thewindow 	theWindow� �	H��PT�
�	 
proI
� 
pvis
� 
texF
� .coVSstoTnull���    obj �  � f*��/�,FOf*��/�,FO*��/j U� �a������ *0 updatestatusmessage updateStatusMessage� ��� �  � ���  0 	thewindow 	theWindow�� 0 
themessage 
theMessage�  � ������ 0 	thewindow 	theWindow�� 0 
themessage 
theMessage� ��m��
�� 
texF
�� 
pcnt� 	����/�,F� ������������ *0 findwindowwithtitle findWindowWithTitle�� ����� �  ���� 0 thetitle theTitle��  � �������� 0 thetitle theTitle�� 0 	thewindow 	theWindow�� 0 
thewindows 
theWindows� �����������
�� 
msng
�� 
cwin�  
�� 
titl
�� .corecnte****       ****
�� 
cobj�� +�E�O*�-�[�,\Z�81E�O�j j ��k/E�Y hO�ascr  ��ޭ