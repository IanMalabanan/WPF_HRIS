   M S B A M L   `   `   `  ����  HRinformationSystem)    #HRinformationSystem.EmployeeReClass   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k	 gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p
 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
             5   	     � Title$  Employee ReClassification��5   	    � Cursor$
 Hand��6,   $	��373��6:   $	��746��6G    � WindowStartupLocation$ CenterScreen=�6S    � 
ResizeMode$ NoResize=�6y   ���	#FF1585A7.��5      � 
�������$��0,1,0,0q�6    � RowDefinitions 5   
   �� 5      $
��120* �6   �� 5	      $
��240* �6   .+�5   
   � $��0��6   $��5q�6    � ColumnDefinitions 5      �� 5      $
��131* �6#   �� 5      $
��145* �6#   �� 5      $	��63* �6#   �� 5      $
��121* �6#   �� 5      $
��137* �6#   �� 5      $
��123* �6#    5      �� 5      $	��17* �6    �� 5      $	��25* �6    �� 5      $	��22* �6    �� 5      $	��33* �6    .+�5      �� 
�������$��4��6(   $��6��69   $��Stretch=�6M   $��Stretch=�6k   $��2q�6�   �� 5      
�������$��2��6(   $��Stretch=�69   $��Stretch=�6W   $��1q�6s   �� 5      
�������$��2��6(   $��1��69   $��Stretch=�6I   $��Stretch=�6g   $��1q�6�   �� 5       
�������$��2��6(   $��2��69   $��3��6I   $��Stretch=�6]   $��Stretch=�6{   $��1q�6�   �� 5!      
�������$��2��6(   $��2��69   $��2��6F   $��Stretch=�6Z   $��Stretch=�6x   $��1q�6�   �� 5"      
�������$��2��6(   $��2��69   $��2��6F   $��3��6V   $��Stretch=�6j   $��Stretch=�6�   $��1q�6�   �� 5#      
�������$��4��6(   $��5��69   $��Stretch=�6I   $��Stretch=�6g   $��1q�6�   ._�5$      �� -   5        $��EmpImage��5$      $
��Fill=�6I   $��1q�6X   ��6(   �� *[EmpPicture]+6X   5%      �� 5+      $
��Left=�6   $��8,4,0,0q�63   $
��Wrap=�6D   $��
DATE HIRED��6X   $	��Top=�6j   $��16��6�   $��86��6�   $��2��6�   �� 5,      $
��Left=�6   $��8,4,0,0q�63   $
��Wrap=�6D   $��ID NO.��6X   $	��Top=�6f   $��1��6~   $��16��6�   $��36��6�   $��2��6�   �� 5-      $
��Left=�6   $��8,4,0,0q�63   $
��Wrap=�6D   $��EMPLOYEE NAME��6X   $	��Top=�6m   $��0��6�   $��2��6�   $��16��6�   $	��107��6�   �� 5.      $
��Left=�6   $��8,4,0,0q�63   $
��Wrap=�6D   $��POSITION��6X   $	��Top=�6h   $��2��6�   $��2��6�   $��16��6�   $	��107��6�   $��2��6�   �� 5/      $
��Left=�6   $��8,4,0,0q�63   $
��Wrap=�6E   $��DEPARTMENT/SECTON��6Y   $	��Top=�6r   $��2��6�   $��16��6�   $	��171��6�   $��2��6�   $��2��6�   �� 53      -   5        $��	datehired��53      $
��Left=�6)   $��8,4,0,0q�6D   $
��Wrap=�6U   $�� ��6i   $	��Top=�6q   $��1��6�   $
��Bold"�6�   $��16��6�   $	��145��6�   $��2��6�   �� 54      -   5        $��idnum��54      $
��Left=�6%   $��8,4,0,0q�6@   $
��Wrap=�6Q   $�� ��6e   $	��Top=�6m   $��1��6�   $��1��6�   $
��Bold"�6�   $��16��6�   $	��113��6�   *  $Telerik.Windows.Controls.RadComboBox  55      -   5        $��EmpName��55   "      	EmptyText$ -- Select Employee --��61      
IsEditable .  �� SelectedValuePath$ EmpID��6e   	 �� DisplayMemberPath$	 Fullname��6�   +  %Telerik.Windows.Controls.StyleManager
   Theme-  'Telerik.Windows.Controls.ThemeConverter$
 VisualStudio2013 56   "   $��Stretch=�6P   $��	10,2,10,0q�6n   $��3��6�   $��2��6�   $	��Top=�57   "   $��25��6;   6G   �� 58      -   5        $��position��58      $
��Left=�6(   $��8,4,0,0q�6C   $
��Wrap=�6T   $�� ��6h   $	��Top=�6p   $��3��6�   $��2��6�   $
��Bold"�6�   $��16��6�   $	��189��6�   $��3��6�   �� 59      -   5        $��DeptSect��59      $
��Left=�6(   $��8,4,0,0q�6C   $
��Wrap=�6T   $�� ��6h   $	��Top=�6p   $��1��6�   $��2��6�   $
��Bold"�6�   $��16��6�   $	��321��6�   $��4��6�   5;      � 5>   
   $��Stretch=�6   $��5q�6.   $��1��69   $��Stretch=�6F    5?      �� 5@      $	��97* �6#   �� 5A      $	��97* �6#   �� 5B      $
��248* �6#   �� 5C      $
��132* �6#   �� 5D      $
��146* �6#    5F      �� 5G      $	��35* �6    �� 5H      $	��35* �6    �� 5I      $	��35* �6    �� 5J      $	��35* �6    �� 5K      $	��35* �6    �� 5L      $	��35* �6    .+�5O      �� $��5��6   
�������$��2q�6=   ���	#FF11799C6R   �� 5P      $��5��6   
�������$��1q�6=   $��1��6Q   �� 5Q      $��5��6   
�������$��1q�6=   $��2��6Q   �� 5R      $��5��6   
�������$��1q�6=   $��3��6Q   �� 5S      $��5��6   
�������$��1q�6=   $��4��6Q   �� 5T      $��5��6   
�������$��1q�6=   $��0��6Q   $��5��6^   �� 5U      $��2��6   $��5��6%   
�������$��1q�6I   �� 5V      $��3��6   $��5��6%   
�������$��1q�6I   $��0q�6]   $��2��6h   �� 5X      $��Center=�6   $��	24,8,24,0q�66   $��2��6I   $
��Wrap=�6]   $!��C L A S S I F I C A T I O N��6q   $	��Top=�6�   $	��146��6�   $
��Bold"�6�   $��16��6�   ���	#FFF7F5F56�   �� 5Y      $��Center=�6   $��	90,8,90,0q�65   $
��Wrap=�6H   $��F R O M��6\   $	��Top=�6k   $��2��6�   $
��Bold"�6�   $��16��6�   ���	#FFF9F6F66�   �� 5Z      $��Center=�6   $��110,8,110,0q�65   $
��Wrap=�6J   $	��T O��6^   $	��Top=�6i   $��3��6�   $��38��6�   $
��Bold"�6�   $��16��6�   ���	#FFF9F7F7$��2��6�   �� 5[      $
��Left=�6   $��10,8,0,0q�63   $
��Wrap=�6E   $��
DEPARTMENT��6Y   $	��Top=�6k   $��2��6�   $��1��6�   $	��166��6�   $��16��6�   �� 5\      $
��Left=�6   $��10,8,0,0q�63   $
��Wrap=�6E   $��SECTION��6Y   $	��Top=�6h   $��2��6�   $��2��6�   $	��166��6�   $��16��6�   �� 5]      $
��Left=�6   $��10,8,0,0q�63   $
��Wrap=�6E   $��POSITION��6Y   $	��Top=�6i   $��2��6�   $��3��6�   $	��166��6�   $��16��6�   �� 5^      $
��Left=�6   $��10,8,0,0q�63   $
��Wrap=�6E   $��EMPLOYMENT STATUS��6Y   $	��Top=�6r   $��2��6�   $��4��6�   $	��166��6�   $��16��6�   �� 5_      -   5        $��DepartmentOld��5_       �� 
IsReadOnly . $
 Office_Blue 6A   $��2��6k   $��Stretch=�6{   $��5q�6�   $��1��6�   $��Stretch=�6�   ���	#FF036EEE6�     5a      -   5        $��DepartmentNew��5a   "   {�.  $ DeptCode��6I   $	 DeptName��6f   $
 VisualStudio2013 6�   $��3��6�   $��Stretch=�6�   $��5q�6�   $��1��6�   $��Stretch=�6�   $��2��6E  �� 5c      -	   5        $��
SectionOld��5c       . $
 Office_Blue 6:   $��2��6d   $��2��6t   $��Stretch=�6�   $��5q�6�   $��Stretch=�6�   ���	#FF036EEE6�     5d      -
   5        $��
SectionNew��5d   "   {�.  $ SectCode��6F   $	 SectName��6c   $
 VisualStudio2013 6�   $��3��6�   $��2��6�   $��Stretch=�6�   $��5q�6�   $��Stretch=�6�   $��2��6  �� 5f      -   5        $��PositionOld��5f       . $
 Office_Blue 6;   $��2��6e   $��3��6u   $��Stretch=�6�   $��5q�6�   $��Stretch=�6�   ���	#FF036EEE6�     5g      -   5        $��PositionNew��5g   "   {�.  $
 Code��6H   $	 Description��6a   $
 VisualStudio2013 6�   $��3��6�   $��3��6�   $��Stretch=�6�   $��5q�6�   $��Stretch=�6�   $��2��6  �� 5i      -   5        $��EmployementStatusOld��5i       . $
 Office_Blue 6E   $��2��6o   $��4��6   $��Stretch=�6�   $��5q�6�   ���	#FF036EEE6�     5j      -   5        $��EmployementStatusNew��5j   "   {�.  $
 VisualStudio2013 6P   $
 Code��6~   $	 Description��6�   $��3��6�   $��4��6�   $��Stretch=�6�   $��5q�6�   $��Stretch=�6�   $��2��6  �� 5l      -   5         ��Name$ errormessage��5l       �� TextAlignment$ Right=�61   $��5��6G   $��2��6T   $��Right=�6e   $��Center=�6�   $�� ��6�    J� OpacityMask
 �<�����	#FFE5572C$��2��6�   �� 5o      -   5        $��btnSave��5o      {�.  $
��Save��66   $��5��6E   $��4��6R   $��Stretch=�6c   $
��Auto��6�   $��10,8,0,2q�6�   $��Stretch=�6�   $��10(�6�   6�   5s      �� 5t   
   -   5        $��	adminuser��5t   (   $y�Hidden=�6   $��Right=�69   $��15q�6U   $
��Wrap=�6a   $
��user��6u   $	��Top=�6�   5x      5y      