   M S B A M L   `   `   `  ����  MiniMediaPlayer     MiniMediaPlayer.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          � Title$  MiniMediaPlayer��5   	   $	��600��6!   $	��800��6.    � WindowStyle$ SingleBorderWindow=�6:   $	��800��6[   $	��600��6j    � WindowStartupLocation$ CenterScreen=�6z    � Icon$D >/MiniMediaPlayer;component/Images/Windows%20Media%20Player.ico��6�    � 
ResizeMode$ CanResizeWithGrip=�6�   
���   �.��5      � .+�5   
   r� -   5        $��mediaElement1��5      $��	0,0,0,111q�6,    r� UnloadedBehavior$ Manual=�6�    r� LoadedBehavior$ Manual=�6�    r� Volume$	 0.2Q�6�   �� 5   
   -   5        $��
buttonPlay��5   r   $
��Play��6   $��28(�6    $
��Bold"�6.   $��48��6@   {�.  $��
308,0,0,12q�6^   $��Bottom=�6�   $
��Left=�6�   $��90��6�   ��5      �� 5	       �� EndPoint$ 1,0.5&�6&   	 �� 
StartPoint$	 0,0.5&�67   .��5
      � 
 � Color$
 Black��6#    � Offset$ 0Q�61   � 5      $
 Black��6#   $ 1Q�61   � 5      $
 White��6#   $	 0.5Q�61   5      ��5      �� 5      $ 1,0.5&�6&   $	 0,0.5&�67   .��5      � $
 
WhiteSmoke��6#   $ 0Q�66   � 5      $
 White��6#   $ 1Q�61   � 5      $
 Black��6#   $ 0.497Q�61   5      5      �� 5   
   -   5        $��
buttonBack��5   w   $��<<��6   $��40(�6$   $
��Bold"�62   
���   �$��48��6W   $��
212,0,0,12q�6c   $��Bottom=�6�   $
��Left=�6�   $��90��6�   ��5      �� 5      $ 1,0.5&�6&   $	 0,0.5&�67   .��5      � $
 Black��6#   $ 0Q�61   � 5      $
 Black��6#   $ 1Q�61   � 5      $
 White��6#   $	 0.5Q�61   5      ��5      �� 5       $ 1,0.5&�6&   $	 0,0.5&�67   .��5!      � $
 
WhiteSmoke��6#   $ 0Q�66   � 5"      $
 White��6#   $ 1Q�61   � 5#      $
 Black��6#   $ 0.497Q�61   5$      5&      �� 5'   
   -   5        $��buttonForward��5'   w   $��>>��6   $��40(�6$   $
��Bold"�62   
���   �$��48��6W   $��
404,0,0,12q�6c   $��Bottom=�6�   $
��Left=�6�   $��90��6�   ��5(      �� 5)      $ 1,0.5&�6&   $	 0,0.5&�67   .��5*      � $
 Black��6#   $ 0Q�61   � 5+      $
 Black��6#   $ 1Q�61   � 5,      $
 White��6#   $	 0.5Q�61   5-      ��5/      �� 50      $ 1,0.5&�6&   $	 0,0.5&�67   .��51      � $
 
WhiteSmoke��6#   $ 0Q�66   � 52      $
 White��6#   $ 1Q�61   � 53      $
 Black��6#   $ 0.497Q�61   54      56      �� 57   
   -   5        $��
buttonOpen��57   g   $
��Open��6   $��28(�6    $
��Bold"�6.   
��� � �$��
116,0,0,12q�6S   $��48��6y   $��Bottom=�6�   $
��Left=�6�   $��90��6�   ��58      �� 59      $ 1,0.5&�6&   $	 0,0.5&�67   .��5:      � $
 Black��6#   $ 0Q�61   � 5;      $
 Black��6#   $ 1Q�61   � 5<      $
 White��6#   $	 0.5Q�61   5=      ��5?      �� 5@      $ 1,0.5&�6&   $	 0,0.5&�67   .��5A      � $
 
WhiteSmoke��6#   $ 0Q�66   � 5B      $
 White��6#   $ 1Q�61   � 5C      $
 Black��6#   $ 0.497Q�61   5D      5F      �� 5G   
   -   5        $��
buttonStop��5G   q   $
��Stop��6   $��28(�6    $
��Bold"�6.   
���  ��$��48��6Q   $��
498,0,0,12q�6]   $��Bottom=�6�   $
��Left=�6�   $��90��6�   ��5H      �� 5I      $ 1,0.5&�6&   $	 0,0.5&�67   .��5J      � $
 Black��6#   $ 0Q�61   � 5K      $
 Black��6#   $ 1Q�61   � 5L      $
 White��6#   $	 0.5Q�61   5M      ��5O      �� 5P      $ 1,0.5&�6&   $	 0,0.5&�67   .��5Q      � $
 
WhiteSmoke��6#   $ 0Q�66   � 5R      $
 White��6#   $ 1Q�61   � 5S      $
 Black��6#   $ 0.497Q�61   5T      5V      �� 5W   
   -   5        $��sliderVolume��5W   0   $��20��6   $��	88,0,0,85q�6    � SmallChange$
 0.01Q�6D   $��Bottom=�6�    � Maximum$ 1Q�6�    � LargeChange$	 0.1Q�6�   $
��Left=�6�   $	��500��6�    � ToolTip$ Volume��6   � Value 6W   ��  �� Path$ Volume� �� ElementName$ mediaElement1����6�   Z� 6�  �� 5X   
   -	   5        $��sliderProgress��5X   0   $��20��6   $��	88,0,0,64q�6   $��Bottom=�6F   $
��Left=�6a   $	��500��6|   $
 0.01Q�6�   $ 1Q�6�   $	 0.1Q�6�   ��5Y      �� 5Z      5\      �� 5]   
   -
   5        $��textBox1��5]   &   $��
594,0,0,12q�6   $��93��66   $��Bottom=�6B   ���	#FFFF19F2$
��Bold"�6t   $�� ��6�   $��18(�6�    �� TextAlignment$ Center=�6�    �� TextWrapping$ NoWrap=�6�   $��Normal$�6�   $��Microsoft YaHei)�6�   $��Normal&�6�   {�.  �� 
IsReadOnly . $
��Left=�61  $	��184��6L  .��6X  ��5^      �� 5_      $ 1,0.5&�6&   $	 0,0.5&�67   .��5`      � $
 Black��6#   $ 0Q�61   � 5a      $
 Black��6#   $ 1Q�61   � 5b      $
 White��6#   $	 0.5Q�61   5c      .��5d   #   ��5e      �� 5f      $ 1,0.5&�6&   $	 0,0.5&�67   .��5g      � $
 
WhiteSmoke��6#   $ 0Q�66   � 5h      $
 White��6#   $ 1Q�61   � 5i      $
 Black��6#   $ 0.497Q�61   5j      .��5k   "   5l      �� 5m   
   -   5        $��
textBlock1��5m   S   $��15(�6   $
��Bold"�6"   $��20��64   $��	12,0,0,85q�6@   $��Volume��6e   $��Bottom=�6s   $
��Left=�6�   $��70��6�   $ Click To Mute��6�   ��6  �� 6&  $ 1,0.5&�6:  $	 0,0.5&�6K  .��6_  � $
 	#FF00F806��6l  $ 0Q�6~  � 6�  $	
 Red��6�  $ 1Q�6�  6�  6�  �� 5n   
   -   5        $��
textBlock2��5n   S   $��15(�6   $
��Bold"�6"   $��20��64   $��	12,0,0,64q�6@   $��Progress��6e   $
��None=�6u   $��Bottom=�6�   $
��Left=�6�   $��70��6�   ��6�   �� 6�   $ 1,0.5&�6�   $	 0,0.5&�6  .��6  � $
 	#FFE809B3��6'  $ 0Q�69  � 6G  $
 	#FF16E2F5��6T  $ 1Q�6f  6u  6�  �� 5o   
   -   5        $��button1��5o   <   $��About��6   $
��Left=�6!   $��98��6K   $
��Bold"�6V   $��28(�6h   $��Italic$�6v   $��48��6�   $��Bottom=�6�   $��	12,0,0,12q�6�   ��5p      �� 5q      $ 1,0.5&�6&   $	 0,0.5&�67   .��5r      � $
 Black��6#   $ 0Q�61   � 5s      $
 Black��6#   $ 1Q�61   � 5t      $
 White��6#   $	 0.5Q�61   5u      ��5w      �� 5x      $ 1,0.5&�6&   $	 0,0.5&�67   .��5y      � $
 
WhiteSmoke��6#   $ 0Q�66   � 5z      $
 White��6#   $ 1Q�61   � 5{      $
 Black��6#   $ 0.497Q�61   5|      5~      5      5�      