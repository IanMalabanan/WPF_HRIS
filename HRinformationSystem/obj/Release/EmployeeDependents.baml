   M S B A M L   `   `   `  ����   HRinformationSystem,    &HRinformationSystem.EmployeeDependents   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o
 kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
             -   $	��375��$	��800�����	#FFFBF9F9.��� -     �Name$  
LayoutRoot��$��2q�.+��� -    ��Name$ EmpID��$
��Left=�$��	27,16,0,0q�$
��Wrap=�$��Center=�$y�Hidden=����� *EmpID+* 
 $Telerik.Windows.Controls.RadGridView  -   $��gridDependent��$��Stretch=�; 
 5Telerik.Windows.Controls.GridView.GridViewDataControl   AutoGenerateColumns .  $��5q�   CanUserInsertRows . $��Stretch=�8 
 2Telerik.Windows.Controls.GridView.BaseItemsControl   GroupRenderMode$
 Flat=�   RowIndicatorVisibility$ 	Collapsed=�   ShowGroupPanel .     NewRowPosition$ Bottom=�   IsFilteringAllowed .  +  %Telerik.Windows.Controls.StyleManager	   Theme	 *  $Telerik.Windows.Controls.SummerTheme  
   Columns
 1 
 +Telerik.Windows.Controls.GridViewDataColumn  6 
 0Telerik.Windows.Controls.GridViewBoundColumnBase   Header$
 Name��- 
 'Telerik.Windows.Controls.GridViewColumn   Width?	 
 9Telerik.Windows.Controls.GridView.GridViewLengthConverter$
 200*	    DataMemberBinding �� *Name+  $ 	BirthDate��   DataFormatString$  {0:dd/MMM/yyyy}�� �� 	IsEnabled .     FilterMemberPath$ DateNow.Value.Date��$
 100*	  �� *	BirthDate+5
 
 /Telerik.Windows.Controls.GridViewComboBoxColumn
  -    �Name$ Relationship��$ Relationship�� 
  SelectedValueMemberPath$ Relationship�� 
  DisplayMemberPath$ Relationship��$
 150*	  �� *Relationship+  $ 
Occupation��$
 150*	  �� *
Occupation+  $ 
MaidenName��$
 170*	  �� *
MaidenName+