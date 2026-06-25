# Proyecto TechVentas - Exploración y Análisis de Datos

## Descripción

Este proyecto tiene como objetivo realizar el proceso de exploración, limpieza, transformación y análisis de datos de ventas utilizando Python, Pandas y SQLite.

Se trabaja con el archivo `ventas_techventas.csv`, aplicando técnicas de limpieza de datos, generación de nuevas variables, análisis exploratorio y consultas SQL.

---

## Estructura del proyecto

```text
.
├── ventas_techventas.csv
├── techventas.db
├── 01_data_cleaning.ipynb
├── 02_sql_discovery.ipynb
├── 02_sql_discovery.sql
├── requirements.txt
└── setup.md
└── README.md
```

---

## Tecnologías utilizadas

- Python 3.x
- Pandas
- NumPy
- SQLite
- SQLAlchemy
- Jupyter Notebook

---

## Instalación

1. Clonar o descargar el proyecto.

2. Crear y activar un entorno virtual (opcional):

```bash
conda create -n reto_u1 python=3.12
conda activate reto_u1
```

3. Instalar las dependencias:

```bash
pip install -r requirements.txt
```

---

## Desarrollo del proyecto

### 1. Carga y limpieza de datos

- Importación del archivo CSV.
- Conversión de fechas.
- Detección y eliminación de valores nulos.
- Eliminación de registros inválidos.

### 2. Feature Engineering

Se crearon las siguientes variables:

- `ingreso_bruto`
- `ingreso_neto`
- `mes`

---

### 3. Análisis exploratorio

Se realizaron agrupaciones y estadísticas utilizando:

- `groupby`
- `agg`
- `merge`
- `concat`

---

### 4. Base de datos SQLite

Los datos limpios fueron exportados a una base de datos SQLite llamada:

```text
techventas.db
```

La tabla principal utilizada es:

```text
ventas
```

---

### 5. Consultas SQL realizadas

Se implementaron las siguientes consultas:

1. SELECT DISTINCT
2. WHERE + BETWEEN
3. GROUP BY + HAVING
4. COUNT + SUM + AVG
5. JOIN entre ventas y vendedores
6. Subconsulta para identificar el cliente con mayor ingreso

---

## Ejecución

Abrir y ejecutar los notebooks en el siguiente orden:

1. `01_data_cleaning.ipynb`
2. `02_sql_discovery.ipynb`

---

## Autor

Laura Franco Loaiza
