' cerner_2^5_2017
' Ever wanted to monitor all your files that contain 32? Well look no further!
Imports System.IO
Namespace Engineering
    Public Class Impact
        Public Shared Sub Main()
            Dim fsWatcher As New FileSystemWatcher
            fsWatcher.Filter = "*32*.*"
            fsWatcher.Path = "C:\"
            fsWatcher.NotifyFilter = (NotifyFilters.Attributes Or NotifyFilters.CreationTime Or NotifyFilters.DirectoryName Or NotifyFilters.FileName Or NotifyFilters.LastAccess Or NotifyFilters.LastWrite Or NotifyFilters.Security Or NotifyFilters.Size)
            AddHandler fsWatcher.Changed, AddressOf OnChanged
            AddHandler fsWatcher.Created, AddressOf OnChanged
            AddHandler fsWatcher.Deleted, AddressOf OnChanged
            AddHandler fsWatcher.Renamed, AddressOf OnRenamed
            fsWatcher.EnableRaisingEvents = True
            fsWatcher.IncludeSubdirectories = True
            Console.WriteLine("Press any key to quit . . .")
            Console.ReadKey()
        End Sub
        Private Shared Sub OnChanged(sender As Object, eventArgs As FileSystemEventArgs)
            Console.WriteLine(eventArgs.Name & " was " & [Enum].GetName(GetType(WatcherChangeTypes), eventArgs.ChangeType))
        End Sub
        Private Shared Sub OnRenamed(sender As Object, eventArgs As RenamedEventArgs)
            Console.WriteLine(eventArgs.OldName & " was Renamed to " & eventArgs.Name)
        End Sub
    End Class
End Namespace
