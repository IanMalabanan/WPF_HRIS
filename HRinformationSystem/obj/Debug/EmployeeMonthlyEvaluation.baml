   M S B A M L   `   `   `  ����  HRinformationSystem3    -HRinformationSystem.EmployeeMonthlyEvaluation   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o
 kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
             5   	     � Title$  EmployeeMonthlyEvaluation��5   	   $	��600��6+   $	��840��68   ���	#FF137FA2 � 
ResizeMode$ NoResize=�6[    � Cursor$
 Hand��6r    � WindowStartupLocation$ CenterScreen=�6�   .��5      � $��0,1,0,0q�6   
������� � RowDefinitions 5   
   �� 5      .+�5   
   ,  &Telerik.Windows.Controls.RadTabControl  $��Stretch=�6    $��10q�6>   $��Stretch=�6J   +  %Telerik.Windows.Controls.StyleManager   Theme 5      *  $Telerik.Windows.Controls.FluentTheme  5      .@�5      )  #Telerik.Windows.Controls.RadTabItem  -   5          Name$ Firts��5   !   $��First Month��60   $��23��6E   $	��100��6Q   .��5      � 
������ .+�5      * 
 $Telerik.Windows.Controls.RadGridView  -   5          Name$ radEmployee1stMonth��5   *   $��Stretch=�5      ; 
 5Telerik.Windows.Controls.GridView.GridViewDataControl   AutoGenerateColumns .  $��10q�5      $��1��5      $��Stretch=�5      8 
 2Telerik.Windows.Controls.GridView.BaseItemsControl	   GroupRenderMode$
	 Flat=�5      
   RowIndicatorVisibility$
 	Collapsed=�5         ShowGroupPanel .     IsFilteringAllowed .     CanUserInsertRows .     CanUserDeleteRows .   5      *  $Telerik.Windows.Controls.SummerTheme  5         Columns 5       2	 
 ,Telerik.Windows.Controls.GridViewImageColumn	  5"      6
 
 0Telerik.Windows.Controls.GridViewBoundColumnBase 
  Header$  ��6:   - 
 'Telerik.Windows.Controls.GridViewColumn   
IsReadOnly .  �� BitmapScalingMode$ HighQuality=�5$   .    	  ImageHeight$ 35Q�5%       	  
ImageWidth$ 35Q�5&         Width? 
 9Telerik.Windows.Controls.GridView.GridViewLengthConverter$ 55 5'       
  DataMemberBinding 5#      �� *
EmpPicture+5'      1 
 +Telerik.Windows.Controls.GridViewDataColumn  5(      $ Employee ID��69    . $	 120 5*   -    5)      �� *EmpID+5*   -     5+      $ 
First Name��69    . $
 140* 5-   -    5,      �� *	FirstName+5-   -     5.      $ 	Last Name��69    . $
 135* 50       5/      �� *
LastName+50        51      $ 	Hire Date��69    
  DataFormatString$  {0:dd/MMM/yyyy}��6M   $	 80* 53       52      �� *
HireDate+53      57      58      59        5:      -   5        $ Third��5:   !   $��Third Month��60   $��23��6E   $	��100��6Q   .��5;      � 
������ .+�5>        -   5        $ radEmployee3rdMonth��5>   *   $��Stretch=�5?       .  $��5q�5A      $��1��5B      $��Stretch=�5C      $
	 Flat=�5D      $
 	Collapsed=�5E       .   .   .   .   5H        5I       5L      	  5N      $  ��6:    . $ HighQuality=�5P   .   $ 35Q�5Q      $ 35Q�5R      $ 55 5S       5O      �� *
EmpPicture+5S        5T      $ Employee ID��69    . $	 120 5V   -    5U      �� *EmpID+5V   -     5W      $ 
First Name��69    . $
 140* 5Y   -    5X      �� *	FirstName+5Y   -     5Z      $ 	Last Name��69    . $
 135* 5\       5[      �� *
LastName+5\        5]      $ 	Hire Date��69   $  {0:dd/MMM/yyyy}��6M   $	 80* 5_       5^      �� *
HireDate+5_      5c      5g      5h        5i      -   5        $ Fifth��5i   !   $��Fifth Month��60   $��23��6E   $	��100��6Q   .��5j      � 
������ .+�5l        -   5        $ radEmployee5thMonth��5l   *   $��Stretch=�5m       .  $��5q�5o      $��1��5p      $��Stretch=�5q      $
	 Flat=�5r      $
 	Collapsed=�5s       .   .   .   .   5v        5w       5z      	  5|      $  ��6:    . $ HighQuality=�5~   .   $ 35Q�5      $ 35Q�5�      $ 55 5�       5}      �� *
EmpPicture+5�        5�      $ Employee ID��69    . $	 120 5�   -    5�      �� *EmpID+5�   -     5�      $ 
First Name��69    . $
 140* 5�   -    5�      �� *	FirstName+5�   -     5�      $ 	Last Name��69    . $
 135* 5�       5�      �� *
LastName+5�        5�      $ 	Hire Date��69   $  {0:dd/MMM/yyyy}��6M   $	 80* 5�       5�      �� *
HireDate+5�      5�      5�      5�      5�      5�      5�      