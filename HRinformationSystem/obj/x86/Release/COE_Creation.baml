   M S B A M L   `   `   `  ���� h  dSAPBusinessObjects.WPF.Viewer, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304tRclr-namespace:SAPBusinessObjects.WPF.Viewer;assembly=SAPBusinessObjects.WPF.ViewerSAPBusinessObjects.WPF.Viewer  N JHRinformationSystem, Version=1.0.0.2, Culture=neutral, PublicKeyToken=null9!clr-namespace:HRinformationSystemHRinformationSystem &    HRinformationSystem.COE_Creation   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     eViewerRclr-namespace:SAPBusinessObjects.WPF.Viewer;assembly=SAPBusinessObjects.WPF.Viewer     l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k	 gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p
 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation   	 
              Mlocal!clr-namespace:HRinformationSystem   	 
              -     � WindowStartupLocation$  CenterScreen=� � Cursor$
 Hand�� � 
ResizeMode$ NoResize=� � Title$ Certificate Of Employment��$	��650��$
��1000�� � 	Resources    DataGridDesign �� 
TargetType&   System.Windows.Controls.DataGrid �� Property  chs1 �� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader   DataGridContentCellCentering*  $System.Windows.Controls.DataGridCell �� 
TargetType��%!  &	        &	 3     &	 �     �� "  .���  �@ ColumnHeaderStyle# �  �� "  .���  � ��$ 50����  � ��$ 5q���  � ��$ 30(���  � ��$ DemiBold"���  � ��$ Center=��� "  .���  � �� �� "  .R�� #��z��.+��� $��Center=�.��� 	 � ColumnDefinitions	 �� $	��300 ��� .+�� $��0��.+��� $��0��$��2,0,2,0q����� $��16(�.��Employee Selection.��� 
 � RowDefinitions
 �� $��40 ��� $��30 ��� .+�� $��0��	 �� �� $��36 ��� $��36 �.+�2  ,Telerik.Windows.Controls.RadWatermarkTextBox  -     Name$ tbSearchName��$��30��$��0��$��2q�$��12(�$��Normal"�$��Center=�   WatermarkContent$ Search Employee���� -    ��Name$ 	btnSearch��$��1��$��3,4,3,4q�
�������.���� .+��� $��Images/find.png���� -   $ btnReset��$��2��$��3,4,3,4q�
�������.���� .+��� $��Images/refreshnew.png��$
��Fill=��� -    ��Name$ chkSelectAll��$��Select All Employees��$��8,0,5,0q�$��Center=�$
��left=�$��1��� $��2��
 �� �� $��30 �.+�  -   $��gridEmployees��   AutoGenerateColumns .     HeadersVisibility$
 None=�   RowDetailsVisibilityMode$ VisibleWhenSelected=�#���   $��0��$��Stretch=�   AlternatingRowBackground
 �������.  $
��Auto=�$
��Auto=�   HorizontalGridLinesBrush
 �����   VerticalGridLinesBrush
 �����   CanUserAddRows .     CanUserDeleteRows .     CanUserResizeColumns .     CanUserReorderColumns .  ����    ColumnHeaderStyle �� "  .���  � ��$ 10(�   	CellStyle �� "   �� Triggers P�  P� Property �@ 
IsSelected P� Value . . ���  � �� ��  �� Color$ Transparent����  � ��# � ����  � �� �� $ Transparent��.���  � ��$ Center=�   Columns 4  .System.Windows.Controls.DataGridCheckBoxColumn  ,  &System.Windows.Controls.DataGridColumn    Header$  S��!   Width5  /System.Windows.Controls.DataGridLengthConverter$! 30 -   chkbxSelect��1  +System.Windows.Controls.DataGridBoundColumn"   Binding" �� *	IsChecked+# �� ElementName$# chkSelectAll��$ �� Mode$$ OneWay=�%   ElementStyle% �� " ��.���  �@�Cursor$
 Hand����  � ��$ Center=�&   	CellStyle& �� "  .�-    P�  �@ 
IsSelected . . ���  � ��
 �������  � ��
 �������  � ��
 �������  � ��$ 0q�0	  *System.Windows.Controls.DataGridTextColumn	  -	   IdColumn��$  Employee ID��$	! 200 '   
Visibility$' Hidden=�(   
IsReadOnly( . " �� ) �� Path$) EmpID�% �� " ��.���  � ��$
 Left=���  � ��$ Center=���  � ��$ 12(�	  -
   
NameColumn��$   ��$! * ( . $' Visible=�" �� $) EmployeeName�% �� " ��.���  � ��$
 Left=���  � ��$ 12(���  � ��$ Center=���  � ��$ 10,0,0,0q��� -   $��lblCheckedCounnt��$��1��$��Center=�$��Right=�$��Italic$�$��12(�$��Light"�
���   �.��Ian Lemuel Malabanan� $��1��
 �� $	��150 ��� .+��� $��0��$��2,0,2,0q����� $��16(�.��Template Selection.��� 
 �� �� �� 	 �� �� �� .+�*
  $Telerik.Windows.Controls.RadComboBox
  -   * 
 Name$* cboTemplate��$��Stretch=�$��2,5,2,5q�$��Stretch=�+ 
  
IsEditable+ .  $��0��$��0��, �� SelectedValuePath$, TemplateName��- �� DisplayMemberPath$- TemplateName��. 
  	EmptyText$. Select Template��+  %Telerik.Windows.Controls.StyleManager/   Theme-  'Telerik.Windows.Controls.ThemeConverter$/ Fluent   -   $ 
tbApprover��$��30��$��1��$��0��$��2q�$��12(�$��Normal"�$��Center=�$ Approver Name��  -   $ tbDesignation��$��30��$��2��$��0��$��2q�$��12(�$��Normal"�$��Center=�$ Designation��  -   $ tbCompanyName��$��30��$��0��$��1��$��2q�$��12(�$��Normal"�$��Center=�$��3��$ Company Name��  -   $ tbCompanyAddress��$��30��$��0��$��2��$��2q�$��12(�$��Normal"�$��Center=�$��3��$ Company Address���� $��1��$��2,0,2,0q����� $��16(�.��Body Format.��� 
 �� $	��130 ��� �� $��60 �.+��� -   0 ��Name$0 lblNote��$��0��$��2q�$��15(�$��Center=����� $ Azure��1 �� Opacity$	1 0.5Q��� -   2 ��Name$2 	tbContent��$��1��$��Stretch=�$��15(�3 �� AcceptsReturn3 . 4 �� TextWrapping$
4 Wrap=�"5 �� VerticalScrollBarVisibility$5 Visible=�$��Stretch=�� $��2��	 �� �� $	��150 ��� $	��150 �.+�(  "Telerik.Windows.Controls.RadButton  -   6  Name$6 btnSave��$/ Windows8Touch $
 Hand��$��5q�$��12(�$��1��$��Stretch=�$��Save Template��  -   $6 btnPrintPreview��$/ Windows8Touch $
 Hand��$��5q�$��12(�$��2��$��Stretch=�$��Print Preview��