   M S B A M L   `   `   `  ����b  ^Microsoft.Windows.Shell, Version=3.5.41019.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35bFclr-namespace:Microsoft.Windows.Shell;assembly=Microsoft.Windows.ShellMicrosoft.Windows.Shell  5   	    	AntRunner   AntRunner.AboutWin   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   XshellFclr-namespace:Microsoft.Windows.Shell;assembly=Microsoft.Windows.Shell     5   	     � Title$  About us��5   	   $	��300��6   $��485.4��6'    � 
ResizeMode$ NoResize=�65      windowOpacity#��[  5   	   *   $Microsoft.Windows.Shell.WindowChrome   WindowChrome 5        5   
      GlassFrameThickness$ 1q�6      ResizeBorderThickness$ 1q�65      CaptionHeight$	 300Q�6O   .��5
      �� ���	#FF106455$��1q�6%   ._�5   
   �  � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��200* �6    �� 5      $��30 �6    .+�5      � ���	#FF106455$��30��6*    � ColumnDefinitions 5      �� 5      $
��100* �6'   �� 5      $��30 �6'   .+�5      �� $��7,0,0,0q�6   $��Center=�6-   $
��Left=�6H   
�������$
��Bold"�6v   
About Us6�   �� 5      -   5        $	��bdr��5      
�������$��0q�6=   $��30��5      $��30��6!   $��1��6,   $��0q�6<    � ToolTip$ 关闭��6G   	 ^� InitialShowDelay$
	 2000��6T   
   IsHitTestVisibleInChrome
 . ��5      �� 5       �� 
TargetType" ��6*   .R�5      �� $
��grid��6%   ���	#FF116B61$��0q�6H   $��0q�6\   ._�5   "   �� $��label1��5   9   $��Center=�5   ,   $��Center=�6G   $	��0,0q�6d   
���  ��$��×��5   G   $��20(�6P   $
��Bold"�6^   5   #   5        �� Triggers 5!      :� 5"   "    :� RoutedEvent$ 
MouseEnter��6/   .[�5#   &   �� .��5$   *   �� .��5%   .   ��  �� 
TargetName$
 grid��6=    �� TargetProperty$/ )(Grid.Background).(SolidColorBrush.Color)�6Z    �� From$ 	#FF116B61X�6�   	 �� To$	 RedX�6�    g� Duration$ 0:0:0.4D�6�   �� 5&   .   $ label1��6=   $4 .(TextBlock.Foreground).(SolidColorBrush.Color)�6\   $	 RedX�6�   $ WhiteX�6�   $ 0:0:0.4D�6�   5'   +   5(   '   5)   #   :� 5*   "   $ 
MouseLeave��6/   .[�5+   &   �� .��5,   *   �� .��5-   .   �� $
 grid��6=   $/ )(Grid.Background).(SolidColorBrush.Color)�6Z   $	 RedX�6�   $ 	#FF116B61X�6�   $ 0:0:0.4D�6�   �� 5.   .   $ label1��6=   $4 .(TextBlock.Foreground).(SolidColorBrush.Color)�6\   $ WhiteX�6�   $	 RedX�6�   $ 0:0:0.4D�6�   5/   +   50   '   51   #   P� 52   "    P� Property � �� P� Value . . �53   &   ��  �� 
TargetName$
 grid��6-    �� Property � �� �� Value$ 3q�6Z   6f   54   #   56      58      59      �� 5:      -   5        $��image1��5:   !   $��1��6   $	��110��60   $��logo.ico��6=   $��Uniform=�6O   $��Center=�6a   $��Center=�6|    � Triggers 5;      :� 5<      $ Window.Loaded��6#   .[�5=      �� .��5>      �� .��5?   "   W� $ image1��62   $ Height�6Q    W� From$	 0.0X�5@   -   	 W� To$	 110X�68   $ 0:0:1D�6A   5A      5B      5C      5E      �� 5F      -   5        $��image2��5F   "   $	��127��6   $��Uniform=�60    J� Opacity$ 0Q�6C   $��1��6O   $&�� /AntRunner;component/support.jpg��5G      $��Center=�6:   $��Center=�5H      
 .  5I      :� 5J      $ 
MouseEnter��6#   .[�5K      �� .��5L      �� .��5M   "   W� $ image2��62   $ Opacity�6Q   $ 0X�5N   .   $ 1X�67   $ 0:0:0.5D�6>   6T   5O      5P      5Q      :� 5R      $ 
MouseLeave��6#   .[�5S      �� .��5T      �� .��5U   "   W� $ image2��62   $ Opacity�6Q   $ 1X�5V   .   $ 0X�67   $ 0:0:0.5D�6>   6T   5W      5X      5Y      5[      �� 5\      -   5        $
��blk1��5\      $��Antenna Runner 1.0��6%   $��1��6?   $	��Top=�5]      $��Center=�6,   $
��Bold"�6I   $��168,182,167,0q�6[   �� 5^      $��2��6   
�������$��0,1,0,0q�6:   $��0q�6T   
�������._�5_      ��  �� Orientation$ 
Horizontal=�6   $��Center=�67   $��Center=�6R   .+�5`      �� $��
Copyright ��6    
�������62   �� 5a      -   5        $��tipTime��5a       $��©��6/   
�������68   �� 5b      $$�� 2019 ZPP All Rights Reserved.��6    
�������6F   5c      5d      5f      5g      5h      