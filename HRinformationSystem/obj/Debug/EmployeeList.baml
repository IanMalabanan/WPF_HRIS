   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   N JHRinformationSystem, Version=1.0.0.2, Culture=neutral, PublicKeyToken=null9!clr-namespace:HRinformationSystemHRinformationSystem 5   	   &    HRinformationSystem.EmployeeList   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	   3local!clr-namespace:HRinformationSystem     5   	   4
convertersclr-namespace;HRIS.Converters     5   	   l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k	 gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p
 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation   	 
              5   	     � Title$  EmployeeList��5   	   $	��705��6   $
��1000��6+    � WindowStartupLocation$ CenterScreen=�68    � WindowState$ 	Maximized=�6]    � Cursor$
 Hand��6v    � 
ResizeMode$ NoResize=�6�   ���	#FF1585A7.��5
      � $��Stretch=�6   $��Stretch=�6)   $��0,1,0,0q�6E   
������� � 	Resources 5   
   3  -Telerik.Windows.Controls.BinaryImageConverter   	converter��%   &	          5      6+   5       � RowDefinitions 5   
   �� 5      $	��43* �6   �� 5      $
��631* �6   .+�5   
   �� -   5        $��
adminusers��5   (   $y�Hidden=�6   $
��user��6:    �� TextAlignment$ Right=�6F   $
��Left=�6\   $��
715,13,0,1q�6w    J� RenderTransformOrigin$ 6.525,0.432&�6�   $	��263��6�   �� 5   
   -   5        $��btnadd_maindata��5   ,   $
��Left=�6   
������ 
������ $
��Auto��6v   $��15,2,0,0q�6�   $��0q�6�   $��62��6�   .��5      �� 	 �� Orientation$	 Vertical=�6   .+�5      �� $��25��6   $��25��6%   $��Images/newemployee.png��60   �� 5      $ Center=�6   
���   �$
��Bold"�6F   $	��8px(�6X   �� 6h   $�New Employee��6l   6�   5      5      �� 5   
   -   5        $��
btnrefresh��5   ,   $
��Left=�6   
������ 
������ $
��Auto��6q   $��95,2,0,0q�6   $��0q�6�   $��62��6�   .��5      �� $	 Vertical=�6   .+�5      �� $��22��6   $��22��6%   $��Images/refresh_black.png��60   �� 5       $ Center=�6   
���   �$
��Bold"�6F   $��0,3,0,0q�6X   $	��8px(�6i   �� 6y   $�Refresh Lists��6}   6�   5!      5"      � 5%   
   $��
10,2,10,10q�6   $��1��6#   $��1��60    5&      ��%   &	          5'      6/   5(       5)      �� 5*      $
��585* �6    �� 5+      $	��28* �6    .+�5-      *  $Telerik.Windows.Controls.RadGridView  -   5        $��gridEmployee��5-   #   $��Stretch=�67   $��Stretch=�6U   $��1,1,1,1q�6q   8  2Telerik.Windows.Controls.GridView.BaseItemsControl
   GroupRenderMode$

 Flat=�5.      ;  5Telerik.Windows.Controls.GridView.GridViewDataControl   AutoGenerateColumns .     CanUserFreezeColumns .     RowIndicatorVisibility$ 	Collapsed=�51   	      ShowColumnSortIndexes .    ShowSearchPanel .    SearchPanelBackground
 �����'    SearchPanelCloseButtonVisibility$ Hidden=�52   t      CanUserResizeColumns .  +  %Telerik.Windows.Controls.StyleManager   Theme 54      *  $Telerik.Windows.Controls.FluentTheme  55         Columns 59      =  7Telerik.Windows.Controls.GridViewToggleRowDetailsColumn  5:      1  +Telerik.Windows.Controls.GridViewDataColumn  5<      6	  0Telerik.Windows.Controls.GridViewBoundColumnBase 	  Header$ Employee ID��61    	  DataMemberBinding 5=      �� *EmpID+  5>      $ 
First Name��61    5?      �� *	FirstName+  5@      $ Middle Name��61    5A      �� *
MiddleName+  5B      $ 	Last Name��61    5C      �� *
LastName+  5D      $ 
Department��61    5E      �� *
DeptName+  5F      $ Section��61    5G      �� *
SectName+  5H      $ Position��61    5I      �� *Description+  5J      $ Entry by��61    5K      �� *InitialEntryBy+   RowDetailsTemplate 5S      �� 5T      .R�5V      ,
  &Telerik.Windows.Controls.RadTabControl
   
 Name$ RadTabControl1��60   $	��800��5W      $��Center=�5X      $��8q�5Y      $��Center=�5Z       5[        5\   "   .@�5_      )  #Telerik.Windows.Controls.RadTabItem  $��Personal Info��61    � DataContext 5`      �� .��5b   "   � .+�5c   &   .  (HRinformationSystem.EmployeePersonalinfo   6A   �� 5d   #   5f        5h      $��Educational Background��61    6Q   �� .��5j   "   � .+�5k   &   /  )HRinformationSystem.EmployeeEducationalBG   6B   �� 5l   #   5p        5s      $��Work Experience��61   $��Stretch=�5t      $��Stretch=�5u       5s   J   �� .��5v   "   � .+�5w   &   )  #HRinformationSystem.EmployeeWorkExp   6<   �� 5x   #   5z        5|      $��
Dependents��61   $��Stretch=�5}      $��Stretch=�5~       5|   E   �� .��5   "   � .+�5�   &   ,  &HRinformationSystem.EmployeeDependents   6?   �� 5�   #   5�        5�      $��	Trainings��61   $��Stretch=�5�      $��Stretch=�5�       5�   D   �� .��5�   "   � .+�5�   &   +  %HRinformationSystem.EmployeeTrainings   6>   �� 5�   #   5�      5�      5�      5�      5�      5�      5�      