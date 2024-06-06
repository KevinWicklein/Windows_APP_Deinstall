@echo off
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File "".\administrative_Freigaben_anpassen.ps1""' -Verb RunAs}"
