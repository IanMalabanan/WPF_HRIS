   M S B A M L   `   `   `  ����  HRinformationSystem/    )HRinformationSystem.EmployeeBdayCelebrant   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o
 kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
             5   	   $	��650��5   	   $	��840��6   ���	#FF127D9F  � 
ResizeMode$  NoResize=�69    � WindowStartupLocation$ CenterScreen=�6O    � Title$! Employee Birthday Celebrant��6u    � Cursor$
 Hand��6�   .��5      � $��0,1,0,0q�6   
������� � RowDefinitions 5   
   �� 5      $��60 �6   �� 5	       � ColumnDefinitions 5   
   �� 5      $	��250 �6   6-   �� 5      6!   .+�5   
   � $��0��6    5      �� 5      6"   �� 5      6"   .+�5      �� ���	#FF353536$
��Wrap=�6/   $��Select Month:��6C   $��Center=�6X   $��0��6s   $��	10,5,10,2q�6�   *  $Telerik.Windows.Controls.RadComboBox  5      -   5        $��cboMonth��5   P   +  %Telerik.Windows.Controls.StyleManager   Theme-  'Telerik.Windows.Controls.ThemeConverter$ VisualStudio2013 6"    �� SelectedValuePath$ Month_Number��6`    �� DisplayMemberPath$ 
Month_Name��6�   $��1��5   "   $��	10,2,10,5q�6/   $��Center=�6B   $��Stretch=�6]   6{   5      * 
 $Telerik.Windows.Controls.RadGridView  5   
   -   5        $��gridEmployeeBdayCelebrant��5      $��Stretch=�5      ; 
 5Telerik.Windows.Controls.GridView.GridViewDataControl	   AutoGenerateColumns	 .  $��10q�5      $��1��5       $��2��6+   $��Stretch=�5!      8 
 2Telerik.Windows.Controls.GridView.BaseItemsControl
   GroupRenderMode$

 Flat=�5"         RowIndicatorVisibility$ 	Collapsed=�5#         ShowGroupPanel .     IsFilteringAllowed .  5&      *  $Telerik.Windows.Controls.SummerTheme  5'         Columns 5+      2 
 ,Telerik.Windows.Controls.GridViewImageColumn  5-      6	 
 0Telerik.Windows.Controls.GridViewBoundColumnBase 	  Header$  ��6.   -
 
 'Telerik.Windows.Controls.GridViewColumn 
  
IsReadOnly .  �� BitmapScalingMode$ HighQuality=�5/   .      ImageHeight$ 35Q�50         
ImageWidth$ 35Q�51       
  Width? 
 9Telerik.Windows.Controls.GridView.GridViewLengthConverter$ 55 52       	  DataMemberBinding 5.      �� *
EmpPicture+52      1 
 +Telerik.Windows.Controls.GridViewDataColumn  53      $ Employee ID��6-    . $	 120 55   -    54      �� *EmpID+55   -     56      $
 Name��6-    . $
 140* 58   -    57      �� *
Fullname+58   -     59      $ 
Department��6-    . $
 135* 5;       5:      �� *
DeptName+5;        5<      $ Section��6-    . $
 135* 5>       5=      �� *
SectName+5>        5?      $ Birthday��6-    	  DataFormatString$  {0:dd/MMM/yyyy}��6@   $	 80* 5A       5@      �� *	BirthDate+5A      5E      5G      5H      