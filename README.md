

---

## **README.md**

# 🛠️ Instalación Automatizada de Herramientas de Pruebas en Ubuntu  

Este proyecto proporciona un **script automatizado** para instalar algunas de las herramientas más populares para la automatización de pruebas en **Ubuntu**. El objetivo es facilitar la instalación de frameworks como Selenium, Cypress, JMeter, Playwright, entre otros, en un solo paso.  

---

## 🚀 **Herramientas Incluidas**

| **Herramienta**        | **Descripción**                                     |
|------------------------|-----------------------------------------------------|
| **Selenium**           | Automatización de navegadores web.                  |
| **Cypress**            | Pruebas E2E modernas para aplicaciones web.         |
| **Playwright**         | Automatización web multiplataforma.                 |
| **JMeter**             | Pruebas de carga y rendimiento.                     |
| **Newman** (Postman CLI)| Ejecución de colecciones de Postman en CLI.        |
| **Robot Framework**    | Automatización basada en palabras clave.            |
| **Cucumber**           | Pruebas BDD (Behavior-Driven Development).          |
| **Gatling**            | Pruebas de carga y rendimiento.                     |
| **Jenkins**            | CI/CD y automatización de pipelines.                |
| **Pytest**             | Framework de pruebas en Python.                     |

---

## 📋 **Requisitos**

- **Ubuntu 20.04 o superior**  
- **Acceso a sudo** (superusuario)  
- **Conexión a Internet activa**

---

## ⚙️ **Instrucciones de Instalación**

1. **Clonar el Repositorio o Guardar el Script:**  
   ```bash
   nano install-test-tools.sh
   ```

2. **Conceder Permisos de Ejecución:**  
   ```bash
   chmod +x install-test-tools.sh
   ```

3. **Ejecutar el Script:**  
   ```bash
   sudo ./install-test-tools.sh
   ```

---

## 🧰 **Estructura del Script**  

El script realiza las siguientes tareas:  

1. **Actualiza** el sistema e instala dependencias como `curl`, `nodejs`, `python3-pip`, y `openjdk`.  
2. **Instala Selenium** junto con `chromedriver` para la automatización de navegadores.  
3. **Instala Cypress** y **Playwright** para pruebas web.  
4. **Instala JMeter** para pruebas de rendimiento.  
5. **Añade Jenkins** para CI/CD.  
6. **Instala Gatling** para pruebas de carga.  
7. **Instala Postman CLI (Newman)** para ejecutar colecciones de API.  
8. **Limpia** paquetes innecesarios con `apt autoremove`.

---

## 📌 **Notas Importantes**

1. **Jenkins:**  
   - Después de la instalación, Jenkins se ejecuta automáticamente. Accede a través de `http://localhost:8080`.  
   - Puedes verificar su estado con:  
     ```bash
     systemctl status jenkins
     ```

2. **Playwright:**  
   - Instala navegadores adicionales con:  
     ```bash
     playwright install chromium firefox webkit
     ```

3. **JMeter:**  
   - Ejecuta JMeter con:  
     ```bash
     jmeter
     ```

4. **Newman:**  
   - Ejemplo para ejecutar una colección de Postman:  
     ```bash
     newman run tu-coleccion.postman_collection.json
     ```

---

## 🧹 **Limpieza**

El script elimina paquetes innecesarios al final de la instalación con:

```bash
apt autoremove -y
```

---

## ❗ **Advertencia Legal**

Este script instala herramientas poderosas para pruebas y automatización. Asegúrate de usarlas de manera ética y legalmente autorizada.

---

## 📜 **Licencia**

Este proyecto está licenciado bajo la [MIT License](https://opensource.org/licenses/MIT).

---

## 🤝 **Contribuciones**

¿Tienes ideas para mejorar este script? ¡Contribuye con un Pull Request!  

1. Realiza un fork del repositorio.  
2. Crea una nueva rama:  
   ```bash
   git checkout -b feature-nueva-herramienta
   ```
3. Realiza los cambios y haz un commit.  
4. Envía un Pull Request.

---

## 📧 **Contacto**

Si tienes preguntas o sugerencias, puedes contactarme en: lidhr3cs@anonaddy.com

---

