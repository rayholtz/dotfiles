function get-lasterror {
    $Error[0].Exception.GetType().FullName
}
