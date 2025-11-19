# 🤖 Tarea: Demostración de Pipeline CI/CD
**Autor:** Alan Rivera
**Curso:** DevOps/5 DS A

![Estado del Pipeline](https://github.com/Hepestoo/tarea-8/actions/workflows/main.yml/badge.svg)
---

Este repositorio es una demostración práctica de un ciclo **CI/CD (Integración Continua y Entrega Continua)** completo, construido desde cero para cumplir con los requisitos de la evaluación.

> El objetivo es automatizar el proceso que va desde que un desarrollador sube código (`push`) hasta que se genera un paquete (`package`) listo para distribuir, asegurando la calidad mediante pruebas automáticas.

## 1. ⚙️ El Ciclo CI/CD: ¿Qué es y Cómo Funciona Aquí?

El CI/CD es una metodología para entregar software de forma rápida y fiable. Lo dividimos en dos fases:



### ➡️ Fase 1: CI (Integración Continua)
Es el "guardián de la calidad". Cada vez que subimos código, este proceso se asegura de que el nuevo código no rompa nada de lo que ya existía.
* **En este proyecto:** La CI se activa con `git push`. GitHub Actions ejecuta `npm test` para correr nuestras pruebas en `suma.test.js`. Si una prueba falla, el pipeline se detiene y nos avisa.

### ➡️ Fase 2: CD (Entrega Continua)
Es el "empacador". Solo si la Fase 1 (CI) fue exitosa, la CD toma el código aprobado y lo "empaqueta" para que esté listo para ser usado.
* **En este proyecto:** Tras pasar las pruebas, el comando `npm pack` se ejecuta. Esto crea un archivo `.tgz`, que es nuestro **paquete** (o "artefacto") listo para descargar.

---

## 2. 🛠️ Desglose Técnico: Los Componentes

Este proyecto se compone de 4 archivos clave que trabajan juntos:

### A. La Lógica de Negocio (`suma.js`)
Es el código de nuestra aplicación. Una función simple que necesita ser probada.

```javascript
// suma.js
function suma(a, b) {
  return a + b;
}
module.exports = suma;