   M S B A M L   `   `   `  ����N  JHRinformationSystem, Version=1.0.0.2, Culture=neutral, PublicKeyToken=null9!clr-namespace:HRinformationSystemHRinformationSystem  5   	   .    (HRinformationSystem.EnablePaySlipViewing   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o
 kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
             5   	   Mlocal!clr-namespace:HRinformationSystem    	 
             5   	   -   5          � WindowStartupLocation$  CenterScreen=�5       � WindowState$ Normal=�6?    � 
ResizeMode$ NoResize=�6T    � Title$  ��5	   	   $	��250��6   $	��439��6   .��5
      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      .+�5   
   � ���#4f565c$��2��6$   .+�5      �� $��Center=�6   $��Center=�64   $��20(�6Q   $��Medium"�6`   
������� �� Padding$ 5q�5      DISABLE PAYSLIP VIEWING6A   5      � 5   
   $��1��6   $	��2,2q�6    � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $��* �6#    5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      .+�5"      �� $��0��6   $��0��6(   $��Center=�65   $
��Left=�6P   $��15(�6k   $��Medium"�5#   $   
���   �$��10,0,0,0q�6L   Month:5$   %   *  $Telerik.Windows.Controls.RadComboBox  5&      -   5          Name$ cboMonth��5&   "   $��Stretch=�65   $��2q�6Q   $��0��6\   $��1��6i   $��15(�6y   $��Stretch=�5'   "      
IsEditable .  	   	EmptyText$	 
--Select--��6S   +  %Telerik.Windows.Controls.StyleManager
   Theme-  'Telerik.Windows.Controls.ThemeConverter$
 Fluent 5(   "   �� 5*      $��0��6   $��1��6(   $��Center=�66   $
��Left=�6Q   $��15(�6l   $��Medium"�5+   $   
���   �$ 	0,10,0,10q�6L   $��10,0,0,0q�6`   Year:5,   $     5.      -   5        $ cboYear��5.   "   $��Stretch=�64   $��2q�6P   $��1��6[   $��1��6k   $��15(�5/   #   $��Stretch=�61    .  $	 
--Select--��50   #   $
 Fluent 6:   �� 53      $��0��6   $��2��6(   $��Center=�66   $
��Left=�6Q   $��15(�6l   $��Medium"�54   $   
���   �$ 	0,10,0,10q�6L   $��10,0,0,0q�6`   
Cut Off:55   +     57      -   5        $ 	cboCutOff��57   "   $��Stretch=�66   $��2q�6R   $��1��6]   $��2��6m   $��15(�6{   $��Stretch=�58   #    .  $	 
--Select--��59   #   $
 Fluent 6:   �� 5;      -   5         ��Name$ btnActivate��5;   %   $��1��6   
����� �$��Stretch=�6P   $��3��6o   $��2��5<      $��0,10,0,0q�6*    � Cursor$
 Hand��6<   .��5=      �� .+�5>      �� -   5         ��Name$ lblShowBasic��5>       $��Stretch=�67   $��Center=�6U   $��2q�6p   $��15(�5?       
�������+)Disable Viewing Starting This Parameters?6l   5@      5A      5B      5E      5F      