FasdUAS 1.101.10   ��   ��    k             l     ��  ��    R L This script will import to-dos and notes into Things from a plaintext file.     � 	 	 �   T h i s   s c r i p t   w i l l   i m p o r t   t o - d o s   a n d   n o t e s   i n t o   T h i n g s   f r o m   a   p l a i n t e x t   f i l e .   
  
 l     ��  ��    L F To run the script, click the green "Run" button in the toolbar above.     �   �   T o   r u n   t h e   s c r i p t ,   c l i c k   t h e   g r e e n   " R u n "   b u t t o n   i n   t h e   t o o l b a r   a b o v e .      l     ��������  ��  ��        l     ����  r         l     ����  I    ������
�� .sysostdfalis    ��� null��  ��  ��  ��    o      ���� 0 	text_file  ��  ��        l    ����  r        I   ��  
�� .rdwrread****        ****  o    	���� 0 	text_file    �� ��
�� 
as    m   
 ��
�� 
utf8��    o      ���� 0 database_text  ��  ��         l     ��������  ��  ��      ! " ! l     �� # $��   # I Cprocess the file in reverse order to put first item at top of inbox    $ � % % � p r o c e s s   t h e   f i l e   i n   r e v e r s e   o r d e r   t o   p u t   f i r s t   i t e m   a t   t o p   o f   i n b o x "  &�� & l   � '���� ' Y    � (�� ) * + ( k   " � , ,  - . - r   " ( / 0 / n   " & 1 2 1 4   # &�� 3
�� 
cpar 3 o   $ %���� 0 i   2 o   " #���� 0 database_text   0 o      ���� 0 the_database_record   .  4�� 4 Z   ) � 5 6���� 5 >   ) , 7 8 7 o   ) *���� 0 the_database_record   8 m   * + 9 9 � : :   6 k   / � ; ;  < = < r   / 4 > ? > 1   / 0��
�� 
tab  ? 1   0 3��
�� 
txdl =  @ A @ r   5 : B C B n   5 8 D E D 2   6 8��
�� 
citm E o   5 6���� 0 the_database_record   C o      ���� 0 
field_list   A  F G F r   ; A H I H n   ; ? J K J 4   < ?�� L
�� 
cobj L m   = >����  K o   ; <���� 0 
field_list   I o      ���� 0 todoname todoName G  M N M Z   B ` O P�� Q O ?   B I R S R l  B G T���� T I  B G�� U��
�� .corecnte****       **** U o   B C���� 0 
field_list  ��  ��  ��   S m   G H����  P r   L T V W V n   L P X Y X 4   M P�� Z
�� 
cobj Z m   N O����  Y o   L M���� 0 
field_list   W o      ���� 0 	todonotes 	todoNotes��   Q k   W ` [ [  \ ] \ r   W ^ ^ _ ^ m   W Z ` ` � a a   _ o      ���� 0 	todonotes 	todoNotes ]  b�� b l  _ _�� c d��   c 0 *ignores text beyond a second tab character    d � e e T i g n o r e s   t e x t   b e y o n d   a   s e c o n d   t a b   c h a r a c t e r��   N  f g f l  a a��������  ��  ��   g  h�� h O   a � i j i k   o � k k  l m l r   o � n o n I  o ����� p
�� .corecrel****      � null��   p �� q r
�� 
kocl q l 
 s v s���� s m   s v��
�� 
tstk��  ��   r �� t u
�� 
prdt t l 
 y  v���� v K   y  w w �� x��
�� 
pnam x o   | }���� 0 todoname todoName��  ��  ��   u �� y��
�� 
insh y n   � � z { z  :   � � { 5   � ��� |��
�� 
tsls | m   � � } } � ~ ~ " T M I n b o x L i s t S o u r c e
�� kfrmID  ��   o o      ���� 0 newtodo newToDo m  ��  Z   � � � ����� � >   � � � � � o   � ����� 0 	todonotes 	todoNotes � m   � � � � � � �   � k   � � � �  � � � l  � ��� � ���   � 6 0only create a note if there was text after a tab    � � � � ` o n l y   c r e a t e   a   n o t e   i f   t h e r e   w a s   t e x t   a f t e r   a   t a b �  ��� � r   � � � � � o   � ����� 0 	todonotes 	todoNotes � n       � � � 1   � ���
�� 
note � o   � ����� 0 newtodo newToDo��  ��  ��  ��   j 5   a l�� ���
�� 
capp � m   e h � � � � � 4 c o m . c u l t u r e d c o d e . T h i n g s M a c
�� kfrmID  ��  ��  ��  ��  �� 0 i   ) l    ����� � I   �� ���
�� .corecnte****       **** � n     � � � 2   ��
�� 
cpar � o    ���� 0 database_text  ��  ��  ��   * m    ����  + m    ��������  ��  ��       
�� � � � � � � � ` ���   � ����������������
�� .aevtoappnull  �   � ****�� 0 	text_file  �� 0 database_text  �� 0 the_database_record  �� 0 
field_list  �� 0 todoname todoName�� 0 	todonotes 	todoNotes�� 0 newtodo newToDo � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �   � �  &����  ��  ��   � ���� 0 i   � !������������������ 9��������~�}�| `�{ ��z�y�x�w�v�u�t }�s�r�q ��p
�� .sysostdfalis    ��� null�� 0 	text_file  
�� 
as  
�� 
utf8
�� .rdwrread****        ****�� 0 database_text  
�� 
cpar
�� .corecnte****       ****�� 0 the_database_record  
�� 
tab 
�� 
txdl
�� 
citm� 0 
field_list  
�~ 
cobj�} 0 todoname todoName�| 0 	todonotes 	todoNotes
�{ 
capp
�z kfrmID  
�y 
kocl
�x 
tstk
�w 
prdt
�v 
pnam
�u 
insh
�t 
tsls�s 
�r .corecrel****      � null�q 0 newtodo newToDo
�p 
note�� �*j  E�O���l E�O ���-j kih  ��/E�O�� ��*�,FO��-E�O��k/E�O�j k ��l/E` Y a E` OPO)a a a 0 E*a a a a �la *a a a 05a  E` O_ a  _ _ a  ,FY hUY h[OY�e �alis       Macintosh HD               ϫ��H+   !��test.txt                                                       k�/�K{a        ����  I                 ϫ��      �K_A      t e s t . t x t    M a c i n t o s h   H D  Users/bartek/Downloads/test.txt   /    ��       � � � � P t e s t 
 t e s t   2 
 t e s t   3 
 t e s t   3 4 
   t e s t   2 3 1 2 3 
 
 � � � �  t e s t � �o ��o  �   ��n�m�l�k�j�i�h�g�f�e�d�c�b�a�` � � � �  t e s t�n  �m  �l  �k  �j  �i  �h  �g  �f  �e  �d  �c  �b  �a  �`   �  � �  ��_ ��^ ��                                                                                  Thgs  alis    P  Macintosh HD               ϫ��H+    �Things3.app                                                    iU��H�|        ����  	                Applications    ϫ��      �H�\      �  &Macintosh HD:Applications: Things3.app    T h i n g s 3 . a p p    M a c i n t o s h   H D  Applications/Things3.app  / ��  
�_ 
tstk � � � � H 5 1 E 7 7 E 8 B - F C F 9 - 4 4 9 0 - B 2 9 6 - E 1 B 6 B 5 1 F 2 D 7 4
�^ kfrmID   ascr  ��ޭ