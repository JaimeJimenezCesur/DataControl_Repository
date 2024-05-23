Use Windows.pkg
Use DFClient.pkg

Use ValidarDNI.pkg

Deferred_View Activate_oValidacionDNI for ;
Object oValidacionDNI is a dbView

    Set Border_Style to Border_Thick
    Set Size to 200 300
    Set Location to 2 2
    Set Label to "ValidacionDNI"

    Object oForm1 is a Form
        Set Size to 12 100
        Set Location to 56 40
        Set psPlaceHolder to "Ingrese su DNI"
    
        // OnChange is called on every changed character
    //    Procedure OnChange
    //        String sValue
    //    
    //        Get Value to sValue
    //    End_Procedure
    
    End_Object

    Object oButton1 is a Button
        Set Location to 56 154
        Set Label to "Validar"
    
        // fires when the button is clicked
        Procedure OnClick
            String sValue
            Boolean  bRet
            
            Get Value of oForm1 to sValue
            Get ValidarDNI sValue to bRet
            
            Set Label of oTextBox1 to ("DNI: " + Uppercase(sValue))
            If (bRet) Begin
                Set Color of oTextBox1 to clGreen
            End
            Else Begin 
                Set Color of oTextBox1 to clRed
            End
        End_Procedure
    
    End_Object

    Object oTextBox1 is a TextBox
        Set Size to 9 34
        Set Location to 98 42
        Set Label to "DNI: "
    End_Object

Cd_End_Object
