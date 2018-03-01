VERSION 5.00
Begin VB.Form Test 
   Caption         =   "Form1"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3135
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "Test"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
    Dim fObj As ComVisibleNetStandard.IComVisibleObject
    Set fObj = New ComVisibleNetStandard.ComVisibleObject
    
    Dim fStr1 As String
    Let fStr1 = InputBox("Give something", "ComVisibleNetStandard", "Hello, World!")
    
    Dim fStr2 As String
    Let fStr2 = fObj.GiveItBack(fStr1)
    
    Call MsgBox(fStr2, vbOKOnly, "ComVisibleNetStandard")
    Call Unload(Me)
End Sub
