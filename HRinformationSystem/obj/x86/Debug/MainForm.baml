   M S B A M L   `   `   `  ����  HRinformationSystem"    HRinformationSystem.MainForm   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k	 gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p
 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
             5   	   $	��620��6K   $	��900��6X     � 
ResizeMode$  NoResize=�6d    � WindowStartupLocation$ CenterScreen=�6z    � WindowStyle$
 None=�6�   ���	#FF3C3838 � Cursor$
 Hand��6�   .��5      � $��1q�6   
������� � ColumnDefinitions 5   
   �� 5      $
��282* �6   �� 5      $	��13* �6    � RowDefinitions 5
   
   �� 5      $	��31* �6   �� 5      $	��28* �6   �� 5      $
��418* �6   �� 5      $��3* �6   .+�5   
   �� $
��Left=�6   $��56��6+   $��10,0,0,0q�67   $	��Top=�6I   $	��258��6c   $��2��6o   $��/Images/Untitled-1.png��6�   (  "Telerik.Windows.Controls.RadButton  5   
   -   5          Name$ btnclose��5   K   +  %Telerik.Windows.Controls.StyleManager   Theme-  'Telerik.Windows.Controls.ThemeConverter$ VisualStudio2013 6   $��X��6]   $��1��6i   $��Right=�6y   $��24��6�   $��0,2,2,0q�6�   $	��Top=�6�   $��24��6�   ��6�   Z� ��6  Z� � 5   
   $��0��6   $��2��6   $��2��6,   $��10,10,10,10q�6@    � 	Resources 5      	 �� 
TargetType   TileLabelStyle
 �� Property �� Value  GroupTemplate��%�  &	        &	 �     �� 5      "	 ��6   .�5      �� 
 � ��$ 14(�61   �� 5      
 � ��$ Segoe UI)�63   �� 5      
 � ��$ 10q�6/   �� 5      
 � ��
 �����63   �� 5      
 � ��$ Bottom=�6:   5      �� 5      .R�5      �� $��16(�5      $��Segoe UI)�5       ���	#FF5A6EB4$	��Top=�5"      $
��Left=�5#      ��5       �� 5#      5$      5&      .+�5'      *  $Telerik.Windows.Controls.RadTileList     VerticalTilesAlignment$	 Top=�6#   $ Fluent 6@   $
 Hand��6e      GroupTemplate# [ 5(   #   ���	#FF1C1C1C��5)      �� 5*       �� Opacity$	 0.8Q�6!      PanoramaBackground 5,      �� 5-      $��Images/bgd.jpg��6      Groups 5/      (  "Telerik.Windows.Controls.TileGroup  52         Header$ Code Maintenance��6(      DisplayIndex$ 1X�6B      Items 53      #  Telerik.Windows.Controls.Tile  54      -   5        $��departmentbox��54   H      TileType$ Single=�55   !   ��56   "   �� 57   &    �� Color$ White��66   .��59   "   � .+�5:   &   �� $��Images/department.jpg��6,   �� 5;   &   $��
Department��60   #��[  6C   ���	#FF545559$
��Bold"�6�   ��5<   *   �� 5=   .   $ 	AliceBlue��6>   $	 0.8Q�6P   5?   '   5A   #   5B        5D      -   5        $��
sectionbox��5D   H   $ Single=�5E   !   ��5F   "   �� 5G   &    �� ImageSource$ /Images/sect.jpg��61   .��5I   "   � .+�5J   &   �� $��Section��60   #��[  6?   ���	#FF545559$
��Bold"�6~   5K   '   5L   #   5M        5O      -   5        $��positionbox��5O   ,   $ Single=�5P      ���	#FF2DBDDF��5Q   "   �� 5R   &   $ /Images/posi.jpg��61   .��5T   "   � .+�5U   &   �� $��Position��60   #��[  6A   ���	#FF3A6DB6$
��Bold"�6�   5W   #   5X        5[      -   5        $ Single=�5\   !   .��5^   "   � .+�5_   &   �� $��Images/bus.jpg��6,   �� 5`   &   $��Shuttle��60   #��[  6?   $��
10,0,67,10q�6h   ���	#FF3367B2$
��Bold"�6�   5a   '   5b   #   5c      5f        5i      $ Employee��6(   $ 0X�6:    5j        5k      -   5        $ Double=�5l   !   ���	#FF347FA4.��5n   "   � .+�5p   &   �� $
��Fill=�6-   $��25q�6=   $��Images/employee.png��6I    J� OpacityMask �	#FF55C6DE6f   �� 5q   &   $��Employee Master��60   $��Bottom=�6G   #��[  6b   ���	#FFFBFDFD$
��Bold"�6�   5s   #   5t        5w      -   5        $ Double=�5y      ���	#FFF3F5F7��5z   "   
� 5{   &   .��5|   *   �  � Color$ 	#FF3F4360��67    � Offset$ 1Q�6I   � 5}   *   $ 	#FFA1ADD7��67   5~   '   .��5�   "   � .+�5�   &   �� $��Bottom=�60   $��Archive��6K   #��[  6Z   ���	#FFF5F8FB$
��Bold"�6�   �� 5�   &   $��Images/arch.jpg��6,   $��10,15,10,26q�6E   $
��Fill=�6Z   5�   #   5�        5�      -   5        $ Single=�5�   ?   ��5�   "   �� 5�   &   $ Images/id.jpg��61   .��5�   "   � .+�5�   &   �� $��	Create ID��60   #��[  6A   ���	#FF49423F$
��Bold"�6�   5�   #   5�        5�      -	   5        $ Single=�5�   !   
�������.��5�   "   � .+�5�   &   �� $��Images/bday.png��6,   $
��Fill=�6F   �� 5�   &   $��B-day Celebrant��60   #��[  6G   ���	#FFDCA07F$
��Bold"�6�   5�   '   5�   #   5�        5�      -
   5        $ Double=�5�      ���	#FFF3F5F7
�������.��5�   "   � .+�5�   &   �� $
��Fill=�6-   $��Images/reclas.jpg��6=   
 �   �6X   �� 5�   &   $��ReClassification��60   #��[  6H   ���	#FF61A5E6$
��Bold"�6�   5�   #   5�        5�      -   5        $ Double=�5�   !   ��5�   "   
� 5�   &   .��5�   *   � $ 	#FF3F4360��67   $ 1Q�6I   � 5�   *   $ 	#FFA1ADD7��67   5�   '   .��5�   "   � .+�5�   &   �� $��Images/document.png��6,   $
��Fill=�6J   �� 5�   &   $��Certificate Of Employment��60   #��[  6Q   ���	#FFF5F8FB$
��Bold"�6�   5�   '   5�   #   5�        5�      -   5        $ Double=�5�      ���	#FFEEE8E8.��5�   "   � .+�5�   &   �� $��Images/evalua.jpg��6,   
 �   �$
��Fill=�6[   �� 5�   &   $��Employee for Evaluation��60   #��[  6P   ���	#FF101126$
��Bold"�6�   ���	#FFF3F3F3 J� Opacity$	 0.9Q�6�   $��10,0,116,10q�6�   5�   #   5�      5�        5�      $ System��6(   $ 3X�68    5�        5�      -   5        $��
newuserbox��5�   I   $ Single=�5�   !   ���	#FFF2F2F2.��5�   "   � .+�5�   &   �� $��Users��60   #��[  6=   ���	#FF096B9F$
��Bold"�6|   �� 5�   &   $��Images/users.png��6,   $��15q�6F   5�   #   5�        5�      -   5        $ Single=�5�   !   ���	#FFF2F2F2.��5�   "   � .+�5�   &   �� $��System About��60   #��[  6D   ���	#FF096B9F$
��Bold"�6�   �� 5�   &   $��Images/about.png��6,   $��20q�6F   5�   #   5�      5�      5�      5�      �� 5�   
   -   5        $��
adminusers��5�      $y�Hidden=�6'   $
��user��6;    �� TextAlignment$ Right=�6G   $
��Left=�6]   $��23��6x   $��	669,6,0,1q�6�   $��1��6�    J� RenderTransformOrigin$ 6.525,0.432&�6�   $	��105��6�   $
��Bold"�6�   �� 5�   
   -   5        $��	userstype��5�      $y�Hidden=�6%   $��usertype��69   $ Right=�6I   $
��Left=�6_   $��23��6z   $��	569,6,0,1q�6�   $��1��6�   $ 6.525,0.432&�6�   $	��105��6�   5      5     