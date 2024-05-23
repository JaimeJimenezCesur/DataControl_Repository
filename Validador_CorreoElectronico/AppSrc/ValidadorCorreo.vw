Use Windows.pkg
Use DFClient.pkg

Use ValidacionCorreo.pkg

Deferred_View Activate_oValidadorCorreo for ;
Object oValidadorCorreo is a dbView

    Set Border_Style to Border_Thick
    Set Size to 200 300
    Set Location to 2 2
    Set Label to "ValidadorCorreo"

    Object oForm1 is a Form
        Set Size to 12 224
        Set Location to 43 7
        Set psPlaceHolder to "Introduzca el correo electronico a validar"
        // OnChange is called on every changed character
    //    Procedure OnChange
    //        String sValue
    //    
    //        Get Value to sValue
    //    End_Procedure
    
    End_Object

    Object oButton1 is a Button
        Set Location to 42 237
        Set Label to 'Validar'
    
        // fires when the button is clicked
        Procedure OnClick
            String sValue
            Boolean  bRet
            
            Get Value of oForm1 to sValue
            Get ValidacionCorreo sValue to bRet
            
            Set Label of oTextBox1 to ("Correo electronico: " + sValue)
            If (bRet) Begin
                Set Color of oTextBox1 to clGreen
            End
            Else Begin 
                Set Color of oTextBox1 to clRed
            End
        End_Procedure
    
    End_Object

    Object oTextBox1 is a TextBox
        Set Size to 10 34
        Set Location to 92 10
        Set Label to 'Correo electronico: '
    End_Object

Cd_End_Object
