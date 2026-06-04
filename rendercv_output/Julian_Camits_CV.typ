// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Julian Camits",
  title: "Julian Camits - CV",
  footer: context { [#emph[Julian Camits -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Última actualización Jun 2026] ],
  locale-catalog-language: "es",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 6,
    day: 4,
  ),
)


= Julian Camits

  #headline([Senior Backend Engineer & Software Architect])

#connections(
  [#connection-with-icon("location-dot")[Buenos Aires, Argentina]],
  [#link("mailto:juliancamits@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[juliancamits\@gmail.com]]],
  [#link("https://linkedin.com/in/JulianCamits", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[JulianCamits]]],
  [#link("https://github.com/juliancamits-tech", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[juliancamits-tech]]],
)


== Resumen Profesional

Senior Backend Engineer con más de 8 años de experiencia diseñando y construyendo backends escalables, principalmente con tecnologías .NET y Python.  Especialista en sistemas financieros, arquitecturas cloud en Azure y modernización de sistemas legacy hacia microservicios optimizados y de alta disponibilidad.


== Experiencia

#regular-entry(
  [
    #strong[Remitee], Software Architect

    - Participé en procesos de selección para roles de arquitectura y liderazgo técnico, evaluando conocimientos de arquitectura de software, patrones de diseño, escalabilidad y toma de decisiones técnicas.

    - Diseñé una plataforma de infraestructura compartida compuesta por más de 10 paquetes NuGet reutilizables.

    - Definí abstracciones para servicios cloud (mensajería, persistencia y componentes transversales) reduciendo el acoplamiento a proveedores específicos.

    - Implementé una arquitectura extensible que permitió incorporar tecnologías como Azure Service Bus y Kafka con cambios mínimos en las aplicaciones consumidoras.

    - Implementé una capa de compatibilidad entre IdentityServer y Keycloak que habilitó la migración automática de usuarios durante el proceso de autenticación, preservando credenciales, claims y permisos existentes.

  ],
  [
    Buenos Aires, Argentina

    May 2025 – Abr 2026

  ],
)

#regular-entry(
  [
    #strong[Remitee], Backend Developer

    - Desarrollé un framework interno distribuido como paquetes NuGet para encapsular infraestructura común y acelerar la construcción de nuevos servicios.

    - Definí estándares para el desarrollo de servicios de integración, unificando patrones de mensajería, persistencia y manejo de errores.

    - Diseñé e implementé microservicios de integración con proveedores externos, comunicados mediante Service Bus con el motor central de procesamiento, incorporando nuevos partners y optimizando integraciones existentes.

    - Asesoré a equipos técnicos de clientes en la integración de APIs REST, incluyendo autenticación, secuencia de llamadas, manejo de errores y optimización de consumo.

    - Participé en procesos de selección técnica para posiciones de desarrollo, incluyendo revisión de CVs, entrevistas técnicas y evaluación de competencias en .NET, bases de datos y diseño de software.

  ],
  [
    Buenos Aires, Argentina

    Mar 2023 – May 2025

  ],
)

#regular-entry(
  [
    #strong[Mercado Abierto Electrónico], Software Architect \/ Backend Developer

    - Diseño e implementación de la integración entre los sistemas de Bloomberg y el Banco Central de Argentina (BCRA) utilizando el protocolo FIX.

    - Definición de la arquitectura del sistema, garantizando la escalabilidad y una comunicación de baja latencia.

    - Desarrollo y mantenimiento de APIs para el intercambio de datos financieros y operaciones administrativas.

  ],
  [
    Buenos Aires, Argentina

    Feb 2022 – Mar 2023

  ],
)

#regular-entry(
  [
    #strong[Contabilium], Backend Developer

    - Construcción de la migración del monolito legacy MVC a una arquitectura moderna de APIs y microservicios.

    - Mantenimiento y mejoras de sistema legacy solucionando fixes críticos y agregando nuevas funcionalidades.

  ],
  [
    Buenos Aires, Argentina

    Abr 2021 – Feb 2022

  ],
)

#regular-entry(
  [
    #strong[IT Desarrollo], Backend Developer

    - Desarrollo y mantenimiento del módulo para sistemas de procesamiento de datos financieros (Bureau de crédito).

    - Construcción de procesos ETL para importar datos financieros de clientes bancarios.

    - Implementación de MSMQ para procesamiento asincrónico basado en mensajería.

  ],
  [
    Buenos Aires, Argentina

    Nov 2016 – Abr 2021

  ],
)

== Educacion

#education-entry(
  [
    #strong[Universidad de Palermo], Tecnología de la Información

  ],
  [
    2017 – 2019

  ],
  degree-column: [
    #strong[Licenciado]
  ],
)

#education-entry(
  [
    #strong[O.R.T. Instituto Superior], Programación

  ],
  [
    2012 – 2016

  ],
  degree-column: [
    #strong[Analista en Sistemas]
  ],
)

== Skills

#strong[Lenguajes:] C\#, JavaScript, Python, Java

#strong[Frameworks e Infraestructura:] .NET Framework, .NET Core, ASP.NET MVC, Entity Framework, Azure Service Bus, Kafka, Keycloak, KeyVault, Azure DevOps, Azure Functions, Azure App Services

#strong[Arquitectura y Patrones:] Microservicios, REST APIs, ETL, CQRS, Mediator, SourceGenerators, Analyzers, Clean Architecture, Unite Test, DDD, Event Sourcing, Integraciones

#strong[Bases de Datos:] Microsoft SQL Server (MSSQL), Postgres, MongoDB, Redis, MySQL, SQLite, ElasticSearch

#strong[Protocolos y Herramientas:] FIX, gRPC, MSMQ, Git, Swagger (OpenAPI), NuGet, JSON Schema

== Certificaciones

- IA Para Todos (2026)

- Google Workspace (2026)

- Google Cloud Engineering (2025)

- PMI Certificate & ERP Implementer Certification (2016)

- Microsoft Visual Studio Certification (2015)

- IBM DB2 Database Design & Android Developer (2015)

== Idiomas

#strong[Español:] Nativo

#strong[Inglés:] Intermedio (B1-B2)
