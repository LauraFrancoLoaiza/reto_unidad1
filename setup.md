# Configuración del Entorno de Desarrollo

## 1. Instalación de Anaconda

Descargar e instalar Anaconda desde su sitio oficial. Una vez finalizada la instalación, abrir **Anaconda Prompt**.

---

## 2. Verificación de versiones

Para comprobar que Anaconda y Python se instalaron correctamente, ejecutar los siguientes comandos:

### Verificar versión de Anaconda

```bash
conda --version
```

### Verificar versión de Python

```bash
python --version
```

---

## 3. Creación del entorno virtual

Crear un nuevo entorno virtual llamado `reto_u1` con Python 3.11:

```bash
conda create -n reto_u1 python=3.11
```

Cuando el sistema solicite confirmación, escribir:

```bash
y
```

y presionar **Enter**.

---

## 4. Activación del entorno virtual

Activar el entorno creado con el siguiente comando:

```bash
conda activate reto_u1
```

Si la activación fue exitosa, el nombre del entorno aparecerá al inicio de la línea de comandos:

```text
(reto_u1)
```

---

## 5. Instalación de dependencias

Instalar las librerías requeridas para el desarrollo del proyecto:

```bash
pip install numpy pandas sqlalchemy
```

---

## 6. Librerías instaladas

Las siguientes librerías fueron instaladas en el entorno virtual:

- **NumPy:** utilizada para operaciones matemáticas y manejo de arreglos multidimensionales.
- **Pandas:** utilizada para la manipulación y análisis de datos.
- **SQLAlchemy:** utilizada para la conexión y gestión de bases de datos mediante Python.

---

## Entorno utilizado

- Anaconda
- Python 3.11
- Entorno virtual: `reto_u1`
