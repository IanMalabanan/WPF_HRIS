   M S B A M L   `   `   `  ����   HRinformationSystem"    HRinformationSystem.MainForm   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o
 kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
             $	��620��$	��900��  � 
ResizeMode$  NoResize=� � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=����	#FF3C3838 � Cursor$
 Hand��.��� $��1q�
������� � ColumnDefinitions �� $
��282* ��� $	��13* � � RowDefinitions �� $	��31* ��� $	��28* ��� $
��418* ��� $��3* �.+��� $
��Left=�$��56��$��10,0,0,0q�$	��Top=�$	��258��$��2��$��/Images/Untitled-1.png��(  "Telerik.Windows.Controls.RadButton  -     Name$ btnclose��+  %Telerik.Windows.Controls.StyleManager   Theme-  'Telerik.Windows.Controls.ThemeConverter$ VisualStudio2013 $��X��$��1��$��Right=�$��24��$��0,2,2,0q�$	��Top=�$��24����Z� ��Z� � $��0��$��2��$��2��$��10,10,10,10q� � 	Resources 	 �� 
TargetType   TileLabelStyle
 �� Property �� Value  GroupTemplate��%�   &	        &	 �     �� "	 ��.��� 
 � ��$ 14(��� 
 � ��$ Segoe UI)��� 
 � ��$ 10q��� 
 � ��
 ������� 
 � ��$ Bottom=��� .R��� $��16(�$��Segoe UI)����	#FF5A6EB4$	��Top=�$
��Left=����� .+�*  $Telerik.Windows.Controls.RadTileList     VerticalTilesAlignment$	 Top=�$ Fluent $
 Hand��   GroupTemplate# [ ���	#FF1C1C1C����  �� Opacity$	 0.8Q�   PanoramaBackground �� $��Images/bgd.jpg��   Groups (  "Telerik.Windows.Controls.TileGroup     Header$ Code Maintenance��   DisplayIndex$ 1X�   Items #  Telerik.Windows.Controls.Tile  -   $��departmentbox��   TileType$ Single=�����  �� Color$ White��.��� .+��� $��Images/department.jpg���� $��
Department��#��[  ���	#FF545559$
��Bold"����� $ 	AliceBlue��$	 0.8Q�  -   $��
sectionbox��$ Single=�����  �� ImageSource$ /Images/sect.jpg��.��� .+��� $��Section��#��[  ���	#FF545559$
��Bold"�  -   $��positionbox��$ Single=����	#FF2DBDDF���� $ /Images/posi.jpg��.��� .+��� $��Position��#��[  ���	#FF3A6DB6$
��Bold"�  -   $ Single=�.��� .+��� $��Images/bus.jpg���� $��Shuttle��#��[  $��
10,0,67,10q����	#FF3367B2$
��Bold"�  $ Employee��$ 0X�   -   $ Double=����	#FF347FA4.��� .+��� $
��Fill=�$��25q�$��Images/employee.png�� J� OpacityMask �	#FF55C6DE�� $��Employee Master��$��Bottom=�#��[  ���	#FFFBFDFD$
��Bold"�  -   $ Double=����	#FFF3F5F7��
� .���  � Color$ 	#FF3F4360�� � Offset$ 1Q�� $ 	#FFA1ADD7��.��� .+��� $��Bottom=�$��Archive��#��[  ���	#FFF5F8FB$
��Bold"��� $��Images/arch.jpg��$��10,15,10,26q�$
��Fill=�  -   $ Single=����� $ Images/id.jpg��.��� .+��� $��	Create ID��#��[  ���	#FF49423F$
��Bold"�  -	   $ Single=�
�������.��� .+��� $��Images/bday.png��$
��Fill=��� $��B-day Celebrant��#��[  ���	#FFDCA07F$
��Bold"�  -
   $ Double=����	#FFF3F5F7
�������.��� .+��� $
��Fill=�$��Images/reclas.jpg��
 �   ��� $��ReClassification��#��[  ���	#FF61A5E6$
��Bold"�  -   $ Double=���
� .��� $ 	#FF3F4360��$ 1Q�� $ 	#FFA1ADD7��.��� .+��� $��Images/document.png��$
��Fill=��� $��Certificate Of Employment��#��[  ���	#FFF5F8FB$
��Bold"�  -   $ Double=����	#FFEEE8E8.��� .+��� $��Images/evalua.jpg��
 �   �$
��Fill=��� $��Employee for Evaluation��#��[  ���	#FF101126$
��Bold"����	#FFF3F3F3 J� Opacity$	 0.9Q�$��10,0,116,10q�  $ System��$ 3X�   -   $��
newuserbox��$ Single=����	#FFF2F2F2.��� .+��� $��Users��#��[  ���	#FF096B9F$
��Bold"��� $��Images/users.png��$��15q�  -   $ Single=����	#FFF2F2F2.��� .+��� $��System About��#��[  ���	#FF096B9F$
��Bold"��� $��Images/about.png��$��20q��� -   $��
adminusers��$y�Hidden=�$
��user�� �� TextAlignment$ Right=�$
��Left=�$��23��$��	669,6,0,1q�$��1�� J� RenderTransformOrigin$ 6.525,0.432&�$	��105��$
��Bold"��� -   $��	userstype��$y�Hidden=�$��usertype��$ Right=�$
��Left=�$��23��$��	569,6,0,1q�$��1��$ 6.525,0.432&�$	��105��