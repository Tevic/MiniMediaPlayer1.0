   M S B A M L   `   `   `  ����   MiniMediaPlayer     MiniMediaPlayer.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     -     � Title$  MiniMediaPlayer��$	��600��$	��800�� � WindowStyle$ SingleBorderWindow=�$	��800��$	��600�� � WindowStartupLocation$ CenterScreen=� � Icon$D >/MiniMediaPlayer;component/Images/Windows%20Media%20Player.ico�� � 
ResizeMode$ CanResizeWithGrip=�
���   �.��� .+�r� -   $��mediaElement1��$��	0,0,0,111q� r� UnloadedBehavior$ Manual=� r� LoadedBehavior$ Manual=� r� Volume$	 0.2Q��� -   $��
buttonPlay��$
��Play��$��28(�$
��Bold"�$��48��{�.  $��
308,0,0,12q�$��Bottom=�$
��Left=�$��90������  �� EndPoint$ 1,0.5&�	 �� 
StartPoint$	 0,0.5&�.��� 
 � Color$
 Black�� � Offset$ 0Q�� $
 Black��$ 1Q�� $
 White��$	 0.5Q����� $ 1,0.5&�$	 0,0.5&�.��� $
 
WhiteSmoke��$ 0Q�� $
 White��$ 1Q�� $
 Black��$ 0.497Q��� -   $��
buttonBack��$��<<��$��40(�$
��Bold"�
���   �$��48��$��
212,0,0,12q�$��Bottom=�$
��Left=�$��90������ $ 1,0.5&�$	 0,0.5&�.��� $
 Black��$ 0Q�� $
 Black��$ 1Q�� $
 White��$	 0.5Q����� $ 1,0.5&�$	 0,0.5&�.��� $
 
WhiteSmoke��$ 0Q�� $
 White��$ 1Q�� $
 Black��$ 0.497Q��� -   $��buttonForward��$��>>��$��40(�$
��Bold"�
���   �$��48��$��
404,0,0,12q�$��Bottom=�$
��Left=�$��90������ $ 1,0.5&�$	 0,0.5&�.��� $
 Black��$ 0Q�� $
 Black��$ 1Q�� $
 White��$	 0.5Q����� $ 1,0.5&�$	 0,0.5&�.��� $
 
WhiteSmoke��$ 0Q�� $
 White��$ 1Q�� $
 Black��$ 0.497Q��� -   $��
buttonOpen��$
��Open��$��28(�$
��Bold"�
��� � �$��
116,0,0,12q�$��48��$��Bottom=�$
��Left=�$��90������ $ 1,0.5&�$	 0,0.5&�.��� $
 Black��$ 0Q�� $
 Black��$ 1Q�� $
 White��$	 0.5Q����� $ 1,0.5&�$	 0,0.5&�.��� $
 
WhiteSmoke��$ 0Q�� $
 White��$ 1Q�� $
 Black��$ 0.497Q��� -   $��
buttonStop��$
��Stop��$��28(�$
��Bold"�
���  ��$��48��$��
498,0,0,12q�$��Bottom=�$
��Left=�$��90������ $ 1,0.5&�$	 0,0.5&�.��� $
 Black��$ 0Q�� $
 Black��$ 1Q�� $
 White��$	 0.5Q����� $ 1,0.5&�$	 0,0.5&�.��� $
 
WhiteSmoke��$ 0Q�� $
 White��$ 1Q�� $
 Black��$ 0.497Q��� -   $��sliderVolume��$��20��$��	88,0,0,85q� � SmallChange$
 0.01Q� � Value$	 0.2Q�$��Bottom=� � Maximum$ 1Q� � LargeChange$	 0.1Q�$
��Left=�$	��500�� � ToolTip$ Volume����Z� �� -	   $��sliderProgress��$��20��$��	88,0,0,64q�$��Bottom=�$
��Left=�$	��500��$
 0.01Q�$ 1Q�$	 0.1Q����� �� -
   $��textBox1��$��
594,0,0,12q�$��93��$��Bottom=����	#FFFF19F2$
��Bold"�$�� ��$��18(� �� TextAlignment$ Center=� �� TextWrapping$ NoWrap=�$��Normal$�$��Microsoft YaHei)�$��Normal&�{�.  �� 
IsReadOnly . $
��Left=�$	��184��.������ $ 1,0.5&�$	 0,0.5&�.��� $
 Black��$ 0Q�� $
 Black��$ 1Q�� $
 White��$	 0.5Q�.������ $ 1,0.5&�$	 0,0.5&�.��� $
 
WhiteSmoke��$ 0Q�� $
 White��$ 1Q�� $
 Black��$ 0.497Q�.���� -   $��
textBlock1��$��15(�$
��Bold"�$��20��$��	12,0,0,85q�$��Volume��$��Bottom=�$
��Left=�$��70��$ Click To Mute������ $ 1,0.5&�$	 0,0.5&�.��� $
 	#FF00F806��$ 0Q�� $	
 Red��$ 1Q��� -   $��
textBlock2��$��15(�$
��Bold"�$��20��$��	12,0,0,64q�$��Progress��$
��None=�$��Bottom=�$
��Left=�$��70������ $ 1,0.5&�$	 0,0.5&�.��� $
 	#FFE809B3��$ 0Q�� $
 	#FF16E2F5��$ 1Q��� -   $��button1��$��About��$
��Left=�$��98��$
��Bold"�$��28(�$��Italic$�$��48��$��Bottom=�$��	12,0,0,12q����� $ 1,0.5&�$	 0,0.5&�.��� $
 Black��$ 0Q�� $
 Black��$ 1Q�� $
 White��$	 0.5Q����� $ 1,0.5&�$	 0,0.5&�.��� $
 
WhiteSmoke��$ 0Q�� $
 White��$ 1Q�� $
 Black��$ 0.497Q�