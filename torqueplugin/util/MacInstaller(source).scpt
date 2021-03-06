FasdUAS 1.101.10   ��   ��    k             l     �� ��    "  Torque Exporter for Blender       	  l     �� 
��   
   Installation Script    	     l     ������  ��        l     ������  ��        p         ������  0 successmessage successMessage��        p         ������  0 failuremessage failureMessage��        l     ������  ��        l     ��  r         m        * $Exporter scripts have been installed     o      ����  0 successmessage successMessage��        l    ��  r       !   m     " " Q KIncorrect script folder, please select the folder with the exporter scripts    ! o      ����  0 failuremessage failureMessage��     # $ # l    %�� % r     & ' & m    	 ( ( v pBlender scripts folder could not be verified, please check permissions and location of /Applications/blender.app    ' o      ���� "0 disastermessage disasterMessage��   $  ) * ) l     ������  ��   *  + , + l     �� -��   -    Installation Bash Scripts    ,  . / . l     �� 0��   0 M G (AppleScript doesn't seem to like accessing the hidden blender folder)    /  1 2 1 i      3 4 3 I      �� 5����  0 installscripts installScripts 5  6�� 6 o      ���� 0 
scriptpath 
scriptPath��  ��   4 k      7 7  8 9 8 Q      : ; < : r     = > = l    ?�� ? I   �� @��
�� .sysoexecTEXT���     TEXT @ b     A B A b     C D C m     E E 
 cd "    D o    ���� 0 
scriptpath 
scriptPath B m     F F��"
if ( [ -e Dts_Blender.py ] && [ -e DTSPython ] )
then
	if ( cp -Rfv Dts_Blender.py DtsShape_Blender.py DtsMesh_Blender.py Common_Gui.py DTSPython DtsPoseUtil.py Dts_Blender_QuickExport.py /Applications/Blender.app/Contents/MacOS/.blender/scripts/ )
	then
		echo "Install: Scripts successfully copied."
	else
		echo "Install: Scripts could not be copied, they already exist?"
		exit 0
	fi
else
	echo "Install: Selected folder does not contain exporter scripts!"
	exit 1
fi
exit 0
   ��  ��   > o      ���� 0 	cmdoutput 	cmdOutput ; R      �� G��
�� .ascrerr ****      � **** G o      ���� 0 	cmdoutput 	cmdOutput��   < k     H H  I J I l   �� K��   K  display dialog cmdOutput    J  L�� L L     M M m    ��
�� boovfals��   9  N O N l   �� P��   P  display dialog cmdOutput    O  Q�� Q L     R R m    ��
�� boovtrue��   2  S T S l     ������  ��   T  U V U i     W X W I      �������� (0 verifyscriptfolder verifyScriptFolder��  ��   X k      Y Y  Z [ Z Q      \ ] ^ \ r    
 _ ` _ l    a�� a I   �� b��
�� .sysoexecTEXT���     TEXT b m     c c��if [ -e /Applications/Blender.app/Contents/MacOS/.blender ] 
then
	if [ -e  /Applications/Blender.app/Contents/MacOS/.blender/scripts ]
	then
		echo "Install: Scripts folder ready."
	else
		if ( mkdir  /Applications/Blender.app/Contents/MacOS/.blender/scripts )
		then
			echo "Install: Scripts folder created."
		else
			echo "Install: Scripts folder could not be created!"
			exit 1
		fi
	fi
else
	if ( ( mkdir  /Applications/Blender.app/Contents/MacOS/.blender ) && ( mkdir  /Applications/Blender.app/Contents/MacOS/.blender/scripts) )
	then
		echo "Install: All folders created."
	else
		echo "Install: Script folders could not be created!"
		exit 1
	fi
fi
exit 0
   ��  ��   ` o      ���� 0 	cmdoutput 	cmdOutput ] R      �� d��
�� .ascrerr ****      � **** d o      ���� 0 	cmdoutput 	cmdOutput��   ^ k     e e  f g f l   �� h��   h  display dialog cmdOutput    g  i�� i L     j j m    ��
�� boovfals��   [  k�� k L     l l m    ��
�� boovtrue��   V  m n m l     ������  ��   n  o p o i     q r q I      �������� 0 dodialogprobe doDialogProbe��  ��   r k     L s s  t u t l     �� v��   v > 8 Loop until user has provided us with the correct folder    u  w x w r      y z y m     ��
�� boovfals z o      ���� 0 	foundpath 	foundPath x  { | { r     } ~ } m       1 +Select the folder with the exporter scripts    ~ o      ���� 0 curmsg curMsg |  ��� � V    L � � � k    G � �  � � � l   �� ���   � $  First hurdle, the file dialog    �  � � � Q    ( � � � � r     � � � n     � � � 1    ��
�� 
psxp � l    ��� � I   ���� �
�� .sysostflalis    ��� null��   � �� ���
�� 
prmp � o    ���� 0 curmsg curMsg��  ��   � o      ���� 0 
scriptpath 
scriptPath � R      ������
�� .ascrerr ****      � ****��  ��   � L   & (����   �  � � � l  ) )������  ��   �  � � � l  ) )�� ���   � 1 + Now try installing from selected directory    �  � � � Z   ) C � ����� � =  ) 1 � � � I   ) /�� �����  0 installscripts installScripts �  ��� � o   * +���� 0 
scriptpath 
scriptPath��  ��   � m   / 0��
�� boovtrue � k   4 ? � �  � � � I  4 =�� � �
�� .sysodlogaskr        TEXT � o   4 5����  0 successmessage successMessage � �� ���
�� 
btns � J   6 9 � �  ��� � m   6 7 � �  OK   ��  ��   �  ��� �  S   > ?��  ��  ��   �  � � � l  D D������  ��   �  � � � l  D D�� ���   � 3 - Pester the user with a more agressive prompt    �  ��� � r   D G � � � o   D E����  0 failuremessage failureMessage � o      ���� 0 curmsg curMsg��   � =    � � � o    ���� 0 	foundpath 	foundPath � m    ��
�� boovfals��   p  � � � l     ������  ��   �  � � � l   & ��� � Z    & � ����� � =    � � � I    �������� (0 verifyscriptfolder verifyScriptFolder��  ��   � m    ��
�� boovfals � k    " � �  � � � I   �� � �
�� .sysodlogaskr        TEXT � o    ���� "0 disastermessage disasterMessage � �� ���
�� 
btns � J     � �  ��� � m     � �  OK   ��  ��   �  ��� � L     "����  ��  ��  ��  ��   �  � � � l     ������  ��   �  � � � l  ' g ��� � Q   ' g � � � � k   * Z � �  � � � l  * *�� ���   � Z T If we are lucky, the user will have the correct folder open when he runs the script    �  � � � O  * ; � � � r   . : � � � n   . 8 � � � 1   6 8��
�� 
psxp � l  . 6 ��� � c   . 6 � � � n   . 4 � � � m   2 4��
�� 
cfol � l  . 2 �� � 4  . 2�~ �
�~ 
cwin � m   0 1�}�} �   � m   4 5�|
�| 
alis��   � l      ��{ � o      �z�z 0 
scriptpath 
scriptPath�{   � m   * + � ��null     ߀��  �
Finder.app�֐    �?������ְ   w,   )       �h(�k����xMACS   alis    r  Macintosh HD               ��/�H+    �
Finder.app                                                       B:�gą        ����  	                CoreServices    ��!�      �gą      �  �  �  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  ��y � Z   < Z � ��x � � =  < D � � � I   < B�w ��v�w  0 installscripts installScripts �  ��u � o   = >�t�t 0 
scriptpath 
scriptPath�u  �v   � m   B C�s
�s boovtrue � I  G R�r � �
�r .sysodlogaskr        TEXT � o   G H�q�q  0 successmessage successMessage � �p ��o
�p 
btns � J   I N � �  ��n � m   I L � �  OK   �n  �o  �x   � I   U Z�m�l�k�m 0 dodialogprobe doDialogProbe�l  �k  �y   � R      �j�i�h
�j .ascrerr ****      � ****�i  �h   � I   b g�g�f�e�g 0 dodialogprobe doDialogProbe�f  �e  ��   �  ��d � l     �c�b�c  �b  �d       �a � � � � ��a   � �`�_�^�]�`  0 installscripts installScripts�_ (0 verifyscriptfolder verifyScriptFolder�^ 0 dodialogprobe doDialogProbe
�] .aevtoappnull  �   � **** � �\ 4�[�Z � ��Y�\  0 installscripts installScripts�[ �X ��X  �  �W�W 0 
scriptpath 
scriptPath�Z   � �V�U�V 0 
scriptpath 
scriptPath�U 0 	cmdoutput 	cmdOutput �  E F�T�S�R
�T .sysoexecTEXT���     TEXT�S 0 	cmdoutput 	cmdOutput�R  �Y  �%�%j E�W 	X  fOe � �Q X�P�O � ��N�Q (0 verifyscriptfolder verifyScriptFolder�P  �O   � �M�M 0 	cmdoutput 	cmdOutput �  c�L�K�J
�L .sysoexecTEXT���     TEXT�K 0 	cmdoutput 	cmdOutput�J  �N  �j E�W 	X  fOe � �I r�H�G � ��F�I 0 dodialogprobe doDialogProbe�H  �G   � �E�D�C�E 0 	foundpath 	foundPath�D 0 curmsg curMsg�C 0 
scriptpath 
scriptPath �  �B�A�@�?�>�=�<�; ��:�9
�B 
prmp
�A .sysostflalis    ��� null
�@ 
psxp�?  �>  �=  0 installscripts installScripts�<  0 successmessage successMessage
�; 
btns
�: .sysodlogaskr        TEXT�9  0 failuremessage failureMessage�F MfE�O�E�O Ch�f  *�l �,E�W 	X  hO*�k+ e  ���kvl 
OY hO�E�[OY�� � �8 ��7�6 �5
�8 .aevtoappnull  �   � **** � k     g      #  �  ��4�4  �7  �6       �3 "�2 (�1�0�/ ��. ��-�,�+�*�)�( ��'�&�%�3  0 successmessage successMessage�2  0 failuremessage failureMessage�1 "0 disastermessage disasterMessage�0 (0 verifyscriptfolder verifyScriptFolder
�/ 
btns
�. .sysodlogaskr        TEXT
�- 
cwin
�, 
cfol
�+ 
alis
�* 
psxp�) 0 
scriptpath 
scriptPath�(  0 installscripts installScripts�' 0 dodialogprobe doDialogProbe�&  �%  �5 h�E�O�E�O�E�O*j+ f  ���kvl 	OhY hO 5� *�k/�,�&�,E�UO*�k+ e  ��a kvl 	Y *j+ W X  *j+  ascr  ��ޭ