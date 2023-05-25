# PROYECTO DE BASES DE DATOS AVANZADAS, CONTROL DE INVENTARIOS , FACULTAD DE MEDICINA, ENFERMERIA, NUTRICION Y TECNOLOGIA MEDICA

## Descripcion de la entidad y los requisitos
La Facultad de Medicina, Enfermería y Tecnología Médica de la Universidad Mayor de San Andrés (UMSA) es una destacada institución académica ubicada en la ciudad de La Paz, Bolivia. Es reconocida como una de las facultades más prestigiosas y de mayor trayectoria en el campo de la salud en el país.

La Facultad ofrece programas de estudio de alta calidad en medicina, enfermería y tecnología médica, con el objetivo de formar profesionales altamente capacitados y comprometidos con la atención médica de excelencia y la investigación científica.

Los programas académicos de la Facultad de Medicina están diseñados para proporcionar a los estudiantes una sólida base teórica y práctica en ciencias médicas. Los estudiantes reciben una formación integral en anatomía, fisiología, patología, farmacología, medicina preventiva, entre otras áreas fundamentales para la práctica médica.

La Facultad de Enfermería de la UMSA brinda una formación rigurosa a los estudiantes, enfocándose en la adquisición de habilidades técnicas y conocimientos teóricos necesarios para brindar una atención de enfermería de calidad. Los estudiantes tienen la oportunidad de realizar prácticas clínicas en diversos entornos de atención médica, lo que les permite adquirir experiencia práctica y desarrollar habilidades de liderazgo y trabajo en equipo.

La Facultad de Tecnología Médica se dedica a formar profesionales especializados en áreas como laboratorio clínico, radiología, terapia física y ocupacional, entre otras. Los estudiantes reciben una formación integral que combina conocimientos científicos y habilidades técnicas, permitiéndoles contribuir al diagnóstico y tratamiento de enfermedades mediante el uso de tecnología médica de vanguardia.

La Facultad de Medicina, Enfermería y Tecnología Médica de la UMSA se destaca por contar con un cuerpo docente altamente calificado, formado por médicos, enfermeros y tecnólogos médicos con experiencia y reconocimiento en sus respectivas especialidades. Además, la facultad promueve la investigación científica y la participación en proyectos de salud comunitarios, fomentando el compromiso social y la atención médica basada en evidencia.

Para llevar a cabo una adecuada gestión de inventarios en la Facultad de Medicina, Enfermería, Nutrición y Tecnología Médica, se requiere cumplir con los siguientes requisitos, basados en las tablas proporcionadas:

1. Departamentos: Se debe contar con una tabla que registre los departamentos existentes en la facultad, incluyendo su identificador único (id_departamento), nombre y ubicación. Esto permitirá asociar los usuarios y artículos a los departamentos correspondientes.

2. Categorías: Es necesario tener una tabla que defina las categorías de los artículos, con un identificador único (id_categoria), nombre y descripción. Esto facilitará la clasificación y organización de los artículos en el inventario.

3. Artículos: Se requiere una tabla que almacene la información de los artículos, incluyendo su identificador único (id_articulo), nombre, la categoría a la que pertenece (id_categoria), la cantidad disponible en inventario y el precio unitario. Esta tabla permitirá llevar un registro detallado de cada artículo y su disponibilidad.

4. Usuarios: Se debe contar con una tabla que registre a los usuarios involucrados en el manejo de inventarios, como personal de departamentos, con su identificador único (id_usuario), nombre y el departamento al que pertenecen (departamento_id). Esto permitirá rastrear las acciones de los usuarios en los movimientos de inventario.

5. Movimientos: Es necesario tener una tabla que registre los movimientos de entrada y salida de los artículos en el inventario. Esta tabla debe incluir un identificador único (id_movimiento), el artículo involucrado (id_articulo), el usuario responsable (id_usuario), el tipo de movimiento (entrada o salida), la cantidad y la fecha del movimiento. Esto permitirá rastrear y controlar los cambios en el inventario.

6. Proveedores: Se requiere una tabla que registre a los proveedores de los artículos, con un identificador único (id_proveedor), nombre, ubicación y número de teléfono. Esto permitirá mantener un registro de los proveedores y facilitar la gestión de compras.

7. Compras: Es necesario contar con una tabla que registre las compras realizadas a los proveedores. Esta tabla debe incluir un identificador único (id_compra), el proveedor (id_proveedor), el artículo adquirido (id_articulo), la cantidad, el precio unitario y la fecha de compra. Esto permitirá tener un registro completo de las transacciones de compra.

8. Consumos: Se requiere una tabla que registre los consumos de los artículos por parte de los usuarios. Esta tabla debe incluir un identificador único (id_consumo), el artículo consumido (id_articulo), el usuario responsable (id_usuario), la cantidad y la fecha del consumo. Esto permitirá realizar seguimiento de los artículos utilizados y controlar su disponibilidad.

Al cumplir con estos requisitos y utilizar estas tablas como base, se podrá llevar a cabo una gestión eficiente de inventarios en la Facultad de Medicina, Enfermería, Nutrición y Tecnología Médica, facilitando el control de stock, la realización de compras, la asignación de recursos y el seguimiento de movimientos de artículos.

## Diagrama Propuesto de Base de Datos
Segun los requisitos mencionados anteriormente, se propone el siguiente diagrama de base de datos para la Facultad de Medicina, Enfermería, Nutrición y Tecnología Médica:
![Diagrama de Base de Datos](./media/Modelo%20entidad%20relacion.png)
Segun el diagrama propuesto, se puede observar que se cumple con los requisitos mencionados anteriormente, ya que se cuenta con las tablas necesarias para llevar a cabo una gestión eficiente de inventarios en la Facultad de Medicina, Enfermería, Nutrición y Tecnología Médica.
Vemos que se cuenta con las tablas de Departamentos, Categorias, Articulos, Usuarios, Movimientos, Proveedores, Compras y Consumos, donde cada una de estas tablas tieneuna conexion de uno a muchos con la tabla que le sigue, por ejemplo, la tabla de Departamentos tiene una conexion de uno a muchos con la tabla de Usuarios, ya que un departamento puede tener muchos usuarios, pero un usuario solo puede pertenecer a un departamento.

## Requisitos tecnicos
Para poder llevAr acabo este proyecto debes hacer lo siguiente:
### Linux
1. Instalar [Docker en tu VM](https://docs.docker.com/engine/install/debian/) segun tudistribucion de Linux.
2. Hacer un docker pull de la imagen de [MySQL](https://hub.docker.com/_/mysql).
3. Tener instalado [Dbeaver](https://dbeaver.io/download/) para poder conectarte a la base de datos.
4. Tener instalado [Git](https://git-scm.com/downloads) para poder clonar el repositorio.
### Windows
1. Instalar [Docker](https://docs.docker.com/docker-for-windows/install/) 
2. Hacer un docker pull de la imagen de [MySQL](https://hub.docker.com/_/mysql).
3. Tener instalado [Dbeaver](https://dbeaver.io/download/) para poder conectarte a la base de datos.
4. Tener instalado [Git](https://git-scm.com/downloads) para poder clonar el repositorio.
### MacOS
1. Instalar [Docker](https://docs.docker.com/docker-for-mac/install/)
2. Hacer un docker pull de la imagen de [MySQL](https://hub.docker.com/_/mysql).
3. Tener instalado [Dbeaver](https://dbeaver.io/download/) para poder conectarte a la base de datos.
4. Tener instalado [Git](https://git-scm.com/downloads) para poder clonar el repositorio.

## Como levantar localmente
1. Clonar el repositorio con el siguiente comando:
```
git clone https://github.com/ElJoamy/Docker_compose_comfiguration.git
```
2. Entrar a la carpeta del repositorio con el siguiente comando:
```
cd Docker_compose_comfiguration
```
3. Levantar el contenedor con el siguiente comando:
```
docker compose up
```
4. Esperar a que se levante el contenedor y se cree la base de datos.
5. Entrar a la db de master con el siguiente comando:
```
docker exec -it database_master mysql -p
```
6. Ingresar la contraseña que se encuentra en el archivo [docker-compose.yml](docker-compose.yml) en la linea 16 o si no deseas entrar puedes poner *root* como contraseña.
7. Para verificar escribes el comando:
```
SHOW MASTER STATUS\G
```
8. Para salir de la base de datos escribes el comando:
```
exit
```
9. En cualquier slave puedesejecutar el comando:
```
SHOW SLAVE STATUS\G
```
y veras que el estado de la replica es *Waiting for master to send event*. Esto significa que la replica esta esperando a que el master le envie un evento para poder replicarlo.

10. Si hacemos algun cambio en el master por ejemplo anadirun nuevo usuario, podemos ver que en el slave se replica el cambio

11. y para apagar todo solo debes ejecutar el comando:
```
docker compose down
```