   M S B A M L   `   `   `  ���� N  JHRinformationSystem, Version=1.0.0.2, Culture=neutral, PublicKeyToken=null9!clr-namespace:HRinformationSystemHRinformationSystem  .    (HRinformationSystem.EnablePaySlipViewing   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o
 kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
             Mlocal!clr-namespace:HRinformationSystem    	 
             -     � WindowStartupLocation$  CenterScreen=� � WindowState$ Normal=� � 
ResizeMode$ NoResize=� � Title$  ��$	��250��$	��439��.���  � RowDefinitions �� $
��Auto ��� .+�� ���#4f565c$��2��.+��� $��Center=�$��Center=�$��20(�$��Medium"�
������� �� Padding$ 5q�DISABLE PAYSLIP VIEWING� $��1��$	��2,2q� � ColumnDefinitions �� $
��Auto ��� $��* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� .+��� $��0��$��0��$��Center=�$
��Left=�$��15(�$��Medium"�
���   �$��10,0,0,0q�Month:*  $Telerik.Windows.Controls.RadComboBox  -     Name$ cboMonth��$��Stretch=�$��2q�$��0��$��1��$��15(�$��Stretch=�   
IsEditable .  	   	EmptyText$	 
--Select--��+  %Telerik.Windows.Controls.StyleManager
   Theme-  'Telerik.Windows.Controls.ThemeConverter$
 Fluent �� $��0��$��1��$��Center=�$
��Left=�$��15(�$��Medium"�
���   �$ 	0,10,0,10q�$��10,0,0,0q�Year:  -   $ cboYear��$��Stretch=�$��2q�$��1��$��1��$��15(�$��Stretch=� .  $	 
--Select--��$
 Fluent �� $��0��$��2��$��Center=�$
��Left=�$��15(�$��Medium"�
���   �$ 	0,10,0,10q�$��10,0,0,0q�
Cut Off:  -   $ 	cboCutOff��$��Stretch=�$��2q�$��1��$��2��$��15(�$��Stretch=� .  $	 
--Select--��$
 Fluent �� -    ��Name$ btnActivate��$��1��
����� �$��Stretch=�$��3��$��2��$��0,10,0,0q� � Cursor$
 Hand��.���� .+��� -    ��Name$ lblShowBasic��$��Stretch=�$��Center=�$��2q�$��15(�
�������+)Disable Viewing Starting This Parameters?