// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Julian Camits",
  title: "Julian Camits - CV",
  footer: context { [#emph[Julian Camits -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Última actualización May 2026] ],
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
    month: 5,
    day: 10,
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

Senior Backend Engineer con más de 8 años de experiencia diseñando y construyendo backends escalables, principalmente con tecnologías .NET.  Especialista en sistemas financieros, arquitecturas cloud en Azure y modernización de sistemas legacy hacia microservicios optimizados y de alta disponibilidad.


== Experiencia

#regular-entry(
  [
    #strong[Remitee], Software Architect \/ Backend Developer

    - Lideré la estandarización de las prácticas de desarrollo mediante la creación de paquetes NuGet con SourceGenerators y Analyzers, mejorando la coherencia del código.

    - Diseño y desarrollo de servicios backend para integraciones con proveedores y mantenimiento de APIs RESTful para clientes externos.

    - Soporte técnico para la integración de APIs a clientes externos siguiendo buenas prácticas para una integración óptima.

    - Participé en la evaluación técnica y la incorporación de nuevos colaboradores para el equipo.

  ],
  [
    Buenos Aires, Argentina

    Mar 2023 – Abr 2026

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

== Skills

#strong[Lenguajes:] C\#, JavaScript, Python

#strong[Frameworks e Infraestructura:] .NET 10, .NET Core, ASP.NET MVC, Entity Framework, Azure Service Bus, Kafka, Keycloak

#strong[Arquitectura y Patrones:] Microservicios, REST APIs, ETL, CQRS, Mediator, SourceGenerators, Analyzers

#strong[Bases de Datos:] Microsoft SQL Server (MSSQL), Postgres, Mongo

#strong[Protocolos y Herramientas:] FIX, gRPC, MSMQ, Git, Swagger (OpenAPI), NuGet, JSON Schema

== Certificaciones

- Google Workspace (2026)

- Google Cloud Engineering (2025)

- PMI Certificate & ERP Implementer Certification (2016)

- Microsoft Visual Studio Certification (2015)

- IBM DB2 Database Design & Android Developer (2015)

== Idiomas

#strong[Español:] Nativo

#strong[Inglés:] Intermedio
