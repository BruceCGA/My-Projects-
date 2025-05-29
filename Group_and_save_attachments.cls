VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ThisOutlookSession"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Sub Savetheattachment()
    Dim olApp As New Outlook.Application
    Dim nmsName As Outlook.NameSpace
    Dim vItem As Object
    Dim sbj As String
    Dim Path As String
    Set nmsName = olApp.GetNamespace("MAPI")
    Set myFolder = nmsName.GetDefaultFolder(olFolderInbox)
    Set fldFolder = myFolder.Folders("download files")
    
    For Each vItem In fldFolder.Items
        sbj = vItem.Subject
        Path = "D:\attachment download\" + sbj
        savepath = Path + "\"
        VBA.MkDir (Path)
        For Each att In vItem.Attachments
            att.SaveAsFile savepath & att.FileName
        Next
    Next
    Set fldFolder = Nothing
    Set nmsName = Nothing
End Sub
