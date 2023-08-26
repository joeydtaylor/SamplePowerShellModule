# Public\Sample-Cmdlet.ps1

function Get-SampleData {
  param (
      [string]$param1,
      [string]$param2
  )

  # Placeholder for cmdlet logic (no actual action)
  Write-Output "Sample: Cmdlet executed with Param1: $param1, Param2: $param2 (No actual action)"

  # Log a message
  _Log-Message -Message "Sample data retrieved with Param1: $param1, Param2: $param2" -MessageType 'Info'
}
