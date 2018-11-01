
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/01/2018 13:46:06
-- Generated from EDMX file: C:\Users\marce\source\repos\COGERTI\COGERTI\Models\RecursosDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [RecursosDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CentroDeCustoFuncionario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CentroDeCustoSet] DROP CONSTRAINT [FK_CentroDeCustoFuncionario];
GO
IF OBJECT_ID(N'[dbo].[FK_FuncionarioLocalSite]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FuncionarioSet] DROP CONSTRAINT [FK_FuncionarioLocalSite];
GO
IF OBJECT_ID(N'[dbo].[FK_LocalSiteRecurso]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecursoSet] DROP CONSTRAINT [FK_LocalSiteRecurso];
GO
IF OBJECT_ID(N'[dbo].[FK_StatusFuncionarioFuncionario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FuncionarioSet] DROP CONSTRAINT [FK_StatusFuncionarioFuncionario];
GO
IF OBJECT_ID(N'[dbo].[FK_FuncionarioAssociacaoRecurso]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AssociacaoRecursoSet] DROP CONSTRAINT [FK_FuncionarioAssociacaoRecurso];
GO
IF OBJECT_ID(N'[dbo].[FK_RecursoAssociacaoRecurso]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AssociacaoRecursoSet] DROP CONSTRAINT [FK_RecursoAssociacaoRecurso];
GO
IF OBJECT_ID(N'[dbo].[FK_StatusEquipamentoEquipamento]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecursoSet_Equipamento] DROP CONSTRAINT [FK_StatusEquipamentoEquipamento];
GO
IF OBJECT_ID(N'[dbo].[FK_ComputadorTipoComputador]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecursoSet_Computador] DROP CONSTRAINT [FK_ComputadorTipoComputador];
GO
IF OBJECT_ID(N'[dbo].[FK_EquipamentoPropriedade]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecursoSet_Equipamento] DROP CONSTRAINT [FK_EquipamentoPropriedade];
GO
IF OBJECT_ID(N'[dbo].[FK_AparelhoCelularTipoAparelhoCelular]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecursoSet_AparelhoCelular] DROP CONSTRAINT [FK_AparelhoCelularTipoAparelhoCelular];
GO
IF OBJECT_ID(N'[dbo].[FK_LinhaMovelCodigosDDD]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecursoSet_LinhaMovel] DROP CONSTRAINT [FK_LinhaMovelCodigosDDD];
GO
IF OBJECT_ID(N'[dbo].[FK_TipoLinhaLinhaMovel]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecursoSet_LinhaMovel] DROP CONSTRAINT [FK_TipoLinhaLinhaMovel];
GO
IF OBJECT_ID(N'[dbo].[FK_TipoPlanoMovelLinhaMovel]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecursoSet_LinhaMovel] DROP CONSTRAINT [FK_TipoPlanoMovelLinhaMovel];
GO
IF OBJECT_ID(N'[dbo].[FK_CentroDeCustoFuncionario1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CentroDeCustoSet] DROP CONSTRAINT [FK_CentroDeCustoFuncionario1];
GO
IF OBJECT_ID(N'[dbo].[FK_FuncionarioCentroDeCusto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FuncionarioSet] DROP CONSTRAINT [FK_FuncionarioCentroDeCusto];
GO
IF OBJECT_ID(N'[dbo].[FK_Equipamento_inherits_Recurso]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecursoSet_Equipamento] DROP CONSTRAINT [FK_Equipamento_inherits_Recurso];
GO
IF OBJECT_ID(N'[dbo].[FK_Computador_inherits_Equipamento]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecursoSet_Computador] DROP CONSTRAINT [FK_Computador_inherits_Equipamento];
GO
IF OBJECT_ID(N'[dbo].[FK_AparelhoCelular_inherits_Equipamento]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecursoSet_AparelhoCelular] DROP CONSTRAINT [FK_AparelhoCelular_inherits_Equipamento];
GO
IF OBJECT_ID(N'[dbo].[FK_LinhaMovel_inherits_Recurso]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecursoSet_LinhaMovel] DROP CONSTRAINT [FK_LinhaMovel_inherits_Recurso];
GO
IF OBJECT_ID(N'[dbo].[FK_UsuarioVpn_inherits_Recurso]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecursoSet_UsuarioVpn] DROP CONSTRAINT [FK_UsuarioVpn_inherits_Recurso];
GO
IF OBJECT_ID(N'[dbo].[FK_Compra_inherits_Propriedade]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PropriedadeSet_Compra] DROP CONSTRAINT [FK_Compra_inherits_Propriedade];
GO
IF OBJECT_ID(N'[dbo].[FK_Leasing_inherits_Propriedade]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PropriedadeSet_Leasing] DROP CONSTRAINT [FK_Leasing_inherits_Propriedade];
GO
IF OBJECT_ID(N'[dbo].[FK_Comodato_inherits_Propriedade]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PropriedadeSet_Comodato] DROP CONSTRAINT [FK_Comodato_inherits_Propriedade];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FuncionarioSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FuncionarioSet];
GO
IF OBJECT_ID(N'[dbo].[CentroDeCustoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CentroDeCustoSet];
GO
IF OBJECT_ID(N'[dbo].[RecursoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RecursoSet];
GO
IF OBJECT_ID(N'[dbo].[LocalSiteSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LocalSiteSet];
GO
IF OBJECT_ID(N'[dbo].[StatusFuncionarioSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[StatusFuncionarioSet];
GO
IF OBJECT_ID(N'[dbo].[AssociacaoRecursoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AssociacaoRecursoSet];
GO
IF OBJECT_ID(N'[dbo].[StatusEquipamentoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[StatusEquipamentoSet];
GO
IF OBJECT_ID(N'[dbo].[TipoComputadorSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoComputadorSet];
GO
IF OBJECT_ID(N'[dbo].[PropriedadeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PropriedadeSet];
GO
IF OBJECT_ID(N'[dbo].[TipoAparelhoCelularSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoAparelhoCelularSet];
GO
IF OBJECT_ID(N'[dbo].[CodigosDDDSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CodigosDDDSet];
GO
IF OBJECT_ID(N'[dbo].[TipoLinhaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoLinhaSet];
GO
IF OBJECT_ID(N'[dbo].[TipoPlanoMovelSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoPlanoMovelSet];
GO
IF OBJECT_ID(N'[dbo].[RecursoSet_Equipamento]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RecursoSet_Equipamento];
GO
IF OBJECT_ID(N'[dbo].[RecursoSet_Computador]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RecursoSet_Computador];
GO
IF OBJECT_ID(N'[dbo].[RecursoSet_AparelhoCelular]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RecursoSet_AparelhoCelular];
GO
IF OBJECT_ID(N'[dbo].[RecursoSet_LinhaMovel]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RecursoSet_LinhaMovel];
GO
IF OBJECT_ID(N'[dbo].[RecursoSet_UsuarioVpn]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RecursoSet_UsuarioVpn];
GO
IF OBJECT_ID(N'[dbo].[PropriedadeSet_Compra]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PropriedadeSet_Compra];
GO
IF OBJECT_ID(N'[dbo].[PropriedadeSet_Leasing]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PropriedadeSet_Leasing];
GO
IF OBJECT_ID(N'[dbo].[PropriedadeSet_Comodato]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PropriedadeSet_Comodato];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'FuncionarioSet'
CREATE TABLE [dbo].[FuncionarioSet] (
    [UPI] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Sobrenome] nvarchar(max)  NOT NULL,
    [UsuarioGad] nvarchar(max)  NULL,
    [LocalSite_Id] int  NOT NULL,
    [StatusFuncionario_Id] int  NOT NULL,
    [CentroDeCusto_Id] int  NOT NULL
);
GO

-- Creating table 'CentroDeCustoSet'
CREATE TABLE [dbo].[CentroDeCustoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [GestorUPI] int  NULL,
    [CoordenadorUPI] int  NULL
);
GO

-- Creating table 'RecursoSet'
CREATE TABLE [dbo].[RecursoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LocalSite_Id] int  NOT NULL
);
GO

-- Creating table 'LocalSiteSet'
CREATE TABLE [dbo].[LocalSiteSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Sigla] nvarchar(max)  NOT NULL,
    [UF] nchar(2)  NOT NULL
);
GO

-- Creating table 'StatusFuncionarioSet'
CREATE TABLE [dbo].[StatusFuncionarioSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AssociacaoRecursoSet'
CREATE TABLE [dbo].[AssociacaoRecursoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DataAssociacao] datetime  NOT NULL,
    [DataLiberacao] datetime  NULL,
    [MotivoLiberacao] nvarchar(max)  NULL,
    [TermoResponsabilidade] nvarchar(max)  NULL,
    [Funcionario_UPI] int  NOT NULL,
    [Recurso_Id] int  NOT NULL
);
GO

-- Creating table 'StatusEquipamentoSet'
CREATE TABLE [dbo].[StatusEquipamentoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TipoComputadorSet'
CREATE TABLE [dbo].[TipoComputadorSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PropriedadeSet'
CREATE TABLE [dbo].[PropriedadeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TipoAparelhoCelularSet'
CREATE TABLE [dbo].[TipoAparelhoCelularSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CodigosDDDSet'
CREATE TABLE [dbo].[CodigosDDDSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoDDD] nchar(2)  NOT NULL
);
GO

-- Creating table 'TipoLinhaSet'
CREATE TABLE [dbo].[TipoLinhaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TipoPlanoMovelSet'
CREATE TABLE [dbo].[TipoPlanoMovelSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RecursoSet_Equipamento'
CREATE TABLE [dbo].[RecursoSet_Equipamento] (
    [SerialNo] nvarchar(max)  NOT NULL,
    [Patrimonio] float  NULL,
    [NotaFiscalNo] float  NULL,
    [DataFabricacao] datetime  NULL,
    [StatusEquipamentoId] nvarchar(max)  NULL,
    [Marca] nvarchar(max)  NOT NULL,
    [Modelo] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL,
    [StatusEquipamento_Id] int  NOT NULL,
    [Propriedade_Id] int  NOT NULL
);
GO

-- Creating table 'RecursoSet_Computador'
CREATE TABLE [dbo].[RecursoSet_Computador] (
    [Id] int  NOT NULL,
    [TipoComputador_Id] int  NOT NULL
);
GO

-- Creating table 'RecursoSet_AparelhoCelular'
CREATE TABLE [dbo].[RecursoSet_AparelhoCelular] (
    [IMEI1] nvarchar(max)  NOT NULL,
    [IMEI2] nvarchar(max)  NULL,
    [Id] int  NOT NULL,
    [TipoAparelhoCelular_Id] int  NOT NULL
);
GO

-- Creating table 'RecursoSet_LinhaMovel'
CREATE TABLE [dbo].[RecursoSet_LinhaMovel] (
    [LinhaNo] nvarchar(9)  NOT NULL,
    [ChipId] nvarchar(max)  NULL,
    [Id] int  NOT NULL,
    [CodigosDDD_Id] int  NOT NULL,
    [TipoLinha_Id] int  NOT NULL,
    [TipoPlanoMovel_Id] int  NOT NULL
);
GO

-- Creating table 'RecursoSet_UsuarioVpn'
CREATE TABLE [dbo].[RecursoSet_UsuarioVpn] (
    [Usuario] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'PropriedadeSet_Compra'
CREATE TABLE [dbo].[PropriedadeSet_Compra] (
    [DataCompra] datetime  NULL,
    [PedidoSapNo] nvarchar(max)  NULL,
    [DataTerminoGarantia] datetime  NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'PropriedadeSet_Leasing'
CREATE TABLE [dbo].[PropriedadeSet_Leasing] (
    [DataRecebimento] datetime  NULL,
    [ContratoNo] nvarchar(max)  NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'PropriedadeSet_Comodato'
CREATE TABLE [dbo].[PropriedadeSet_Comodato] (
    [DataRecebimento] datetime  NULL,
    [ContratoNo] nvarchar(max)  NULL,
    [DataTerminoGarantia] datetime  NULL,
    [Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [UPI] in table 'FuncionarioSet'
ALTER TABLE [dbo].[FuncionarioSet]
ADD CONSTRAINT [PK_FuncionarioSet]
    PRIMARY KEY CLUSTERED ([UPI] ASC);
GO

-- Creating primary key on [Id] in table 'CentroDeCustoSet'
ALTER TABLE [dbo].[CentroDeCustoSet]
ADD CONSTRAINT [PK_CentroDeCustoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RecursoSet'
ALTER TABLE [dbo].[RecursoSet]
ADD CONSTRAINT [PK_RecursoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LocalSiteSet'
ALTER TABLE [dbo].[LocalSiteSet]
ADD CONSTRAINT [PK_LocalSiteSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'StatusFuncionarioSet'
ALTER TABLE [dbo].[StatusFuncionarioSet]
ADD CONSTRAINT [PK_StatusFuncionarioSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AssociacaoRecursoSet'
ALTER TABLE [dbo].[AssociacaoRecursoSet]
ADD CONSTRAINT [PK_AssociacaoRecursoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'StatusEquipamentoSet'
ALTER TABLE [dbo].[StatusEquipamentoSet]
ADD CONSTRAINT [PK_StatusEquipamentoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TipoComputadorSet'
ALTER TABLE [dbo].[TipoComputadorSet]
ADD CONSTRAINT [PK_TipoComputadorSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PropriedadeSet'
ALTER TABLE [dbo].[PropriedadeSet]
ADD CONSTRAINT [PK_PropriedadeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TipoAparelhoCelularSet'
ALTER TABLE [dbo].[TipoAparelhoCelularSet]
ADD CONSTRAINT [PK_TipoAparelhoCelularSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CodigosDDDSet'
ALTER TABLE [dbo].[CodigosDDDSet]
ADD CONSTRAINT [PK_CodigosDDDSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TipoLinhaSet'
ALTER TABLE [dbo].[TipoLinhaSet]
ADD CONSTRAINT [PK_TipoLinhaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TipoPlanoMovelSet'
ALTER TABLE [dbo].[TipoPlanoMovelSet]
ADD CONSTRAINT [PK_TipoPlanoMovelSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RecursoSet_Equipamento'
ALTER TABLE [dbo].[RecursoSet_Equipamento]
ADD CONSTRAINT [PK_RecursoSet_Equipamento]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RecursoSet_Computador'
ALTER TABLE [dbo].[RecursoSet_Computador]
ADD CONSTRAINT [PK_RecursoSet_Computador]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RecursoSet_AparelhoCelular'
ALTER TABLE [dbo].[RecursoSet_AparelhoCelular]
ADD CONSTRAINT [PK_RecursoSet_AparelhoCelular]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RecursoSet_LinhaMovel'
ALTER TABLE [dbo].[RecursoSet_LinhaMovel]
ADD CONSTRAINT [PK_RecursoSet_LinhaMovel]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RecursoSet_UsuarioVpn'
ALTER TABLE [dbo].[RecursoSet_UsuarioVpn]
ADD CONSTRAINT [PK_RecursoSet_UsuarioVpn]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PropriedadeSet_Compra'
ALTER TABLE [dbo].[PropriedadeSet_Compra]
ADD CONSTRAINT [PK_PropriedadeSet_Compra]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PropriedadeSet_Leasing'
ALTER TABLE [dbo].[PropriedadeSet_Leasing]
ADD CONSTRAINT [PK_PropriedadeSet_Leasing]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PropriedadeSet_Comodato'
ALTER TABLE [dbo].[PropriedadeSet_Comodato]
ADD CONSTRAINT [PK_PropriedadeSet_Comodato]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CoordenadorUPI] in table 'CentroDeCustoSet'
ALTER TABLE [dbo].[CentroDeCustoSet]
ADD CONSTRAINT [FK_CentroDeCustoFuncionario]
    FOREIGN KEY ([CoordenadorUPI])
    REFERENCES [dbo].[FuncionarioSet]
        ([UPI])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CentroDeCustoFuncionario'
CREATE INDEX [IX_FK_CentroDeCustoFuncionario]
ON [dbo].[CentroDeCustoSet]
    ([CoordenadorUPI]);
GO

-- Creating foreign key on [LocalSite_Id] in table 'FuncionarioSet'
ALTER TABLE [dbo].[FuncionarioSet]
ADD CONSTRAINT [FK_FuncionarioLocalSite]
    FOREIGN KEY ([LocalSite_Id])
    REFERENCES [dbo].[LocalSiteSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FuncionarioLocalSite'
CREATE INDEX [IX_FK_FuncionarioLocalSite]
ON [dbo].[FuncionarioSet]
    ([LocalSite_Id]);
GO

-- Creating foreign key on [LocalSite_Id] in table 'RecursoSet'
ALTER TABLE [dbo].[RecursoSet]
ADD CONSTRAINT [FK_LocalSiteRecurso]
    FOREIGN KEY ([LocalSite_Id])
    REFERENCES [dbo].[LocalSiteSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LocalSiteRecurso'
CREATE INDEX [IX_FK_LocalSiteRecurso]
ON [dbo].[RecursoSet]
    ([LocalSite_Id]);
GO

-- Creating foreign key on [StatusFuncionario_Id] in table 'FuncionarioSet'
ALTER TABLE [dbo].[FuncionarioSet]
ADD CONSTRAINT [FK_StatusFuncionarioFuncionario]
    FOREIGN KEY ([StatusFuncionario_Id])
    REFERENCES [dbo].[StatusFuncionarioSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StatusFuncionarioFuncionario'
CREATE INDEX [IX_FK_StatusFuncionarioFuncionario]
ON [dbo].[FuncionarioSet]
    ([StatusFuncionario_Id]);
GO

-- Creating foreign key on [Funcionario_UPI] in table 'AssociacaoRecursoSet'
ALTER TABLE [dbo].[AssociacaoRecursoSet]
ADD CONSTRAINT [FK_FuncionarioAssociacaoRecurso]
    FOREIGN KEY ([Funcionario_UPI])
    REFERENCES [dbo].[FuncionarioSet]
        ([UPI])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FuncionarioAssociacaoRecurso'
CREATE INDEX [IX_FK_FuncionarioAssociacaoRecurso]
ON [dbo].[AssociacaoRecursoSet]
    ([Funcionario_UPI]);
GO

-- Creating foreign key on [Recurso_Id] in table 'AssociacaoRecursoSet'
ALTER TABLE [dbo].[AssociacaoRecursoSet]
ADD CONSTRAINT [FK_RecursoAssociacaoRecurso]
    FOREIGN KEY ([Recurso_Id])
    REFERENCES [dbo].[RecursoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RecursoAssociacaoRecurso'
CREATE INDEX [IX_FK_RecursoAssociacaoRecurso]
ON [dbo].[AssociacaoRecursoSet]
    ([Recurso_Id]);
GO

-- Creating foreign key on [StatusEquipamento_Id] in table 'RecursoSet_Equipamento'
ALTER TABLE [dbo].[RecursoSet_Equipamento]
ADD CONSTRAINT [FK_StatusEquipamentoEquipamento]
    FOREIGN KEY ([StatusEquipamento_Id])
    REFERENCES [dbo].[StatusEquipamentoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StatusEquipamentoEquipamento'
CREATE INDEX [IX_FK_StatusEquipamentoEquipamento]
ON [dbo].[RecursoSet_Equipamento]
    ([StatusEquipamento_Id]);
GO

-- Creating foreign key on [TipoComputador_Id] in table 'RecursoSet_Computador'
ALTER TABLE [dbo].[RecursoSet_Computador]
ADD CONSTRAINT [FK_ComputadorTipoComputador]
    FOREIGN KEY ([TipoComputador_Id])
    REFERENCES [dbo].[TipoComputadorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ComputadorTipoComputador'
CREATE INDEX [IX_FK_ComputadorTipoComputador]
ON [dbo].[RecursoSet_Computador]
    ([TipoComputador_Id]);
GO

-- Creating foreign key on [Propriedade_Id] in table 'RecursoSet_Equipamento'
ALTER TABLE [dbo].[RecursoSet_Equipamento]
ADD CONSTRAINT [FK_EquipamentoPropriedade]
    FOREIGN KEY ([Propriedade_Id])
    REFERENCES [dbo].[PropriedadeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EquipamentoPropriedade'
CREATE INDEX [IX_FK_EquipamentoPropriedade]
ON [dbo].[RecursoSet_Equipamento]
    ([Propriedade_Id]);
GO

-- Creating foreign key on [TipoAparelhoCelular_Id] in table 'RecursoSet_AparelhoCelular'
ALTER TABLE [dbo].[RecursoSet_AparelhoCelular]
ADD CONSTRAINT [FK_AparelhoCelularTipoAparelhoCelular]
    FOREIGN KEY ([TipoAparelhoCelular_Id])
    REFERENCES [dbo].[TipoAparelhoCelularSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AparelhoCelularTipoAparelhoCelular'
CREATE INDEX [IX_FK_AparelhoCelularTipoAparelhoCelular]
ON [dbo].[RecursoSet_AparelhoCelular]
    ([TipoAparelhoCelular_Id]);
GO

-- Creating foreign key on [CodigosDDD_Id] in table 'RecursoSet_LinhaMovel'
ALTER TABLE [dbo].[RecursoSet_LinhaMovel]
ADD CONSTRAINT [FK_LinhaMovelCodigosDDD]
    FOREIGN KEY ([CodigosDDD_Id])
    REFERENCES [dbo].[CodigosDDDSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LinhaMovelCodigosDDD'
CREATE INDEX [IX_FK_LinhaMovelCodigosDDD]
ON [dbo].[RecursoSet_LinhaMovel]
    ([CodigosDDD_Id]);
GO

-- Creating foreign key on [TipoLinha_Id] in table 'RecursoSet_LinhaMovel'
ALTER TABLE [dbo].[RecursoSet_LinhaMovel]
ADD CONSTRAINT [FK_TipoLinhaLinhaMovel]
    FOREIGN KEY ([TipoLinha_Id])
    REFERENCES [dbo].[TipoLinhaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TipoLinhaLinhaMovel'
CREATE INDEX [IX_FK_TipoLinhaLinhaMovel]
ON [dbo].[RecursoSet_LinhaMovel]
    ([TipoLinha_Id]);
GO

-- Creating foreign key on [TipoPlanoMovel_Id] in table 'RecursoSet_LinhaMovel'
ALTER TABLE [dbo].[RecursoSet_LinhaMovel]
ADD CONSTRAINT [FK_TipoPlanoMovelLinhaMovel]
    FOREIGN KEY ([TipoPlanoMovel_Id])
    REFERENCES [dbo].[TipoPlanoMovelSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TipoPlanoMovelLinhaMovel'
CREATE INDEX [IX_FK_TipoPlanoMovelLinhaMovel]
ON [dbo].[RecursoSet_LinhaMovel]
    ([TipoPlanoMovel_Id]);
GO

-- Creating foreign key on [GestorUPI] in table 'CentroDeCustoSet'
ALTER TABLE [dbo].[CentroDeCustoSet]
ADD CONSTRAINT [FK_CentroDeCustoFuncionario1]
    FOREIGN KEY ([GestorUPI])
    REFERENCES [dbo].[FuncionarioSet]
        ([UPI])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CentroDeCustoFuncionario1'
CREATE INDEX [IX_FK_CentroDeCustoFuncionario1]
ON [dbo].[CentroDeCustoSet]
    ([GestorUPI]);
GO

-- Creating foreign key on [CentroDeCusto_Id] in table 'FuncionarioSet'
ALTER TABLE [dbo].[FuncionarioSet]
ADD CONSTRAINT [FK_FuncionarioCentroDeCusto]
    FOREIGN KEY ([CentroDeCusto_Id])
    REFERENCES [dbo].[CentroDeCustoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FuncionarioCentroDeCusto'
CREATE INDEX [IX_FK_FuncionarioCentroDeCusto]
ON [dbo].[FuncionarioSet]
    ([CentroDeCusto_Id]);
GO

-- Creating foreign key on [Id] in table 'RecursoSet_Equipamento'
ALTER TABLE [dbo].[RecursoSet_Equipamento]
ADD CONSTRAINT [FK_Equipamento_inherits_Recurso]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[RecursoSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'RecursoSet_Computador'
ALTER TABLE [dbo].[RecursoSet_Computador]
ADD CONSTRAINT [FK_Computador_inherits_Equipamento]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[RecursoSet_Equipamento]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'RecursoSet_AparelhoCelular'
ALTER TABLE [dbo].[RecursoSet_AparelhoCelular]
ADD CONSTRAINT [FK_AparelhoCelular_inherits_Equipamento]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[RecursoSet_Equipamento]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'RecursoSet_LinhaMovel'
ALTER TABLE [dbo].[RecursoSet_LinhaMovel]
ADD CONSTRAINT [FK_LinhaMovel_inherits_Recurso]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[RecursoSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'RecursoSet_UsuarioVpn'
ALTER TABLE [dbo].[RecursoSet_UsuarioVpn]
ADD CONSTRAINT [FK_UsuarioVpn_inherits_Recurso]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[RecursoSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'PropriedadeSet_Compra'
ALTER TABLE [dbo].[PropriedadeSet_Compra]
ADD CONSTRAINT [FK_Compra_inherits_Propriedade]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[PropriedadeSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'PropriedadeSet_Leasing'
ALTER TABLE [dbo].[PropriedadeSet_Leasing]
ADD CONSTRAINT [FK_Leasing_inherits_Propriedade]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[PropriedadeSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'PropriedadeSet_Comodato'
ALTER TABLE [dbo].[PropriedadeSet_Comodato]
ADD CONSTRAINT [FK_Comodato_inherits_Propriedade]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[PropriedadeSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------