   M S B A M L   `   `   `  ����B  >CarRent, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:CarRent.WindowsCarRent.Windows  5   	       CarRent.Windows.Main   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:CarRent.Windows     5   	     � Title$
  Main��5   	    � 
ResizeMode$ NoResize=�6   $	��800��5	   	   $
��1500��6   .��5
      �  � ColumnDefinitions 5   
   �� 5      $	��300 �6   �� 5      $��* �6   .+�5   
   ��  �� Orientation$ Vertical=�6   ���#8A5454.+�5      �� $
��Main��6   $��48(�6#   
�������$��Center=�6D   $��Bottom=�5      ���#472323$��80��6K   $��1q�5      
���   �$��Engravers MT)�6<   �� 5      -   5         ��Name$
 avto��5      $��0,50,0,0q�6#   $��50��65   $��1q�6A   
���   �$�� > Автомобили��5      $
��Left=�6-   
���   ����#9F7C7C$��32(�5   *   $��Segoe UI Semilight)�68   6X   �� 5      -   5        $ client��5      $��0,20,0,0q�6%   $��50��67   $��1q�6C   
���   �$�� > Клиенты��5      $
��Left=�6*   
���   ����#9F7C7C$��32(�5   *   $��Segoe UI Semilight)�68   6X   �� 5      -   5        $ dogovor��5      $��0,20,0,0q�6'   $��50��69   $��1q�6E   
���   �$�� > Договоры��5      $
��Left=�6+   
���   ����#9F7C7C$��32(�5   *   $��Segoe UI Semilight)�68   �� 5!      -   5        $
 exit��5!      $��	0,300,0,0q�6$   $��50��67   $��1q�6C   
���   �$�� > Выход��5"      $
��Left=�6(   
���   ����#9F7C7C$��32(�5#   *   $��Segoe UI Semilight)�68   6X   5$       � 5&   
   -   5          �Name$ frame��5&      $��1��6   
���   �$��1q�6C     � NavigationUIVisibility$ Hidden=�6W   5(      5)      