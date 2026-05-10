# Obtener todos los archivos .yaml en la carpeta actual
$archivosYaml = Get-ChildItem -Filter *.yaml

# Lista para guardar los idiomas procesados y generar los botones después
$idiomasProcesados = New-Object System.Collections.Generic.List[string]

foreach ($archivo in $archivosYaml) {
    $partes = $archivo.BaseName -split "_"
    $lang = $partes[-1]
    $idiomasProcesados.Add($lang)

    Write-Host "------------------------------------------------" -ForegroundColor Green
    Write-Host "Procesando: $($archivo.Name)" -ForegroundColor Cyan
    Write-Host "Idioma detectado: $lang" -ForegroundColor Yellow

    if (-not (Test-Path -Path $lang)) {
        New-Item -ItemType Directory -Path $lang -Force | Out-Null
    }

    # Asegurar que la carpeta .static existe
    if (-not (Test-Path -Path ".static")) {
        New-Item -ItemType Directory -Path ".static" -Force | Out-Null
    }

    python -m rendercv render "$($archivo.Name)" `
        -pdf "./$lang/cv.pdf" `
        -md "./$lang/cv.md" `
        -html "./.static/$lang.html" `
        -nopng
}

# --- GENERACIÓN DEL INDEX.HTML ---
Write-Host "Generando index.html en .static..." -ForegroundColor Magenta

$botonesHtml = ""
foreach ($l in $idiomasProcesados) {
    # Mapeo simple para mostrar nombres más lindos que solo "spa" o "eng"
    $label = $l.ToUpper()
    if ($l -eq "spa") { $label = "Español" }
    if ($l -eq "eng") { $label = "English" }
    
    $botonesHtml += "<a href='./$l.html' class='btn'>$label</a>`n"
}

$htmlContent = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curriculum Vitae - Julian Camits</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: white;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            text-align: center;
            max-width: 400px;
            width: 90%;
        }
        h1 { color: #2c3e50; margin-bottom: 0.5rem; }
        p { color: #7f8c8d; margin-bottom: 2rem; }
        .grid { display: grid; gap: 1rem; }
        .btn {
            text-decoration: none;
            background-color: #0078d4;
            color: white;
            padding: 12px;
            border-radius: 6px;
            font-weight: 600;
            transition: background 0.3s, transform 0.2s;
        }
        .btn:hover {
            background-color: #005a9e;
            transform: translateY(-2px);
        }
        .btn:active { transform: translateY(0); }
    </style>
</head>
<body>
    <div class="container">
        <h1>Curriculum Vitae</h1>
        <p>Select the language of the CV you wish to view:<br>
		Selecciona el idioma del CV que deseas visualizar:</p>
        <div class="grid">
            $botonesHtml
        </div>
    </div>
</body>
</html>
"@

$htmlContent | Out-File -FilePath "./.static/index.html" -Encoding utf8

Write-Host "------------------------------------------------" -ForegroundColor Green
Write-Host "Proceso finalizado. Index generado en .static/index.html" -ForegroundColor White