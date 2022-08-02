VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "shdocvw.dll"
Begin VB.Form Form1 
   Caption         =   "V I B E N E W S"
   ClientHeight    =   4935
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6975
   Icon            =   "vibenews.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4935
   ScaleWidth      =   6975
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      BackColor       =   &H00808000&
      ForeColor       =   &H00FF00FF&
      Height          =   285
      Left            =   0
      TabIndex        =   1
      Text            =   "http://68k.news/"
      Top             =   0
      Width           =   6975
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   4695
      Left            =   0
      TabIndex        =   0
      Top             =   240
      Width           =   6975
      ExtentX         =   12303
      ExtentY         =   8281
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "res://C:\WINNT\system32\shdoclc.dll/dnserror.htm#http:///"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
If KeyAscii = 21 Then WebBrowser1.Refresh
WebBrowser1.Navigate ("http://68k.news")
End Sub

Private Sub Form_Resize()
WebBrowser1.Silent = True
WebBrowser1.Move 0, 285, Me.ScaleWidth, Me.ScaleHeight
Text1.Width = Me.Width
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then WebBrowser1.Navigate (Text1.Text)

End Sub
