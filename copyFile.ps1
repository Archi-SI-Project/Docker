function Copy-SingleJar {
    param (
        [string]$SourcePath,
        [string]$DestinationPath
    )

    # Récupérer tous les .jar dans le dossier source
    $jars = Get-ChildItem -Path $SourcePath -Filter *.jar

    # Vérification du nombre de .jar trouvés
    if ($jars.Count -eq 0) {
        Write-Error  "Aucun fichier .jar trouvé dans $SourcePath"
        exit 1
    } elseif ($jars.Count -gt 1) {
        Write-Error "Plus d'un fichier .jar trouvé dans $SourcePath"
        $jars | ForEach-Object { Write-Host " - $($_.Name)" }
        exit 1
    } else {
        # Copier le fichier unique trouvé
        Write-Host " Copie de $($jars[0].Name) vers $DestinationPath"
        Copy-Item -Path $jars[0].FullName -Destination $DestinationPath -Force
    }
}

# Utilisation pour tes services
Copy-SingleJar -SourcePath "..\Service1\Service1\demo\target" -DestinationPath ".\service1\service1.jar"
Copy-SingleJar -SourcePath "..\Service2\Service2\demo\target" -DestinationPath ".\service2\service2.jar"
Copy-SingleJar -SourcePath "..\Middleware\demo\demo\target" -DestinationPath ".\middleware\middleware.jar"
# Nettoyage de ./front en excluant Dockerfile et nginx.conf
Get-ChildItem -Path ".\front" -Recurse | Where-Object {
    $_.Name -notin @('Dockerfile', 'nginx.conf')
} | Remove-Item -Recurse -Force -ErrorAction Stop

# Copier le contenu du dossier ../front/ vers ./front
Copy-Item -Path "..\front\*" -Destination ".\front" -Recurse -Force

