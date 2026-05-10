# 📄 Dynamic CV | Software Architect & .NET Expert
> Automatización de currículum profesional generado a partir de YAML con RenderCV y GitHub Actions.

![Build Status](https://img.shields.io/github/actions/workflow/status/juliancamits-tech/cv/static.yml?branch=main&label=Deploy&style=flat-square)
![Stack](https://img.shields.io/badge/Stack-.NET%2010-blueviolet?style=flat-square)

## 🚀 Versiones Disponibles
Puedes ver las versiones web interactivas y descargar los PDFs aquí:

👉 **[Ver Currículum Online](https://juliancamits-tech.github.io/cv/)** *(Disponible en Español e Inglés)*

## 🛠️ Cómo funciona
Este repositorio utiliza un enfoque de **"Resume as Code"**:

1.  **Datos en YAML**: La información profesional se mantiene en archivos `.yaml` para facilitar el versionamiento.
2.  **Generación Automática**: Un script de PowerShell (`generate.ps1`) utiliza `rendercv` para procesar los datos.
3.  **CI/CD**: Al hacer `push` a `main`, una GitHub Action ejecuta el despliegue automático hacia GitHub Pages.

## 📂 Estructura
* `/*.yaml`: Archivos de datos por idioma (ej. `cv_spa.yaml`).
* `/generate.ps1`: Motor de generación y creación del `index.html` dinámico.
* `/.static/`: Carpeta de salida con el sitio web final.
* `/.github/workflows/static.yml`: Definición del pipeline de despliegue.
* Por cada idioma tambien se genera una carpeta con la versiones MD y PDF

## 👨‍💻 Perfil Técnico
Especializado en el ecosistema **.NET**, implementando patrones como **CQRS**, **Mediator** y **Clean Architecture**. Enfocado en la estandarización de código y optimización de performance.
