# Unlimited Roleplay APV

MkDocs-website met het Material-thema.

## Starten op Windows

Dubbelklik op `start.cmd` en open http://127.0.0.1:8000 in je browser.
Laat het terminalvenster open zolang je de website gebruikt. Met Ctrl+C stop je de server.

De benodigde pakketten staan in een lokale Python-omgeving (`.venv`). Als deze
ontbreekt, installeert het startscript ze automatisch. Hiervoor zijn Python
(getest met 3.14) en een internetverbinding nodig. Python moet via het commando
`python` beschikbaar zijn. Met `setup.cmd` kun je de installatie opnieuw uitvoeren.

Je kunt de scripts ook vanuit PowerShell starten:

```powershell
.\start.cmd
```

## Inhoud aanpassen

Bewerk de Markdown-bestanden in `docs`. Tijdens het draaien van de server
worden wijzigingen automatisch zichtbaar. Navigatie en thema staan in
`mkdocs.yml`; eigen opmaak staat in `docs/stylesheets/extra.css`.

## Website bouwen

Voer `build.cmd` uit, of gebruik PowerShell:

```powershell
.\build.cmd
```

De statische website komt in `site/`. Voor lokaal bekijken gebruik je `start.cmd`.
De server is alleen op je eigen pc bereikbaar.

Is poort 8000 bezet? Stop een eerder geopend startvenster of gebruik:

```powershell
.\.venv\Scripts\python.exe -m mkdocs serve --dev-addr 127.0.0.1:8001
```

Open dan http://127.0.0.1:8001.
"# UnlimitedApv" 
