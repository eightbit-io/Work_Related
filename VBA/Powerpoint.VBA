Sub ExportVideo
' Subroutine that exports the active presentation as a video file to "Videofile"" location

    Dim pres As Presentation
    Set pres = ActivePresentation
    VideoFile = "\foo\bar.mp4"
    pres.CreateVideo VideoFile

End Sub