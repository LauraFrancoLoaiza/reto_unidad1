# Reto Unidad 1

## Descripción del proyecto

Este proyecto corresponde al **Reto Integrador de la Unidad 1** Máster en IA & Data Science de Dev Senior Code, cuyo objetivo es aplicar los fundamentos del análisis de datos utilizando Python, NumPy, Pandas, SQL y SQLite.

Durante el desarrollo del reto se realizaron actividades relacionadas con:

- Configuración del entorno de trabajo profesional.
- Análisis matemático y estadístico con NumPy.
- Exploración de datos mediante SQL.
- Limpieza, transformación y análisis de datos con Pandas.
- Creación y consulta de bases de datos SQLite.

---

## Estructura del proyecto

```text
reto_unidad1_laura_franco/
│
├── README.md
├── setup.md
├── requirements.txt
│
├── data/
│   └── ventas_techventas.csv
│
├── notebooks/
│   ├── 01_numpy.ipynb
│   ├── 02_sql_discovery.ipynb
│   └── 03_pandas_pipeline.ipynb
│
├── sql/
│   └── 02_sql_discovery.sql
│
└── output/
    └── techventas.db
```

---

## Tecnologías utilizadas

- Python 3.11
- Jupyter Notebook
- NumPy
- Pandas
- SQLAlchemy
- SQLite

---

## Ejecución del proyecto

Abrir Jupyter Notebook:

```bash
jupyter notebook
```

Ejecutar los notebooks en el siguiente orden:

1. `01_numpy.ipynb`
2. `02_sql_discovery.ipynb`
3. `03_pandas_pipeline.ipynb`

Para verificar el correcto funcionamiento, ejecutar:

**Kernel → Restart & Run All**

Todos los notebooks deben ejecutarse sin errores.

---

## Actividades desarrolladas

### Notebook 01 - NumPy

- Creación de arrays.
- Multiplicación matricial.
- Cálculo de estadísticas descriptivas.
- Reflexión sobre la metodología CRISP-DM.

### Notebook 02 - SQL Discovery

- Importación de datos a SQLite.
- Consultas SQL:
  - SELECT DISTINCT
  - WHERE + BETWEEN
  - GROUP BY + HAVING
  - COUNT, SUM y AVG
  - JOIN
  - Subconsultas

### Notebook 03 - Pandas Pipeline

- Carga y limpieza de datos.
- Tratamiento de valores nulos.
- Ingeniería de características.
- Agrupaciones mensuales.
- Exportación de datos a SQLite.

---

## Autor

**Laura Franco Loaiza**
