   M S B A M L   `   `   `  ����   HRinformationSystem)    #HRinformationSystem.CreateEmpoyeeID   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o
 kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
               � Title$  CreateEmpoyeeID��$	��580��$	��910�� � WindowStartupLocation$ CenterScreen=� � Cursor$
 Hand�� � 
ResizeMode$ NoResize=�.��� 
������� � RowDefinitions �� $	��13* ��� $
��483* ��� $	��55* � � ColumnDefinitions �� $
��300* ��� $
��390* ��� $	��90* ��� $	��90* ��� $	��90* �.+�� $��5,2,5,5q�$��Stretch=�$��1�� �� $
��154* ��� $
��157* � �� $	��46* ��� $
��393* ��� $	��29* ��� $��8* �.+�*  $Telerik.Windows.Controls.RadComboBox  -   $��EmpName��   	EmptyText$ -- Select Employee --��+  %Telerik.Windows.Controls.StyleManager   Theme-  'Telerik.Windows.Controls.ThemeConverter$ Summer    
IsEditable . 	 �� SelectedValuePath$	 EmpID��
 �� DisplayMemberPath$
 Fullname��$	��Top=�$��Stretch=�$��30��$��2���� $
��2,10q�$��2��$��1��
�������.���  �� ��  �� $
��139* ��� $
��226* �.+��� $��1q����	#FF0E73C7$��1��$��Stretch=�$��	0,25,5,15q�$��Stretch=�����  �� ImageSource$ /Images/no-image.png��._��� -   $��EmpImage��$
��Fill=�$��1q��� -   $��
employeeID��$��1��$��Bottom=�$��Center=��� $��2��$��1��$��5,5,5,10q�.���  �� $	��23* ��� $	��30* ��� $	��20* ��� $	��15* ��� $	��20* ��� $	��27* �.+��� $
��Name��$��Center=��� $��2��$��Center=����	#FFEEEEF2���	#FFEEEEF2�� $��3��$��Position��$��Bottom=��� -   $��EmpFName��$��1��$��Center=� �� TextAlignment$ Center=�$��Stretch=�$��16(�$��2���� -   $��Position��$��4��$��Center=�$ Center=�$��Stretch=�$��14(��� -   $��
Department��$��5��$	��Top=�$ Center=�$��Stretch=�$��14(�(  "Telerik.Windows.Controls.RadButton  -   $ VisualStudio2013 $	��Add��$��40,0,3,0q�$��Stretch=�$��28��$��2��$	��Top=�$��1��* 
 $Telerik.Windows.Controls.RadGridView  -   $��gridEmpforID��; 
 5Telerik.Windows.Controls.GridView.GridViewDataControl   ShowGroupPanel .     IsFilteringAllowed .     LeftFrozenColumnCount$ 3��$��Stretch=�   AutoGenerateColumns .  $��5,2,4.875,5q�$��Stretch=�$��1��8 
 2Telerik.Windows.Controls.GridView.BaseItemsControl   GroupRenderMode$
 Flat=�   RowIndicatorVisibility$ 	Collapsed=�$��4��$��1�� *  $Telerik.Windows.Controls.SummerTheme     Columns 1	 
 +Telerik.Windows.Controls.GridViewDataColumn	  6
 
 0Telerik.Windows.Controls.GridViewBoundColumnBase 
  Header$ BatchNo��- 
 'Telerik.Windows.Controls.GridViewColumn   
IsReadOnly .    Width? 
 9Telerik.Windows.Controls.GridView.GridViewLengthConverter$ 60  
  DataMemberBinding �� *	BatchNo+	  $ EmpID�� . $	 100  �� *EmpID+	  $ EmpName�� . $	 200  �� *EmployeeName+	  $ 
Department�� . $	 150  �� *
Department+	  $ Position�� . $	 150  �� *
Position+	  $ SSSno�� . $	 100  �� *SSSno+	  $	 TIN�� . $	 100  �� *TIN+	  $ Contact Person�� . $	 150  �� *ContactPerson+	  $ Contact Address�� . $	 200  �� *ContactAddress+	  $ Contact Phone�� . $	 100  �� *ContactPhone+	  $ 	BarcodeID�� . $	 100    TextAlignment$ Center=� �� *	Barcode+   	CellStyle ��  �� 
TargetType4 
 .Telerik.Windows.Controls.GridView.GridViewCell"  .���  �� Property � �� �� Value$ 
C39P72DlTt)�  -	   $ VisualStudio2013 $��
Clear List��$��Stretch=�$��28��$��5,5,5,20q�$��2��$��2��$��Center=�$
��Auto��  -
   $ VisualStudio2013 $��Cancel��$��3��$��Stretch=�$��28��$��5,5,5,20q�$��2��$��Center=�$
��Auto��  -   $ VisualStudio2013 $��	Create ID��$��4��$��Stretch=�$��28��$��5,5,5,20q�$��2��$��Center=�$
��Auto��