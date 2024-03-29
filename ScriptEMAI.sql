USE [master]
GO
/****** Object:  Database [EMAIYAMAPRUEBA]    Script Date: 23/02/2024 02:46:52 p. m. ******/
CREATE DATABASE [EMAIYAMAPRUEBA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EMAIYAMAPRUEBA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EMAIYAMAPRUEBA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EMAIYAMAPRUEBA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EMAIYAMAPRUEBA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EMAIYAMAPRUEBA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET ARITHABORT OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET RECOVERY FULL 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET  MULTI_USER 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'EMAIYAMAPRUEBA', N'ON'
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET QUERY_STORE = OFF
GO
USE [EMAIYAMAPRUEBA]
GO
/****** Object:  Table [dbo].[Adicionales]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adicionales](
	[IdAdicional] [int] IDENTITY(1,1) NOT NULL,
	[IdAlumno] [int] NULL,
	[IdClase] [int] NULL,
	[IdHorario] [int] NULL,
	[Fecha] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[IdAlumno] [int] IDENTITY(1,1) NOT NULL,
	[IdClase] [int] NULL,
	[FechaInscripcion] [datetime] NULL,
	[Tag] [nvarchar](250) NULL,
	[NoDiaClases] [int] NULL,
	[FechaInicioClaseGratis] [datetime] NULL,
	[FechaFinClaseGratis] [datetime] NULL,
	[Nombre] [nvarchar](150) NULL,
	[ApellidoP] [nvarchar](150) NULL,
	[ApellidoM] [nvarchar](150) NULL,
	[Edad] [int] NULL,
	[FechaNacimiento] [datetime] NULL,
	[TelCasa] [nvarchar](250) NULL,
	[Celular] [nvarchar](250) NULL,
	[Facebook] [nvarchar](250) NULL,
	[E-mail] [nvarchar](250) NULL,
	[Enfermedades] [nvarchar](250) NULL,
	[Discapacidad] [bit] NULL,
	[InstrumentoBase] [nvarchar](150) NULL,
	[Dia] [nvarchar](150) NULL,
	[Hora] [nvarchar](150) NULL,
	[InstrumentoOpcio] [nvarchar](150) NULL,
	[DiaOpcio] [nvarchar](150) NULL,
	[HoraOpcio] [nvarchar](150) NULL,
	[Imagen] [varbinary](max) NULL,
 CONSTRAINT [PK_Alumnos] PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AsignacionClase]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsignacionClase](
	[AsgnId] [int] IDENTITY(1,1) NOT NULL,
	[IdMaestro] [int] NOT NULL,
	[IdClase] [int] NOT NULL,
	[FechaAsignacion] [datetime] NOT NULL,
	[IdClaseOpc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AsgnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asistencias]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asistencias](
	[IdAsistencia] [int] IDENTITY(1,1) NOT NULL,
	[IdAlumno] [int] NULL,
	[IdClase] [int] NULL,
	[Fecha] [datetime] NULL,
	[Asistencia] [bit] NULL,
 CONSTRAINT [PK_Asistencias] PRIMARY KEY CLUSTERED 
(
	[IdAsistencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clases]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clases](
	[IdClase] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](150) NULL,
	[CNormal] [nvarchar](150) NULL,
	[CVerano] [nvarchar](150) NULL,
	[Dia] [nvarchar](150) NULL,
	[Horario] [nvarchar](150) NULL,
	[Dia2] [nvarchar](150) NULL,
	[Horario2] [nvarchar](150) NULL,
	[Dia3] [nvarchar](150) NULL,
	[Horario3] [nvarchar](150) NULL,
	[Costo] [decimal](18, 0) NULL,
	[ClaseOpc] [nvarchar](150) NULL,
	[HorarioOpc] [nvarchar](150) NULL,
	[DiaOpc] [nvarchar](150) NULL,
 CONSTRAINT [PK_Clases] PRIMARY KEY CLUSTERED 
(
	[IdClase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colegiatura]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colegiatura](
	[IdColegiiatura] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[NoPedido] [nvarchar](150) NULL,
	[Descripcion] [nvarchar](250) NULL,
	[Cantidad] [decimal](18, 0) NULL,
	[Subtotal] [decimal](18, 0) NULL,
	[Total] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Colegiatura] PRIMARY KEY CLUSTERED 
(
	[IdColegiiatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConocimientosMus]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConocimientosMus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdClase] [int] NULL,
	[IdAlumno] [int] NULL,
	[ConActual] [nvarchar](150) NULL,
	[Instrumento] [nvarchar](150) NULL,
	[InstrumentoCasa] [bit] NULL,
	[NoInstrumento] [nvarchar](150) NULL,
	[EnterasteEsc] [nvarchar](250) NULL,
	[InteresGnroMusical] [bit] NULL,
	[Cuales] [nvarchar](250) NULL,
 CONSTRAINT [PK_ConocimientosMus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cooperaciones]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cooperaciones](
	[IdCooperacion] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[NoPedido] [nvarchar](150) NULL,
	[Proveedor] [nvarchar](150) NULL,
	[Descripcion] [nvarchar](250) NULL,
	[Cantidad] [decimal](18, 0) NULL,
	[Subtotal] [decimal](18, 0) NULL,
	[Total] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Cooperaciones] PRIMARY KEY CLUSTERED 
(
	[IdCooperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DotacionDia]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DotacionDia](
	[IdDotacion] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[NoPedido] [nvarchar](150) NULL,
	[Descripcion] [nvarchar](250) NULL,
	[Cantidad] [decimal](18, 0) NULL,
	[Subtotal] [decimal](18, 0) NULL,
	[Total] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DotacionDia] PRIMARY KEY CLUSTERED 
(
	[IdDotacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudios]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudios](
	[IdEstudio] [int] IDENTITY(1,1) NOT NULL,
	[IDClase] [int] NULL,
	[IdAlumno] [int] NULL,
	[Estudios] [bit] NULL,
	[GradoEstudios] [nvarchar](150) NULL,
	[EscuelaActual] [nvarchar](150) NULL,
	[Trabajas] [bit] NULL,
	[LugarTrabajo] [nvarchar](250) NULL,
 CONSTRAINT [PK_Estudios] PRIMARY KEY CLUSTERED 
(
	[IdEstudio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gastos]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gastos](
	[IdGasto] [int] IDENTITY(1,1) NOT NULL,
	[IdColegiatura] [int] NULL,
	[IdCooperaciones] [int] NULL,
	[IdDotacion] [int] NULL,
	[IdGastosDia] [int] NULL,
	[IdNomina] [int] NULL,
	[Fecha] [datetime] NULL,
	[NoPedidoE_S] [nvarchar](250) NULL,
	[Proveedor] [nvarchar](250) NULL,
	[Descripcion] [nvarchar](250) NULL,
	[Cantidad] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Gastos] PRIMARY KEY CLUSTERED 
(
	[IdGasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GastosDia]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GastosDia](
	[IdGastoDia] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[NoPedido] [nvarchar](150) NULL,
	[Proveedor] [nvarchar](150) NULL,
	[Descripcion] [nvarchar](250) NULL,
	[Cantidad] [decimal](18, 0) NULL,
	[Subtotal] [decimal](18, 0) NULL,
	[Total] [decimal](18, 0) NULL,
 CONSTRAINT [PK_GastosDia] PRIMARY KEY CLUSTERED 
(
	[IdGastoDia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horarios]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horarios](
	[IdHorario] [int] IDENTITY(1,1) NOT NULL,
	[IdAlumno] [int] NULL,
	[IdMaestro] [int] NULL,
	[IdClase] [int] NULL,
	[Dia] [nvarchar](150) NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Horarios] PRIMARY KEY CLUSTERED 
(
	[IdHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorariosVerano]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorariosVerano](
	[IdHorarioVerano] [int] IDENTITY(1,1) NOT NULL,
	[IdMaestro] [int] NOT NULL,
	[IdClase] [int] NOT NULL,
	[Dia] [nvarchar](150) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[HoraInicio] [datetime] NULL,
	[HoraFin] [datetime] NULL,
	[Hora] [nvarchar](250) NULL,
 CONSTRAINT [PK__Horarios__15DFB17FEA91776F] PRIMARY KEY CLUSTERED 
(
	[IdHorarioVerano] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InteresInstrumento]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InteresInstrumento](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDClase] [int] NULL,
	[IdAlumno] [int] NULL,
	[Hobby] [nvarchar](150) NULL,
	[FoGrupoMusical] [nvarchar](150) NULL,
	[Profesional] [nvarchar](150) NULL,
	[Inquietud] [nvarchar](150) NULL,
	[Tecnica] [nvarchar](150) NULL,
	[PasarRato] [nvarchar](150) NULL,
	[Otro] [nvarchar](250) NULL,
 CONSTRAINT [PK_InteresInstrumento] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maestros]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestros](
	[IdMaestro] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](150) NOT NULL,
	[ApellidoP] [nvarchar](150) NULL,
	[ApellidoM] [nvarchar](150) NULL,
	[Direccion] [nvarchar](250) NULL,
	[Telefono] [varchar](150) NULL,
	[FechaNacimiento] [datetime] NULL,
	[IdClase] [int] NULL,
	[IdHorario] [int] NULL,
	[IdAlumno] [int] NULL,
	[Status] [bit] NULL,
	[Base] [bit] NULL,
	[Suplente] [nvarchar](150) NULL,
	[Pago] [decimal](18, 0) NULL,
	[Estatus] [nvarchar](250) NULL,
	[PagoSemanal] [decimal](18, 0) NULL,
	[PagoHora] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Maestros] PRIMARY KEY CLUSTERED 
(
	[IdMaestro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nomina]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nomina](
	[IdNomina] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[NoPedido] [nvarchar](150) NULL,
	[Proveedor] [nvarchar](150) NULL,
	[Descripcion] [nvarchar](250) NULL,
	[Cantidad] [decimal](18, 0) NULL,
	[Subtotal] [decimal](18, 0) NULL,
	[Total] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Nomina] PRIMARY KEY CLUSTERED 
(
	[IdNomina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[IdPago] [int] IDENTITY(1,1) NOT NULL,
	[IdPromosiones] [int] NULL,
	[IdAdicionales] [int] NULL,
	[Fecha] [datetime] NULL,
	[Folio] [nvarchar](250) NULL,
	[FechaPago] [datetime] NULL,
	[SaldoPendiente] [decimal](18, 0) NULL,
	[Mes] [nvarchar](150) NULL,
	[IdHorario] [int] NULL,
	[Dia] [nvarchar](150) NULL,
	[IdClase] [int] NULL,
	[IdRecepcionista] [int] NULL,
	[Costo] [decimal](18, 0) NULL,
	[Autorizacion] [nvarchar](250) NULL,
	[Subtotal] [decimal](18, 0) NULL,
	[IVA] [decimal](18, 0) NULL,
	[Total] [decimal](18, 0) NULL,
	[Instrumento] [nvarchar](250) NULL,
	[NombreLibro] [nvarchar](250) NULL,
	[CostoLibro] [decimal](18, 0) NULL,
	[IdAlumno] [int] NULL,
	[Inscripcion] [decimal](18, 0) NULL,
	[Mensualidad] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[IdPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[papas]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[papas](
	[IdPapas] [int] IDENTITY(1,1) NOT NULL,
	[IDClase] [int] NULL,
	[IdAlumno] [int] NULL,
	[NombrePapas] [nvarchar](150) NULL,
	[CelularPapas] [nvarchar](250) NULL,
	[FacebookPapas] [nvarchar](250) NULL,
	[E-mail] [nvarchar](250) NULL,
	[TutorRecoger] [nvarchar](150) NULL,
	[CelularTR] [nvarchar](250) NULL,
	[NumEmergencia] [nvarchar](150) NULL,
 CONSTRAINT [PK_papas] PRIMARY KEY CLUSTERED 
(
	[IdPapas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonalInf]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalInf](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdAlumno] [int] NULL,
	[ClasOpcional] [bit] NULL,
	[DescuentoP] [bit] NULL,
	[Amable] [bit] NULL,
	[IdRecepcionista] [int] NULL,
	[IdClase] [int] NULL,
 CONSTRAINT [PK_PersonalInf] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promosiones]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promosiones](
	[IdPromosion] [int] IDENTITY(1,1) NOT NULL,
	[IdAlumno] [int] NULL,
	[Porcentaje] [int] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Promosiones] PRIMARY KEY CLUSTERED 
(
	[IdPromosion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recepcionista]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recepcionista](
	[IdRecepcionista] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](150) NULL,
	[IdAlumno] [int] NULL,
	[IdClase] [int] NULL,
 CONSTRAINT [PK_Recepcionista] PRIMARY KEY CLUSTERED 
(
	[IdRecepcionista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepClase]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepClase](
	[IdRepClase] [int] IDENTITY(1,1) NOT NULL,
	[IdAlumno] [int] NULL,
	[IdClase] [int] NULL,
	[IdMaestro] [int] NULL,
	[DiaRep] [varchar](150) NOT NULL,
 CONSTRAINT [PK_RepClase] PRIMARY KEY CLUSTERED 
(
	[IdRepClase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](150) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolUsuario]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolUsuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdRol] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](150) NULL,
	[Contraseña] [nvarchar](150) NULL,
	[E-mail] [nvarchar](150) NULL,
	[Direccion] [nvarchar](150) NULL,
	[Telefono] [nvarchar](150) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RolUsuario]  WITH CHECK ADD  CONSTRAINT [FK_RolUsuario_Rol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Rol] ([ID])
GO
ALTER TABLE [dbo].[RolUsuario] CHECK CONSTRAINT [FK_RolUsuario_Rol]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarClase]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarClase]
    @IdClase INT,
    @Nombre nvarchar(150),
    @CNormal nvarchar(150),
	@Cverano nvarchar(150),
	@Dia nvarchar(150),
	@Horario nvarchar(150),
	@Horario2 nvarchar(150),
	@Dia3 nvarchar(150),
	@Costo decimal(18,0)

	
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE Clases
    SET
	   Nombre = @Nombre, 
	   CNormal = @CNormal,
	   CVerano = @Cverano,
	   Dia = @Dia,
	   Dia2 = @Horario2,
	   Dia3 = @Dia3,
	   Costo = @Costo
    WHERE IdClase = @IdClase;
END;


GO
/****** Object:  StoredProcedure [dbo].[ActualizarColegiatura]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[ActualizarColegiatura]
    @IdColegiatura INT,
	@Fecha DateTime,
	@NoPedido nvarchar(150),
	@Descripcion nvarchar(250),
	@Cantidad decimal(18,0),
	@Subtotal decimal(18,0),
	@Total decimal(18,0)
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE	Colegiatura
    SET
		Fecha = @Fecha,
		NoPedido = @NoPedido,
		Descripcion = @Descripcion,
		Cantidad = @Cantidad,
		Subtotal = @Subtotal,
		Total = @Total
		
    WHERE IdColegiiatura = @IdColegiatura;
END;
GO
/****** Object:  StoredProcedure [dbo].[ActualizarGastos]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ActualizarGastos]
    @IdGasto int,
    @IdColegiatura INT,
    @IdCooperaciones int,
    @IdDotacion int,
	@IdGastosDia int,
	@IdNomina int,
	@Fecha nvarchar(150),
	@NoPedidoE_S nvarchar(250),
	@Proveedor nvarchar (250),
	@Descripcion nvarchar(250),
	@Cantidad decimal(18,0)
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE	Gastos
    SET
	    IdColegiatura = @IdColegiatura,
        IdCooperaciones = @IdCooperaciones,
        IdDotacion = @IdDotacion,
		IdGastosDia = @IdGastosDia,
		IdNomina = @IdNomina,
		Fecha = @Fecha,
		NoPedidoE_S = @NoPedidoE_S,
		Proveedor = @Proveedor,
		Descripcion = @Descripcion,
		Cantidad = @Cantidad


    WHERE IdGasto = @IdGasto;
END;
GO
/****** Object:  StoredProcedure [dbo].[ActualizarGastosDia]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ActualizarGastosDia]
    @IdGastoDia int,
    @Fecha datetime,
    @NoPedido nvarchar(150),
    @Proveedor nvarchar(150),
	@Descripcion nvarchar(250),
	@Cantidad decimal(18,0),
	@Subtotal decimal(18,0),
	@Total decimal(18,0)
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE	GastosDia
    SET
        Fecha = @Fecha,
        NoPedido = @NoPedido,
		Proveedor = @Proveedor,
		Descripcion = @Descripcion,
		Cantidad = @Cantidad,
		Subtotal = @Subtotal,
		Total = @Total

    WHERE IdGastoDia = @IdGastoDia;
END;
GO
/****** Object:  StoredProcedure [dbo].[ActualizarHorarios]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ActualizarHorarios]
    @IdHorario INT,
   
	@Dia nvarchar(150)

AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE	Horarios
    SET

       
		Dia = @Dia
	

    WHERE IdHorario = @IdHorario;
END;
GO
/****** Object:  StoredProcedure [dbo].[ActualizarMaestros]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarMaestros]
    @IdMaestro INT,
    @Nombre nvarchar(150),
    @ApellidoP nvarchar(150),
	@ApellidoM nvarchar(150),
	@Direccion nvarchar(250),
	@Telefono varchar(150),
	@FechaNacimiento DateTime,
	@Status nvarchar(250),
	@Pago decimal(18,0),
	@PagoSemanal decimal(18,0),
	@PagoHora decimal(18,0)
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE	Maestros
    SET
	    Nombre = @Nombre,
        ApellidoP = @ApellidoP,
        ApellidoM = @ApellidoM,
		Direccion = @Direccion,
		Telefono = @Telefono,
		FechaNacimiento = @FechaNacimiento,
		Estatus = @Status,
		Pago = @Pago,
		PagoSemanal = @PagoSemanal,
		PagoHora = @PagoHora

    WHERE IdMaestro = @IdMaestro;
END;
GO
/****** Object:  StoredProcedure [dbo].[ActualizarPagos]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ActualizarPagos]
    @IdPago int,
    @IdPromosiones int,
    @IdAdicionales int,
	@Fecha datetime,
	@Folio nvarchar(250),
	@FechaPago datetime,
	@SaldoPendiente decimal,
	@Mes nvarchar(150),
	@IdHorario int,
	@Dia nvarchar(150),
	@IdClase int,
	@IdRecepcionista int,
	@Costo decimal(18,0),
	@Autorizacion nvarchar(250),
	@Subtotal decimal(18,0),
	@Iva decimal(18,0),
	@Total decimal(18,0)
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE	Pagos
    SET
	    IdPromosiones = @IdPromosiones,
        IdAdicionales = @IdAdicionales,
        Fecha = @Fecha,
		Folio = @Folio,
		FechaPago = @FechaPago,
		SaldoPendiente = @SaldoPendiente,
		Mes = @Mes,
		IdHorario = @IdHorario,
		Dia = @Dia,
		IdClase = @IdClase,
		IdRecepcionista = @IdRecepcionista,
        Costo = @Costo,
        Autorizacion = @Autorizacion,
		Subtotal = @Subtotal,
		IVA = @Iva,
		Total = @Total

    WHERE IdPago = @IdPago;
END;
GO
/****** Object:  StoredProcedure [dbo].[ActualizarPromosiones]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[ActualizarPromosiones]
    @IdPromosion INT,
	@IdAlumno int,
	@Porcentaje int,
	@Fecha datetime

AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE	Promosiones
    SET
		IdAlumno = @IdAlumno,
		Porcentaje = @Porcentaje,
		Fecha = @Fecha
		
    WHERE IdPromosion = @IdPromosion;
END;
GO
/****** Object:  StoredProcedure [dbo].[ActualizarRepClase]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarRepClase]
    @IdRepClase INT,
    @IdAlumno int,
    @IdClase int,
	@IdMaestro int,
	@DiaRep nvarchar(150)
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE RepClase
    SET
        IdAlumno = @IdAlumno,
        IdClase = @IdClase,
		IdMaestro = @IdMaestro,
		DiaRep = @DiaRep

    WHERE IdRepClase = @IdRepClase;
END;
GO
/****** Object:  StoredProcedure [dbo].[ActualizarUsuarios]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarUsuarios]
    @IdUsuario INT,
    @Usuario nvarchar(150),
    @Contraseña nvarchar(150),
	@Email nvarchar(150),
	@Direccion nvarchar(250),
	@Telefono varchar(150)
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE	Usuarios
    SET
	    Usuario = @Usuario,
        Contraseña = @Contraseña,
        [E-mail] = @Email,
		Direccion = @Direccion,
		Telefono = @Telefono

    WHERE IdUsuario = @IdUsuario;
END;
GO
/****** Object:  StoredProcedure [dbo].[AsignarClaseAMaestro]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AsignarClaseAMaestro]
    @MaestroId INT,
    @ClaseId INT,
	@FechaAsignacion DATE,
	@ClaseIdOpc INT
AS
BEGIN
    -- Verificar si la asignación ya existe para evitar duplicados
    IF NOT EXISTS (SELECT 1 FROM AsignacionClase WHERE IdMaestro = @MaestroId AND IdClase = @ClaseId)
    BEGIN
        -- Insertar la asignación en la tabla "AsignacionMateria"
        INSERT INTO AsignacionClase (IdMaestro, IdClase, FechaAsignacion,IdClaseOpc)
        VALUES (@MaestroId, @ClaseId, @FechaAsignacion,@ClaseIdOpc)
    END
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarPorID]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarPorID]
    @IdClase INT
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT  [IdClase]
      ,[Nombre]
      ,[CNormal]
      ,[CVerano]
      ,[Dia]
      
      ,[Dia2]
      
      ,[Dia3]
      
      ,[Costo]
     
    FROM Clases
    WHERE IdClase = @IdClase;
END;
GO
/****** Object:  StoredProcedure [dbo].[BuscarPorIDAdicionales]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscarPorIDAdicionales]
    @IdAdicional INT
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT *
    FROM Adicionales
    WHERE IdAdicional = @IdAdicional;
END;
GO
/****** Object:  StoredProcedure [dbo].[BuscarPorIDAsigClase]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarPorIDAsigClase]
    @AsgnId INT
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT  [AsgnId]
      ,[IdMaestro]
      ,[IdClase],
	   IdClaseOpc
	  ,[FechaAsignacion]
    FROM AsignacionClase
    WHERE AsgnId = @AsgnId;
END;
GO
/****** Object:  StoredProcedure [dbo].[BuscarPorIDColegiatura]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscarPorIDColegiatura]
    @IdColegiatura INT
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT *
    FROM Colegiatura
    WHERE IdColegiiatura = @IdColegiatura;
END;
GO
/****** Object:  StoredProcedure [dbo].[BuscarPorIDGastos]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[BuscarPorIDGastos]
    @IdGasto INT
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT *
    FROM Gastos
    WHERE IdGasto = @IdGasto;
END;
GO
/****** Object:  StoredProcedure [dbo].[BuscarPorIDGastosDia]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscarPorIDGastosDia]
    @IdGastoDia INT
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT *
    FROM GastosDia
    WHERE IdGastoDia = @IdGastoDia;
END;
GO
/****** Object:  StoredProcedure [dbo].[BuscarPorIDHorario]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscarPorIDHorario]
    @IdHorario INT
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT Dia,IdHorario
    FROM Horarios
    WHERE IdHorario = @IdHorario;
END;
GO
/****** Object:  StoredProcedure [dbo].[BuscarPorIDMaestro]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarPorIDMaestro]
    @IdMaestro INT
AS
BEGIN
    SET NOCOUNT ON;
    
      SELECT 
	   [IdMaestro]
      ,[Nombre]
      ,[ApellidoP]
      ,[ApellidoM]
      ,[Direccion]
      ,[Telefono]
      ,[FechaNacimiento]
      ,[Estatus]
      
      ,[Pago]
	  ,[PagoSemanal]
	  ,PagoHora
    FROM Maestros
    WHERE IdMaestro = @IdMaestro;
END;
GO
/****** Object:  StoredProcedure [dbo].[BuscarPorIDPagos]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[BuscarPorIDPagos]
    @IdPagos INT
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT IdPago,
	  Folio,
	  IdPromosiones,
	  Mes,
	  IdClase,
	  IdHorario,
	  Dia,
	  Instrumento,
	  CostoLibro,
	  NombreLibro,
	  Costo,
	  Subtotal,
	  IVA,
	  Total,
	  IdAlumno
    FROM Pagos
    WHERE IdPago = @IdPagos;
END;
GO
/****** Object:  StoredProcedure [dbo].[BuscarPorIDPromosiones]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscarPorIDPromosiones]
    @IdPromosiones INT
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT *
    FROM Promosiones
    WHERE IdPromosion = @IdPromosiones;
END;
GO
/****** Object:  StoredProcedure [dbo].[BuscarPorIDUsuario]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuscarPorIDUsuario]
    @IdUsuario INT
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT *
    FROM Usuarios
    WHERE IdUsuario = @IdUsuario;
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarAdicional]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EliminarAdicional]
    @IdAdicional INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Adicionales
    WHERE IdAdicional = @IdAdicional;
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarAsigClase]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarAsigClase]
    @AsgClase INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM AsignacionClase
    WHERE AsgnId = @AsgClase;
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarClase]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[EliminarClase]
    @IdClase INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Clases
    WHERE IdClase = @IdClase;
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarColegiatura]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EliminarColegiatura]
    @IdColegiatura INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Colegiatura
    WHERE IdColegiiatura = @IdColegiatura;
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarGastoDia]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EliminarGastoDia]
    @IdGastoDia INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM GastosDia
    WHERE IdGastoDia = @IdGastoDia;
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarGastos]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarGastos]
    @IdGasto INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Gastos
    WHERE IdGasto = @IdGasto;
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarHorario]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EliminarHorario]
    @IdHorario INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Horarios
    WHERE IdHorario = @IdHorario;
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarMaestro]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EliminarMaestro]
    @IdMaestro INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Maestros
    WHERE IdMaestro = @IdMaestro;
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarPagos]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EliminarPagos]
    @IdPago INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Pagos
    WHERE IdPago = @IdPago;
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarPromosiones]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EliminarPromosiones]
    @IdPromosion INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Promosiones
    WHERE IdPromosion = @IdPromosion;
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarRepClase]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarRepClase]
    @IdRepClase INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM RepClase
    WHERE IdRepClase = @IdRepClase;
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarUsuario]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[EliminarUsuario]
    @IdUsuario INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Usuarios
    WHERE IdUsuario = @IdUsuario;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarAdicional]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertarAdicional]
	@IdAlumno int,
	@IdClase int,
	@IdHorario int,
	@Fecha DateTime
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO Adicionales(IdAlumno, IdClase, IdHorario, Fecha)
    VALUES (@IdAlumno, @IdClase, @IdHorario, @Fecha);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarClase]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarClase]
    @Nombre nvarchar(150),
    @CNormal nvarchar(150),
	@Cverano nvarchar(150),
	@Dia nvarchar(150),
	@Dia2 nvarchar(150),
	@Dia3 nvarchar(150),
	@Costo decimal(18,0)

	
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO Clases(Nombre, CNormal, CVerano, Dia, Dia2, Dia3, Costo)
    VALUES (@Nombre, @CNormal, @Cverano, @Dia, @Dia2, @Dia3, @Costo);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarColegiatura]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertarColegiatura]
	@Fecha DateTime,
	@NoPedido nvarchar(150),
	@Descripcion nvarchar(250),
	@Cantidad decimal(18,0),
	@Subtotal decimal(18,0),
	@Total decimal(18,0)
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO Colegiatura(Fecha, NoPedido, Descripcion, Cantidad, Subtotal, Total)
    VALUES (@Fecha, @NoPedido, @Descripcion, @Cantidad, @Subtotal, @Total);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarGasto]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertarGasto]
    @IdColegiatura int,
    @IdCooperaciones int,
	@IdDotacion int,
	@IdGastosDia int,
	@IdNomina int,
	@Fecha datetime,
	@NoPedidoE_S nvarchar(250),
	@Proveedor nvarchar(250),
	@Descripcion nvarchar(250),
	@Cantidad decimal(18,0)

AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO Gastos(IdColegiatura, IdCooperaciones, IdDotacion, IdGastosDia, IdNomina, Fecha, NoPedidoE_S, Proveedor, Descripcion, Cantidad)
    VALUES (@IdColegiatura, @IdCooperaciones, @IdDotacion, @IdGastosDia, @IdNomina,@Fecha,@NoPedidoE_S,@Proveedor,@Descripcion,@Cantidad);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarGastoDia]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarGastoDia]
  @Fecha datetime,
  @NoPedido nvarchar(150),
  @Proveedor nvarchar(150),
  @Descripcion nvarchar(250),
  @Cantidad decimal(18,0),
  @Subtotal decimal(18,0),
  @Total decimal(18,0)
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO GastosDia(Fecha, NoPedido, Proveedor, Descripcion, Cantidad, Subtotal, Total)
    VALUES (@Fecha,@NoPedido,@Proveedor,@Descripcion,@Cantidad,@Subtotal,@Total);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarHorarios]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarHorarios]

	@Dia nvarchar(150)

AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO Horarios(Dia)
    VALUES (@Dia);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarMaestro]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertarMaestro]
    @Nombre nvarchar(150),
    @ApellidoP nvarchar(150),
	@ApellidoM nvarchar(150),
	@Direccion nvarchar(250),
	@Telefono varchar(150),
	@FechaNacimiento DateTime,

	@Status nvarchar(250),
	
	
	@Pago decimal(18,0),
	@PagoSemanal decimal(18,0),
	@PagoHora decimal(18,0)


AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO Maestros(Nombre, ApellidoP, ApellidoM, Direccion, Telefono, FechaNacimiento, Estatus,Pago,IdClase,IdAlumno,IdHorario,Status,Base,Suplente,PagoSemanal,PagoHora)
    VALUES (@Nombre, @ApellidoP, @ApellidoM, @Direccion, @Telefono, @FechaNacimiento, @Status, @Pago,0,0,0,1,0,'si',@PagoSemanal,@PagoHora);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarPago]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertarPago]
    @Folio nvarchar(250),
	@IdPromosionales int, 
	@Mes nvarchar(150),
	@IdClase int,
	@IdHorario int,
	@Dia nvarchar(150),
	@Instrumento nvarchar(250),
	@CostoLibro decimal(18,0),
	@NombreLibro nvarchar(250),
    @Costo decimal(18,0),
	@Subtotal decimal(18,0),
	@Iva decimal(18,0),
	@Total decimal(18,0),
	@IdAlumno int


AS
BEGIN
    SET NOCOUNT ON;
    
    insert into Pagos(Folio,IdPromosiones,Mes,IdClase,IdHorario,Dia,Instrumento,CostoLibro,NombreLibro,Costo,Subtotal,IVA,Total,IdAlumno)
	values(@Folio,@IdPromosionales,@Mes,@IdClase,@IdHorario,@Dia,@Instrumento,@CostoLibro,@NombreLibro,@Costo,@Subtotal,@Iva,@Total,@IdAlumno)



END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarPromosiones]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertarPromosiones]
	@IdAlumno int,
	@Porcentaje int,
	@Fecha DateTime

AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO Promosiones(IdAlumno, Porcentaje, Fecha)
    VALUES (@IdAlumno, @Porcentaje ,@Fecha);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarRepClase]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarRepClase]
    @IdAlumno int=0,
    @IdClase int=0,
	@IdMaestro int=0,
	@DiaRep nvarchar(150)
	
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO RepClase(IdAlumno, IdClase, IdMaestro, DiaRep)
    VALUES (@IdAlumno, @IdClase, @IdMaestro, @DiaRep);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarUsuario]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarUsuario]
    @Usuario nvarchar(150),
    @Contraseña nvarchar(150),
	@Email nvarchar(150),
	@Direccion nvarchar(150),
	@Telefono varchar(150)
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO Usuarios(Usuario, Contraseña, [E-mail], Direccion, Telefono)
    VALUES (@Usuario, @Contraseña, @Email, @Direccion, @Telefono);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_CatObtenerTodo]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sp_CatObtenerTodo]
	
AS
BEGIN
	SELECT [id]
      ,[descripcion]
      ,[status]
  FROM [dbo].[Cat_Productos] order by status desc, descripcion asc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CatSelectTodo]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sp_CatSelectTodo]
	
AS
BEGIN
	SELECT [id]
      ,[descripcion]
      ,[status]
  FROM [dbo].[Cat_Productos] where status= 1 order by  descripcion asc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ProductosObtenerTodo]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sp_ProductosObtenerTodo]
	
AS
BEGIN
	SELECT [id]
      ,[producto]
      ,[precio]
      ,[ref]
  FROM [dbo].[Tienda]
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AlumnoAsistenciaActualizar]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--****** Object:  StoredProcedure [dbo].[usp_AntenasActualizar]    Script Date:20/03/2023 2:00:59 ******/
    -- =============================================================================================
    -- AUTOR:		        
    -- ULTIMO CAMBIO POR: 
    -- FECHA ULTIMO CAMBIO:20/03/2023 2:00:59
    -- DESCRIPCIÓN: MODIFICAR POR ID DE DATOS EN LA TABLA dbo.Antenas(MODIFICAR POR ID, POR DEFAULT EL VALOR ACTIVO = 1.
    -- =============================================================================================
CREATE PROCEDURE [dbo].[usp_AlumnoAsistenciaActualizar]
@IDAsistencia          int = 0,
@IDAlumno              int = 0, 
@IDClase               int = 0,
@Fecha                 datetime = '',
@Asistencia            bit
output
AS
BEGIN
    UPDATE Asistencias SET 
	IdAlumno = @IDAlumno,
	IdClase = @IDClase ,
	Fecha = @Fecha,
	Asistencia = @Asistencia

	WHERE IdAsistencia = @IDAsistencia 
END

GO
/****** Object:  StoredProcedure [dbo].[usp_AlumnoAsistenciaEliminar]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--****** Object:  StoredProcedure [dbo].[usp_AntenasActualizar]    Script Date:20/03/2023 2:00:59 ******/
    -- =============================================================================================
    -- AUTOR:		        
    -- ULTIMO CAMBIO POR: 
    -- FECHA ULTIMO CAMBIO:20/03/2023 2:00:59
    -- DESCRIPCIÓN: MODIFICAR POR ID DE DATOS EN LA TABLA dbo.Antenas(MODIFICAR POR ID, POR DEFAULT EL VALOR ACTIVO = 1.
    -- =============================================================================================
CREATE PROCEDURE [dbo].[usp_AlumnoAsistenciaEliminar]
@IDAsistencia          int = 0
output
AS
BEGIN
    DELETE FROM Asistencias where IdAsistencia = @IDAsistencia 

END

GO
/****** Object:  StoredProcedure [dbo].[usp_AlumnosActualizar]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--****** Object:  StoredProcedure [dbo].[usp_AntenasActualizar]    Script Date:20/03/2023 2:00:59 ******/
    -- =============================================================================================
    -- AUTOR:		        
    -- ULTIMO CAMBIO POR: 
    -- FECHA ULTIMO CAMBIO:20/03/2023 2:00:59
    -- DESCRIPCIÓN: MODIFICAR POR ID DE DATOS EN LA TABLA dbo.Antenas(MODIFICAR POR ID, POR DEFAULT EL VALOR ACTIVO = 1.
    -- =============================================================================================
CREATE PROCEDURE [dbo].[usp_AlumnosActualizar]
	@IdAlumno                int=0,
	@IDClase                 int=0,
	@Tag                     nvarchar (250) = '',
	@NoDiaClases             int =0,
	@FechaInicioClaseGratis  datetime = '', 
	@FechaFinClaseGratis     datetime = '', 
	@Nombre                  nvarchar (250) = '', 
	@ApellidoP               nvarchar (250) = '', 
	@ApellidoM               nvarchar (250) =  '', 
	@Edad                    nvarchar (250) =  '', 
	@FechaNacimiento         datetime = '',
	@TelefonoCasa            nvarchar (250) = '', 
	@Celular                 nvarchar (250) = '',
    @Facebook                nvarchar (250) = '', 
	@Email                   nvarchar (250) = '', 
	@Enfermedades            nvarchar (250) = '', 
	@Discapacidad            bit, 
	@InstrumentoBase         nvarchar (250) = '', 
	@Dia                     nvarchar (250) = '', 
	@Hora                    nvarchar (250) = '', 
	@InstrumentoOpcional     nvarchar (250) = '', 
	@DiaOpcional             nvarchar (250) = '', 
	@HoraOpcional            nvarchar (250) = '', 

	---- tabla papas 
	@CelularPapas            nvarchar (250) = '', 
	@EmailPapas              nvarchar (250) = '', 
	@RecogerPapas            nvarchar (250) = '',
	@CelularTR               nvarchar (250) = '',
	@NumEmergencia           nvarchar (250) = ''
	
	output

AS
BEGIN
             UPDATE  [dbo].[Alumnos]
             SET
             IDClase = @IDClase
			,NoDiaClases = @IDClase
			,Tag = @Tag
			,FechaInicioClaseGratis = @FechaFinClaseGratis
			,FechaFinClaseGratis = @FechaFinClaseGratis
			,Nombre = @Nombre
			,ApellidoP = @ApellidoP
			,ApellidoM = @ApellidoM
			,Edad = @Edad
			,FechaNacimiento = @FechaNacimiento
			,TelCasa = @TelefonoCasa
			,Celular = @Celular
			,Facebook = @Facebook
			,[E-mail] = @Email
			,Enfermedades = @Enfermedades
			,Discapacidad = @Discapacidad
			,InstrumentoBase = @InstrumentoBase
			,Dia = @Dia
			,Hora = @Hora
			,InstrumentoOpcio = @InstrumentoOpcional
			,DiaOpcio = @DiaOpcional
			,HoraOpcio = @HoraOpcional
FROM    [dbo].[Alumnos]
WHERE IdAlumno = @IdAlumno

----------- ACTUALIZAR EN TABLA DE PAPAS 
 UPDATE  [dbo].[papas]
             SET
       CelularPapas = @CelularPapas
	  ,[E-mail] = @EmailPapas
	  ,TutorRecoger = @RecogerPapas
	  ,CelularTR = @CelularTR
	  ,NumEmergencia = @NumEmergencia



FROM    [dbo].[papas]
WHERE IdAlumno = @IdAlumno



END


select * 
from Alumnos
GO
/****** Object:  StoredProcedure [dbo].[usp_AlumnosEliminar]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AlumnosEliminar]
    @IdAlumnos           int=0  output
AS
BEGIN        
           ------ ELIMINAR EN TABLA DE ALUMNOS 
             DELETE FROM [dbo].[Alumnos]
             WHERE IdAlumno = @IdAlumnos

			------- ELIMINAR EN TABLA DE PAPAS 
			DELETE FROM [dbo].[papas]
			WHERE IdAlumno = @IdAlumnos

			----- ELIMINAR EN TABLA ESTUDIOS 
			DELETE FROM [dbo].[Estudios]
			WHERE IdAlumno = @IdAlumnos

			------- ELIMINAR EN LA TABLA CONOCIMIENTOS MUSICALES ----------- 
			DELETE FROM [dbo].[ConocimientosMus]
			WHERE IdAlumno = @IdAlumnos

			------- ELIMINAR EN LA TABLA INTERES MUSICAL 
			DELETE FROM [dbo].InteresInstrumento 
			WHERE IdAlumno = @IdAlumnos 

			------ ELIMINAR EN LA TABLA PERSONAL 
			DELETE FROM [dbo].PersonalInf 
			WHERE IdAlumno = @IdAlumnos

			-------- ELIMINAR EN LA TABLA RECEPCIONISTA 
			DELETE FROM [dbo].Recepcionista 
			WHERE IdAlumno = @IdAlumnos
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AsistenciaAlumnoInsertar]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--****** Object:  StoredProcedure [dbo].[usp_AntenasActualizar]    Script Date:20/03/2023 2:00:59 ******/
    -- =============================================================================================
    -- AUTOR:		        
    -- ULTIMO CAMBIO POR: 
    -- FECHA ULTIMO CAMBIO:20/03/2023 2:00:59
    -- DESCRIPCIÓN: MODIFICAR POR ID DE DATOS EN LA TABLA dbo.Antenas(MODIFICAR POR ID, POR DEFAULT EL VALOR ACTIVO = 1.
    -- =============================================================================================
CREATE PROCEDURE [dbo].[usp_AsistenciaAlumnoInsertar]
@IdAlumno          int = 0, 
@IdClase           int = 0, 
@FechaAsistencia   datetime = '', 
@Asistencia        bit
output
AS
BEGIN
    INSERT INTO Asistencias (IdAlumno,IdClase,Fecha,Asistencia) Values (@IdAlumno,@IdClase,@FechaAsistencia,@Asistencia)

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AsistenciaObtenerporID]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--****** Object:  StoredProcedure [dbo].[usp_AntenasActualizar]    Script Date:20/03/2023 2:00:59 ******/
    -- =============================================================================================
    -- AUTOR:		        
    -- ULTIMO CAMBIO POR: 
    -- FECHA ULTIMO CAMBIO:20/03/2023 2:00:59
    -- DESCRIPCIÓN: MODIFICAR POR ID DE DATOS EN LA TABLA dbo.Antenas(MODIFICAR POR ID, POR DEFAULT EL VALOR ACTIVO = 1.
    -- =============================================================================================
CREATE PROCEDURE [dbo].[usp_AsistenciaObtenerporID]
@IdAsistencia int = 0
output
AS
BEGIN
    SELECT IdAsistencia,IdAlumno,IdClase,Fecha,Asistencia
	from Asistencias
	WHERE IdAsistencia = @IdAsistencia

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AsistenciaObtenerTodo]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--****** Object:  StoredProcedure [dbo].[usp_AntenasActualizar]    Script Date:20/03/2023 2:00:59 ******/
    -- =============================================================================================
    -- AUTOR:		        
    -- ULTIMO CAMBIO POR: 
    -- FECHA ULTIMO CAMBIO:20/03/2023 2:00:59
    -- DESCRIPCIÓN: MODIFICAR POR ID DE DATOS EN LA TABLA dbo.Antenas(MODIFICAR POR ID, POR DEFAULT EL VALOR ACTIVO = 1.
    -- =============================================================================================
CREATE PROCEDURE [dbo].[usp_AsistenciaObtenerTodo]
AS
BEGIN
    SELECT IdAsistencia,IdAlumno,IdClase,Fecha,Asistencia
	from Asistencias


END
GO
/****** Object:  StoredProcedure [dbo].[usp_CooperacionesActualizarporId]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_CooperacionesActualizarporId]
@IdCooperacion  int = 0, 
@Fecha          datetime = '', 
@NoPedido       nvarchar(250) = '',
@Proveedor      nvarchar(250) = '',
@Descripcion    nvarchar (250) = '', 
@Cantidad       decimal (18,0) = 0, 
@Subtotal       decimal (18,0) = 0, 
@Total          decimal (18,0) = 0
output
AS
BEGIN
     UPDATE Cooperaciones set  Fecha = @Fecha, NoPedido = @NoPedido, Proveedor = @Proveedor, Descripcion = @Descripcion, Cantidad = @Cantidad, Subtotal = @Subtotal , Total = @Total
	 WHERE IdCooperacion = @IdCooperacion
END



GO
/****** Object:  StoredProcedure [dbo].[usp_CooperacionesEliminarporId]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_CooperacionesEliminarporId]
@IdCooperacion  int = 0
output
AS
BEGIN
     DELETE FROM Cooperaciones where IdCooperacion = @IdCooperacion
END



GO
/****** Object:  StoredProcedure [dbo].[usp_CooperacionesObtenerporId]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_CooperacionesObtenerporId]
@IdCooperacion  int = 0
output
AS
BEGIN
   
   SELECT 
          IdCooperacion
		 ,Fecha
		 ,NoPedido
		 ,Proveedor
		 ,Descripcion
		 ,Cantidad
		 ,Subtotal
		 ,Total
   FROM Cooperaciones
   WHERE IdCooperacion = @IdCooperacion

END



GO
/****** Object:  StoredProcedure [dbo].[usp_CooperacionesObtenerTodo]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_CooperacionesObtenerTodo]
AS
BEGIN
   
   SELECT 
          IdCooperacion
		 ,Fecha
		 ,NoPedido
		 ,Proveedor
		 ,Descripcion
		 ,Cantidad
		 ,Subtotal
		 ,Total

   FROM Cooperaciones
END



GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteNominas]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_DeleteNominas]
@IdNominas     int = 0
output
AS
BEGIN
   DELETE FROM Nomina where IdNomina =@IdNominas 
END


GO
/****** Object:  StoredProcedure [dbo].[usp_DotacionesDiaEliminar]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_DotacionesDiaEliminar]
        @IdDotacionDia int = 0
output
AS
BEGIN
    DELETE FROM DotacionDia where IdDotacion = @IdDotacionDia
END

GO
/****** Object:  StoredProcedure [dbo].[usp_DotacionesDiaInsertar]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_DotacionesDiaInsertar]
        @Fecha        datetime = ''
	   ,@NoPedido     nvarchar(250) = ''
	   ,@Descripcion  nvarchar(250) = ''
	   ,@Cantidad     decimal (18,0) = 0
	   ,@Subtotal     decimal (18,0) = 0
	   ,@Total        decimal (18,0) = 0


output 
AS
BEGIN
    insert into DotacionDia (Fecha,NoPedido,Descripcion,Cantidad ,Subtotal,Total) values (@Fecha,@NoPedido,@Descripcion,@Cantidad,@Subtotal,@Total)
END




GO
/****** Object:  StoredProcedure [dbo].[usp_DotacionesDiaUpdate]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_DotacionesDiaUpdate]
        @IdDotacionDia int = 0,
		@Fecha        datetime = ''
	   ,@NoPedido     nvarchar(250) = ''
	   ,@Descripcion  nvarchar(250) = ''
	   ,@Cantidad     decimal (18,0) = 0
	   ,@Subtotal     decimal (18,0) = 0
	   ,@Total        decimal (18,0) = 0
output
AS
BEGIN
     update DotacionDia set Fecha = @Fecha,  NoPedido = @NoPedido, Descripcion = @Descripcion, Cantidad = @Cantidad, Subtotal = @Subtotal, Total = @Total Where IdDotacion =  @IdDotacionDia
END



GO
/****** Object:  StoredProcedure [dbo].[usp_DotacionesObtenerporId]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_DotacionesObtenerporId]
@IdDotacionDia    int =0
output 
AS
BEGIN
    select 
	    IdDotacion
	   ,Fecha
	   ,NoPedido
	   ,Descripcion
	   ,Cantidad
	   ,Subtotal
	   ,Total
    from DotacionDia
	where IdDotacion = @IdDotacionDia 
	 
END



GO
/****** Object:  StoredProcedure [dbo].[usp_DotacionesObtenerTodo]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_DotacionesObtenerTodo]

AS
BEGIN
    select 
	    IdDotacion
	   ,Fecha
	   ,NoPedido
	   ,Descripcion
	   ,Cantidad
	   ,Subtotal
	   ,Total
    from DotacionDia
END



GO
/****** Object:  StoredProcedure [dbo].[usp_HorariosVeranoObtenerByID]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_HorariosVeranoObtenerByID]
@IdHorarioVerano int = 0
output
AS
BEGIN
	SELECT 
	  
       [Dia],
       Hora
  FROM [EMAI].[dbo].[HorariosVerano]
  WHERE IdHorarioVerano = @IdHorarioVerano

END
GO
/****** Object:  StoredProcedure [dbo].[usp_HorariosVeranoObtenerTodo]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_HorariosVeranoObtenerTodo]
	
AS
BEGIN
	SELECT 
	  [IdHorarioVerano] 
      ,[Dia]
      ,Hora
  FROM [EMAI].[dbo].[HorariosVerano]
END
GO
/****** Object:  StoredProcedure [dbo].[usp_HorarioVeranoActualizar]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_HorarioVeranoActualizar]
    @IdHorarioVerano INT,
	@Dia nvarchar(150),
	@Hora nvarchar(250)

    output
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE HorariosVerano
    SET
	   
		Dia = @Dia,
		
		Hora = @Hora

    WHERE IdHorarioVerano = @IdHorarioVerano ;
END;
GO
/****** Object:  StoredProcedure [dbo].[usp_HorarioVeranoEliminar]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_HorarioVeranoEliminar]
    @IdHorarioVerano int =0
    output
AS
BEGIN
 
 DELETE FROM HorariosVerano where IdHorarioVerano = @IdHorarioVerano

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_HorarioVeranoInsertar]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_HorarioVeranoInsertar]

@Dia             nvarchar(150) = '', 
@Hora            nvarchar(250) = ''
output
AS
BEGIN
    insert into HorariosVerano(Dia,Hora,IdMaestro,IdClase,Fecha)
	values (@Dia,@Hora,0,0,'')

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertarColegiatura]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_InsertarColegiatura]
	@Fecha DateTime,
	@Descripcion nvarchar(250),
	@Cantidad decimal(18,0),
	@Subtotal decimal(18,0),
	@Total decimal(18,0)
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO Colegiatura(Fecha,Descripcion,Cantidad, Subtotal, Total)
    VALUES (@Fecha,@Descripcion, @Cantidad, @Subtotal, @Total);
END;
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertarNominas]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_InsertarNominas]
@Fecha         datetime = '',
@NoPedido      nvarchar (250) = '',
@Proveedor     nvarchar (250) = '', 
@Descripcion   nvarchar (250) = '', 
@Cantidad      decimal (18,0) = 0, 
@Subtotal      decimal (18,0) = 0, 
@Total         decimal (18,0) = 0
output
AS
BEGIN
    INSERT INTO Nomina (Fecha,NoPedido,Proveedor,Descripcion,Cantidad,Subtotal,Total) VALUES (@Fecha,@NoPedido,@Proveedor,@Descripcion,@Cantidad,@Subtotal,@Total)
END


GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerAdicional]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[usp_ObtenerAdicional]
AS
BEGIN
    -- Aquí va la lógica de la consulta SELECT
    SELECT 
	   [IdAdicional]
      ,[IdAlumno]
      ,[IdClase]
      ,[IdHorario]
      ,[Fecha]
    FROM Adicionales
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerAlumnos]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ObtenerAlumnos]
AS
BEGIN
    -- Aquí va la lógica de la consulta SELECT
  select     
    
	   A.IdAlumno
      ,A.[FechaInscripcion]
      ,A.[Tag]
      ,A.[NoDiaClases]
      ,A.[FechaInicioClaseGratis]
      ,A.[FechaFinClaseGratis]
      ,A.[Nombre]
      ,A.[ApellidoP]
      ,A.[ApellidoM]
      ,A.[Edad]
      ,A.[FechaNacimiento]
      ,A.[TelCasa]
      ,A.[Celular]
      ,A.[Facebook]
      ,A.[E-mail]
      ,A.[Enfermedades]
      ,A.[Discapacidad]
      ,A.[InstrumentoBase]
      ,A.[Dia]
      ,A.[Hora]
      ,A.[InstrumentoOpcio]
      ,A.[DiaOpcio]
      ,A.[HoraOpcio]
	  ,OT1.NombrePapas
	  ,OT1.CelularPapas
	  ,OT1.FacebookPapas
	  ,OT1.[E-mail]
	  ,OT1.TutorRecoger
	  ,OT1.CelularTR
	  ,OT1.NumEmergencia
	  ,OT6.Estudios
	  ,OT6.GradoEstudios
	  ,OT6.EscuelaActual
	  ,OT6.Trabajas
	  ,OT6.LugarTrabajo
	  ,OT2.ConActual
	  ,OT2.Instrumento
	  ,OT2.InstrumentoCasa
	  ,OT2.NoInstrumento
	  ,OT2.EnterasteEsc
	  ,OT2.InteresGnroMusical
	  ,OT2.Cuales
	  ,OT3.Otro
	  ,OT4.ClasOpcional
	  ,OT4.DescuentoP
	  ,OT4.Amable
	  ,OT5.Nombre
    FROM Alumnos A
	LEFT JOIN papas OT1 ON A.IdAlumno = OT1.IdAlumno
	LEFT JOIN ConocimientosMus OT2 ON A.IdAlumno = OT2.IdAlumno
	LEFT JOIN InteresInstrumento OT3 ON A.IdAlumno = OT3.IdAlumno
	LEFT JOIN PersonalInf OT4 ON A.IdAlumno = OT4.IdAlumno
	LEFT JOIN Recepcionista OT5 ON A.IdAlumno = OT5.IDAlumno
	LEFT JOIN Estudios OT6 ON A.IdAlumno = OT6.IdAlumno
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerAsigClase]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_ObtenerAsigClase]
AS
BEGIN
    -- Aquí va la lógica de la consulta SELECT
    SELECT 
	   [AsgnId]
      ,[IdMaestro]
      ,[IdClase],
	   IdClaseOpc
	  ,[FechaAsignacion]

    FROM AsignacionClase
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerClases]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ObtenerClases]
AS
BEGIN
    -- Aquí va la lógica de la consulta SELECT
    SELECT 
	   [IdClase]
      ,[Nombre]
      ,[CNormal]
      ,[CVerano]
      ,[Dia]
      
      ,[Dia2]
      
      ,[Dia3]
      
      ,[Costo]
      
      
    FROM Clases
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerClasesNombre]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ObtenerClasesNombre]
AS
BEGIN
    -- Aquí va la lógica de la consulta SELECT
    SELECT 
	   Nombre
    FROM Clases
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerColegiatura]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_ObtenerColegiatura]
AS
BEGIN
    -- Aquí va la lógica de la consulta SELECT
    SELECT 
	   [IdColegiiatura]
      ,[Fecha]
      ,[NoPedido]
      ,[Descripcion]
      ,[Cantidad]
	  ,[Subtotal]
	  ,[Total]
    FROM Colegiatura
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerGastos]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_ObtenerGastos]
AS
BEGIN
    -- Aquí va la lógica de la consulta SELECT
    SELECT 
	   [IdGasto]
      ,[IdColegiatura]
      ,[IdCooperaciones]
      ,[IdDotacion]
      ,[IdGastosDia]
      ,[IdNomina]
      ,[Fecha]
      ,[NoPedidoE_S]
      ,[Proveedor]
      ,[Descripcion]
      ,[Cantidad]
    FROM Gastos
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerGastosDia]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_ObtenerGastosDia]
AS
BEGIN
    -- Aquí va la lógica de la consulta SELECT
    SELECT 
	   [IdGastoDia]
      ,[Fecha]
      ,[NoPedido]
      ,[Proveedor]
      ,[Descripcion]
      ,[Cantidad]
      ,[Subtotal]
      ,[Total]
    FROM GastosDia
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerHorarios]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_ObtenerHorarios]
AS
BEGIN
    -- Aquí va la lógica de la consulta SELECT
    SELECT 
	  [IdHorario]
      ,[Dia]

      
    FROM Horarios
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerMaestros]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ObtenerMaestros]
AS
BEGIN
    -- Aquí va la lógica de la consulta SELECT
    SELECT 
	   [IdMaestro]
      ,[Nombre]
      ,[ApellidoP]
      ,[ApellidoM]
      ,[Direccion]
      ,[Telefono]
      ,[FechaNacimiento]
      ,[Estatus]
      
      ,[Pago]
	  ,PagoSemanal
	  ,PagoHora
    FROM Maestros
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerNominas]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ObtenerNominas]
AS
BEGIN
    -- Aquí va la lógica de la consulta SELECT
    SELECT 
	    IdNomina
		,Fecha
	    ,NoPedido
		,Proveedor
		,Descripcion
		,Cantidad
		,Subtotal
		,Total
    FROM Nomina
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerNominasbyId]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ObtenerNominasbyId]
@IdNomina    int = 0
output
AS
BEGIN
    SELECT 
	    IdNomina
		,Fecha
	    ,NoPedido
		,Proveedor
		,Descripcion
		,Cantidad
		,Subtotal
		,Total
    FROM Nomina
	WHERE IdNomina = @IdNomina 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerPagos]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_ObtenerPagos]
AS
BEGIN
    -- Aquí va la lógica de la consulta SELECT
    SELECT
	  IdPago,
	  Folio,
	  IdPromosiones,
	  Mes,
	  IdClase,
	  IdHorario,
	  Dia,
	  Instrumento,
	  CostoLibro,
	  NombreLibro,
	  Costo,
	  Subtotal,
	  IVA,
	  Total,
	  IdAlumno
    FROM Pagos
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerPromosiones]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_ObtenerPromosiones]
AS
BEGIN
    -- Aquí va la lógica de la consulta SELECT
    SELECT 
	   [IdPromosion]
      ,[IdAlumno]
      ,[Porcentaje]
      ,[Fecha]
    FROM Promosiones
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerRepClase]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ObtenerRepClase]
AS
BEGIN
    -- Aquí va la lógica de la consulta SELECT
    SELECT 
	   [IdRepClase]
      ,[IdAlumno]
      ,[IdClase]
      ,[IdMaestro]
      ,[DiaRep]
      
    FROM RepClase
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerUsuarios]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ObtenerUsuarios]
AS
BEGIN
    -- Aquí va la lógica de la consulta SELECT
    SELECT 
	   [IdUsuario]
      ,[Usuario]
      ,[Contraseña]
      ,[E-mail]
      ,[Direccion]
      ,[Telefono]
    FROM Usuarios
END
GO
/****** Object:  StoredProcedure [dbo].[usp_RepClaseObtenerByID]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RepClaseObtenerByID]
@IdRepClase int = 0
output
AS
BEGIN
	SELECT 
	   [IdRepClase]
	   ,[IdAlumno]
      ,[IdMaestro]
      ,[IdClase]
      ,[DiaRep]
  FROM [EMAI].[dbo].[RepClase]
  WHERE IdRepClase = @IdRepClase

END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateNominas]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_UpdateNominas]
@IdNominas     int = 0, 
@Fecha         datetime = '',
@NoPedido      nvarchar (250) = '',
@Proveedor     nvarchar (250) = '', 
@Descripcion   nvarchar (250) = '', 
@Cantidad      decimal (18,0) = 0, 
@Subtotal      decimal (18,0) = 0, 
@Total         decimal (18,0) = 0
output
AS
BEGIN
    update Nomina set Fecha = @Fecha , NoPedido = @NoPedido, Proveedor = @Proveedor, Descripcion = @Descripcion, Cantidad = @Cantidad, Subtotal = @Subtotal, Total = @Total
	where IdNomina = @IdNominas
END




GO
/****** Object:  StoredProcedure [dbo].[usp_usp_AlumnoInsertar]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_usp_AlumnoInsertar]
    @IdAlumno int = 0,
	@IdClase int = 0,
    @FechaInscripcion          nvarchar(250)= '',
    @Tag                       nvarchar(250)= '',
    @NoDiaClases               int= 0,
    @FechaInicioClaseGratis    datetime= '',
    @FechaFinClaseGratis       datetime= '',
    @Nombre                    nvarchar(250) = '',
    @ApellidoP                 nvarchar(250) = '',
    @ApellidoM                 nvarchar(250) = '',
	@Edad                      int = 0,
    @FechaNacimiento           datetime = '', 
    @TelefonoCasa              nvarchar(250) = '', 
    @Celular                   nvarchar(250)= '',
    @Facebook                  nvarchar(250) = '', 
    @EmailAluno                nvarchar(250) = '', 
    @Enfermedades              nvarchar(250) = '',
    @Discapacidad              nvarchar(250) = '',
    @InstrumentoBase           nvarchar(250) = '', 
    @Dia                       nvarchar(250) = '',
    @Hora                      nvarchar(250) = '',
    @InstrumentoOpcional       nvarchar(250) = '', 
    @DiaOpcional               nvarchar(250) = '', 
    @HoraDiaOpcional           nvarchar(250) = '',

   ---- tabla de Papás ------
    @NombrePapas               nvarchar(250) = '',
    @CelularPapas              nvarchar(250) = '',
    @FacebookPapas             nvarchar(250) = '', 
    @EmailPapas                nvarchar(250) = '', 
    @TutorRecoger              nvarchar(250)= '',
    @CelularTR                 nvarchar(250)= '',
    @NumEmergencia             nvarchar(250) ='', 

   ----- tabla Estudios  ----------- 
    @Estudios                   bit, 
    @GradoEstudios              nvarchar(250)= '', 
    @EscuelaActuales            nvarchar(250)= '', 
    @Trabajas                   bit,
    @LugarTrabajo               nvarchar(250) = '', 

   --------  Tabla Conocimientos Actuales ------------- 
    @ConActual                 nvarchar(250)= '',
    @Instrumento               nvarchar(250)= '',
    @InstrumentoCasa           bit,
    @NoInstrumento             nvarchar(250) = '',
    @EnterasteEsc               nvarchar(250)= '',
    @InteresGnroMusical        bit,
    @Cuales                    nvarchar(250) = '',

   -------- Tabla interes  -----
    @Otro                      nvarchar(250) = '',

   --------- Tabla personal ----------- 

    @ClaseOpcional          bit,
    @DescuentoP             bit, 
    @Amables                bit ,
	@IdRecepcionista        int =0,
   
   -------- Tabla Recepcionista -------------
    @NombreRecepcionista     nvarchar(250) = '',

	--------- tabla pagos ----------------------

	@Folio                   nvarchar(250) = '',
	@Fecha                   datetime = '',
	@Mes                     nvarchar(250) = '',
	@IdPromosion             int = 0,
	@IdClasePago             int = 0,
	@IdHorario               int = 0,
	@DiaAlumnoPago           nvarchar(250) = '',
	@InstrumentoAlumnoPago   nvarchar(250) = '',
	@CostoLibro              decimal(18,0) = 0,
	@NombreLibro             nvarchar(250) = '',
	@Atendio                 nvarchar(250) = '',
	@Costo                   decimal(18,0) = 0,
	@Subtotal                decimal(18,0) = 0,
	@IVA                     decimal(18,0) = 0,
	@Total                   decimal(18,0) = 0


   output
AS
BEGIN
   
   INSERT INTO Alumnos (IdClase,FechaInscripcion,Tag,NoDiaClases,FechaInicioClaseGratis,Nombre,Edad,FechaNacimiento,TelCasa,Celular,Facebook,[E-mail],Enfermedades,InstrumentoBase,Dia,InstrumentoOpcio)
	 values (@IdClase,@FechaInscripcion,@Tag,@NoDiaClases,@FechaInicioClaseGratis,@Nombre,@Edad,@FechaNacimiento,@TelefonoCasa,@Celular,@Facebook,@EmailAluno,@Discapacidad,@InstrumentoBase,@Dia,@InstrumentoOpcional)
      
    set @IdAlumno = (select top 1 IdAlumno from Alumnos order by IdAlumno desc)

   ------ INSERTAR EN TABLA PAPÁS -----------------

	 INSERT INTO papas (IdClase,IdAlumno,NombrePapas,CelularPapas,[E-mail],FacebookPapas,TutorRecoger,CelularTR,NumEmergencia)
	 values (@IdClase,@IdAlumno,@NombrePapas,@CelularPapas,@FacebookPapas,@EmailPapas,@TutorRecoger,@CelularTR,@NumEmergencia)

    ---------- INSERTAR EN TABLA ESTUDIOS 

	    INSERT INTO Estudios (IdClase,IdAlumno,Estudios,GradoEstudios,EscuelaActual,Trabajas,LugarTrabajo)
		values (@IdClase,@IdAlumno,@Estudios,@GradoEstudios,@EscuelaActuales,@Trabajas, @LugarTrabajo)

	----------- INSERTAR EN TABLA CONOCIMIENTOS MUSICALES ------------------
	    INSERT INTO ConocimientosMus (IdClase,IdAlumno,ConActual, Instrumento,InstrumentoCasa,NoInstrumento,EnterasteEsc,InteresGnroMusical,Cuales)
        values (@IdClase,@IdAlumno,@ConActual,@Instrumento,@InstrumentoCasa,@NoInstrumento,@EnterasteEsc,@InteresGnroMusical,@Cuales) 
    
	-------------  INSERTAR EN TABLA INTERES 
	     INSERT INTO InteresInstrumento(IdAlumno,Otro) VALUES (@IdAlumno,@Otro)

		  ----------------- INSERTAR EN RECEPCIONISTA ---------------------- 
	      INSERT INTO Recepcionista (Nombre,IdAlumno) VALUES ( @NombreRecepcionista,@IdAlumno)

    --------------  INSERTAR EN TABLA PERSONAL -------------- 

	set @IdRecepcionista = (select top 1 IdRecepcionista from Recepcionista order by IdRecepcionista desc)
	      INSERT INTO PersonalInf(IdClase,IdAlumno,ClasOpcional,DescuentoP,Amable,IdRecepcionista)
		  VALUES(@IdClase,@IdAlumno,@ClaseOpcional, @DescuentoP,@Amables,@IdRecepcionista)
    
	---------------- INSERTAR EN TABLA PAGOS ------------------------------------------------ 
	INSERT INTO [dbo].[Pagos] ([IdPromosiones],[Fecha],[Folio],[Mes],[IdHorario],[Dia],[IdClase],[Costo],[Subtotal],[IVA],[Total],[Instrumento],[NombreLibro],[CostoLibro],[IdAlumno]) Values (@IdPromosion,@Fecha,@Folio,@Mes,@IdHorario,@DiaAlumnoPago,@IdClasePago,@Costo,@Subtotal,@IVA,@Total,@InstrumentoAlumnoPago,@NombreLibro,@CostoLibro,@IdAlumno)
      
END 


select *
from Alumnos 

select * 
from papas

select * 
from Estudios

Select * 
from ConocimientosMus

Select * 
from InteresInstrumento

select * 
from Recepcionista

select * 
from PersonalInf



GO
/****** Object:  StoredProcedure [dbo].[uspp_CooperacionesInsertar]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspp_CooperacionesInsertar]
@IdCooperacion  int = 0, 
@Fecha          datetime = '',
@NoPedido       nvarchar (250) = '', 
@Proveedor      nvarchar (250) = '', 
@Descripcion    nvarchar (250) = '', 
@Cantidad       decimal (18,0) = 0,
@Subtotal       decimal (18,0) = 0, 
@Total          decimal (18,0) = 0
output
AS
BEGIN
     INSERT INTO Cooperaciones (Fecha,NoPedido,Proveedor,Descripcion,Cantidad,Subtotal,Total) values (@Fecha,@NoPedido,@Proveedor,@Descripcion,@Cantidad,@Subtotal,@Total)
END



GO
/****** Object:  StoredProcedure [dbo].[uspp_CooperacionesObtenerporId]    Script Date: 23/02/2024 02:46:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspp_CooperacionesObtenerporId]
@IdCooperacion  int = 0
output
AS
BEGIN
   
   SELECT 
          IdCooperacion
		 ,Fecha
		 ,NoPedido
		 ,Proveedor
		 ,Descripcion
		 ,Cantidad
		 ,Subtotal
		 ,Total
   FROM Cooperaciones
   WHERE IdCooperacion = @IdCooperacion
END
GO
USE [master]
GO
ALTER DATABASE [EMAIYAMAPRUEBA] SET  READ_WRITE 
GO
