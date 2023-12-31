/* Yulianny Osoria Matricula: 22-EIIT-1-043 Seccion: 0541*/

USE [master]
GO
/****** Object:  Database [MEDISOF Innovatiors]    Script Date: 24/8/2023 4:06:58 p. m. ******/
CREATE DATABASE [MEDISOF Innovatiors]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MEDISOF Innovatiors', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\MEDISOF Innovatiors.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MEDISOF Innovatiors_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\MEDISOF Innovatiors_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MEDISOF Innovatiors] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MEDISOF Innovatiors].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MEDISOF Innovatiors] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET ARITHABORT OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET  MULTI_USER 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MEDISOF Innovatiors] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MEDISOF Innovatiors] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MEDISOF Innovatiors] SET QUERY_STORE = ON
GO
ALTER DATABASE [MEDISOF Innovatiors] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MEDISOF Innovatiors]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 24/8/2023 4:06:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteId] [int] NULL,
	[NombreEmpresa] [varchar](100) NULL,
	[ContactoNombre] [varchar](50) NULL,
	[ContactoApellido] [varchar](50) NULL,
	[CorreoElectonico] [varchar](100) NULL,
	[Telefono] [varchar](20) NULL,
	[Direccion] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallesOrdenes]    Script Date: 24/8/2023 4:06:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesOrdenes](
	[DetalleId] [int] NULL,
	[OrdenId] [int] NULL,
	[ProductoId] [int] NULL,
	[Cantidad] [int] NULL,
	[Subtotal] [decimal](10, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 24/8/2023 4:06:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadoId] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Cargo] [varchar](50) NULL,
	[FechaContratacion] [date] NULL,
	[Salario] [decimal](10, 1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ordenes]    Script Date: 24/8/2023 4:06:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ordenes](
	[OrdenId] [int] NULL,
	[ClienteId] [int] NULL,
	[FechaOrden] [date] NULL,
	[Total] [decimal](10, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 24/8/2023 4:06:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[ProductoId] [int] NULL,
	[Nombre] [varchar](100) NULL,
	[Descripcion] [text] NULL,
	[Precio] [decimal](10, 2) NULL,
	[Stock] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyectos]    Script Date: 24/8/2023 4:06:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyectos](
	[ProyectosId] [int] NULL,
	[NombreProyecto] [varchar](100) NULL,
	[Descripcion] [text] NULL,
	[FechaInicio] [date] NULL,
	[FechaEntrega] [date] NULL,
	[ClienteId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tareas]    Script Date: 24/8/2023 4:06:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tareas](
	[TareaId] [int] NULL,
	[ProyectosId] [int] NULL,
	[Descripcion] [text] NULL,
	[FechaAsignacion] [date] NULL,
	[Estado] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VesionSofwere]    Script Date: 24/8/2023 4:06:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VesionSofwere](
	[VersionSofwereId] [int] NULL,
	[ProyectoId] [int] NULL,
	[NumeroVersion] [varchar](20) NULL,
	[FechaLanzamiento] [date] NULL,
	[Descripcion] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([ClienteId], [NombreEmpresa], [ContactoNombre], [ContactoApellido], [CorreoElectonico], [Telefono], [Direccion]) VALUES (1, N'HealthSys', N'Santos', N'Santo', N'Santo_@gmail', N'882233', N'SantoDomingo')
INSERT [dbo].[Clientes] ([ClienteId], [NombreEmpresa], [ContactoNombre], [ContactoApellido], [CorreoElectonico], [Telefono], [Direccion]) VALUES (2, N' TechMed', N'Gabi', N'Garabito', N'GBt-@hotmail', N'3334455', N'SantoDomingo')
INSERT [dbo].[Clientes] ([ClienteId], [NombreEmpresa], [ContactoNombre], [ContactoApellido], [CorreoElectonico], [Telefono], [Direccion]) VALUES (3, N'MediConnect Global', N'Elena', N'Estrada', N'Estra_@gmail', N'2348899', N'SantoDomingo')
INSERT [dbo].[Clientes] ([ClienteId], [NombreEmpresa], [ContactoNombre], [ContactoApellido], [CorreoElectonico], [Telefono], [Direccion]) VALUES (4, N'CureTech ', N'Isabella', N'Islas', N'Isas_@gmail', N'6785544', N'SantoDomingo')
INSERT [dbo].[Clientes] ([ClienteId], [NombreEmpresa], [ContactoNombre], [ContactoApellido], [CorreoElectonico], [Telefono], [Direccion]) VALUES (5, N'MedTech', N'Jose', N'Jimenez', N'JoseJim_@gmail', N'9992200', N'SantoDomingo')
INSERT [dbo].[Clientes] ([ClienteId], [NombreEmpresa], [ContactoNombre], [ContactoApellido], [CorreoElectonico], [Telefono], [Direccion]) VALUES (6, N'NexaCare', N'Gabriel', N'Garzia', N'GGBI_@hotmail', N'3581416', N'SantoDomingo')
INSERT [dbo].[Clientes] ([ClienteId], [NombreEmpresa], [ContactoNombre], [ContactoApellido], [CorreoElectonico], [Telefono], [Direccion]) VALUES (7, N'VitaTech', N'Eulises', N'Escobar', N'Eulises_@gmail', N'2550897', N'SantoDomingo')
INSERT [dbo].[Clientes] ([ClienteId], [NombreEmpresa], [ContactoNombre], [ContactoApellido], [CorreoElectonico], [Telefono], [Direccion]) VALUES (8, N'CureTech ', N'Luisa', N'Leon', N'Leonn_@gmail', N'9034651', N'SantoDomingo')
INSERT [dbo].[Clientes] ([ClienteId], [NombreEmpresa], [ContactoNombre], [ContactoApellido], [CorreoElectonico], [Telefono], [Direccion]) VALUES (9, N'BioSolutions', N'Margaret', N'Mendoza', N'MMEndoza_@gmail', N'1147809', N'SantoDomingo')
INSERT [dbo].[Clientes] ([ClienteId], [NombreEmpresa], [ContactoNombre], [ContactoApellido], [CorreoElectonico], [Telefono], [Direccion]) VALUES (10, N'CareFusion', N'Mateo', N'Matos', N'MatosMateo_@gmail', N'5508665', N'SantoDomingo')
GO
INSERT [dbo].[DetallesOrdenes] ([DetalleId], [OrdenId], [ProductoId], [Cantidad], [Subtotal]) VALUES (1, 1, 1, 4, CAST(60000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetallesOrdenes] ([DetalleId], [OrdenId], [ProductoId], [Cantidad], [Subtotal]) VALUES (2, 2, 2, 5, CAST(70000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetallesOrdenes] ([DetalleId], [OrdenId], [ProductoId], [Cantidad], [Subtotal]) VALUES (3, 3, 3, 2, CAST(300000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetallesOrdenes] ([DetalleId], [OrdenId], [ProductoId], [Cantidad], [Subtotal]) VALUES (4, 4, 4, 7, CAST(400000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetallesOrdenes] ([DetalleId], [OrdenId], [ProductoId], [Cantidad], [Subtotal]) VALUES (5, 5, 5, 3, CAST(30000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetallesOrdenes] ([DetalleId], [OrdenId], [ProductoId], [Cantidad], [Subtotal]) VALUES (6, 6, 6, 8, CAST(70000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetallesOrdenes] ([DetalleId], [OrdenId], [ProductoId], [Cantidad], [Subtotal]) VALUES (7, 7, 7, 1, CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetallesOrdenes] ([DetalleId], [OrdenId], [ProductoId], [Cantidad], [Subtotal]) VALUES (8, 8, 8, 4, CAST(60000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetallesOrdenes] ([DetalleId], [OrdenId], [ProductoId], [Cantidad], [Subtotal]) VALUES (9, 9, 9, 3, CAST(30000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetallesOrdenes] ([DetalleId], [OrdenId], [ProductoId], [Cantidad], [Subtotal]) VALUES (10, 10, 10, 2, NULL)
GO
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [Cargo], [FechaContratacion], [Salario]) VALUES (1, N'Samuel', N'Matos', N'Gerente de Proyectos de Software', CAST(N'2023-02-01' AS Date), CAST(60000.0 AS Decimal(10, 1)))
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [Cargo], [FechaContratacion], [Salario]) VALUES (2, N'Maria', N'Santos', N'Ingeniero de Software', CAST(N'2023-02-01' AS Date), CAST(50000.0 AS Decimal(10, 1)))
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [Cargo], [FechaContratacion], [Salario]) VALUES (3, N'Felix', N'Hernandez', N'Desarrollador Frontend', CAST(N'2023-02-01' AS Date), CAST(50000.0 AS Decimal(10, 1)))
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [Cargo], [FechaContratacion], [Salario]) VALUES (4, N'Alex', N'Salas', N'Desarrollador Backend', CAST(N'2023-02-01' AS Date), CAST(50000.0 AS Decimal(10, 1)))
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [Cargo], [FechaContratacion], [Salario]) VALUES (5, N'Karla', N'Peña', N'Arquitecto de Software', CAST(N'2023-01-02' AS Date), CAST(60000.0 AS Decimal(10, 1)))
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [Cargo], [FechaContratacion], [Salario]) VALUES (6, N'Alfredo', N'Adame', N'Analista de Datos', CAST(N'2023-01-03' AS Date), CAST(7000.0 AS Decimal(10, 1)))
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [Cargo], [FechaContratacion], [Salario]) VALUES (7, N'Lana', N'Del Rey', N'Diseñador de Experiencia de Usuario ', CAST(N'2023-04-02' AS Date), CAST(5000.0 AS Decimal(10, 1)))
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [Cargo], [FechaContratacion], [Salario]) VALUES (8, N'Freddy', N'Mercury', N'Ingeniero de Calidad de Software', CAST(N'2023-02-01' AS Date), CAST(5000.0 AS Decimal(10, 1)))
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [Cargo], [FechaContratacion], [Salario]) VALUES (9, N'Sam', N'Claffin', N'Especialista en Seguridad Informática', CAST(N'2023-01-02' AS Date), CAST(6000.0 AS Decimal(10, 1)))
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [Cargo], [FechaContratacion], [Salario]) VALUES (10, N'Abba', N'Pichardo', N'Ingeniero DevOps', CAST(N'2023-01-02' AS Date), CAST(6000.0 AS Decimal(10, 1)))
GO
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [FechaOrden], [Total]) VALUES (1, 1, CAST(N'2023-05-04' AS Date), CAST(70000.00 AS Decimal(10, 2)))
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [FechaOrden], [Total]) VALUES (2, 2, CAST(N'2023-05-06' AS Date), CAST(70000.00 AS Decimal(10, 2)))
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [FechaOrden], [Total]) VALUES (3, 3, CAST(N'2023-07-07' AS Date), CAST(70000.00 AS Decimal(10, 2)))
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [FechaOrden], [Total]) VALUES (4, 4, CAST(N'2023-02-06' AS Date), CAST(70000.00 AS Decimal(10, 2)))
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [FechaOrden], [Total]) VALUES (5, 5, CAST(N'2023-09-08' AS Date), CAST(70000.00 AS Decimal(10, 2)))
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [FechaOrden], [Total]) VALUES (6, 6, CAST(N'2023-03-02' AS Date), CAST(70000.00 AS Decimal(10, 2)))
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [FechaOrden], [Total]) VALUES (7, 7, CAST(N'2023-03-04' AS Date), CAST(70000.00 AS Decimal(10, 2)))
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [FechaOrden], [Total]) VALUES (8, 8, CAST(N'2023-03-05' AS Date), CAST(70000.00 AS Decimal(10, 2)))
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [FechaOrden], [Total]) VALUES (9, 9, CAST(N'2023-05-04' AS Date), CAST(70000.00 AS Decimal(10, 2)))
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [FechaOrden], [Total]) VALUES (10, 10, CAST(N'2023-04-18' AS Date), NULL)
GO
INSERT [dbo].[Producto] ([ProductoId], [Nombre], [Descripcion], [Precio], [Stock]) VALUES (1, N'MEDISOF INNOVATIORS', N'El Mejor Sofwere', CAST(70000.00 AS Decimal(10, 2)), 100)
INSERT [dbo].[Producto] ([ProductoId], [Nombre], [Descripcion], [Precio], [Stock]) VALUES (2, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Proyectos] ([ProyectosId], [NombreProyecto], [Descripcion], [FechaInicio], [FechaEntrega], [ClienteId]) VALUES (1, N'Medisof', N'Transformando la salud', CAST(N'2023-06-03' AS Date), CAST(N'2023-06-25' AS Date), 1)
INSERT [dbo].[Proyectos] ([ProyectosId], [NombreProyecto], [Descripcion], [FechaInicio], [FechaEntrega], [ClienteId]) VALUES (1, N'Medisof', N'Transformando la salud', CAST(N'2023-08-06' AS Date), CAST(N'2023-09-08' AS Date), 2)
INSERT [dbo].[Proyectos] ([ProyectosId], [NombreProyecto], [Descripcion], [FechaInicio], [FechaEntrega], [ClienteId]) VALUES (1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Tareas] ([TareaId], [ProyectosId], [Descripcion], [FechaAsignacion], [Estado]) VALUES (1, 1, N'Crear Sofwere', CAST(N'2022-02-08' AS Date), N'nulo')
INSERT [dbo].[Tareas] ([TareaId], [ProyectosId], [Descripcion], [FechaAsignacion], [Estado]) VALUES (2, 2, N'Programar', CAST(N'2022-08-02' AS Date), N'nulo')
INSERT [dbo].[Tareas] ([TareaId], [ProyectosId], [Descripcion], [FechaAsignacion], [Estado]) VALUES (3, 3, N'Compilar', CAST(N'2022-08-02' AS Date), N'nulo')
INSERT [dbo].[Tareas] ([TareaId], [ProyectosId], [Descripcion], [FechaAsignacion], [Estado]) VALUES (4, 4, N'Diseñar', CAST(N'2022-02-08' AS Date), N'nulo')
INSERT [dbo].[Tareas] ([TareaId], [ProyectosId], [Descripcion], [FechaAsignacion], [Estado]) VALUES (5, 5, N'Monitoriar', CAST(N'2022-08-02' AS Date), N'medio')
INSERT [dbo].[Tareas] ([TareaId], [ProyectosId], [Descripcion], [FechaAsignacion], [Estado]) VALUES (6, 6, N'Desarrollar', CAST(N'2022-08-02' AS Date), N'nulo')
INSERT [dbo].[Tareas] ([TareaId], [ProyectosId], [Descripcion], [FechaAsignacion], [Estado]) VALUES (7, 7, N'Analisar', CAST(N'2022-08-02' AS Date), N'medio')
INSERT [dbo].[Tareas] ([TareaId], [ProyectosId], [Descripcion], [FechaAsignacion], [Estado]) VALUES (8, 8, N'Crear Datos', CAST(N'2022-08-02' AS Date), N'medio')
INSERT [dbo].[Tareas] ([TareaId], [ProyectosId], [Descripcion], [FechaAsignacion], [Estado]) VALUES (9, 9, N'Especializar', CAST(N'2022-08-02' AS Date), N'nulo')
INSERT [dbo].[Tareas] ([TareaId], [ProyectosId], [Descripcion], [FechaAsignacion], [Estado]) VALUES (10, 10, N'Generar', CAST(N'2022-08-02' AS Date), NULL)
GO
INSERT [dbo].[VesionSofwere] ([VersionSofwereId], [ProyectoId], [NumeroVersion], [FechaLanzamiento], [Descripcion]) VALUES (1, 1, N'3', CAST(N'2023-01-17' AS Date), N'Sofwere Revolucionario')
INSERT [dbo].[VesionSofwere] ([VersionSofwereId], [ProyectoId], [NumeroVersion], [FechaLanzamiento], [Descripcion]) VALUES (1, NULL, NULL, NULL, NULL)
GO
USE [master]
GO
ALTER DATABASE [MEDISOF Innovatiors] SET  READ_WRITE 
GO
