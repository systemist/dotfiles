FasdUAS 1.101.10   ��   ��    k             l     ��  ��    R L This script will import to-dos and notes into Things from a plaintext file.     � 	 	 �   T h i s   s c r i p t   w i l l   i m p o r t   t o - d o s   a n d   n o t e s   i n t o   T h i n g s   f r o m   a   p l a i n t e x t   f i l e .   
  
 l     ��  ��    L F To run the script, click the green "Run" button in the toolbar above.     �   �   T o   r u n   t h e   s c r i p t ,   c l i c k   t h e   g r e e n   " R u n "   b u t t o n   i n   t h e   t o o l b a r   a b o v e .      l     ��������  ��  ��        l     ����  r         l     ����  I    ������
�� .sysostdfalis    ��� null��  ��  ��  ��    o      ���� 0 	text_file  ��  ��        l    ����  r        I   ��  
�� .rdwrread****        ****  o    	���� 0 	text_file    �� ��
�� 
as    m   
 ��
�� 
utf8��    o      ���� 0 database_text  ��  ��         l     ��������  ��  ��      ! " ! l    #���� # r     $ % $ m     & & � ' '  
 *   % 1    ��
�� 
txdl��  ��   "  ( ) ( l     �� * +��   * I Cprocess the file in reverse order to put first item at top of inbox    + � , , � p r o c e s s   t h e   f i l e   i n   r e v e r s e   o r d e r   t o   p u t   f i r s t   i t e m   a t   t o p   o f   i n b o x )  -�� - l   � .���� . Y    � /�� 0 1 2 / k   ( � 3 3  4 5 4 r   ( . 6 7 6 n   ( , 8 9 8 4   ) ,�� :
�� 
citm : o   * +���� 0 i   9 o   ( )���� 0 database_text   7 o      ���� 0 the_database_record   5  ;�� ; Z   / � < =���� < >   / 2 > ? > o   / 0���� 0 the_database_record   ? m   0 1 @ @ � A A   = k   5 � B B  C D C r   5 = E F E n   5 ; G H G 4   8 ;�� I
�� 
cobj I m   9 :����  H n   5 8 J K J 2  6 8��
�� 
cpar K o   5 6���� 0 the_database_record   F o      ���� 0 todoname todoName D  L M L Z   > g N O�� P N ?   > G Q R Q l  > E S���� S I  > E�� T��
�� .corecnte****       **** T n   > A U V U 2  ? A��
�� 
cpar V o   > ?���� 0 the_database_record  ��  ��  ��   R m   E F����  O r   J ] W X W c   J Y Y Z Y n   J W [ \ [ l  M W ]���� ] 7  M W�� ^ _
�� 
cobj ^ m   Q S����  _ m   T V��������  ��   \ n   J M ` a ` 2  K M��
�� 
cpar a o   J K���� 0 the_database_record   Z m   W X��
�� 
ctxt X o      ���� 0 	todonotes 	todoNotes��   P r   ` g b c b m   ` c d d � e e   c o      ���� 0 	todonotes 	todoNotes M  f g f l  h h��������  ��  ��   g  h�� h O   h � i j i k   v � k k  l m l r   v � n o n I  v ����� p
�� .corecrel****      � null��   p �� q r
�� 
kocl q l 
 z } s���� s m   z }��
�� 
tstk��  ��   r �� t u
�� 
prdt t l 
 � � v���� v K   � � w w �� x��
�� 
pnam x o   � ����� 0 todoname todoName��  ��  ��   u �� y��
�� 
insh y n   � � z { z  :   � � { 5   � ��� |��
�� 
tsls | m   � � } } � ~ ~ " T M I n b o x L i s t S o u r c e
�� kfrmID  ��   o o      ���� 0 newtodo newToDo m  ��  Z   � � � ����� � >   � � � � � o   � ����� 0 	todonotes 	todoNotes � m   � � � � � � �   � k   � � � �  � � � l  � ��� � ���   � 6 0only create a note if there was text after a tab    � � � � ` o n l y   c r e a t e   a   n o t e   i f   t h e r e   w a s   t e x t   a f t e r   a   t a b �  ��� � r   � � � � � o   � ����� 0 	todonotes 	todoNotes � n       � � � 1   � ���
�� 
note � o   � ����� 0 newtodo newToDo��  ��  ��  ��   j 5   h s�� ���
�� 
capp � m   l o � � � � � 4 c o m . c u l t u r e d c o d e . T h i n g s M a c
�� kfrmID  ��  ��  ��  ��  �� 0 i   0 l   " ����� � I   "�� ���
�� .corecnte****       **** � n     � � � 2   ��
�� 
citm � o    ���� 0 database_text  ��  ��  ��   1 m   " #����  2 m   # $��������  ��  ��       
�� � � � � � � d �����   � ����������������
�� .aevtoappnull  �   � ****�� 0 	text_file  �� 0 database_text  �� 0 the_database_record  �� 0 todoname todoName�� 0 	todonotes 	todoNotes�� 0 newtodo newToDo��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �   � �  ! � �  -����  ��  ��   � ���� 0 i   � !������������ &������~ @�}�|�{�z�y d�x ��w�v�u�t�s�r�q }�p�o�n ��m
�� .sysostdfalis    ��� null�� 0 	text_file  
�� 
as  
�� 
utf8
�� .rdwrread****        ****�� 0 database_text  
�� 
txdl
�� 
citm
� .corecnte****       ****�~ 0 the_database_record  
�} 
cpar
�| 
cobj�{ 0 todoname todoName
�z 
ctxt�y 0 	todonotes 	todoNotes
�x 
capp
�w kfrmID  
�v 
kocl
�u 
tstk
�t 
prdt
�s 
pnam
�r 
insh
�q 
tsls�p 
�o .corecrel****      � null�n 0 newtodo newToDo
�m 
note�� �*j  E�O���l E�O�*�,FO ���-j 	kih  ��/E�O�� ���-�k/E�O��-j 	k ��-[�\[Zl\Zi2�&E` Y 	a E` O)a a a 0 E*a a a a �la *a a a 05a  E` O_ a  _ _ a  ,FY hUY h[OY�d �(alis    $   Macintosh HD                   BD ����Next.org                                                       ����            ����  J cu            "/:Users:jacob:Dropbox:org:Next.org    N e x t . o r g    M a c i n t o s h   H D   Users/jacob/Dropbox/org/Next.org  /    ��   � � � � l # + T I T L E :   N e x t 
 *   N e x t   [ 0 / 0 ] 
 *   f o o 
 f o o   f o o 
 *   b a r 
 b a r   a r 
 � � � �  # + T I T L E :   N e x t � � � �  # + T I T L E :   N e x t �  � �  ��l ��k ��                                                                                  Thgs  alis    &  Macintosh HD                   BD ����Things3.app                                                    ����            ����  
 cu             Applications  /:Applications:Things3.app/     T h i n g s 3 . a p p    M a c i n t o s h   H D  Applications/Things3.app  / ��  
�l 
tstk � � � � , Y 8 Y n i Q B 6 p F L S C Q Z B t 5 B M T i
�k kfrmID  ��  ascr  ��ޭ