   M S B A M L   `   `   `  ����   HRinformationSystem)    #HRinformationSystem.EmployeeReClass   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o
 kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
               � Title$  Employee ReClassification�� � Cursor$
 Hand��$	��373��$	��746�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ NoResize=����	#FF1585A7.��� 
�������$��0,1,0,0q� � RowDefinitions �� $
��120* ��� $
��240* �.+�� $��0��$��5q� � ColumnDefinitions �� $
��131* ��� $
��145* ��� $	��63* ��� $
��121* ��� $
��137* ��� $
��123* � �� $	��17* ��� $	��25* ��� $	��22* ��� $	��33* �.+��� 
�������$��4��$��6��$��Stretch=�$��Stretch=�$��2q��� 
�������$��2��$��Stretch=�$��Stretch=�$��1q��� 
�������$��2��$��1��$��Stretch=�$��Stretch=�$��1q��� 
�������$��2��$��2��$��3��$��Stretch=�$��Stretch=�$��1q��� 
�������$��2��$��2��$��2��$��Stretch=�$��Stretch=�$��1q��� 
�������$��2��$��2��$��2��$��3��$��Stretch=�$��Stretch=�$��1q��� 
�������$��4��$��5��$��Stretch=�$��Stretch=�$��1q�._��� -   $��EmpImage��$
��Fill=�$��1q����� *[EmpPicture]+�� $
��Left=�$��8,4,0,0q�$
��Wrap=�$��
DATE HIRED��$	��Top=�$��16��$��86��$��2���� $
��Left=�$��8,4,0,0q�$
��Wrap=�$��ID NO.��$	��Top=�$��1��$��16��$��36��$��2���� $
��Left=�$��8,4,0,0q�$
��Wrap=�$��EMPLOYEE NAME��$	��Top=�$��0��$��2��$��16��$	��107���� $
��Left=�$��8,4,0,0q�$
��Wrap=�$��POSITION��$	��Top=�$��2��$��2��$��16��$	��107��$��2���� $
��Left=�$��8,4,0,0q�$
��Wrap=�$��DEPARTMENT/SECTON��$	��Top=�$��2��$��16��$	��171��$��2��$��2���� -   $��	datehired��$
��Left=�$��8,4,0,0q�$
��Wrap=�$�� ��$	��Top=�$��1��$
��Bold"�$��16��$	��145��$��2���� -   $��idnum��$
��Left=�$��8,4,0,0q�$
��Wrap=�$�� ��$	��Top=�$��1��$��1��$
��Bold"�$��16��$	��113��*  $Telerik.Windows.Controls.RadComboBox  -   $��EmpName��   	EmptyText$ -- Select Employee --��   
IsEditable .  �� SelectedValuePath$ EmpID��	 �� DisplayMemberPath$	 Fullname��+  %Telerik.Windows.Controls.StyleManager
   Theme-  'Telerik.Windows.Controls.ThemeConverter$
 VisualStudio2013 $��Stretch=�$��	10,2,10,0q�$��3��$��2��$	��Top=�$��25���� -   $��position��$
��Left=�$��8,4,0,0q�$
��Wrap=�$�� ��$	��Top=�$��3��$��2��$
��Bold"�$��16��$	��189��$��3���� -   $��DeptSect��$
��Left=�$��8,4,0,0q�$
��Wrap=�$�� ��$	��Top=�$��1��$��2��$
��Bold"�$��16��$	��321��$��4��� $��Stretch=�$��5q�$��1��$��Stretch=� �� $	��97* ��� $	��97* ��� $
��248* ��� $
��132* ��� $
��146* � �� $	��35* ��� $	��35* ��� $	��35* ��� $	��35* ��� $	��35* ��� $	��35* �.+��� $��5��
�������$��2q����	#FF11799C�� $��5��
�������$��1q�$��1���� $��5��
�������$��1q�$��2���� $��5��
�������$��1q�$��3���� $��5��
�������$��1q�$��4���� $��5��
�������$��1q�$��0��$��5���� $��2��$��5��
�������$��1q��� $��3��$��5��
�������$��1q�$��0q�$��2���� $��Center=�$��	24,8,24,0q�$��2��$
��Wrap=�$!��C L A S S I F I C A T I O N��$	��Top=�$	��146��$
��Bold"�$��16�����	#FFF7F5F5�� $��Center=�$��	90,8,90,0q�$
��Wrap=�$��F R O M��$	��Top=�$��2��$
��Bold"�$��16�����	#FFF9F6F6�� $��Center=�$��110,8,110,0q�$
��Wrap=�$	��T O��$	��Top=�$��3��$��38��$
��Bold"�$��16�����	#FFF9F7F7$��2���� $
��Left=�$��10,8,0,0q�$
��Wrap=�$��
DEPARTMENT��$	��Top=�$��2��$��1��$	��166��$��16���� $
��Left=�$��10,8,0,0q�$
��Wrap=�$��SECTION��$	��Top=�$��2��$��2��$	��166��$��16���� $
��Left=�$��10,8,0,0q�$
��Wrap=�$��POSITION��$	��Top=�$��2��$��3��$	��166��$��16���� $
��Left=�$��10,8,0,0q�$
��Wrap=�$��EMPLOYMENT STATUS��$	��Top=�$��2��$��4��$	��166��$��16���� -   $��DepartmentOld�� �� 
IsReadOnly . $
 Office_Blue $��2��$��Stretch=�$��5q�$��1��$��Stretch=����	#FF036EEE  -   $��DepartmentNew��{�.  $ DeptCode��$	 DeptName��$
 VisualStudio2013 $��3��$��Stretch=�$��5q�$��1��$��Stretch=�$��2���� -	   $��
SectionOld�� . $
 Office_Blue $��2��$��2��$��Stretch=�$��5q�$��Stretch=����	#FF036EEE  -
   $��
SectionNew��{�.  $ SectCode��$	 SectName��$
 VisualStudio2013 $��3��$��2��$��Stretch=�$��5q�$��Stretch=�$��2���� -   $��PositionOld�� . $
 Office_Blue $��2��$��3��$��Stretch=�$��5q�$��Stretch=����	#FF036EEE  -   $��PositionNew��{�.  $
 Code��$	 Description��$
 VisualStudio2013 $��3��$��3��$��Stretch=�$��5q�$��Stretch=�$��2���� -   $��EmployementStatusOld�� . $
 Office_Blue $��2��$��4��$��Stretch=�$��5q����	#FF036EEE  -   $��EmployementStatusNew��{�.  $
 VisualStudio2013 $
 Code��$	 Description��$��3��$��4��$��Stretch=�$��5q�$��Stretch=�$��2���� -    ��Name$ errormessage�� �� TextAlignment$ Right=�$��5��$��2��$��Right=�$��Center=�$�� �� J� OpacityMask
 �<�����	#FFE5572C$��2���� -   $��btnSave��{�.  $
��Save��$��5��$��4��$��Stretch=�$
��Auto��$��10,8,0,2q�$��Stretch=�$��10(��� -   $��	adminuser��$y�Hidden=�$��Right=�$��15q�$
��Wrap=�$
��user��$	��Top=�