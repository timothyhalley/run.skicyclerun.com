FasdUAS 1.101.10   ��   ��    k             l     ��  ��    - ' display dialog theOutputFolder as text     � 	 	 N   d i s p l a y   d i a l o g   t h e O u t p u t F o l d e r   a s   t e x t   
  
 l     ��  ��    Y S set theOutputFolder to choose folder with prompt "Please select an output folder:"     �   �   s e t   t h e O u t p u t F o l d e r   t o   c h o o s e   f o l d e r   w i t h   p r o m p t   " P l e a s e   s e l e c t   a n   o u t p u t   f o l d e r : "      l     ��  ��    * $ set dest to theOutputFolder as text     �   H   s e t   d e s t   t o   t h e O u t p u t F o l d e r   a s   t e x t      l     ��  ��    U O be sure to set Photo-->Preferences-->General-->Metadata:include GPS info, etc!     �   �   b e   s u r e   t o   s e t   P h o t o - - > P r e f e r e n c e s - - > G e n e r a l - - > M e t a d a t a : i n c l u d e   G P S   i n f o ,   e t c !      l     ��������  ��  ��        l     ��  ��    / ) direct path without clunky dialog boxes!     �   R   d i r e c t   p a t h   w i t h o u t   c l u n k y   d i a l o g   b o x e s !     !   l    $ "���� " O     $ # $ # k    # % %  & ' & l   �� ( )��   ( L F set currentDir to POSIX path of ((container of (path to me)) as text)    ) � * * �   s e t   c u r r e n t D i r   t o   P O S I X   p a t h   o f   ( ( c o n t a i n e r   o f   ( p a t h   t o   m e ) )   a s   t e x t ) '  + , + r     - . - n     / 0 / 1    ��
�� 
psxp 0 l    1���� 1 c     2 3 2 l    4���� 4 n     5 6 5 m   	 ��
�� 
ctnr 6 l   	 7���� 7 I   	�� 8��
�� .earsffdralis        afdr 8  f    ��  ��  ��  ��  ��   3 m    ��
�� 
ctxt��  ��   . o      ���� 0 
currentdir 
currentDir ,  9 : 9 r     ; < ; c     = > = c     ? @ ? o    ���� 0 
currentdir 
currentDir @ m    ��
�� 
psxf > m    ��
�� 
ctxt < o      ���� 0 currentdir2 currentDir2 :  A B A r     C D C m     E E � F F  P h o t o L i b : D o      ���� 0 photodir photoDir B  G�� G r    # H I H b    ! J K J o    ���� 0 currentdir2 currentDir2 K o     ���� 0 photodir photoDir I o      ���� 0 dest  ��   $ m      L L�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   !  M N M l     �� O P��   O 0 * display dialog "PWD PATH: " & currentDir3    P � Q Q T   d i s p l a y   d i a l o g   " P W D   P A T H :   "   &   c u r r e n t D i r 3 N  R S R l     ��������  ��  ��   S  T U T l     �� V W��   V � � set dest to "/Users/i850916/Projects/SkiCycleRun/PhotoLib/albums/" as POSIX file as text -- the destination folder (use a valid path)    W � X X   s e t   d e s t   t o   " / U s e r s / i 8 5 0 9 1 6 / P r o j e c t s / S k i C y c l e R u n / P h o t o L i b / a l b u m s / "   a s   P O S I X   f i l e   a s   t e x t   - -   t h e   d e s t i n a t i o n   f o l d e r   ( u s e   a   v a l i d   p a t h ) U  Y Z Y l     �� [ \��   [ %  display dialog "PATH: " & dest    \ � ] ] >   d i s p l a y   d i a l o g   " P A T H :   "   &   d e s t Z  ^ _ ^ l     ��������  ��  ��   _  ` a ` l  % � b���� b O   % � c d c k   ) � e e  f g f l  ) )��������  ��  ��   g  h i h I  ) .������
�� .miscactvnull��� ��� null��  ��   i  j k j l  / /��������  ��  ��   k  l m l r   / 6 n o n n   / 4 p q p 1   2 4��
�� 
pnam q 2  / 2��
�� 
IPal o o      ���� 0 l   m  r s r l  7 7��������  ��  ��   s  t u t r   7 L v w v I  7 H�� x y
�� .gtqpchltns    @   @ ns   x o   7 8���� 0 l   y �� z {
�� 
prmp z m   ; > | | � } } $ S e l e c t   s o m e   a l b u m s { �� ~��
�� 
mlsl ~ m   A B��
�� boovtrue��   w o      ���� 0 albnames albNames u   �  l  M M��������  ��  ��   �  � � � Z   M � � ����� � >  M R � � � o   M P���� 0 albnames albNames � m   P Q��
�� boovfals � l  U � � � � � k   U � � �  � � � l  U U��������  ��  ��   �  � � � X   U � ��� � � k   k � � �  � � � l  k k��������  ��  ��   �  � � � r   k r � � � b   k n � � � o   k l���� 0 dest   � o   l m���� 0 tname tName � o      ���� 0 tfolder tFolder �  � � � l  s { � � � � n  s { � � � I   t {�� ����� 0 
makefolder 
makeFolder �  ��� � o   t w���� 0 tfolder tFolder��  ��   �  f   s t � ? 9 create a folder named (the name of this album) in dest      � � � � r   c r e a t e   a   f o l d e r   n a m e d   ( t h e   n a m e   o f   t h i s   a l b u m )   i n   d e s t     �  � � � l  | |�� � ���   � K E note: and using originals = HEIC, vs. without using originals = JPEG    � � � � �   n o t e :   a n d   u s i n g   o r i g i n a l s   =   H E I C ,   v s .   w i t h o u t   u s i n g   o r i g i n a l s   =   J P E G �  � � � l  | |�� � ���   � a [ export (get media items of album tName) to (tFolder as alias) with GPS and using originals    � � � � �   e x p o r t   ( g e t   m e d i a   i t e m s   o f   a l b u m   t N a m e )   t o   ( t F o l d e r   a s   a l i a s )   w i t h   G P S   a n d   u s i n g   o r i g i n a l s �  � � � t   | � � � � I  � ��� � �
�� .IPXSexponull���     **** � l  � � ����� � e   � � � � n   � � � � � 2  � ���
�� 
IPmi � 4   � ��� �
�� 
IPal � o   � ����� 0 tname tName��  ��   � �� � �
�� 
insh � l  � � ����� � c   � � � � � o   � ����� 0 tfolder tFolder � m   � ���
�� 
alis��  ��   � �� � ��� 
0 gps GPS � m   � ���
�� boovtrue � �� ���
�� 
usMA � m   � ���
�� boovfals��   � m   | ����X �  ��� � l  � ���������  ��  ��  ��  �� 0 tname tName � o   X [���� 0 albnames albNames �  ��� � l  � ���������  ��  ��  ��   �   not cancelled     � � � �    n o t   c a n c e l l e d  ��  ��   �  ��� � l  � ���������  ��  ��  ��   d m   % & � ��                                                                                  Phts  alis    0  Macintosh HD                   BD ����
Photos.app                                                     ����            ����  
 cu             Applications  !/:System:Applications:Photos.app/    
 P h o t o s . a p p    M a c i n t o s h   H D  System/Applications/Photos.app  / ��  ��  ��   a  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i      � � � I      �� ����� 0 
makefolder 
makeFolder �  ��� � o      �� 0 tpath tPath��  ��   � k      � �  � � � l     �~�}�|�~  �}  �|   �  � � � l     � � � � I    �{ ��z
�{ .sysoexecTEXT���     TEXT � b      � � � m      � � � � �  m k d i r   - p   � n     � � � 1    �y
�y 
strq � n     � � � 1    �x
�x 
psxp � o    �w�w 0 tpath tPath�z   � $  with administrator privileges    � � � � <   w i t h   a d m i n i s t r a t o r   p r i v i l e g e s �  ��v � l   �u�t�s�u  �t  �s  �v   �  � � � l     �r�q�p�r  �q  �p   �  � � � i     � � � I      �o ��n�o 0 
getnewname 
getNewName �  ��m � o      �l�l 0 filein fileIn�m  �n   � k     + � �  � � � r      � � � I    �k ��j
�k .sysoexecTEXT���     TEXT � b      � � � m      � � � � � ^ / u s r / b i n / m d l s   - n a m e   k M D I t e m C o n t e n t C r e a t i o n D a t e   � n     � � � 1    �i
�i 
strq � n     � � � 1    �h
�h 
psxp � o    �g�g 0 filein fileIn�j   � o      �f�f 0 xcmd xCmd �  � � � l    � � � � Z    � ��e�d � =       o    �c�c 0 xcmd xCmd m     �  ( n u l l ) � L     m     �  �e  �d   �   no tag error    � �    n o   t a g   e r r o r � �b L    +		 n    *

 7   )�a
�a 
ctxt m   # %�`�` 
 m   & (�_�_�� n     4    �^
�^ 
cpar m    �]�]  o    �\�\ 0 xcmd xCmd�b   � �[ l     �Z�Y�X�Z  �Y  �X  �[       �W�W   �V�U�T�V 0 
makefolder 
makeFolder�U 0 
getnewname 
getNewName
�T .aevtoappnull  �   � **** �S ��R�Q�P�S 0 
makefolder 
makeFolder�R �O�O   �N�N 0 tpath tPath�Q   �M�M 0 tpath tPath  ��L�K�J
�L 
psxp
�K 
strq
�J .sysoexecTEXT���     TEXT�P ��,�,%j OP �I ��H�G�F�I 0 
getnewname 
getNewName�H �E�E   �D�D 0 filein fileIn�G   �C�B�C 0 filein fileIn�B 0 xcmd xCmd 	 ��A�@�?�>�=�<
�A 
psxp
�@ 
strq
�? .sysoexecTEXT���     TEXT
�> 
cpar
�= 
ctxt�< 
�F ,��,�,%j E�O��  �Y hO��k/[�\[Z�\Zi2E �;�:�9�8
�; .aevtoappnull  �   � **** k     �       `�7�7  �:  �9   �6�6 0 tname tName # L�5�4�3�2�1�0�/ E�.�- ��,�+�*�)�( |�'�&�%�$�#�"�!� ���������
�5 .earsffdralis        afdr
�4 
ctnr
�3 
ctxt
�2 
psxp�1 0 
currentdir 
currentDir
�0 
psxf�/ 0 currentdir2 currentDir2�. 0 photodir photoDir�- 0 dest  
�, .miscactvnull��� ��� null
�+ 
IPal
�* 
pnam�) 0 l  
�( 
prmp
�' 
mlsl�& 
�% .gtqpchltns    @   @ ns  �$ 0 albnames albNames
�# 
kocl
�" 
cobj
�! .corecnte****       ****�  0 tfolder tFolder� 0 
makefolder 
makeFolder�X
� 
IPmi
� 
insh
� 
alis� 
0 gps GPS
� 
usMA� 
� .IPXSexponull���     ****�8 �� !)j �,�&�,E�O��&�&E�O�E�O��%E�UO� �*j O*�-�,E�O�a a a ea  E` O_ f [ S_ [a a l kh  ʠ%E` O)_ k+ Oa n*��/a -Ea _ a &a ea  fa ! "oOP[OY��OPY hOPUascr  ��ޭ