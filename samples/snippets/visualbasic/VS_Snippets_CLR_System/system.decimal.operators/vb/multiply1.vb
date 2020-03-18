﻿' Visual Basic .NET Document
Option Strict On

' <Snippet20>
Module Example
   Public Sub Main()
      Dim number1 As Decimal = 16.8d 
      Dim number2 As Decimal = 4.1d 
      Dim number3 As Decimal = number1 * number2
      Console.WriteLine("{0:N2} x {1:N2} = {2:N2}", 
                        number1, number2, number3)
   End Sub
End Module
' The example displays the following output:
'       16.80 x 4.10 = 68.88
' </Snippet20>
