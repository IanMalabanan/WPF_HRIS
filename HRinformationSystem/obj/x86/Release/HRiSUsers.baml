   M S B A M L   `   `   `  ����   HRinformationSystem#    HRinformationSystem.HRiSUsers   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o
 kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
             -     � Title$  
HRiS Users��$	��400��$	��455�� � Cursor$
 Hand�����	#FF1585A7 � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � Icon$ Images/user.png��.��� $��0,1,0,0q�
������� � RowDefinitions �� .+�* 
 $Telerik.Windows.Controls.RadGridView  -   $��	gridUsers��8 
 2Telerik.Windows.Controls.GridView.BaseItemsControl   GroupRenderMode$
 Flat=�; 
 5Telerik.Windows.Controls.GridView.GridViewDataControl   ColumnWidth? 
 9Telerik.Windows.Controls.GridView.GridViewLengthConverter$ * $��10q�   AutoGenerateColumns .  $��Center=�	   CanUserFreezeColumns	 .  
   ShowGroupPanel
 .     IsFilteringAllowed .     RowIndicatorVisibility$ 	Collapsed=�   NewRowPosition$	 Top=�+  %Telerik.Windows.Controls.StyleManager   Theme *  $Telerik.Windows.Controls.FluentTheme     Columns 1 
 +Telerik.Windows.Controls.GridViewDataColumn  -     Name$ EmpID��6 
 0Telerik.Windows.Controls.GridViewBoundColumnBase   Header$ EmpID��-	 
 'Telerik.Windows.Controls.GridViewColumn 	  Width$	 90*    DataMemberBinding �� *userid+  -   $ username��$ Username��$	 90*  �� *
username+  -   $ password��$ Password��$	 90*  �� *
userpass+5
 
 /Telerik.Windows.Controls.GridViewComboBoxColumn
  -    �Name$ usertype��$ Usertype�� 
  SelectedValueMemberPath$ usertype�� 
  DisplayMemberPath$ usertype��$	 70*  �� *
usertype+