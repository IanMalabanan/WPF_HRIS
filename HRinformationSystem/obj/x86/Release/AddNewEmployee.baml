   M S B A M L   `   `   `  ���� O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~Zclr-namespace:Telerik.Windows.Controls.Wizard;assembly=Telerik.Windows.Controls.NavigationTelerik.Windows.Controls.Wizard  HRinformationSystem(   "HRinformationSystem.AddNewEmployee   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     6sys&clr-namespace:System;assembly=mscorlib     mwizardZclr-namespace:Telerik.Windows.Controls.Wizard;assembly=Telerik.Windows.Controls.Navigation     l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v	 rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k
 gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation  	 
               -     � Title$  AddNewEmployee��$	��700��$
��1000�� � Cursor$
 Hand�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=����	#FF474545.��� $��1,1,1,1q����	#FFFBFAFA.+�(  "Telerik.Windows.Controls.RadWizard  -   $��myradwizard��$��Stretch=�$��Stretch=�+  %Telerik.Windows.Controls.StyleManager   Theme-  'Telerik.Windows.Controls.ThemeConverter$ VisualStudio2013    WizardPages 0  *Telerik.Windows.Controls.WelcomeWizardPage  -   $��Page0��)  #Telerik.Windows.Controls.WizardPage   Header$ Personal Information��   Title$
 HRIS��	   IsHeaderVisible	 . .��� .+��� -   $��
adminusers��$y�Hidden=�$��	Adminuser��
 �� TextAlignment$
 Right=�$��Right=�$��0,-35,0,587q��� -    ��Name$ errormessage��$
 Right=�$��Right=�$��0,-35,0,587q� J� OpacityMask
 �<�����	#FFE5572C�� -   $
��Load��$��10,0,777,408q����	#FF106EA6��Z� .���� -   $��
EmpPicture��$��0,0,0,0q�$��Images/no-image.png��$
��Fill=��� $
��Left=�$��	6,182,0,0q�$	��Top=�$	��198��$	��200��$��ID No��$
 Hand��
����������	#FF106EA6���	#FF3664B6.���  � RowDefinitions �� $	��20* ��� $	��20* ��� $	��20* ��� $	��20* ��� $	��20* � � ColumnDefinitions �� .+�2  ,Telerik.Windows.Controls.RadWatermarkTextBox  -   $��EmpID��   WatermarkContent$ Employee ID��$ VisualStudio2013  �� 	MaxLength$ 12��$��Center=�{�.  $��Stretch=�$��4q�  -	   $��BatchNo��$ Batch No��$ VisualStudio2013 $��Center=�$��1��$��1��$��Stretch=�$��4q�  -
   $��ProximityCardID��$ Proximity ID��$ VisualStudio2013 $��2��$��Center=�$��Stretch=�$��4q�,  &Telerik.Windows.Controls.RadDatePicker  -   $��HireDate��
 �� Now0  *Telerik.Windows.Controls.RadDateTimePicker   SelectedValue# Z $��3��$��Stretch=�$��Center=�$��4q�   DateTimeWatermarkContent$ Select Hire Date�� 4	  .Telerik.Windows.Controls.VisualStudio2013Theme	    -   $��	EndOfWork��$ VisualStudio2013 $��4��$��Stretch=�$��Center=�$��4q�$ Select End of Work���� $��0��$��0��$��Endorsement��$
 Hand��
�������$��6,387,777,15q����	#FF3664B6���	#FF106EA6.���  ��  �� $	��25* ��� $	��25* ��� $	��25* ��� $	��25* �.+�*
  $Telerik.Windows.Controls.RadComboBox
  -   $��
Department�� 
  	EmptyText$ -- Select Department --�� J� Opacity$	 0.8Q�$ VisualStudio2013  �� SelectedValuePath$ DeptCode�� �� DisplayMemberPath$ DeptName��$��0��$��Center=�$��Stretch=�$��4q�
  -   $��Section��$ -- Select Section --��$ VisualStudio2013 $ SectCode��$ SectName��$��1��$��Center=�$��Stretch=�$��4q�
  -   $��Position��$ -- Select Position --��$ VisualStudio2013 $
 Code��$ Description��$��2��$��Center=�$��Stretch=�$��4q�
  -   $��EmploymentStatus��$! --Select Employee Status --��$ VisualStudio2013 $
 Code��$ Description��$��3��$��Center=�$��Stretch=�$��4q��� $
��Name��$
 Hand��
�������$��214,-2,0,519q����	#FF3664B6���	#FF106EA6.��� $��Stretch=�$��Stretch=�$��0,0,0,0q� �� $
��252* ��� $
��252* ��� $
��244* ��� $��9* �.+�  -   $��LastName��$ VisualStudio2013 $��0�� �� TextWrapping$
 Wrap=�$ 	Last Name��$��Stretch=�$��Center=�$	��2,6q�  -   $��	FirstName��$ VisualStudio2013 $��1��$
 Wrap=�$ 
First Name��$��Stretch=�$��Center=�$	��2,6q�  -   $��
MiddleName��$ VisualStudio2013 $��2��$
 Wrap=�$ Middle Name��$��Stretch=�$��Center=�$	��2,6q�� $��Stretch=�$��Stretch=�$��
214,59,0,0q�.+��� $��Present Address��$
 Hand��
�������$��
0,-1,0,419q����	#FF3664B6���	#FF106EA6.��� $��Stretch=�$��Stretch=�$��0,0,0,0q� �� $
��249* ��� $
��239* ��� $
��268* � �� $��32 ��� $��32 �.+�
  -   $��CountryName��$ -- Select Country --��$	 0.8Q�$ VisualStudio2013 $ 	CountryID��$ CountryName��$��Center=�$��4,4,4,5q�$��Stretch=�
  -   $��ProvName��$ -- Select Province --��$	 0.8Q�$ VisualStudio2013 $ ProvID��$ ProvName��$��1��$��Center=�$��4,4,4,5q�$��Stretch=�
  -   $��CityName��$ -- Select City --��$	 0.8Q�$ VisualStudio2013 $ CityID��$ CityName��$��2��$��Center=�$��4,4,4,5q�$��Stretch=�  -   $��Street��$ Street��$ VisualStudio2013 $��1��$��Stretch=�$��Center=�$��4q�$��3���� -   $��setpermanent��$��Set as permanent Address��$��1��$��Bottom=�$��	4,0,4,-13q�$��15�����	#FF6978A0�� $��Permanent Address��$
 Hand��
�������$��
0,98,0,332q����	#FF3664B6���	#FF106EA6.��� $��Stretch=�$��Stretch=�$��0,0,0,0q� �� $
��249* ��� $
��239* ��� $
��268* � �� $��32 ��� $��32 �.+�
  -   $��PermanentCountryName��$ -- Select Country --��$	 0.8Q�$ VisualStudio2013 $ 	CountryID��$ CountryName��$��0��$��Center=�$��4q�$��Stretch=�
  -   $��PermanentProvName��$ -- Select Province --��$	 0.8Q�$ VisualStudio2013 $ ProvID��$ ProvName��$��1��$��Center=�$��4q�$��Stretch=�
  -   $��PermanentCityName��$ -- Select City --��$	 0.8Q�$ VisualStudio2013 $ CityID��$ CityName��$��2��$��Center=�$��4q�$��Stretch=�  -   $��PermanentStreet��$ Street��$ VisualStudio2013 $��1��$��0��$��Stretch=�$��Center=�$��4q�$��5���� $
��Left=�$��	0,190,0,0q�
�������$	��Top=�$��Contact��$	��769��$��50�����	#FF3664B6���	#FF106EA6.���  �� $
��249* ��� $
��239* ��� $
��268* �.+�  -   $��Mobile��$ Mobile ��$ VisualStudio2013 $��0��$��Stretch=�$ 13��$��Center=�$	��4,2q�  -   $��Phone��$ 	Landline ��$ VisualStudio2013 $��1��$��Stretch=�$ 10��$��Center=�$	��4,2q�  -   $��EmailAddress��$ Email ��$ VisualStudio2013 $��2��$��Stretch=�$��Center=�$	��4,2q��� $
��Left=�$��	0,244,0,0q�
�������$	��Top=�$��Contacts Person��$	��769��$��50�����	#FF3664B6���	#FF106EA6.���  �� $
��249* ��� $
��239* ��� $
��268* �.+�  -    $��ContactPerson��$ Contact Name ��$ VisualStudio2013 $��0��$��Stretch=�$��Center=�$	��4,2q�  -!   $��ContactPhone��$ Contact Number ��$ VisualStudio2013 $ 13��$��1��$��Stretch=�$��Center=�$	��4,2q�  -"   $��ContactAddress��$ Contact Address ��$ VisualStudio2013 $��2��$��Stretch=�$��Center=�$	��4,2q��� -#   $��AppointmentPaperIssued��$��Appointment Paper Issued��$
��Left=�$��
62,310,0,0q�$	��Top=�$	��170��$��16���� -$   $��IDissued��$��	ID Issued��$
��Left=�$��268,311,0,0q�$	��Top=�$��16��$��71��
  -%   $��ShuttleDestination��$&  -- Select Shuttle Destination-- ��$	 0.8Q� �� SelectedIndex$ 0��$ VisualStudio2013 $ DestinationID��$ Destination��$��Center=�$��500,304,10,191q�$��Stretch=� J� RenderTransformOrigin$ 0.506,1.538&��� $��0��$��Others��$
 Hand��
�������$��
0,327,0,15q����	#FF3664B6���	#FF106EA6.���  �� $	��42* ��� $	��25* ��� $	��17* ��� $	��42* � �� $	��30* ��� $	��30* ��� $	��30* ��� $	��30* �.+�  -&     Name$ 	BirthDate��$��0��$��Center=�$	��4,8q�$��Stretch=�$ Select Birthdate��$��22�� 	    -'   $	��Age��$
 Age ��$ VisualStudio2013 $ 3��$��1��$��Center=�$	��4,8q�{�.  $��Stretch=�$��22��  -(   $��Height��$ Height ��$ VisualStudio2013 $ 5��$��1��$��0��$��Center=�$	��4,8q�$��Stretch=�$��22��
  -)   $��
HeightUnit��$	 0.8Q�$ VisualStudio2013 $ 0��$ 
HeightUnit��$ 
HeightUnit��$��2��$��0��$��Center=�$	��4,8q�$��Stretch=�$��22��  -*   $��Weight��$ Weight ��$ VisualStudio2013 $ 5��$��1��$��1��$��Center=�$	��4,8q�$��Stretch=�$��22��
  -+   $��
WeightUnit��$	 0.8Q�$ VisualStudio2013 $ 0��$ 
WeightUnit��$ 
WeightUnit��$��2��$��1��$��Center=�$	��4,8q�$��Stretch=�$��22��
  -,   $��CivilStatus��$ -- Select Civil Status --��$	 0.8Q�$ VisualStudio2013 $
 Code��$ Description��$��2��$��Center=�$	��4,8q�$��Stretch=�$��22��
  --   $��Nationality��$ -- Select Nationality --��$	 0.8Q�$ VisualStudio2013 $
 Code��$ Description��$��3��$��Center=�$��4,8,4,9q�$��Stretch=�$��22��
  -.   $��Religion��$ -- Select Religion --��$	 0.8Q�$ VisualStudio2013 $
 Code��$ Description��$��1��$��2��$��Center=�$	��4,8q�$��Stretch=�$��2��$��22��
  -/   $	��Sex��$ -- Select Gender --��$	 0.8Q�$ VisualStudio2013 $
 Code��$ Description��$��1��$��3��$��Center=�$��4,8,4,9q�$��Stretch=�$��2��$��22��  -0   $��SSSno��$ SSS # ��$ VisualStudio2013 $��3��$��0��$��Center=�$	��4,8q�$��Stretch=�$��22��  -1   $	��TIN��$ TIN # ��$ VisualStudio2013 $��3��$��1��$��Center=�$	��4,8q�$��Stretch=�$��22��  -2   $
��PHno��$ PhilHealth # ��$ VisualStudio2013 $��3��$��2��$��Center=�$	��4,8q�$��Stretch=�$��22��  -3   $��	PagIbigNo��$ Pag-ibig # ��$ VisualStudio2013 $��3��$��3��$��Center=�$��4,8,4,9q�$��Stretch=�$��22��   FooterTemplate �� .R�� .+�(  "Telerik.Windows.Controls.RadButton  $
��Next��$ VisualStudio2013 $��Right=�$��0,0,90,0q�$��70��$��23��$0��*wizard:RadWizardCommands.MoveCurrentToNext������   -4   $��Cancel��$ VisualStudio2013 $��Right=�$��0,0,10,0q�$��70��$��23��  -5     Name$ Page1��$' !Family and Educational Background��$
 HRIS��	 . .��� $��Stretch=�$��Stretch=�$��0q� �� $
��303* ��� $��0* ��� $
��334* �.+�� $��0��$��0��$��0,0,0,30q�.+��� $��0��$��
Dependents��$
 Hand��$��5q����	#FF3664B6���	#FF106EA6��Z� .��� $��5q� �� .+�*  $Telerik.Windows.Controls.RadGridView  -6   $��gridDependent��$��Stretch=�;  5Telerik.Windows.Controls.GridView.GridViewDataControl   AutoGenerateColumns .  $��5q�   CanUserInsertRows . $��Stretch=�8  2Telerik.Windows.Controls.GridView.BaseItemsControl    GroupRenderMode$
  Flat=�!   RowIndicatorVisibility$! 	Collapsed=�"   ShowGroupPanel" .  #   NewRowPosition$# Bottom=�$   IsFilteringAllowed$ .   *  $Telerik.Windows.Controls.SummerTheme  %   Columns% 1  +Telerik.Windows.Controls.GridViewDataColumn  6  0Telerik.Windows.Controls.GridViewBoundColumnBase&   Header$
& Name��-  'Telerik.Windows.Controls.GridViewColumn'   Width?  9Telerik.Windows.Controls.GridView.GridViewLengthConverter$
' 200* (   DataMemberBinding( �� *Name+  $& 	BirthDate��)   DataFormatString$)  {0:dd/MMM/yyyy}��* �� 	IsEnabled* .  +   FilterMemberPath$+ DateNow.Value.Date��$
' 100* ( �� *	BirthDate+5  /Telerik.Windows.Controls.GridViewComboBoxColumn  -7   , �Name$, Relationship��$& Relationship��-   SelectedValueMemberPath$- Relationship��.   DisplayMemberPath$. Relationship��$
' 150* ( �� *Relationship+  $& 
Occupation��$
' 150* ( �� *
Occupation+  $& 
MaidenName��$
' 170* ( �� *
MaidenName+�� $��Educational Background��$
 Hand��$��0,249,10,-2q�$��3�����	#FF3664B6���	#FF106EA6.���  �� $	��22* ��� $	��50* ��� $	��50* ��� $	��50* ��� $	��50* ��� $	��50* � �� $
��353* ��� $
��607* �.+�
  -8   $"��HighestEducationalAttainment��$ VisualStudio2013 $ 0��$
 Code��$ Description��$��0��$��Center=�$��15,2,5,1q�$��Stretch=��� $��
Elementary��$��Stretch=�$��	10,0,10,0q�$��1��$��Stretch=�$��2��
����������	#FF3664B6���	#FF106EA6.���  �� $
��336* ��� $
��495* ��� $	��98* �.+�  -9   $��ElementarySchool��$ VisualStudio2013 $��0��$��Stretch=�$��5,0,5,2q�$
 Wrap=�$��Center=�$ School Name��  -:   $��ElementaryAddress��$ VisualStudio2013 $��1��$��Stretch=�$	��5,1q�$
 Wrap=�$��Center=�$ School address��  -;   $��ElementaryYear��$ VisualStudio2013 $��2��$��Stretch=�$	��5,1q�$
 Wrap=�$��Center=�$ School Year��$ 4���� $��	Secondary��$��Stretch=�$��	10,0,10,0q�$��2��$��Stretch=�$��2��
����������	#FF3664B6���	#FF106EA6.���  �� $
��336* ��� $
��495* ��� $	��98* �.+�  -<   $��SecondarySchool��$ VisualStudio2013 $��0��$��Stretch=�$��5,0,5,2q�$
 Wrap=�$��Center=�$ School Name��  -=   $��SecondaryAddress��$ VisualStudio2013 $��1��$��Stretch=�$��5,0,5,2q�$
 Wrap=�$��Center=�$ School address��  ->   $��SecondaryYear��$ VisualStudio2013 $��2��$��Stretch=�$��5,0,5,2q�$
 Wrap=�$��Center=�$ School Year��$ 4���� $��College��$��Stretch=�$��	10,0,10,0q�$��3��$��Stretch=�$��2��
����������	#FF3664B6���	#FF106EA6.���  �� $
��228* ��� $
��397* ��� $
��206* ��� $	��98* �.+�  -?   $��TertiarySchool��$ VisualStudio2013 $��0��$��Stretch=�$	��5,1q�$
 Wrap=�$��Center=�$ School Name��  -@   $��TertiaryAddress��$ VisualStudio2013 $��1��$��Stretch=�$	��5,1q�$
 Wrap=�$��Center=�$ School address��  -A   $��TertiaryCourse��$ VisualStudio2013 $��2��$��Stretch=�$	��5,1q�$
 Wrap=�$��Center=�$ Course��  -B   $��TertiaryYear��$ VisualStudio2013 $��3��$��Stretch=�$	��5,1q�$
 Wrap=�$��Center=�$ School Year��$ 4���� $��
Vocational��$��Stretch=�$��	10,0,10,0q�$��4��$��Stretch=�$��2��
����������	#FF3664B6���	#FF106EA6.���  �� $
��228* ��� $
��397* ��� $
��206* ��� $	��98* �.+�  -C   $��VocationalSchool��$ VisualStudio2013 $��0��$��Stretch=�$��5,0,5,2q�$
 Wrap=�$��Center=�$ School Name��  -D   $��VocationalAddress��$ VisualStudio2013 $��1��$��Stretch=�$��5,0,5,2q�$
 Wrap=�$��Center=�$ School address��  -E   $��VocationalCourse��$ VisualStudio2013 $��2��$��Stretch=�$��5,0,5,2q�$
 Wrap=�$��Center=�$ Course��  -F   $��VocationalYear��$ VisualStudio2013 $��3��$��Stretch=�$��5,0,5,2q�$
 Wrap=�$��Center=�$ School Year��$ 4���� $
��Post��$��Stretch=�$��	10,0,10,0q�$��5��$��Stretch=�$��2��
����������	#FF3664B6���	#FF106EA6.���  �� $
��228* ��� $
��347* ��� $
��190* ��� $	��66* ��� $	��98* �.+�  -G   $��PostGraduatedSchool��$ VisualStudio2013 $��0��$��Stretch=�$��5,0,5,2q�$
 Wrap=�$��Center=�$ School Name��  -H   $��PostGraduatedAddress��$ VisualStudio2013 $��1��$��Stretch=�$��5,0,5,2q�$
 Wrap=�$��Center=�$ School address��  -I   $��PostGraduatedCourse��$ VisualStudio2013 $��2��$��Stretch=�$��5,0,5,2q�$
 Wrap=�$��Center=�$ Course���� -J   $��
IsLicensed��$��Licensed��$��3��$
��Left=�$��Center=����	#FF252627  -K   $��PostGraduatedYear��$ VisualStudio2013 $��4��$��Stretch=�$��5,0,5,2q�$
 Wrap=�$��Center=�$ School Year��$ 4�� �� .R�� .+�  $
��Back��$ VisualStudio2013 $��Right=�$��	0,0,170,0q�$��70��$��23��$4��.wizard:RadWizardCommands.MoveCurrentToPrevious������   $
��Next��$ VisualStudio2013 $��Right=�$��0,0,90,0q�$��70��$��23��$0��*wizard:RadWizardCommands.MoveCurrentToNext������   -L   $��Cancel��$ VisualStudio2013 $��Right=�$��0,0,10,0q�$��70��$��23��  -M   $ Page2��$ Work Experience��$
 HRIS��	 . .��� .+��� $��0��$��0��$��Work Experience��$
 Hand��$��5q����	#FF3664B6���	#FF106EA6��Z� .��� $��5q�.+�  -N   /  Name$/ gridWorkExp��$��Stretch=�$��Stretch=�$��5q� .  $��1��$
  Flat=�$! 	Collapsed=�" .  $ .  $# Bottom=� .    %   $& Company��$
' 200* ( �� *CompanyName+  $& Address��$
' 250* ( �� *CompanyAddress+  $& Position��$
' 150* ( �� *
Position+  $& 
Start Date��$)  {0:dd/MMM/yyyy}��* .  $+ DateNow.Value.Date��$
' 100* ( �� *
DateFrom+  $& End Date��$)  {0:dd/MMM/yyyy}��* .  $+ DateNow.Value.Date��$
' 100* ( �� *DateTo+ �� .R�� .+�  $
��Back��$ VisualStudio2013 $��Right=�$��	0,0,170,0q�$��70��$��23��$4��.wizard:RadWizardCommands.MoveCurrentToPrevious������ �� $��finish��-O   $ VisualStudio2013 $��Finish��$��Right=�$��0,0,90,0q�$��70��$��23��  -P   $��Cancel��$ VisualStudio2013 $��Right=�$��0,0,10,0q�$��70��$��23��