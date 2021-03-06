USE [master]
GO
/****** Object:  Database [CadPes]    Script Date: 09/22/2016 19:01:49 ******/
CREATE DATABASE [CadPes] ON  PRIMARY 
( NAME = N'CadPes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\CadPes.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CadPes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\CadPes_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CadPes] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CadPes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CadPes] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CadPes] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CadPes] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CadPes] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CadPes] SET ARITHABORT OFF
GO
ALTER DATABASE [CadPes] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CadPes] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CadPes] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CadPes] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CadPes] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CadPes] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CadPes] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CadPes] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CadPes] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CadPes] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CadPes] SET  DISABLE_BROKER
GO
ALTER DATABASE [CadPes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CadPes] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CadPes] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CadPes] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CadPes] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CadPes] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CadPes] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CadPes] SET  READ_WRITE
GO
ALTER DATABASE [CadPes] SET RECOVERY FULL
GO
ALTER DATABASE [CadPes] SET  MULTI_USER
GO
ALTER DATABASE [CadPes] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CadPes] SET DB_CHAINING OFF
GO
USE [CadPes]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 09/22/2016 19:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[IdEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[nomeEmpresa] [varchar](50) NULL,
	[codigoEmpresa] [varchar](10) NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 09/22/2016 19:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[idTipoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[descricaoTipoDocumento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[idTipoDocumento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pessoa]    Script Date: 09/22/2016 19:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pessoa](
	[idPessoa] [int] IDENTITY(1,1) NOT NULL,
	[nomePessoa] [varchar](100) NOT NULL,
	[dataNascimento] [datetime] NOT NULL,
 CONSTRAINT [PK_Pessoa] PRIMARY KEY CLUSTERED 
(
	[idPessoa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PerfilAcesso]    Script Date: 09/22/2016 19:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PerfilAcesso](
	[idPerfilAcesso] [int] IDENTITY(1,1) NOT NULL,
	[descricaoPerfilAcesso] [varchar](20) NOT NULL,
 CONSTRAINT [PK_PerfilAcesso] PRIMARY KEY CLUSTERED 
(
	[idPerfilAcesso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 09/22/2016 19:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perfil](
	[idPerfil] [int] IDENTITY(1,1) NOT NULL,
	[descricaoPerfil] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[idPerfil] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 09/22/2016 19:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcionario](
	[idFuncionario] [int] IDENTITY(1,1) NOT NULL,
	[idPessoa] [int] NOT NULL,
	[codigoFuncionario] [varchar](30) NOT NULL,
	[dataAssuncaoCargo] [datetime] NOT NULL,
	[dataAdmissao] [datetime] NOT NULL,
	[dataDemissao] [datetime] NULL,
	[Perfil] [varchar](30) NULL,
	[Cargo] [varchar](30) NULL,
	[idEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_Funcionario] PRIMARY KEY CLUSTERED 
(
	[idFuncionario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Documento]    Script Date: 09/22/2016 19:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Documento](
	[idDocumento] [int] IDENTITY(1,1) NOT NULL,
	[idTipoDocumento] [int] NOT NULL,
	[idPessoa] [int] NOT NULL,
	[numeroDocumento] [varchar](50) NULL,
	[descricaoOutros] [varchar](50) NULL,
 CONSTRAINT [PK_Documento] PRIMARY KEY CLUSTERED 
(
	[idDocumento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 09/22/2016 19:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[idPessoa] [int] NULL,
	[login] [varchar](20) NOT NULL,
	[senha] [varchar](20) NOT NULL,
	[idPerfilAcesso] [int] NOT NULL,
	[idEmpresa] [int] NOT NULL,
	[email] [varchar](30) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[USU_BuscarUsuarioPeloLogin]    Script Date: 09/22/2016 19:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		/Dickson
-- Create date: 18/09/2016
-- Description:	Procedure que verifica se
--				login e senha são válidos
-- =============================================
CREATE PROCEDURE [dbo].[USU_BuscarUsuarioPeloLogin] 	
	@login VARCHAR(50)
AS
BEGIN
	 SELECT TOP 1 usu.login, usu.idPerfilAcesso, usu.email, usu.senha,
				  emp.idEmpresa, emp.nomeEmpresa, emp.codigoEmpresa
	 FROM Usuario usu
	 INNER JOIN Empresa emp
		ON usu.idEmpresa = emp.idEmpresa
	 WHERE usu.login = @login	
END
GO
/****** Object:  StoredProcedure [dbo].[USU_AutorizaLogin]    Script Date: 09/22/2016 19:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		/Dickson
-- Create date: 18/09/2016
-- Description:	Procedure que verifica se
--				login e senha são válidos
-- =============================================
CREATE PROCEDURE [dbo].[USU_AutorizaLogin] 	
	@login VARCHAR(50),
	@senha VARCHAR(50)
AS
BEGIN
	IF EXISTS(	
				 SELECT * FROM Usuario usu
				 WHERE HASHBYTES('SHA1',usu.login) = HASHBYTES('SHA1',@login)
				 AND HASHBYTES('SHA1',usu.senha) = HASHBYTES('SHA1',@senha)
			 )
	BEGIN
		SELECT 1 autoriza
	END
	ELSE
	BEGIN
		SELECT 0 autoriza
	END	
END
GO
/****** Object:  StoredProcedure [dbo].[FNR_RelatorioFuncionarios]    Script Date: 09/22/2016 19:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		/Dickson
-- Create date: 18/09/2016
-- Description:	Procedure para o relatório de
--				Funcionários
-- =============================================
CREATE PROCEDURE [dbo].[FNR_RelatorioFuncionarios] 
@idEmpresa INT,
@dataInicio DATETIME,
@dataFinal DATETIME
AS
BEGIN
	
	
	select pes.nomePessoa nome, fun.Cargo cargo, emp.idEmpresa, fun.dataAssuncaoCargo, fun.dataDemissao
	from Funcionario fun
	inner join Pessoa pes
		on fun.idPessoa = pes.idPessoa
	inner join Empresa emp
		on fun.idEmpresa = emp.idEmpresa		 
	where
		(emp.idEmpresa = @idEmpresa and fun.dataAssuncaoCargo <= @dataInicio and fun.dataDemissao is null)
		OR
		(emp.idEmpresa = @idEmpresa and fun.dataAssuncaoCargo between @dataInicio and @dataFinal)

END
GO
/****** Object:  StoredProcedure [dbo].[FNR_CadastraFuncionario]    Script Date: 09/22/2016 19:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		/Dickson
-- Create date: 18/09/2016
-- Description:	Procedure que cadastreas
--				informações recebidas via webservice
-- =============================================
CREATE PROCEDURE [dbo].[FNR_CadastraFuncionario] 	
	@nomePessoa Varchar(100),
	@dataNascimento DateTime,
	@cargo VARCHAR(30),
	@perfil VARCHAR(30),
	@codigoFuncionario VARCHAR(30),
	@dataAssuncaoCargo DATETIME,
	@dataAdmissao DATETIME,
	@dataDemissao DATETIME = NULL,
	@cpf VARCHAR(50),
	@identidade VARCHAR(50),
	@passaporte VARCHAR(50),
	@descricaoOutroDocumento VARCHAR(50),
	@numeroOutroDocumento VARCHAR(50),
	@codigoEmpresa VARCHAR(10)
AS
BEGIN

DECLARE @idPessoaCriada int
DECLARE @idFuncionarioCriado int
DECLARE @idEmpresa int

SET @idEmpresa = (SELECT TOP 1 IdEmpresa from Empresa WHERE @CodigoEmpresa = codigoEmpresa)

BEGIN TRY
	BEGIN TRANSACTION
		INSERT INTO Pessoa
				   (nomePessoa
				   ,dataNascimento)
			 VALUES
				   (@nomePessoa
				   ,@dataNascimento)


		SET @idPessoaCriada = (SELECT @@IDENTITY)

		-------------------------------------------------------

		INSERT INTO Funcionario
				   (idPessoa
				    ,Cargo
				    ,Perfil
				    ,codigoFuncionario
				    ,dataAssuncaoCargo
				    ,dataAdmissao
				    ,dataDemissao
				    ,idEmpresa)
			 VALUES
				   (@idPessoaCriada
				    ,@cargo
				    ,@perfil
				    ,@codigoFuncionario
				    ,@dataAssuncaoCargo
				    ,@dataAdmissao
				    ,@dataDemissao
				    ,@idEmpresa)

		-------------------------------------------------------
		--CPF
		IF @cpf IS NOT NULL
		BEGIN
		INSERT INTO Documento
				   (idTipoDocumento
				   ,idPessoa
				   ,numeroDocumento
				   ,descricaoOutros)
		         
				 VALUES
				   (1
				   ,@idPessoaCriada
				   ,@cpf
				   ,NULL)
		END

		-------------------------------------------------------
		--IDENTIDADE
		IF @identidade IS NOT NULL
		BEGIN
		INSERT INTO Documento
				   (idTipoDocumento
				   ,idPessoa
				   ,numeroDocumento
				   ,descricaoOutros)
		         
				 VALUES
				   (2
				   ,@idPessoaCriada
				   ,@identidade
				   ,NULL)
		END
		           
		-------------------------------------------------------
		--PASSAPORTE
		IF @passaporte IS NOT NULL
		BEGIN
		INSERT INTO Documento
				   (idTipoDocumento
				   ,idPessoa
				   ,numeroDocumento
				   ,descricaoOutros)
		         
				 VALUES
				   (3
				   ,@idPessoaCriada
				   ,@passaporte
				   ,NULL)
		END
		           
		-------------------------------------------------------
		--OUTRO DOCUMENTO
		IF @descricaoOutroDocumento IS NOT NULL
		BEGIN
			INSERT INTO Documento
					   (idTipoDocumento
					   ,idPessoa
					   ,numeroDocumento
					   ,descricaoOutros)
			         
					 VALUES
					   (2
					   ,@idPessoaCriada
					   ,@numeroOutroDocumento
					   ,@descricaoOutroDocumento)
		END       
		-------------------------------------------------------
		SELECT 1 resultado
	COMMIT
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0
        ROLLBACK
        
    SELECT 0 resultado
END CATCH


END
GO
/****** Object:  ForeignKey [FK_Funcionario_Empresa]    Script Date: 09/22/2016 19:01:50 ******/
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Funcionario_Empresa] FOREIGN KEY([idEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[Funcionario] CHECK CONSTRAINT [FK_Funcionario_Empresa]
GO
/****** Object:  ForeignKey [FK_Funcionario_Pessoa]    Script Date: 09/22/2016 19:01:50 ******/
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Funcionario_Pessoa] FOREIGN KEY([idPessoa])
REFERENCES [dbo].[Pessoa] ([idPessoa])
GO
ALTER TABLE [dbo].[Funcionario] CHECK CONSTRAINT [FK_Funcionario_Pessoa]
GO
/****** Object:  ForeignKey [FK_Documento_Pessoa]    Script Date: 09/22/2016 19:01:50 ******/
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_Documento_Pessoa] FOREIGN KEY([idPessoa])
REFERENCES [dbo].[Pessoa] ([idPessoa])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_Documento_Pessoa]
GO
/****** Object:  ForeignKey [FK_Documento_TipoDocumento]    Script Date: 09/22/2016 19:01:50 ******/
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_Documento_TipoDocumento] FOREIGN KEY([idTipoDocumento])
REFERENCES [dbo].[TipoDocumento] ([idTipoDocumento])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_Documento_TipoDocumento]
GO
/****** Object:  ForeignKey [FK_Usuario_Empresa]    Script Date: 09/22/2016 19:01:50 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Empresa] FOREIGN KEY([idEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Empresa]
GO
/****** Object:  ForeignKey [FK_Usuario_PerfilAcesso]    Script Date: 09/22/2016 19:01:50 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_PerfilAcesso] FOREIGN KEY([idPerfilAcesso])
REFERENCES [dbo].[PerfilAcesso] ([idPerfilAcesso])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_PerfilAcesso]
GO
/****** Object:  ForeignKey [FK_Usuario_Pessoa1]    Script Date: 09/22/2016 19:01:50 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Pessoa1] FOREIGN KEY([idPessoa])
REFERENCES [dbo].[Pessoa] ([idPessoa])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Pessoa1]
GO
