   M S B A M L   `   `   `  ����B  >CarRent, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:CarRent.Windows.AvtoPageCarRent.Windows.AvtoPage  5   	   )    #CarRent.Windows.AvtoPage.AvtoToRent   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:CarRent.Windows.AvtoPage     5   	     � Title$  
AvtoToRent��5   	    � 
ResizeMode$ NoResize=�6   $	��800��5	   	   $
��1500��6    � DataContext 5
   	   ��  �� Mode$ OneWay=� �� RelativeSource �� *Self+.��5      �� .+�5   
   �� -   5         ��Name$	 top��5      $��To Rent��6   $��48(�6/   
�������$��Center=�6P   $��Bottom=�5      ���#472323$��80��6K   $��1q�5      
���   �$��Engravers MT)�6<   �� 5   
    �� Orientation$ 
Horizontal=�6   .+�5      �� $��Center=�6   .+�5      �� $��Автомобиль:��6   $��36(�6.   $��
100,20,0,0q�6<   $��DemiBold"�6P   �� 5      $ 
Horizontal=�6   .+�5      �� $��40(�6?   $��20,5,0,0q�6M   ��6   �� *Avto.BrandName+6M   �� 5      $��40(�6:   $��5q�6H   ��6   �� *	Avto.Mark+6H   5      �� 5      $	��300��66   $	��300��6B   $��50q�6O   ��6   �� *
Avto.Photo+6O   5      �� 5      $��
200,20,0,0q�6   .+�5      �� $��Клиент: ��6   $��36(�6+   $��DemiBold"�69   �� 5      $��Disabled=�6;   $	��300��6q   ��6   �� *	Klients+��5      �� 5       .R�5!      �� $��22(�6(   $
��Wrap=�66   $	��400��6J   $��10q�6V   �� 5"   "   �6&   �� *
LastName+ �� 5#   "   �6&   �� *	FirstName+ �� 5$   "   �6&   �� *
Patronymic+5%      5&      5(      5)      5*      �� 5,   
   $��Right=�6   .+�5-      �� -   5         ��Name$
 exit��5-      $��
Назад��6#   $	��200��6G   $��50��6S   ���#472323
�������$��30(�5.      $��Segoe UI Semilight)�6   $��20q�6?   
���   �$��1q�6_   5/      51      52      