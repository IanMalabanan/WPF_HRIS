   M S B A M L   `   `   `  ����  HRinformationSystem#    HRinformationSystem.UserLogin   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   q mTelerik.Windows.Controls.ImageEditor, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Documents.Core, Version=2019.3.1021.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7v rTelerik.Windows.Controls.EntityFramework, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k	 gTelerik.Windows.Controls.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p
 lTelerik.Windows.Controls.RibbonView, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7o kTelerik.Windows.Controls.GridView, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Xaml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7s oTelerik.Windows.Controls.RichTextBoxUI, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7~ zTelerik.Windows.Documents.FormatProviders.OpenXml, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7b ^Telerik.Windows.Data, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7l hTelerik.Windows.Controls.Input, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7z vTelerik.Windows.Documents.FormatProviders.Rtf, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7x tTelerik.Windows.Controls.EntityFramework60, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Controls, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7f bTelerik.Windows.Documents, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7q mTelerik.Windows.Controls.Navigation, Version=2019.3.1023.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7{ wTelerik.Windows.Documents.FormatProviders.Html, Version=2019.3.917.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7_telerik1http://schemas.telerik.com/2008/xaml/presentation    	 
             5   	   -   5          � Title$  	UserLogin��5   	   $	��259��6   $	��422��6)    � 
ResizeMode$ NoResize=�65    � WindowStartupLocation$ CenterScreen=�6K    � Cursor$
 Hand��6p    � WindowStyle$
 None=�6~   ���	#FF3C3939.��5      � $
��Left=�6   $	��Top=�6(   $��1,1,1,1q�6@   $	��258��6Q   $	��421��6^   
�������.+�5   
   �� $
��Left=�6   $��61��6+   $��	17,23,0,0q�67   $	��Top=�6J   $	��320��6b   $��Images/Untitled-1.png��6n   �� 5	   
   $
��Left=�6   $��20��6+   $��105,104,0,0q�67   $	��Top=�6L   $��20��6d   $��Images/user.png��6o    J� Opacity$	 0.7Q�6�   �� 5
   
   $
��Left=�6   $��20��6+   $��105,146,0,0q�67   $	��Top=�6L   $��20��6d   $��Images/password.png��6o   $	 0.7Q�6�   2  ,Telerik.Windows.Controls.RadWatermarkTextBox  5   
   -   5          Name$ username��5   r   +  %Telerik.Windows.Controls.StyleManager   Theme-  'Telerik.Windows.Controls.ThemeConverter$ VisualStudio2013 6(   $
��Left=�6W   $��135,101,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   	   WatermarkContent$	 Enter username��6�   $	��243��6�   $��26��6�   -  'Telerik.Windows.Controls.RadPasswordBox  5   
   -   5        
  Name$
 userpass��5   R   $ VisualStudio2013 6#   $
��Left=�6d   $��135,143,0,0q�6   $
 Wrap=�6�   $	��Top=�6�   $	 Enter password��6�   $	��243��6�   $��26��6�   (  "Telerik.Windows.Controls.RadButton  5   
   -   5          Name$ signin��5   �   $ VisualStudio2013 6   $��Sign In��6L   $
��Left=�6^   $��28��6y   $��286,192,0,0q�6�   $	��Top=�6�   $��92��6�   6�     5   
   -   5        $ cancel��5   �   $ VisualStudio2013 6   $��Cancel��6L   $
��Left=�6]   $��28��6x   $��182,192,0,0q�6�   $	��Top=�6�   $��92��6�   6�   5      5      