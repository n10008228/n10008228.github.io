# Exercise 5b — populate Word from terminal log

$logPath = Join-Path $PSScriptRoot 'terminal_session.txt'
if (-not (Test-Path $logPath)) {
  $logPath = Join-Path $PSScriptRoot 'exercise5b_session.log'
}
if (-not (Test-Path $logPath)) {
  Write-Error "No terminal_session.txt or exercise5b_session.log found. Run run_on_apollo.sh on apollo first."
  exit 1
}

$raw = Get-Content $logPath -Raw
$sections = [regex]::Split($raw, '(?=========== )')

$docPath = Join-Path (Split-Path $PSScriptRoot -Parent) 'exercise 5b Matheus Maggiorini.docx'
$word = New-Object -ComObject Word.Application
$word.Visible = $false
try {
  if (Test-Path $docPath) { Remove-Item $docPath -Force }
  $doc = $word.Documents.Add()
  $sel = $word.Selection

  function Write-Heading($t) {
    $sel.Font.Name = 'Calibri'; $sel.Font.Size = 14; $sel.Font.Bold = $true
    $sel.TypeText($t); $sel.TypeParagraph(); $sel.Font.Bold = $false; $sel.Font.Size = 11
  }
  function Write-Terminal($text) {
    $sel.Font.Name = 'Consolas'; $sel.Font.Size = 9
    foreach ($line in ($text -split "`n")) {
      if ($line -match '^==========') { continue }
      if ($line.Trim() -eq '') { $sel.TypeParagraph(); continue }
      $sel.TypeText($line); $sel.TypeParagraph()
    }
    $sel.TypeParagraph()
  }

  Write-Heading 'Exercise 5b – CPAN133'
  Write-Heading 'Matheus Maggiorini'
  $sel.TypeParagraph()

  foreach ($sec in $sections) {
    $t = $sec.Trim()
    if ($t.Length -lt 5) { continue }
    $title = ($t -split "`n", 2)[0] -replace '=','' -replace '^\s+|\s+$',''
    $body = if ($t -match "`n") { ($t -split "`n", 2)[1] } else { '' }
    Write-Heading $title.Trim()
    Write-Terminal $body.Trim()
  }

  $doc.SaveAs([ref]$docPath)
  $doc.Close()
  Write-Output "Updated: $docPath"
} finally {
  $word.Quit()
  [System.Runtime.Interopservices.Marshal]::ReleaseComObject($word) | Out-Null
}
