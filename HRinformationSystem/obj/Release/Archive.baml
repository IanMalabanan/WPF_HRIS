   M S B A M L   `   `   `  ���� N  JHRinformationSystem, Version=1.0.0.2, Culture=neutral, PublicKeyToken=null9!clr-namespace:HRinformationSystemHRinformationSystem  !    HRinformationSystem.Archive   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     3local!clr-namespace:HRinformationSystem     l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o
 kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
             -     � WindowState$  	Maximized=� � Title$- 'Archive (Move) Employee to History File��$	��600��$	��890�� � Cursor$
 Hand�����	#FF137FA2 � 
ResizeMode$ 	CanResize=� � WindowStartupLocation$ CenterScreen=�.���� $��Visible=�$��0q�$��Hidden=�.��� $��0,1,0,0q�
�������$
��1675�� � RowDefinitions ��  � ColumnDefinitions �� $
��250* ��� $��70 ��� $
��250* �.+��� ���#C8C9CC$��2q� �� CornerRadius$ 6��$
��10,0q�$	��540�����	#FF137FA2$��2��._�]� .+��� $	��Top=����	#FF137FA2$ 4 4 0 0��._�* 
 $Telerik.Windows.Controls.RadGridView  -   $��gridActiveFile��8 
 2Telerik.Windows.Controls.GridView.BaseItemsControl   GroupRenderMode$
 Flat=�$��5,0,5,5q�; 
 5Telerik.Windows.Controls.GridView.GridViewDataControl	   CanUserFreezeColumns	 .  
   RowDetailsVisibilityMode$
 VisibleWhenSelected=�   AutoGenerateColumns .     
IsReadOnly .    IsFilteringAllowed .     ShowGroupPanel .     RowIndicatorVisibility$ 	Collapsed=�*  $Telerik.Windows.Controls.DataControl   CanUserSelect .    ShowSearchPanel . '    SearchPanelCloseButtonVisibility$ Hidden=�$��2��+  %Telerik.Windows.Controls.StyleManager   Theme *  $Telerik.Windows.Controls.SummerTheme     Columns = 
 7Telerik.Windows.Controls.GridViewToggleRowDetailsColumn  1 
 +Telerik.Windows.Controls.GridViewDataColumn  6	 
 0Telerik.Windows.Controls.GridViewBoundColumnBase 	  Header$ EmpID��-
 
 'Telerik.Windows.Controls.GridViewColumn 
  Width? 
 9Telerik.Windows.Controls.GridView.GridViewLengthConverter$	 100  	  DataMemberBinding �� *EmpID+  $ 	Firt Name��$
 200*  �� *	FirstName+  $ Middle Name��$
 200*  �� *
MiddleName+  $ 	Last Name��$
 200*  �� *
LastName+   RowDetailsTemplate �� .R�� .+�5   /HRinformationSystem.EmployeePersonalinfoArchive   � DataContext �� �� ���#C8C9CC$��2q�$ 6��$
��10,0q�$	��540�����	#FF137FA2$��2��$��2��._�]� .+��� $	��Top=����	#FF137FA2$ 4 4 0 0��._�  -   $��gridHistoryFile��$
 Flat=�$��5,0,5,5q�	 .  $
 VisibleWhenSelected=� .   .  .   .  $ 	Collapsed=� .  . $ Hidden=�$��2��        $ EmpID��$	 100  �� *EmpID+  $ 	Firt Name��$
 200*  �� *	FirstName+  $ Middle Name��$
 200*  �� *
MiddleName+  $ 	Last Name��$
 200*  �� *
LastName+ �� .R�� .+�   �� � $��1�� �� �� .+��� -   $��0��$��Stretch=�$��50��$��2,0,2,20q�$��Bottom=���Z� ��Z� .���� $
��Fill=�$��Images/right.png���� $��1��$��Stretch=�$��50��$��2,20,2,0q�$	��Top=���Z� ��Z� .���� $
��Fill=�$��Images/left.png���� -   $y�Hidden=�$��1��$��Stretch=�$��50��$��2,20,2,0q�$��1��$	��Top=���Z� ��Z� .���� $
��Fill=�$��Images/left.png��