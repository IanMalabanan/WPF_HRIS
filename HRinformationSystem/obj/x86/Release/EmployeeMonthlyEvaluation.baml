   M S B A M L   `   `   `  ����   HRinformationSystem3    -HRinformationSystem.EmployeeMonthlyEvaluation   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o
 kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
               � Title$  EmployeeMonthlyEvaluation��$	��600��$	��840�����	#FF137FA2 � 
ResizeMode$ NoResize=� � Cursor$
 Hand�� � WindowStartupLocation$ CenterScreen=�.��� $��0,1,0,0q�
������� � RowDefinitions �� .+�,  &Telerik.Windows.Controls.RadTabControl  $��Stretch=�$��10q�$��Stretch=�+  %Telerik.Windows.Controls.StyleManager   Theme *  $Telerik.Windows.Controls.FluentTheme  .@�)  #Telerik.Windows.Controls.RadTabItem  -     Name$ Firts��$��First Month��$��23��$	��100��.��� 
������ .+�* 
 $Telerik.Windows.Controls.RadGridView  -     Name$ radEmployee1stMonth��$��Stretch=�; 
 5Telerik.Windows.Controls.GridView.GridViewDataControl   AutoGenerateColumns .  $��10q�$��1��$��Stretch=�8 
 2Telerik.Windows.Controls.GridView.BaseItemsControl	   GroupRenderMode$
	 Flat=�
   RowIndicatorVisibility$
 	Collapsed=�   ShowGroupPanel .     IsFilteringAllowed .     CanUserInsertRows .     CanUserDeleteRows .   *  $Telerik.Windows.Controls.SummerTheme     Columns 2	 
 ,Telerik.Windows.Controls.GridViewImageColumn	  6
 
 0Telerik.Windows.Controls.GridViewBoundColumnBase 
  Header$  ��- 
 'Telerik.Windows.Controls.GridViewColumn   
IsReadOnly .  �� BitmapScalingMode$ HighQuality=� 	  ImageHeight$ 35Q� 	  
ImageWidth$ 35Q�   Width? 
 9Telerik.Windows.Controls.GridView.GridViewLengthConverter$ 55  
  DataMemberBinding �� *
EmpPicture+1 
 +Telerik.Windows.Controls.GridViewDataColumn  $ Employee ID�� . $	 120  �� *EmpID+  $ 
First Name�� . $
 140*  �� *	FirstName+  $ 	Last Name�� . $
 135*  �� *
LastName+  $ 	Hire Date�� 
  DataFormatString$  {0:dd/MMM/yyyy}��$	 80*  �� *
HireDate+  -   $ Third��$��Third Month��$��23��$	��100��.��� 
������ .+�  -   $ radEmployee3rdMonth��$��Stretch=� .  $��5q�$��1��$��Stretch=�$
	 Flat=�$
 	Collapsed=� .   .   .   .      	  $  �� . $ HighQuality=�$ 35Q�$ 35Q�$ 55  �� *
EmpPicture+  $ Employee ID�� . $	 120  �� *EmpID+  $ 
First Name�� . $
 140*  �� *	FirstName+  $ 	Last Name�� . $
 135*  �� *
LastName+  $ 	Hire Date��$  {0:dd/MMM/yyyy}��$	 80*  �� *
HireDate+  -   $ Fifth��$��Fifth Month��$��23��$	��100��.��� 
������ .+�  -   $ radEmployee5thMonth��$��Stretch=� .  $��5q�$��1��$��Stretch=�$
	 Flat=�$
 	Collapsed=� .   .   .   .      	  $  �� . $ HighQuality=�$ 35Q�$ 35Q�$ 55  �� *
EmpPicture+  $ Employee ID�� . $	 120  �� *EmpID+  $ 
First Name�� . $
 140*  �� *	FirstName+  $ 	Last Name�� . $
 135*  �� *
LastName+  $ 	Hire Date��$  {0:dd/MMM/yyyy}��$	 80*  �� *
HireDate+