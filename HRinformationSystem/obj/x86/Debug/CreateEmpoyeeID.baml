   M S B A M L   `   `   `  ����  HRinformationSystem)    #HRinformationSystem.CreateEmpoyeeID   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k	 gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p
 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
             5   	     � Title$  CreateEmpoyeeID��5   	   $	��580��6"   $	��910��6/    � WindowStartupLocation$ CenterScreen=�6;    � Cursor$
 Hand��6a    � 
ResizeMode$ NoResize=�6o   .��5      � 
������� � RowDefinitions 5   
   �� 5      $	��13* �6   �� 5	      $
��483* �6   �� 5
      $	��55* �6    � ColumnDefinitions 5   
   �� 5      $
��300* �6   �� 5      $
��390* �6   �� 5      $	��90* �6   �� 5      $	��90* �6   �� 5      $	��90* �6   .+�5   
   � $��5,2,5,5q�6   $��Stretch=�6"   $��1��6>    5      �� 5      $
��154* �6#   �� 5      $
��157* �6#    5      �� 5      $	��46* �6    �� 5      $
��393* �6    �� 5      $	��29* �6    �� 5      $��8* �6    .+�5       *  $Telerik.Windows.Controls.RadComboBox  -   5        $��EmpName��5    "      	EmptyText$ -- Select Employee --��61   +  %Telerik.Windows.Controls.StyleManager   Theme-  'Telerik.Windows.Controls.ThemeConverter$ Summer 6      
IsEditable . 	 �� SelectedValuePath$	 EmpID��6�   
 �� DisplayMemberPath$
 Fullname��6�   $	��Top=�6�   $��Stretch=�6  $��30��6#  $��2��6/  �� 5#      $
��2,10q�6   $��2��6%   $��1��69   
�������.��5$      �  5%      �� 5&      �� 5'       5)      �� 5*      $
��139* �6(   �� 5+      $
��226* �6(   .+�5.      �� $��1q�6   ���	#FF0E73C7$��1��6J   $��Stretch=�6Z   $��	0,25,5,15q�6x   $��Stretch=�6�   ��5/      �� 50       �� ImageSource$ /Images/no-image.png��6)   ._�52      �� -   5        $��EmpImage��52       $
��Fill=�60   $��1q�6?   53      �� 54      -   5        $��
employeeID��54   h   $��1��6    $��Bottom=�60   $��Center=�6K   6|   �� 56      $��2��6    $��1��64   $��5,5,5,10q�6A   .��57      �  58      �� 59   "   $	��23* �60   �� 5:   "   $	��30* �60   �� 5;   "   $	��20* �60   �� 5<   "   $	��15* �60   �� 5=   "   $	��20* �60   �� 5>   "   $	��27* �60   .+�5A      �� $
��Name��6(   $��Center=�64   6Q   �� 5B      $��2��6(   $��Center=�65   ���	#FFEEEEF2���	#FFEEEEF26g   �� 5C      $��3��6(   $��Position��65   $��Bottom=�6E   6b   �� 5E      -   5        $��EmpFName��5E   6   $��1��6)   $��Center=�6F    �� TextAlignment$ Center=�6a   $��Stretch=�6x   $��16(�6�   $��2��6�   6�   �� 5F      -   5        $��Position��5F   6   $��4��6)   $��Center=�6F   $ Center=�6a   $��Stretch=�6x   $��14(�6�   6�   �� 5G      -   5        $��
Department��5G   6   $��5��6)   $	��Top=�6H   $ Center=�6`   $��Stretch=�6w   $��14(�6�   6�   5J      5K      5M      5O      (  "Telerik.Windows.Controls.RadButton  5n      -   5        $ VisualStudio2013 5n       $	��Add��6N   $��40,0,3,0q�6\   $��Stretch=�6�   $��28��6�   $��2��6�   $	��Top=�6�   $��1��6�   5p      *  $Telerik.Windows.Controls.RadGridView  5r   
   -   5        $��gridEmpforID��5r      ;  5Telerik.Windows.Controls.GridView.GridViewDataControl   ShowGroupPanel .     IsFilteringAllowed .     LeftFrozenColumnCount$ 3��6d   $��Stretch=�6~      AutoGenerateColumns .  $��5,2,4.875,5q�5s   h   $��Stretch=�6~   $��1��5t      8  2Telerik.Windows.Controls.GridView.BaseItemsControl   GroupRenderMode$
 Flat=�6.      RowIndicatorVisibility$ 	Collapsed=�6G   $��4��6j   $��1��6~    5u      *  $Telerik.Windows.Controls.SummerTheme  5v         Columns 5x      1	  +Telerik.Windows.Controls.GridViewDataColumn	  5y      6
  0Telerik.Windows.Controls.GridViewBoundColumnBase 
  Header$ BatchNo��6-   -  'Telerik.Windows.Controls.GridViewColumn   
IsReadOnly .    Width?  9Telerik.Windows.Controls.GridView.GridViewLengthConverter$ 60 5{   )    
  DataMemberBinding 5z      �� *	BatchNo+5{   )   	  5|      $ EmpID��6-    . $	 100 5~   )    5}      �� *EmpID+5~   )   	  5      $ EmpName��6-    . $	 200 5�   )    5�      �� *EmployeeName+5�   )   	  5�      $ 
Department��6-    . $	 150 5�   )    5�      �� *
Department+5�   )   	  5�      $ Position��6-    . $	 150 5�   )    5�      �� *
Position+5�   )   	  5�      $ SSSno��6-    . $	 100 5�   )    5�      �� *SSSno+5�   )   	  5�      $	 TIN��6-    . $	 100 5�   )    5�      �� *TIN+5�   )   	  5�      $ Contact Person��6-    . $	 150 5�   )    5�      �� *ContactPerson+5�   )   	  5�      $ Contact Address��6-    . $	 200 5�   )    5�      �� *ContactAddress+5�   )   	  5�      $ Contact Phone��6-    . $	 100 5�   )    5�      �� *ContactPhone+5�   )   	  5�      $ 	BarcodeID��6-    . $	 100 5�   )      TextAlignment$ Center=�65    5�      �� *	Barcode+   	CellStyle 5�      �� 5�       �� 
TargetType4  .Telerik.Windows.Controls.GridView.GridViewCell"  6    .�5�      ��  �� Property � �� �� Value$ 
C39P72DlTt)�6<   5�      5�      5�        5�   
   -	   5        $ VisualStudio2013 5�      $��
Clear List��6J   $��Stretch=�6_   $��28��6}   $��5,5,5,20q�6�   $��2��6�   $��2��6�   $��Center=�6�   $
��Auto��6�   6�     5�   
   -
   5        $ VisualStudio2013 5�      $��Cancel��6J   $��3��6[   $��Stretch=�6k   $��28��6�   $��5,5,5,20q�6�   $��2��6�   $��Center=�6�   $
��Auto��6�   6�     5�   
   -   5        $ VisualStudio2013 5�      $��	Create ID��6J   $��4��6^   $��Stretch=�6n   $��28��6�   $��5,5,5,20q�6�   $��2��6�   $��Center=�6�   $
��Auto��6�   6�   5�      5�      