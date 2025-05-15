# Copier le contenu du dossier ../front/ vers ./front
# Copy-Item -Path "..\front\*" -Destination ".\front" -Recurse -Force

# Copier les fichiers .jar du dossier Service1 vers ./service1
Copy-Item -Path "..\Service1\Service1\demo\target\*.jar" -Destination ".\service1\service1.jar" -Force

# Copier les fichiers .jar du dossier Service2 vers ./service2
Copy-Item -Path "..\Service2\Service2\demo\target\*.jar" -Destination ".\service2\service2.jar" -Force
# Copier les fichiers .jar du dossier Service3 vers ./middleware
Copy-Item -Path "..\Middleware\demo\demo\target\*.jar" -Destination ".\middleware\middleware.jar" -Force