   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~Zclr-namespace:Telerik.Windows.Controls.Wizard;assembly=Telerik.Windows.Controls.NavigationTelerik.Windows.Controls.Wizard 5   	    HRinformationSystem(   "HRinformationSystem.AddNewEmployee   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	   mwizardZclr-namespace:Telerik.Windows.Controls.Wizard;assembly=Telerik.Windows.Controls.Navigation     5   	   q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l	 hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v
 rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation  	 
               5   	   -   5          � Title$  AddNewEmployee��5   	   $	��700��6    $
��1000��6-    � Cursor$
 Hand��6:    � WindowStartupLocation$ CenterScreen=�6H    � 
ResizeMode$ NoResize=�6n    � WindowStyle$
 None=�6�   ���	#FF474545.��5
      � $��1,1,1,1q�6   ���	#FFFBFAFA.+�5   
   (  "Telerik.Windows.Controls.RadWizard  -   5        $��myradwizard��5      $��Stretch=�60   $��Stretch=�6O   +  %Telerik.Windows.Controls.StyleManager   Theme-  'Telerik.Windows.Controls.ThemeConverter$ VisualStudio2013 6k      WizardPages 5      0  *Telerik.Windows.Controls.WelcomeWizardPage  5      -   5        $��Page0��5   ,   )  #Telerik.Windows.Controls.WizardPage   Header$ Personal Information��69      Title$
 HRIS��6W   	   IsHeaderVisible	 . .��5      � .+�5      �� -   5        $��
adminusers��5   8   $y�Hidden=�6$   $��	Adminuser��6K   
 �� TextAlignment$
 Right=�6\   $��Right=�6s   $��0,-35,0,587q�6�   �� 5      -   5         ��Name$ errormessage��5   &   $
 Right=�6=   $��Right=�6T   $��0,-35,0,587q�6r    J� OpacityMask
 �<�����	#FFE5572C6�   �� 5      -   5        $
��Load��5   !   $��10,0,777,408q�6-   ���	#FF106EA6��6[   Z� .��5      �� -   5        $��
EmpPicture��5   6   $��0,0,0,0q�6%   $��Images/no-image.png��6H   $
��Fill=�6f   5      �� 5      $
��Left=�6#   $��	6,182,0,0q�6>   $	��Top=�6Q   $	��198��6i   $	��200��6v   $��ID No��6�   $
 Hand��6�   
����������	#FF106EA6���	#FF3664B6.��5      �  � RowDefinitions 5   "   �� 5    &   $	��20* �64   �� 5!   &   $	��20* �64   �� 5"   &   $	��20* �64   �� 5#   &   $	��20* �64   �� 5$   &   $	��20* �64    � ColumnDefinitions 5&   "   �� 5'   &   .+�5)   "   2  ,Telerik.Windows.Controls.RadWatermarkTextBox  -   5        $��EmpID��5)   �      WatermarkContent$ Employee ID��6>   $ VisualStudio2013 6]    �� 	MaxLength$ 12��6�   $��Center=�6�   {�.  $��Stretch=�6�   $��4q�6�     5*   "   -	   5        $��BatchNo��5*   �   $ Batch No��6>   $ VisualStudio2013 6Z   $��Center=�6�   $��1��6�   $��1��6�   $��Stretch=�6�   $��4q�6�     5+   "   -
   5        $��ProximityCardID��5+   �   $ Proximity ID��6>   $ VisualStudio2013 6^   $��2��6�   $��Center=�6�   $��Stretch=�6�   $��4q�6�   ,  &Telerik.Windows.Controls.RadDatePicker  5,   "   -   5        $��HireDate��5,   8   
 �� Now0  *Telerik.Windows.Controls.RadDateTimePicker   SelectedValue# Z 6H   $��3��6t   $��Stretch=�6�   $��Center=�6�   $��4q�6�      DateTimeWatermarkContent$ Select Hire Date��6�    5-   &   4	  .Telerik.Windows.Controls.VisualStudio2013Theme	  5.   *   50   #     51   "   -   5        $��	EndOfWork��51   f   $ VisualStudio2013 68   $��4��6w   $��Stretch=�6�   $��Center=�6�   $��4q�6�   $ Select End of Work��6�   53      54      �� 57      $��0��6#   $��0��60   $��Endorsement��6A   $
 Hand��6V   
�������$��6,387,777,15q�6}   ���	#FF3664B6���	#FF106EA6.��58      �  59   "   �� 5:   &    5<   "   �� 5=   &   $	��25* �64   �� 5>   &   $	��25* �64   �� 5?   &   $	��25* �64   �� 5@   &   $	��25* �64   .+�5B   "   *
  $Telerik.Windows.Controls.RadComboBox
  -   5        $��
Department��5B   �    
  	EmptyText$ -- Select Department --��66    J� Opacity$	 0.8Q�6Z   $ VisualStudio2013 6h    �� SelectedValuePath$ DeptCode��6�    �� DisplayMemberPath$ DeptName��6�   $��0��6�   $��Center=�6�   $��Stretch=�6  $��4q�6*  65  
  5C   "   -   5        $��Section��5C   �   $ -- Select Section --��66   $ VisualStudio2013 6X   $ SectCode��6�   $ SectName��6�   $��1��6�   $��Center=�6�   $��Stretch=�6�   $��4q�6  
  5D   "   -   5        $��Position��5D   �   $ -- Select Position --��66   $ VisualStudio2013 6X   $
 Code��6�   $ Description��6�   $��2��6�   $��Center=�6�   $��Stretch=�6�   $��4q�6  
  5E   "   -   5        $��EmploymentStatus��5E   �   $! --Select Employee Status --��66   $ VisualStudio2013 6^   $
 Code��6�   $ Description��6�   $��3��6�   $��Center=�6�   $��Stretch=�6  $��4q�6%  5H      5I      �� 5O      $
��Name��6$   $
 Hand��62   
�������$��214,-2,0,519q�6X   ���	#FF3664B6���	#FF106EA6.��5P      � $��Stretch=�6$   $��Stretch=�6B   $��0,0,0,0q�6^    5Q   "   �� 5R   &   $
��252* �67   �� 5S   &   $
��252* �67   �� 5T   &   $
��244* �67   �� 5U   &   $��9* �67   .+�5Z   "     -   5        $��LastName��5Z   m   $ VisualStudio2013 6?   $��0��6    �� TextWrapping$
 Wrap=�6�   $ 	Last Name��6�   $��Stretch=�6�   $��Center=�6�   $	��2,6q�6�     5[   "   -   5        $��	FirstName��5[   m   $ VisualStudio2013 6?   $��1��6~   $
 Wrap=�6�   $ 
First Name��6�   $��Stretch=�6�   $��Center=�6�   $	��2,6q�6�     5\   "   -   5        $��
MiddleName��5\   m   $ VisualStudio2013 6?   $��2��6�   $
 Wrap=�6�   $ Middle Name��6�   $��Stretch=�6�   $��Center=�6�   $	��2,6q�6�   5^      5_      � 5d      $��Stretch=�6    $��Stretch=�6>   $��
214,59,0,0q�6Z   .+�5f      �� $��Present Address��6(   $
 Hand��6A   
�������$��
0,-1,0,419q�6g   ���	#FF3664B6���	#FF106EA6.��5g   "   � $��Stretch=�6(   $��Stretch=�6F   $��0,0,0,0q�6b    5h   &   �� 5i   *   $
��249* �6;   �� 5j   *   $
��239* �6;   �� 5k   *   $
��268* �6;    5n   &   �� 5o   *   $��32 �68   �� 5p   *   $��32 �68   .+�5r   &   
  -   5        $��CountryName��5r   �   $ -- Select Country --��6:   $	 0.8Q�6\   $ VisualStudio2013 6j   $ 	CountryID��6�   $ CountryName��6�   $��Center=�6�   $��4,4,4,5q�6  $��Stretch=�6  67  
  5s   &   -   5        $��ProvName��5s   �   $ -- Select Province --��6:   $	 0.8Q�6\   $ VisualStudio2013 6j   $ ProvID��6�   $ ProvName��6�   $��1��6�   $��Center=�6�   $��4,4,4,5q�6  $��Stretch=�6!  6?  
  5t   &   -   5        $��CityName��5t   �   $ -- Select City --��6:   $	 0.8Q�6X   $ VisualStudio2013 6f   $ CityID��6�   $ CityName��6�   $��2��6�   $��Center=�6�   $��4,4,4,5q�6  $��Stretch=�6    5u   &   -   5        $��Street��5u   �   $ Street��6B   $ VisualStudio2013 6]   $��1��6�   $��Stretch=�6�   $��Center=�6�   $��4q�6�   $��3��6�   �� 5w   &   -   5        $��setpermanent��5w   /   $��Set as permanent Address��6C   $��1��6f   $��Bottom=�6s   $��	4,0,4,-13q�6�   $��15��6�   ���	#FF6978A06�   5}   #   5      �� 5�      $��Permanent Address��6(   $
 Hand��6C   
�������$��
0,98,0,332q�6h   ���	#FF3664B6���	#FF106EA6.��5�   "   � $��Stretch=�6(   $��Stretch=�6F   $��0,0,0,0q�6b    5�   &   �� 5�   *   $
��249* �6;   �� 5�   *   $
��239* �6;   �� 5�   *   $
��268* �6;    5�   &   �� 5�   *   $��32 �68   �� 5�   *   $��32 �68   .+�5�   &   
  -   5        $��PermanentCountryName��5�   �   $ -- Select Country --��6:   $	 0.8Q�6[   $ VisualStudio2013 6�   $ 	CountryID��6�   $ CountryName��6
  $��0��6+  $��Center=�6<  $��4q�6W  $��Stretch=�6b  
  5�   &   -   5        $��PermanentProvName��5�   �   $ -- Select Province --��6:   $	 0.8Q�6\   $ VisualStudio2013 6�   $ ProvID��6�   $ ProvName��6  $��1��6   $��Center=�61  $��4q�6L  $��Stretch=�6Y  
  5�   &   -   5        $��PermanentCityName��5�   �   $ -- Select City --��6:   $	 0.8Q�6X   $ VisualStudio2013 6f   $ CityID��6�   $ CityName��6�   $��2��6�   $��Center=�6�   $��4q�6  $��Stretch=�6    5�   &   -   5        $��PermanentStreet��5�   �   $ Street��6B   $ VisualStudio2013 6\   $��1��6�   $��0��6�   $��Stretch=�6�   $��Center=�6�   $��4q�6�   $��5��6  5�   #   5�      �� 5�      $
��Left=�6'   $��	0,190,0,0q�6B   
�������$	��Top=�6l   $��Contact��6�   $	��769��6�   $��50��6�   ���	#FF3664B6���	#FF106EA6.��5�   "   �  5�   &   �� 5�   *   $
��249* �6;   �� 5�   *   $
��239* �6;   �� 5�   *   $
��268* �6;   .+�5�   &     -   5        $��Mobile��5�   �   $ Mobile ��6C   $ VisualStudio2013 6^   $��0��6�   $��Stretch=�6�   $ 13��6�   $��Center=�6�   $	��4,2q�6�     5�   &   -   5        $��Phone��5�   �   $ 	Landline ��6C   $ VisualStudio2013 6`   $��1��6�   $��Stretch=�6�   $ 10��6�   $��Center=�6�   $	��4,2q�6�     5�   &   -   5        $��EmailAddress��5�   �   $ Email ��6B   $ VisualStudio2013 6]   $��2��6�   $��Stretch=�6�   $��Center=�6�   $	��4,2q�6�   5�   #   5�      �� 5�      $
��Left=�6'   $��	0,244,0,0q�6B   
�������$	��Top=�6l   $��Contacts Person��6�   $	��769��6�   $��50��6�   ���	#FF3664B6���	#FF106EA6.��5�   "   �  5�   &   �� 5�   *   $
��249* �6;   �� 5�   *   $
��239* �6;   �� 5�   *   $
��268* �6;   .+�5�   &     -    5        $��ContactPerson��5�   �   $ Contact Name ��6C   $ VisualStudio2013 6e   $��0��6�   $��Stretch=�6�   $��Center=�6�   $	��4,2q�6�     5�   &   -!   5        $��ContactPhone��5�   �   $ Contact Number ��6C   $ VisualStudio2013 6g   $ 13��6�   $��1��6�   $��Stretch=�6�   $��Center=�6�   $	��4,2q�6    5�   &   -"   5        $��ContactAddress��5�   �   $ Contact Address ��6C   $ VisualStudio2013 6h   $��2��6�   $��Stretch=�6�   $��Center=�6�   $	��4,2q�6�   5�   #   5�      �� 5�      -#   5        $��AppointmentPaperIssued��5�   '   $��Appointment Paper Issued��6E   $
��Left=�6h   $��
62,310,0,0q�6�   $	��Top=�6�   $	��170��6�   $��16��6�   �� 5�      -$   5        $��IDissued��5�   '   $��	ID Issued��67   $
��Left=�6K   $��268,311,0,0q�6f   $	��Top=�6{   $��16��6�   $��71��6�   
  5�      -%   5        $��ShuttleDestination��5�   �   $&  -- Select Shuttle Destination-- ��62   $	 0.8Q�6_    �� SelectedIndex$ 0��6m   $ VisualStudio2013 6   $ DestinationID��6�   $ Destination��6�   $��Center=�6  $��500,304,10,191q�6&  $��Stretch=�6@   J� RenderTransformOrigin$ 0.506,1.538&�6_  �� 5�      $��0��6'   $��Others��65   $
 Hand��6E   
�������$��
0,327,0,15q�6j   ���	#FF3664B6���	#FF106EA6.��5�   "   �  5�   &   �� 5�   *   $	��42* �6;   �� 5�   *   $	��25* �6;   �� 5�   *   $	��17* �6;   �� 5�   *   $	��42* �6;    5�   &   �� 5�   *   $	��30* �68   �� 5�   *   $	��30* �68   �� 5�   *   $	��30* �68   �� 5�   *   $	��30* �68   .+�5�   &     -&   5          Name$ 	BirthDate��5�   <   $��0��6~   $��Center=�6�   $	��4,8q�6�   $��Stretch=�6�   $ Select Birthdate��6�   $��22��6�    5�   *   	  5�   .   5�   '     5�   &   -'   5        $	��Age��5�   �   $
 Age ��6C   $ VisualStudio2013 6[   $ 3��6�   $��1��6�   $��Center=�6�   $	��4,8q�6�   {�.  $��Stretch=�6�   $��22��6    5�   &   -(   5        $��Height��5�   �   $ Height ��6C   $ VisualStudio2013 6^   $ 5��6�   $��1��6�   $��0��6�   $��Center=�6�   $	��4,8q�6�   $��Stretch=�6�   $��22��6  
  5�   &   -)   5        $��
HeightUnit��5�   �   $	 0.8Q�6;   $ VisualStudio2013 6I   $ 0��6w   $ 
HeightUnit��6�   $ 
HeightUnit��6�   $��2��6�   $��0��6�   $��Center=�6�   $	��4,8q�6  $��Stretch=�6!  $��22��6?    5�   &   -*   5        $��Weight��5�   �   $ Weight ��6C   $ VisualStudio2013 6^   $ 5��6�   $��1��6�   $��1��6�   $��Center=�6�   $	��4,8q�6�   $��Stretch=�6�   $��22��6  
  5�   &   -+   5        $��
WeightUnit��5�   �   $	 0.8Q�6;   $ VisualStudio2013 6I   $ 0��6w   $ 
WeightUnit��6�   $ 
WeightUnit��6�   $��2��6�   $��1��6�   $��Center=�6�   $	��4,8q�6  $��Stretch=�6!  $��22��6?  
  5�   &   -,   5        $��CivilStatus��5�   �   $ -- Select Civil Status --��6:   $	 0.8Q�6`   $ VisualStudio2013 6n   $
 Code��6�   $ Description��6�   $��2��6�   $��Center=�6�   $	��4,8q�6  $��Stretch=�6   $��22��6>  
  5�   &   --   5        $��Nationality��5�   �   $ -- Select Nationality --��6:   $	 0.8Q�6_   $ VisualStudio2013 6m   $
 Code��6�   $ Description��6�   $��3��6�   $��Center=�6�   $��4,8,4,9q�6  $��Stretch=�6#  $��22��6A  
  5�   &   -.   5        $��Religion��5�   �   $ -- Select Religion --��6:   $	 0.8Q�6\   $ VisualStudio2013 6j   $
 Code��6�   $ Description��6�   $��1��6�   $��2��6�   $��Center=�6�   $	��4,8q�6  $��Stretch=�6(  $��2��6G  $��22��6[  
  5�   &   -/   5        $	��Sex��5�   �   $ -- Select Gender --��6:   $	 0.8Q�6Z   $ VisualStudio2013 6h   $
 Code��6�   $ Description��6�   $��1��6�   $��3��6�   $��Center=�6�   $��4,8,4,9q�6  $��Stretch=�6%  $��2��6D  $��22��6X    5�   &   -0   5        $��SSSno��5�   �   $ SSS # ��6C   $ VisualStudio2013 6]   $��3��6�   $��0��6�   $��Center=�6�   $	��4,8q�6�   $��Stretch=�6�   $��22��6�     5�   &   -1   5        $	��TIN��5�   �   $ TIN # ��6C   $ VisualStudio2013 6]   $��3��6�   $��1��6�   $��Center=�6�   $	��4,8q�6�   $��Stretch=�6�   $��22��6�     5�   &   -2   5        $
��PHno��5�   �   $ PhilHealth # ��6C   $ VisualStudio2013 6d   $��3��6�   $��2��6�   $��Center=�6�   $	��4,8q�6�   $��Stretch=�6�   $��22��6    5�   &   -3   5        $��	PagIbigNo��5�   �   $ Pag-ibig # ��6C   $ VisualStudio2013 6b   $��3��6�   $��3��6�   $��Center=�6�   $��4,8,4,9q�6�   $��Stretch=�6�   $��22��6
  5�   #   5�      5�      5�         FooterTemplate 5�      �� 5�      .R�5�      � .+�5�   "   (  "Telerik.Windows.Controls.RadButton  $
��Next��64   $ VisualStudio2013 6D   $��Right=�5�       $��0,0,90,0q�6<   $��70��6N   $��23��6Y   $0��*wizard:RadWizardCommands.MoveCurrentToNext��5�       ��5�       ��   5�   "   -4   5        $��Cancel��5�   4   $ VisualStudio2013 6F   $��Right=�5�       $��0,0,10,0q�6<   $��70��6N   $��23��6Y   6e   5�      5      5       5	     -5   5          Name$ Page1��5	  %   $' !Family and Educational Background��64   $
 HRIS��6_   	 . .��5
     � $��Stretch=�6   $��Stretch=�69   $��0q�6U    5     �� 5     $
��303* �6,   �� 5     $��0* �6,   �� 5     $
��334* �6,   .+�5     � $��0��6   $��0��6,   $��0,0,0,30q�6<   .+�5     �� $��0��6'   $��
Dependents��65   $
 Hand��6I   $��5q�6n   ���	#FF3664B6���	#FF106EA6��6X   Z� .��5  "   � $��5q�6'    5  &   �� 5  *   .+�5     *  $Telerik.Windows.Controls.RadGridView  -6   5        $��gridDependent��5  3   $��Stretch=�5     ;  5Telerik.Windows.Controls.GridView.GridViewDataControl   AutoGenerateColumns .  $��5q�5        CanUserInsertRows . $��Stretch=�5      8  2Telerik.Windows.Controls.GridView.BaseItemsControl    GroupRenderMode$
  Flat=�5!     !   RowIndicatorVisibility$! 	Collapsed=�5"     "   ShowGroupPanel" .  #   NewRowPosition$# Bottom=�5$     $   IsFilteringAllowed$ .   5&  *   *  $Telerik.Windows.Controls.SummerTheme  5'  .   %   Columns% 5*  *   1  +Telerik.Windows.Controls.GridViewDataColumn  5+  .   6  0Telerik.Windows.Controls.GridViewBoundColumnBase&   Header$
& Name��6I   -  'Telerik.Windows.Controls.GridViewColumn'   Width?  9Telerik.Windows.Controls.GridView.GridViewLengthConverter$
' 200* 5-  )   (   DataMemberBinding( 5,     �� *Name+5-  )     5.  .   $& 	BirthDate��6I   )   DataFormatString$)  {0:dd/MMM/yyyy}��6\   * �� 	IsEnabled* .  +   FilterMemberPath$+ DateNow.Value.Date��5/  F   $
' 100* 50  )   ( 5/     �� *	BirthDate+50  )   5  /Telerik.Windows.Controls.GridViewComboBoxColumn  51  .   -7   5        , �Name$, Relationship��52  6   $& Relationship��51  M   -   SelectedValueMemberPath$- Relationship��53  )   .   DisplayMemberPath$. Relationship��54  )   $
' 150* 55  )   ( 52     �� *Relationship+55  )     56  .   $& 
Occupation��6I   $
' 150* 58  )   ( 57     �� *
Occupation+58  )     59  .   $& 
MaidenName��6I   $
' 170* 5;  )   ( 5:     �� *
MaidenName+5;  )   5=  '   5A  #   5B     5E     �� 5G     $��Educational Background��6#   $
 Hand��6C   $��0,249,10,-2q�6R   $��3��6g   ���	#FF3664B6���	#FF106EA6.��5H     �  5I  "   �� 5J  &   $	��22* �64   �� 5K  &   $	��50* �64   �� 5L  &   $	��50* �64   �� 5M  &   $	��50* �64   �� 5N  &   $	��50* �64   �� 5O  &   $	��50* �64    5Q  "   �� 5R  &   $
��353* �67   �� 5S  &   $
��607* �67   .+�5U  "   
  -8   5        $"��HighestEducationalAttainment��5U  w   $ VisualStudio2013 67   $ 0��6e   $
 Code��6�   $ Description��6�   $��0��6�   $��Center=�6�   $��15,2,5,1q�6�   $��Stretch=�6  �� 5V  "   $��
Elementary��6+   $��Stretch=�6?   $��	10,0,10,0q�6]   $��1��6p   $��Stretch=�6}   $��2��6�   
����������	#FF3664B6���	#FF106EA6.��5W  &   �  5X  *   �� 5Y  .   $
��336* �6?   �� 5Z  .   $
��495* �6?   �� 5[  .   $	��98* �6?   .+�5^  *     -9   5        $��ElementarySchool��5^  t   $ VisualStudio2013 6F   $��0��6�   $��Stretch=�6�   $��5,0,5,2q�6�   $
 Wrap=�6�   $��Center=�6�   $ School Name��6�     5_  *   -:   5        $��ElementaryAddress��5_  t   $ VisualStudio2013 6F   $��1��6�   $��Stretch=�6�   $	��5,1q�6�   $
 Wrap=�6�   $��Center=�6�   $ School address��6�     5`  *   -;   5        $��ElementaryYear��5`  t   $ VisualStudio2013 6F   $��2��6�   $��Stretch=�6�   $	��5,1q�6�   $
 Wrap=�6�   $��Center=�6�   $ School Year��6�   $ 4��6  5b  '   5c  #   �� 5d  "   $��	Secondary��6+   $��Stretch=�6>   $��	10,0,10,0q�6\   $��2��6o   $��Stretch=�6|   $��2��6�   
����������	#FF3664B6���	#FF106EA6.��5e  &   �  5f  *   �� 5g  .   $
��336* �6?   �� 5h  .   $
��495* �6?   �� 5i  .   $	��98* �6?   .+�5l  *     -<   5        $��SecondarySchool��5l  t   $ VisualStudio2013 6F   $��0��6�   $��Stretch=�6�   $��5,0,5,2q�6�   $
 Wrap=�6�   $��Center=�6�   $ School Name��6�     5m  *   -=   5        $��SecondaryAddress��5m  t   $ VisualStudio2013 6F   $��1��6�   $��Stretch=�6�   $��5,0,5,2q�6�   $
 Wrap=�6�   $��Center=�6�   $ School address��6�     5n  *   ->   5        $��SecondaryYear��5n  t   $ VisualStudio2013 6F   $��2��6�   $��Stretch=�6�   $��5,0,5,2q�6�   $
 Wrap=�6�   $��Center=�6�   $ School Year��6�   $ 4��6  5p  '   5q  #   �� 5r  "   $��College��6+   $��Stretch=�6<   $��	10,0,10,0q�6Z   $��3��6m   $��Stretch=�6z   $��2��6�   
����������	#FF3664B6���	#FF106EA6.��5s  &   �  5t  *   �� 5u  .   $
��228* �6?   �� 5v  .   $
��397* �6?   �� 5w  .   $
��206* �6?   �� 5x  .   $	��98* �6?   .+�5{  *     -?   5        $��TertiarySchool��5{  t   $ VisualStudio2013 6F   $��0��6�   $��Stretch=�6�   $	��5,1q�6�   $
 Wrap=�6�   $��Center=�6�   $ School Name��6�     5|  *   -@   5        $��TertiaryAddress��5|  t   $ VisualStudio2013 6F   $��1��6�   $��Stretch=�6�   $	��5,1q�6�   $
 Wrap=�6�   $��Center=�6�   $ School address��6�     5}  *   -A   5        $��TertiaryCourse��5}  t   $ VisualStudio2013 6F   $��2��6�   $��Stretch=�6�   $	��5,1q�6�   $
 Wrap=�6�   $��Center=�6�   $ Course��6�     5~  *   -B   5        $��TertiaryYear��5~  t   $ VisualStudio2013 6F   $��3��6�   $��Stretch=�6�   $	��5,1q�6�   $
 Wrap=�6�   $��Center=�6�   $ School Year��6�   $ 4��6  5�  '   5�  #   �� 5�  "   $��
Vocational��6+   $��Stretch=�6?   $��	10,0,10,0q�6]   $��4��6p   $��Stretch=�6}   $��2��6�   
����������	#FF3664B6���	#FF106EA6.��5�  &   �  5�  *   �� 5�  .   $
��228* �6?   �� 5�  .   $
��397* �6?   �� 5�  .   $
��206* �6?   �� 5�  .   $	��98* �6?   .+�5�  *     -C   5        $��VocationalSchool��5�  t   $ VisualStudio2013 6F   $��0��6�   $��Stretch=�6�   $��5,0,5,2q�6�   $
 Wrap=�6�   $��Center=�6�   $ School Name��6�     5�  *   -D   5        $��VocationalAddress��5�  t   $ VisualStudio2013 6F   $��1��6�   $��Stretch=�6�   $��5,0,5,2q�6�   $
 Wrap=�6�   $��Center=�6�   $ School address��6�     5�  *   -E   5        $��VocationalCourse��5�  t   $ VisualStudio2013 6F   $��2��6�   $��Stretch=�6�   $��5,0,5,2q�6�   $
 Wrap=�6�   $��Center=�6�   $ Course��6�     5�  *   -F   5        $��VocationalYear��5�  t   $ VisualStudio2013 6F   $��3��6�   $��Stretch=�6�   $��5,0,5,2q�6�   $
 Wrap=�6�   $��Center=�6�   $ School Year��6�   $ 4��6  5�  '   5�  #   �� 5�  "   $
��Post��6+   $��Stretch=�69   $��	10,0,10,0q�6W   $��5��6j   $��Stretch=�6w   $��2��6�   
����������	#FF3664B6���	#FF106EA6.��5�  &   �  5�  *   �� 5�  .   $
��228* �6?   �� 5�  .   $
��347* �6?   �� 5�  .   $
��190* �6?   �� 5�  .   $	��66* �6?   �� 5�  .   $	��98* �6?   .+�5�  *     -G   5        $��PostGraduatedSchool��5�  t   $ VisualStudio2013 6F   $��0��6�   $��Stretch=�6�   $��5,0,5,2q�6�   $
 Wrap=�6�   $��Center=�6�   $ School Name��6�     5�  *   -H   5        $��PostGraduatedAddress��5�  t   $ VisualStudio2013 6F   $��1��6�   $��Stretch=�6�   $��5,0,5,2q�6�   $
 Wrap=�6�   $��Center=�6�   $ School address��6    5�  *   -I   5        $��PostGraduatedCourse��5�  t   $ VisualStudio2013 6F   $��2��6�   $��Stretch=�6�   $��5,0,5,2q�6�   $
 Wrap=�6�   $��Center=�6�   $ Course��6   �� 5�  *   -J   5        $��
IsLicensed��5�  3   $��Licensed��6E   $��3��6X   $
��Left=�6h   $��Center=�6�   ���	#FF2526276�     5�  *   -K   5        $��PostGraduatedYear��5�  t   $ VisualStudio2013 6F   $��4��6�   $��Stretch=�6�   $��5,0,5,2q�6�   $
 Wrap=�6�   $��Center=�6�   $ School Year��6�   $ 4��6  5�  '   5�  #   5�     5�     5�      5�     �� 5�     .R�5�     � .+�5�  "     $
��Back��64   $ VisualStudio2013 6D   $��Right=�5�      $��	0,0,170,0q�6<   $��70��6O   $��23��6Z   $4��.wizard:RadWizardCommands.MoveCurrentToPrevious��5�      ��5�      ��   5�  "   $
��Next��64   $ VisualStudio2013 6D   $��Right=�5�      $��0,0,90,0q�6<   $��70��6N   $��23��6Y   $0��*wizard:RadWizardCommands.MoveCurrentToNext��5�      ��5�      ��   5�  "   -L   5        $��Cancel��5�  4   $ VisualStudio2013 6F   $��Right=�5�      $��0,0,10,0q�6<   $��70��6N   $��23��6Y   6e   5�     5�     5�       5�     -M   5        $ Page2��5�  %   $ Work Experience��64   $
 HRIS��6M   	 . .��5�     � .+�5�     �� $��0��6#   $��0��60   $��Work Experience��6@   $
 Hand��6[   $��5q�6   ���	#FF3664B6���	#FF106EA6��6i   Z� .��5�     � $��5q�6$   .+�5�  "     -N   5        /  Name$/ gridWorkExp��5�  6   $��Stretch=�5�  7   $��Stretch=�5�  6   $��5q�5�  6    .  $��1��5�  6   $
  Flat=�5�  6   $! 	Collapsed=�5�  6   " .  $ .  $# Bottom=�5�  6    .  5�  &     5�  *   % 5�  &     5�  *   $& Company��6E   $
' 200* 5�  )   ( 5�     �� *CompanyName+5�  )     5�  *   $& Address��6E   $
' 250* 5�  )   ( 5�     �� *CompanyAddress+5�  )     5�  *   $& Position��6E   $
' 150* 5�  )   ( 5�     �� *
Position+5�  )     5�  *   $& 
Start Date��6E   $)  {0:dd/MMM/yyyy}��6Y   * .  $+ DateNow.Value.Date��5�  E   $
' 100* 5�  )   ( 5�     �� *
DateFrom+5�  )     5�  *   $& End Date��6E   $)  {0:dd/MMM/yyyy}��6W   * .  $+ DateNow.Value.Date��5�  C   $
' 100* 5�  )   ( 5�     �� *DateTo+5�  )   5�  #   5�     5�     5�      5�     �� 5�     .R�5�     � .+�5�  "     $
��Back��64   $ VisualStudio2013 6D   $��Right=�5�      $��	0,0,170,0q�6<   $��70��6O   $��23��6Z   $4��.wizard:RadWizardCommands.MoveCurrentToPrevious��5�      ��5�      �� �� 5  "   $��finish��6h   -O   5        $ VisualStudio2013 5  )   $��Finish��6W   $��Right=�5  !   $��0,0,90,0q�6=   $��70��5  !   $��23��6,     5  "   -P   5        $��Cancel��5  4   $ VisualStudio2013 6F   $��Right=�5      $��0,0,10,0q�6<   $��70��6N   $��23��6Y   6e   5     5     5     5     5     5     