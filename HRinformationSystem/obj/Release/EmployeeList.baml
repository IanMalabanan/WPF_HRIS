   M S B A M L   `   `   `  ���� O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  N JHRinformationSystem, Version=1.0.0.2, Culture=neutral, PublicKeyToken=null9!clr-namespace:HRinformationSystemHRinformationSystem &    HRinformationSystem.EmployeeList   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     6sys&clr-namespace:System;assembly=mscorlib     3local!clr-namespace:HRinformationSystem     4
convertersclr-namespace;HRIS.Converters     l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k	 gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p
 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation   	 
                � Title$  EmployeeList��$	��705��$
��1000�� � WindowStartupLocation$ CenterScreen=� � WindowState$ 	Maximized=� � Cursor$
 Hand�� � 
ResizeMode$ NoResize=����	#FF1585A7.��� $��Stretch=�$��Stretch=�$��0,1,0,0q�
������� � 	Resources 3  -Telerik.Windows.Controls.BinaryImageConverter   	converter��%   &	           � RowDefinitions �� $	��43* ��� $
��631* �.+��� -   $��
adminusers��$y�Hidden=�$
��user�� �� TextAlignment$ Right=�$
��Left=�$��
715,13,0,1q� J� RenderTransformOrigin$ 6.525,0.432&�$	��263���� -   $��btnadd_maindata��$
��Left=�
������ 
������ $
��Auto��$��15,2,0,0q�$��0q�$��62��.���� 	 �� Orientation$	 Vertical=�.+��� $��25��$��25��$��Images/newemployee.png���� $ Center=�
���   �$
��Bold"�$	��8px(��� $�New Employee���� -   $��
btnrefresh��$
��Left=�
������ 
������ $
��Auto��$��95,2,0,0q�$��0q�$��62��.���� $	 Vertical=�.+��� $��22��$��22��$��Images/refresh_black.png���� $ Center=�
���   �$
��Bold"�$��0,3,0,0q�$	��8px(��� $�Refresh Lists��� $��
10,2,10,10q�$��1��$��1�� ��%   &	           �� $
��585* ��� $	��28* �.+�*  $Telerik.Windows.Controls.RadGridView  -   $��gridEmployee��$��Stretch=�$��Stretch=�$��1,1,1,1q�8  2Telerik.Windows.Controls.GridView.BaseItemsControl
   GroupRenderMode$

 Flat=�;  5Telerik.Windows.Controls.GridView.GridViewDataControl   AutoGenerateColumns .     CanUserFreezeColumns .     RowIndicatorVisibility$ 	Collapsed=�   ShowColumnSortIndexes .    ShowSearchPanel .    SearchPanelBackground
 �����'    SearchPanelCloseButtonVisibility$ Hidden=�   CanUserResizeColumns .  +  %Telerik.Windows.Controls.StyleManager   Theme *  $Telerik.Windows.Controls.FluentTheme     Columns =  7Telerik.Windows.Controls.GridViewToggleRowDetailsColumn  1  +Telerik.Windows.Controls.GridViewDataColumn  6	  0Telerik.Windows.Controls.GridViewBoundColumnBase 	  Header$ Employee ID�� 	  DataMemberBinding �� *EmpID+  $ 
First Name�� �� *	FirstName+  $ Middle Name�� �� *
MiddleName+  $ 	Last Name�� �� *
LastName+  $ 
Department�� �� *
DeptName+  $ Section�� �� *
SectName+  $ Position�� �� *Description+  $ Entry by�� �� *InitialEntryBy+   RowDetailsTemplate �� .R�,
  &Telerik.Windows.Controls.RadTabControl
   
 Name$ RadTabControl1��$	��800��$��Center=�$��8q�$��Center=�   .@�)  #Telerik.Windows.Controls.RadTabItem  $��Personal Info�� � DataContext �� .��� .+�.  (HRinformationSystem.EmployeePersonalinfo   ��   $��Educational Background�� �� .��� .+�/  )HRinformationSystem.EmployeeEducationalBG   ��   $��Work Experience��$��Stretch=�$��Stretch=� �� .��� .+�)  #HRinformationSystem.EmployeeWorkExp   ��   $��
Dependents��$��Stretch=�$��Stretch=� �� .��� .+�,  &HRinformationSystem.EmployeeDependents   ��   $��	Trainings��$��Stretch=�$��Stretch=� �� .��� .+�+  %HRinformationSystem.EmployeeTrainings   �� 