   M S B A M L   `   `   `  ����q  mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~Zclr-namespace:Telerik.Windows.Controls.Wizard;assembly=Telerik.Windows.Controls.NavigationTelerik.Windows.Controls.Wizard  5       HRinformationSystem.   (HRinformationSystem.EmployeePersonalinfo   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      mwizardZclr-namespace:Telerik.Windows.Controls.Wizard;assembly=Telerik.Windows.Controls.Navigation     5      q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v	 rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k
 gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation   	 
               5      ]
converters,clr-namespace;HRinformationSystem.Converters   	 
               5      -   5        $	��432��5	   3   .��5      � $��2q�6     � RowDefinitions  5   
   �� 5      $
��399* �6   �� 5      $��29 �6    � ColumnDefinitions 5   
   �� 5      $	��61* �6   �� 5      $
��207* �6   .+�5   
   � -   5        $��EmpData��5   T   $��Stretch=�6   $��1q�6-   $��Stretch=�68   {�.    5      �� 5      $
��125* �6    �� 5      $
��130* �6    �� 5      $
��130* �6    .+�5      �� -   5        $
��Load��5      $��0��6K   $	��5,0q�6X   ��6"   Z� .��5      �� -   5        $��
EmpPicture��5   *   $��0,0,0,0q�6   $��Images/no-image.png��6<   $
��Fill=�6Z   5      �� 5       $��Stretch=�6   $	��2,0q�66   $��Stretch=�6C   $�� ��6`    � Cursor$
 Hand��6j   ���	#FF3664B6$��1��6�   .��5!      �   5"      �� 5#      $	��25* �6(   �� 5$      $	��25* �6(   �� 5%      $	��25* �6(   �� 5&      $	��25* �6(    5(      �� 5)      $	��17* �6+   �� 5*      $	��38* �6+   .+�5.      �� ���	#FF353536$
��Wrap=�67   $��Batch No��6K   $��Center=�6[   $��0��6w   �� 5/      ���	#FF353536$
��Wrap=�67   $��Prox ID��6K   $��Center=�6Z   $��1��6v   �� 50      ���	#FF353536$
��Wrap=�67   $��	Date Hire��6K   $��Center=�6\   $��2��6x   �� 51      ���	#FF353536$
��Wrap=�67   $��Date End��6K   $��Center=�6[   $��3��6w   �� 54      -   5        $��EmpID��54   d   +  %Telerik.Windows.Controls.StyleManager   Theme-  'Telerik.Windows.Controls.ThemeConverter$ VisualStudio2013 6   $y�	Collapsed=�6M    �� 	MaxLength$ 12��6q   $��Center=�6�    �� 
IsReadOnly . $��Stretch=�6�   $��1��6�   ��6�   �� *EmpID+ �� Mode$ OneWay=�6�   2  ,Telerik.Windows.Controls.RadWatermarkTextBox  55      -   5        $��BatchNo��55   }      WatermarkContent$ Batch No��62   $ VisualStudio2013 6N   $��Center=�6�   $��Stretch=�6�   $��1��6�   ��6�   �� *	BatchNo+$ OneWay=�6�     56      -   5        $��ProximityCardID��56   �   $ Proximity ID��62   $ VisualStudio2013 6R   $��1��6�   $��Center=�6�   $��Stretch=�6�   $��1��6�   ,  &Telerik.Windows.Controls.RadDatePicker  57      -   5        $��HireDate��57   ,   $��2��6<   $��Stretch=�6J   $��Center=�6i   0  *Telerik.Windows.Controls.RadDateTimePicker   DateTimeWatermarkContent$ Select Hire Date��6�   $��1��6�   
������� 58      4  .Telerik.Windows.Controls.VisualStudio2013Theme  59      5;        5<      -	   5        $��EndDate��5<   ,   $��3��6;   $��Stretch=�6I   $��Center=�6h   $ Select End Date��6�   $��1��6�   
������� 5=        5>      5@      5B      5C      �� 5F      $��2��6   $	��2,0q�6%   $��Endorsement��62   $
 Hand��6G   ���	#FF3664B6.��5G      �  5H      �� 5I      $	��3.* �6+   �� 5J      $��7* �6+     5L      �� 5M      $	��25* �6(   �� 5N      $	��25* �6(   �� 5O      $	��25* �6(   �� 5P      $	��25* �6(   .+�5S      �� ���	#FF353536$
��Wrap=�67   $
��Dept��6K   $��Center=�6W   �� 5T      ���	#FF353536$
��Wrap=�67   $��Section��6K   $��Center=�6Z   $��1��6v   �� 5U      ���	#FF353536$
��Wrap=�67   $��Position��6K   $��Center=�6[   $��2��6w   �� 5V      ���	#FF353536$
��Wrap=�67   $��Status��6K   $��Center=�6Y   $��3��6u   *  $Telerik.Windows.Controls.RadComboBox  5X      -
   5        $��
Department��5X   i   $��1��6+   $ VisualStudio2013 6;   	 �� SelectedValuePath$	 DeptCode��6{   
 �� DisplayMemberPath$
 DeptName��6�   $��0��6�   $��Center=�6�   $��Stretch=�6�   6-    5Y      -   5        $��Section��5Y   i   $��1��6+   $ VisualStudio2013 6;   $	 SectCode��6y   $
 SectName��6�   $��1��6�   $��Center=�6�   $��Stretch=�6�     5Z      -   5        $��Position��5Z   i   $��1��6+   $ VisualStudio2013 6;   $
	 Code��6y   $
 Description��6�   $��2��6�   $��Center=�6�   $��Stretch=�6�     5[      -   5        $��EmploymentStatus��5[   i   $��1��6+   $ VisualStudio2013 6;   $
	 Code��6�   $
 Description��6�   $��3��6�   $��Center=�6�   $��Stretch=�6�   5^      5_      5d      � 5h   
   -   5        $��EmpData2��5h   g   $��Stretch=�6   $��1q�6.   $��Stretch=�69   $��1��6V   {�.    5i      �� 5j      $	��55* �6    �� 5k      $	��90* �6    �� 5l      $	��90* �6    �� 5m      $	��55* �6    �� 5n      $	��55* �6    �� 5o      $	��30* �6    �� 5p      $	��85* �6    .+�5s      �� $
��Name��6   $
 Hand��6&   ���	#FF3664B6$	��2,0q�6L   .��5t      � $��Stretch=�6   $��Stretch=�66   $��0,0,0,0q�6R    5u      �� 5v      $
��252* �6+   �� 5w      $
��252* �6+   �� 5x      $
��244* �6+   �� 5y      $��9* �6+   .+�5|        -   5        $��LastName��5|   a   $ VisualStudio2013 63   $��0��6s    �� TextWrapping$
 Wrap=�6�   $ 	Last Name��6�   $��Stretch=�6�   $��Center=�6�   $	��1,0q�6�     5}      -   5        $��	FirstName��5}   a   $ VisualStudio2013 63   $��1��6r   $
 Wrap=�6�   $ 
First Name��6�   $��Stretch=�6�   $��Center=�6�   $	��1,0q�6�     5~      -   5        $��
MiddleName��5~   a   $ VisualStudio2013 63   $��2��6t   $
 Wrap=�6�   $ Middle Name��6�   $��Stretch=�6�   $��Center=�6�   $	��1,0q�6�   5�      5�      �� 5�      $��Present Address��6   $
 Hand��61   $��1��6@   ���	#FF3664B6$	��2,0q�6d   .��5�      � $��Stretch=�6   $��Stretch=�66   $��0,0,0,0q�6R    5�      �� 5�      $
��249* �6+   �� 5�      $
��239* �6+   �� 5�      $
��268* �6+     5�      �� 5�      $��28 �6(   �� 5�      $��28 �6(   .+�5�        -   5        $��CountryName��5�   f    J� Opacity$	 0.8Q�6*   $ VisualStudio2013 68   $	 	CountryID��6y   $
 CountryName��6�   $��Center=�6�   $	��1,0q�6�   $��Stretch=�6�   6     5�      -   5        $��ProvName��5�   f   $	 0.8Q�6*   $ VisualStudio2013 68   $	 ProvID��6w   $
 ProvName��6�   $��1��6�   $��Center=�6�   $	��1,0q�6�   $��Stretch=�6�   6	    5�      -   5        $��CityName��5�   f   $	 0.8Q�6*   $ VisualStudio2013 68   $	 CityID��6v   $
 CityName��6�   $��2��6�   $��Center=�6�   $	��1,0q�6�   $��Stretch=�6�     5�      -   5        $��Street��5�   |   $ Street��62   $ VisualStudio2013 6M   $��1��6�   $��Stretch=�6�   $��Center=�6�   $	��1.0q�6�   $��3��6�   5�      5�      �� 5�      $��Permanent Address��6   $��2��63   $
 Hand��6@   ���	#FF3664B6$	��2,0q�6f   .��5�      � $��Stretch=�6   $��Stretch=�66   $��0,0,0,0q�6R    5�      �� 5�      $
��249* �6+   �� 5�      $
��239* �6+   �� 5�      $
��268* �6+     5�      �� 5�      $��28 �6(   �� 5�      $��28 �6(   .+�5�        -   5        $��PermanentCountryName��5�   �   $	 0.8Q�6*   $ VisualStudio2013 6q   $	 	CountryID��6�   $
 CountryName��6�   $��0��6�   $��Center=�6  $	��1,0q�6&  $��Stretch=�63    5�      -   5        $��PermanentProvName��5�   �   $	 0.8Q�6*   $ VisualStudio2013 6n   $	 ProvID��6�   $
 ProvName��6�   $��1��6�   $��Center=�6�   $	��1,0q�6  $��Stretch=�6)    5�      -   5        $��PermanentCityName��5�   f   $	 0.8Q�6*   $ VisualStudio2013 68   $	 CityID��6�   $
 CityName��6�   $��2��6�   $��Center=�6�   $	��1,0q�6�   $��Stretch=�6�     5�      -   5        $��PermanentStreet��5�   z   $ Street��62   $ VisualStudio2013 6L   $��1��6�   $��0��6�   $��Stretch=�6�   $��Center=�6�   $	��1,0q�6�   $��5��6�   5�      5�      �� 5�      $��Stretch=�6   $��3��65   $��Stretch=�6B   $��Contact��6^   ���	#FF3664B6$	��2,0q�6�   .��5�      �  5�      �� 5�      $
��249* �6+   �� 5�      $
��239* �6+   �� 5�      $
��268* �6+   .+�5�        -   5        $��Mobile��5�   �   $ Mobile ��63   $ VisualStudio2013 6N   $��0��6|   $��Stretch=�6�   $ 13��6�   $��Center=�6�   $	��1,0q�6�     5�      -   5        $��Phone��5�   ~   $ 	Landline ��63   $ VisualStudio2013 6P   $��1��6�   $��Stretch=�6�   $ 10��6�   $��Center=�6�   $	��1,0q�6�     5�      -   5        $��EmailAddress��5�   z   $ Email ��62   $ VisualStudio2013 6L   $��2��6�   $��Stretch=�6�   $��Center=�6�   $	��1,0q�6�   5�      5�      �� 5�      $	��Top=�6   $��Contacts Person��6/   $��4��6H   ���	#FF3664B6$	��2,0q�6m   .��5�      �  5�      �� 5�      $
��249* �6+   �� 5�      $
��239* �6+   �� 5�      $
��268* �6+   .+�5�        -   5        $��ContactPerson��5�   �   $ Contact Name ��63   $ VisualStudio2013 6U   $��0��6�   $��Stretch=�6�   $��Center=�6�   $	��1,0q�6�     5�      -   5        $��ContactPhone��5�   �   $ Contact Number ��63   $ VisualStudio2013 6W   $ 13��6�   $��1��6�   $��Stretch=�6�   $��Center=�6�   $	��1,0q�6�     5�      -   5        $��ContactAddress��5�   �   $ Contact Address ��63   $ VisualStudio2013 6X   $��2��6�   $��Stretch=�6�   $��Center=�6�   $	��1,0q�6�   5�      5�      � 5�      $��5��6   $��Stretch=�6    $	��2,0q�6@    5�      �� 5�      $
��190* �6'   �� 5�      $
��159* �6'   �� 5�      $	��45* �6'   �� 5�      $
��221* �6'   .+�5�      �� -    5        $��AppointmentPaperIssued��5�      $��Appointment Paper Issued��69   $
��Left=�6\   $��Bottom=�6w   $��15��6�   $	��160��6�   �� 5�      -!   5        $��IDissued��5�      $��	ID Issued��6+   $��1��6?   $
��Left=�6O   $��Bottom=�6j   $��15��6�   $��68��6�   �� 5�      ���	#FF353536$
��Wrap=�63   $��Shuttle��6G   $��Bottom=�6V   $��16��6q   $��2��6}   $��0,0,0,2q�6�     5�      -"   5        $��ShuttleDestination��5�   T   $ VisualStudio2013 6&   $	 DestinationID��6n   $
 Destination��6�   $��3��6�   $��Center=�6�   $��Stretch=�6�   $��22��6�   $��0,2,0,1q�6  5�      �� 5�      $��6��6   $��Others��6%   $
 Hand��65   ���	#FF3664B6$	��2,0q�6Z   .��5�      �  5�      �� 5�      $	��60* �6+   �� 5�      $
��145* �6+   �� 5�      $	��60* �6+   �� 5�      $
��145* �6+   �� 5�      $	��60* �6+   �� 5�      $
��145* �6+     5�      �� 5�      $	��40* �6(   �� 5�      $	��40* �6(   .+�5�      �� ���	#FF353536$
��Wrap=�67   $��	Education��6K   $��Center=�6\   $��16��6w   �� 5�      ���	#FF353536$
��Wrap=�67   $��Civil Stats��6K   $��Center=�6^   $��1��6z     5     -#   5        $��EducAttainment��5  X   $ VisualStudio2013 6*   $
	 Code��6n   $
 Description��6�   $��1��6�   $��Center=�6�   $��Stretch=�6�     5     -$   5        $��CivilStatus��5  X   $ VisualStudio2013 6*   $
	 Code��6l   $
 Description��6�   $��1��6�   $��Center=�6�   $��Stretch=�6�   $	��0,2q�6�   $��1��6�   �� 5     ���	#FF353536$
��Wrap=�67   $��SSS #��6K   $��Center=�6X   $��0��6t   $��2��6�   $��5,0,0,0q�6�   �� 5     ���	#FF353536$
��Wrap=�67   $��
Philhealth��6K   $��Center=�6]   $��1��6y   $��2��6�   $��5,0,0,0q�6�     5     -%   5        $��SSSno��5  {   $ SSS # ��63   $ VisualStudio2013 6M   $��3��6�   $��0��6�   $��Center=�6�   $��Stretch=�6�   $	��1,0q�6�     5     -&   5        $
��PHno��5  �   $ PhilHealth # ��63   $ VisualStudio2013 6T   $��3��6�   $��1��6�   $��Center=�6�   $��Stretch=�6�   $	��1,0q�6�   �� 5     ���	#FF353536$
��Wrap=�67   $��TIN #��6K   $��Center=�6X   $��0��6t   $��4��6�   $��5,0,0,0q�6�   �� 5     ���	#FF353536$
��Wrap=�67   $��Pag-ibig��6K   $��Center=�6[   $��1��6w   $��4��6�   $��5,0,0,0q�6�     5     -'   5        $	��TIN��5  {   $ TIN # ��63   $ VisualStudio2013 6M   $��5��6�   $��0��6�   $��Center=�6�   $��Stretch=�6�   $	��1,0q�6�     5     -(   5        $��	PagIbigNo��5  �   $ Pag-ibig # ��63   $ VisualStudio2013 6R   $��5��6�   $��1��6�   $��Center=�6�   $��Stretch=�6�   $	��1,0q�6�   5     5     5#     � 5%  
   $��3��6   $��2��6   .+�5&     �� -)   5        $��	btncancel��5&  &   $��Cancel��6   $��Right=�67   $��0,5,70,0q�6S   $��1��6e   $	��Top=�6r   $��62��6�   $��20��6�   $y�Hidden=�6�   6�   �� 5'     -*   5        $��btnedit��5'  $   $
��Edit��6   $��Right=�63   $��0,5,70,0q�6O   $��1��6a   $	��Top=�6n   $��62��6�   $��20��6�   6�   �� 5(     -+   5        $��btnsave��5(  $   $
��Save��6   $��Right=�63   $��0,5,5,0q�6O   $��1��6`   $	��Top=�6m   $��62��6�   $��20��6�   {�.  6�   5+     5-     5.     