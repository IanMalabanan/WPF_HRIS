   M S B A M L   `   `   `  ����N  JHRinformationSystem, Version=1.0.0.2, Culture=neutral, PublicKeyToken=null9!clr-namespace:HRinformationSystemHRinformationSystem  5   
   !    HRinformationSystem.Archive   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   3local!clr-namespace:HRinformationSystem     5   
   l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o
 kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
             5   	   -   5          � WindowState$  	Maximized=�5   b    � Title$- 'Archive (Move) Employee to History File��5   	   $	��600��6:   $	��890��6G    � Cursor$
 Hand��6S   ���	#FF137FA2 � 
ResizeMode$ 	CanResize=�6x    � WindowStartupLocation$ CenterScreen=�6�   .��5      �� $��Visible=�6   $��0q�6;   $��Hidden=�6F   .��5   
   � $��0,1,0,0q�6   
�������$
��1675��63    � RowDefinitions 5	      �� 5
       � ColumnDefinitions 5      �� 5      $
��250* �6#   �� 5      $��70 �6#   �� 5      $
��250* �6#   .+�5      �� ���#C8C9CC$��2q�6+    �� CornerRadius$ 6��6?   $
��10,0q�6P   $	��540��6^   ���	#FF137FA2$��2��5      ._�5      ]� .+�5      �� $	��Top=�6   ���	#FF137FA2$ 4 4 0 0��5      ._�5      * 
 $Telerik.Windows.Controls.RadGridView  -   5        $��gridActiveFile��5   /   8 
 2Telerik.Windows.Controls.GridView.BaseItemsControl   GroupRenderMode$
 Flat=�6E   $��5,0,5,5q�6]   ; 
 5Telerik.Windows.Controls.GridView.GridViewDataControl	   CanUserFreezeColumns	 .  
   RowDetailsVisibilityMode$
 VisibleWhenSelected=�5   
      AutoGenerateColumns .     
IsReadOnly .    IsFilteringAllowed .     ShowGroupPanel .     RowIndicatorVisibility$ 	Collapsed=�5    
   *  $Telerik.Windows.Controls.DataControl   CanUserSelect .    ShowSearchPanel . '    SearchPanelCloseButtonVisibility$ Hidden=�5"   9   $��2��6d   +  %Telerik.Windows.Controls.StyleManager   Theme 5#      *  $Telerik.Windows.Controls.SummerTheme  5$   "      Columns 5(      = 
 7Telerik.Windows.Controls.GridViewToggleRowDetailsColumn  5)   "   1 
 +Telerik.Windows.Controls.GridViewDataColumn  5*   "   6	 
 0Telerik.Windows.Controls.GridViewBoundColumnBase 	  Header$ EmpID��6=   -
 
 'Telerik.Windows.Controls.GridViewColumn 
  Width? 
 9Telerik.Windows.Controls.GridView.GridViewLengthConverter$	 100 5,   )    	  DataMemberBinding 5+      �� *EmpID+5,   )     5-   "   $ 	Firt Name��6=   $
 200* 5/   )    5.      �� *	FirstName+5/   )     50   "   $ Middle Name��6=   $
 200* 52   )    51      �� *
MiddleName+52   )     53   "   $ 	Last Name��6=   $
 200* 55   )    54      �� *
LastName+55   )      RowDetailsTemplate 58      �� 59   "   .R�5:   &   � .+�5;   *   5   /HRinformationSystem.EmployeePersonalinfoArchive   � DataContext 6L   �� 5<   '   5=   #   5@      5A      5C      5D      �� 5F      ���#C8C9CC$��2q�6+   $ 6��6?   $
��10,0q�6P   $	��540��6^   ���	#FF137FA2$��2��5G      $��2��6+   ._�5H      ]� .+�5J      �� $	��Top=�6   ���	#FF137FA2$ 4 4 0 0��5K      ._�5L        -   5        $��gridHistoryFile��5L   /   $
 Flat=�6F   $��5,0,5,5q�6^   	 .  $
 VisibleWhenSelected=�5N   
    .   .  .   .  $ 	Collapsed=�5R   
    .  . $ Hidden=�5T   9   $��2��6c    5U        5V   "    5Z        5[   "     5\   "   $ EmpID��6=   $	 100 5^   )    5]      �� *EmpID+5^   )     5_   "   $ 	Firt Name��6=   $
 200* 5a   )    5`      �� *	FirstName+5a   )     5b   "   $ Middle Name��6=   $
 200* 5d   )    5c      �� *
MiddleName+5d   )     5e   "   $ 	Last Name��6=   $
 200* 5g   )    5f      �� *
LastName+5g   )    5k      �� 5l   "   .R�5m   &   � .+�5n   *      6L   �� 5o   '   5p   #   5s      5t      5v      5x      � 5z      $��1��6    5{      �� 5|      �� 5}      .+�5�      �� -   5        $��0��5�      $��Stretch=�6'   $��50��6E   $��2,0,2,20q�5�   (   $��Bottom=�6:   ��5�   R   Z� ��5�      Z� .��5�      �� $
��Fill=�6   $��Images/right.png��6+   5�      �� 5�      $��1��6   $��Stretch=�6'   $��50��6E   $��2,20,2,0q�5�   (   $	��Top=�6:   ��5�   R   Z� ��5�      Z� .��5�      �� $
��Fill=�6   $��Images/left.png��6+   5�      5�      �� 5�      -   5        $y�Hidden=�5�      $��1��6)   $��Stretch=�69   $��50��6�   $��2,20,2,0q�6�   $��1��6�   $	��Top=�6�   ��6W   Z� ��6o   Z� .��5�      �� $
��Fill=�6   $��Images/left.png��6'   5�      5�      5�      5�      