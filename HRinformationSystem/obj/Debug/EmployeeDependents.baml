   M S B A M L   `   `   `  ����  HRinformationSystem,    &HRinformationSystem.EmployeeDependents   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o
 kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
             5      -   5        $	��375��5      $	��800��6   ���	#FFFBF9F9.��5	      � -   5          �Name$  
LayoutRoot��5	      $��2q�6   .+�5   
   �� -   5         ��Name$ EmpID��5      $
��Left=�6#   $��	27,16,0,0q�6>   $
��Wrap=�6Q   $��Center=�6|   $y�Hidden=�6�   ��6e   �� *EmpID+6�   * 
 $Telerik.Windows.Controls.RadGridView  5   
   -   5        $��gridDependent��5      $��Stretch=�5      ; 
 5Telerik.Windows.Controls.GridView.GridViewDataControl   AutoGenerateColumns .  $��5q�5         CanUserInsertRows . $��Stretch=�5      8 
 2Telerik.Windows.Controls.GridView.BaseItemsControl   GroupRenderMode$
 Flat=�5         RowIndicatorVisibility$ 	Collapsed=�5         ShowGroupPanel .     NewRowPosition$ Bottom=�5         IsFilteringAllowed .  +  %Telerik.Windows.Controls.StyleManager	   Theme	 5      *  $Telerik.Windows.Controls.SummerTheme  5      
   Columns
 5      1 
 +Telerik.Windows.Controls.GridViewDataColumn  5      6 
 0Telerik.Windows.Controls.GridViewBoundColumnBase   Header$
 Name��6-   - 
 'Telerik.Windows.Controls.GridViewColumn   Width?	 
 9Telerik.Windows.Controls.GridView.GridViewLengthConverter$
 200*	 5   )      DataMemberBinding 5      �� *Name+5   )     5      $ 	BirthDate��6-      DataFormatString$  {0:dd/MMM/yyyy}��6@    �� 	IsEnabled .     FilterMemberPath$ DateNow.Value.Date��5    F   $
 100*	 5!   )    5       �� *	BirthDate+5!   )   5
 
 /Telerik.Windows.Controls.GridViewComboBoxColumn
  5"      -   5         �Name$ Relationship��5#   6   $ Relationship��5"   1    
  SelectedValueMemberPath$ Relationship��5$   )    
  DisplayMemberPath$ Relationship��5%   )   $
 150*	 5&   )    5#      �� *Relationship+5&   )     5'      $ 
Occupation��6-   $
 150*	 5)   )    5(      �� *
Occupation+5)   )     5*      $ 
MaidenName��6-   $
 170*	 5,   )    5+      �� *
MaidenName+5,   )   5.      52      53      