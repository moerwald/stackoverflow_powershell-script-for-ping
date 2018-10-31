function Ping-Servers{
        [CmdletBinding()]
        Param()
        $servers = Import-Csv .\servers.csv

        $testResultArrayWithDictionaryAsContent = $servers | Foreach-Object{ 
                Write-Information "Testing $($_.Servers)"
                $ctResult = Test-Connection $_.Servers; 
                @{ Nas = $_.Nas; Server = $_.Servers; TestResult = $ctResult }}
        $testResultArrayWithDictionaryAsContent 
}
