# Script: tong_hop.ps1
# Tac gia: Nguyen Minh
# Ngay tao: 03/11/2026
Write-Host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > .\logs\tong_hop.txt
Get-Content .\logs\Access.log | Select-String "status=404" >> .\logs\tong_hop.txt
Get-Content .\logs\Access.log | Select-String "status=500" | Measure-Object >> .\logs\tong_hop.txt
Write-Host "Hoan thanh!"
