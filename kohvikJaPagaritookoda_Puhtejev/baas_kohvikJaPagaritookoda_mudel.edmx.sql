
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/08/2026 13:20:53
-- Generated from EDMX file: C:\Users\opilane\source\repos\kohvikJaPagaritookoda_Puhtejev\kohvikJaPagaritookoda_Puhtejev\baas_kohvikJaPagaritookoda_mudel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [kohvikjapagarikoda];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ametametimaaratus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ametimaaratusSet] DROP CONSTRAINT [FK_ametametimaaratus];
GO
IF OBJECT_ID(N'[dbo].[FK_tootajaametimaaratus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ametimaaratusSet] DROP CONSTRAINT [FK_tootajaametimaaratus];
GO
IF OBJECT_ID(N'[dbo].[FK_kohtametimaaratus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ametimaaratusSet] DROP CONSTRAINT [FK_kohtametimaaratus];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[tootajaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tootajaSet];
GO
IF OBJECT_ID(N'[dbo].[ametSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ametSet];
GO
IF OBJECT_ID(N'[dbo].[ametimaaratusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ametimaaratusSet];
GO
IF OBJECT_ID(N'[dbo].[kohtSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[kohtSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tootajaSet'
CREATE TABLE [dbo].[tootajaSet] (
    [tootajaID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [isikukood] bigint  NOT NULL
);
GO

-- Creating table 'ametSet'
CREATE TABLE [dbo].[ametSet] (
    [ametID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ametimaaratusSet'
CREATE TABLE [dbo].[ametimaaratusSet] (
    [ametimaaratusID] int IDENTITY(1,1) NOT NULL,
    [algus_kuupaev] datetime  NOT NULL,
    [amet_ametID] int  NOT NULL,
    [tootaja_tootajaID] int  NOT NULL,
    [koht_kohtID] int  NOT NULL
);
GO

-- Creating table 'kohtSet'
CREATE TABLE [dbo].[kohtSet] (
    [kohtID] int IDENTITY(1,1) NOT NULL,
    [kohtNimi] nvarchar(max)  NOT NULL,
    [email] nvarchar(max)  NOT NULL,
    [tel] bigint  NOT NULL
);
GO

-- Creating table 'kategooriaSet'
CREATE TABLE [dbo].[kategooriaSet] (
    [kategooriaID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'toodeSet'
CREATE TABLE [dbo].[toodeSet] (
    [toodeID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL,
    [hind] decimal(6,2)  NOT NULL,
    [kategooria_kategooriaID] int  NOT NULL
);
GO

-- Creating table 'koostisosaSet'
CREATE TABLE [dbo].[koostisosaSet] (
    [koostisosaID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'klientSet'
CREATE TABLE [dbo].[klientSet] (
    [klientID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [laud_laudID] int  NOT NULL
);
GO

-- Creating table 'laudSet'
CREATE TABLE [dbo].[laudSet] (
    [laudID] int IDENTITY(1,1) NOT NULL,
    [number] bigint  NOT NULL,
    [kohtadeArv] bigint  NOT NULL
);
GO

-- Creating table 'toodeKoostisosaSet'
CREATE TABLE [dbo].[toodeKoostisosaSet] (
    [toodeKoostisosaID] int IDENTITY(1,1) NOT NULL,
    [kogus] bigint  NOT NULL,
    [toode_toodeID] int  NOT NULL,
    [koostisosa_koostisosaID] int  NOT NULL
);
GO

-- Creating table 'laduSet'
CREATE TABLE [dbo].[laduSet] (
    [laduID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [aadress] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tellimusSet'
CREATE TABLE [dbo].[tellimusSet] (
    [tellimusID] int IDENTITY(1,1) NOT NULL,
    [klient_klientID] int  NOT NULL,
    [koht_kohtID] int  NOT NULL
);
GO

-- Creating table 'tellimuseToodeSet'
CREATE TABLE [dbo].[tellimuseToodeSet] (
    [tellimuseToodeID] int IDENTITY(1,1) NOT NULL,
    [tellimus_tellimusID] int  NOT NULL,
    [toode_toodeID] int  NOT NULL
);
GO

-- Creating table 'tarnijaSet'
CREATE TABLE [dbo].[tarnijaSet] (
    [tarnijaID] int IDENTITY(1,1) NOT NULL,
    [tarnijaNimi] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'arveSet'
CREATE TABLE [dbo].[arveSet] (
    [arveID] int IDENTITY(1,1) NOT NULL,
    [summa] decimal(6,2)  NOT NULL,
    [date] datetime  NOT NULL,
    [tellimus_tellimusID] int  NOT NULL
);
GO

-- Creating table 'brooneringSet'
CREATE TABLE [dbo].[brooneringSet] (
    [brooneringID] int IDENTITY(1,1) NOT NULL,
    [aeg] datetime  NOT NULL,
    [klient_klientID] int  NOT NULL
);
GO

-- Creating table 'salvestusSet'
CREATE TABLE [dbo].[salvestusSet] (
    [salvestusID] int IDENTITY(1,1) NOT NULL,
    [ladu_laduID] int  NOT NULL,
    [koostisosa_koostisosaID] int  NOT NULL,
    [tarnija_tarnijaID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [tootajaID] in table 'tootajaSet'
ALTER TABLE [dbo].[tootajaSet]
ADD CONSTRAINT [PK_tootajaSet]
    PRIMARY KEY CLUSTERED ([tootajaID] ASC);
GO

-- Creating primary key on [ametID] in table 'ametSet'
ALTER TABLE [dbo].[ametSet]
ADD CONSTRAINT [PK_ametSet]
    PRIMARY KEY CLUSTERED ([ametID] ASC);
GO

-- Creating primary key on [ametimaaratusID] in table 'ametimaaratusSet'
ALTER TABLE [dbo].[ametimaaratusSet]
ADD CONSTRAINT [PK_ametimaaratusSet]
    PRIMARY KEY CLUSTERED ([ametimaaratusID] ASC);
GO

-- Creating primary key on [kohtID] in table 'kohtSet'
ALTER TABLE [dbo].[kohtSet]
ADD CONSTRAINT [PK_kohtSet]
    PRIMARY KEY CLUSTERED ([kohtID] ASC);
GO

-- Creating primary key on [kategooriaID] in table 'kategooriaSet'
ALTER TABLE [dbo].[kategooriaSet]
ADD CONSTRAINT [PK_kategooriaSet]
    PRIMARY KEY CLUSTERED ([kategooriaID] ASC);
GO

-- Creating primary key on [toodeID] in table 'toodeSet'
ALTER TABLE [dbo].[toodeSet]
ADD CONSTRAINT [PK_toodeSet]
    PRIMARY KEY CLUSTERED ([toodeID] ASC);
GO

-- Creating primary key on [koostisosaID] in table 'koostisosaSet'
ALTER TABLE [dbo].[koostisosaSet]
ADD CONSTRAINT [PK_koostisosaSet]
    PRIMARY KEY CLUSTERED ([koostisosaID] ASC);
GO

-- Creating primary key on [klientID] in table 'klientSet'
ALTER TABLE [dbo].[klientSet]
ADD CONSTRAINT [PK_klientSet]
    PRIMARY KEY CLUSTERED ([klientID] ASC);
GO

-- Creating primary key on [laudID] in table 'laudSet'
ALTER TABLE [dbo].[laudSet]
ADD CONSTRAINT [PK_laudSet]
    PRIMARY KEY CLUSTERED ([laudID] ASC);
GO

-- Creating primary key on [toodeKoostisosaID] in table 'toodeKoostisosaSet'
ALTER TABLE [dbo].[toodeKoostisosaSet]
ADD CONSTRAINT [PK_toodeKoostisosaSet]
    PRIMARY KEY CLUSTERED ([toodeKoostisosaID] ASC);
GO

-- Creating primary key on [laduID] in table 'laduSet'
ALTER TABLE [dbo].[laduSet]
ADD CONSTRAINT [PK_laduSet]
    PRIMARY KEY CLUSTERED ([laduID] ASC);
GO

-- Creating primary key on [tellimusID] in table 'tellimusSet'
ALTER TABLE [dbo].[tellimusSet]
ADD CONSTRAINT [PK_tellimusSet]
    PRIMARY KEY CLUSTERED ([tellimusID] ASC);
GO

-- Creating primary key on [tellimuseToodeID] in table 'tellimuseToodeSet'
ALTER TABLE [dbo].[tellimuseToodeSet]
ADD CONSTRAINT [PK_tellimuseToodeSet]
    PRIMARY KEY CLUSTERED ([tellimuseToodeID] ASC);
GO

-- Creating primary key on [tarnijaID] in table 'tarnijaSet'
ALTER TABLE [dbo].[tarnijaSet]
ADD CONSTRAINT [PK_tarnijaSet]
    PRIMARY KEY CLUSTERED ([tarnijaID] ASC);
GO

-- Creating primary key on [arveID] in table 'arveSet'
ALTER TABLE [dbo].[arveSet]
ADD CONSTRAINT [PK_arveSet]
    PRIMARY KEY CLUSTERED ([arveID] ASC);
GO

-- Creating primary key on [brooneringID] in table 'brooneringSet'
ALTER TABLE [dbo].[brooneringSet]
ADD CONSTRAINT [PK_brooneringSet]
    PRIMARY KEY CLUSTERED ([brooneringID] ASC);
GO

-- Creating primary key on [salvestusID] in table 'salvestusSet'
ALTER TABLE [dbo].[salvestusSet]
ADD CONSTRAINT [PK_salvestusSet]
    PRIMARY KEY CLUSTERED ([salvestusID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [amet_ametID] in table 'ametimaaratusSet'
ALTER TABLE [dbo].[ametimaaratusSet]
ADD CONSTRAINT [FK_ametametimaaratus]
    FOREIGN KEY ([amet_ametID])
    REFERENCES [dbo].[ametSet]
        ([ametID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ametametimaaratus'
CREATE INDEX [IX_FK_ametametimaaratus]
ON [dbo].[ametimaaratusSet]
    ([amet_ametID]);
GO

-- Creating foreign key on [tootaja_tootajaID] in table 'ametimaaratusSet'
ALTER TABLE [dbo].[ametimaaratusSet]
ADD CONSTRAINT [FK_tootajaametimaaratus]
    FOREIGN KEY ([tootaja_tootajaID])
    REFERENCES [dbo].[tootajaSet]
        ([tootajaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tootajaametimaaratus'
CREATE INDEX [IX_FK_tootajaametimaaratus]
ON [dbo].[ametimaaratusSet]
    ([tootaja_tootajaID]);
GO

-- Creating foreign key on [koht_kohtID] in table 'ametimaaratusSet'
ALTER TABLE [dbo].[ametimaaratusSet]
ADD CONSTRAINT [FK_kohtametimaaratus]
    FOREIGN KEY ([koht_kohtID])
    REFERENCES [dbo].[kohtSet]
        ([kohtID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_kohtametimaaratus'
CREATE INDEX [IX_FK_kohtametimaaratus]
ON [dbo].[ametimaaratusSet]
    ([koht_kohtID]);
GO

-- Creating foreign key on [kategooria_kategooriaID] in table 'toodeSet'
ALTER TABLE [dbo].[toodeSet]
ADD CONSTRAINT [FK_kategooriatoode]
    FOREIGN KEY ([kategooria_kategooriaID])
    REFERENCES [dbo].[kategooriaSet]
        ([kategooriaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_kategooriatoode'
CREATE INDEX [IX_FK_kategooriatoode]
ON [dbo].[toodeSet]
    ([kategooria_kategooriaID]);
GO

-- Creating foreign key on [laud_laudID] in table 'klientSet'
ALTER TABLE [dbo].[klientSet]
ADD CONSTRAINT [FK_laudklient]
    FOREIGN KEY ([laud_laudID])
    REFERENCES [dbo].[laudSet]
        ([laudID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_laudklient'
CREATE INDEX [IX_FK_laudklient]
ON [dbo].[klientSet]
    ([laud_laudID]);
GO

-- Creating foreign key on [klient_klientID] in table 'tellimusSet'
ALTER TABLE [dbo].[tellimusSet]
ADD CONSTRAINT [FK_klienttellimus]
    FOREIGN KEY ([klient_klientID])
    REFERENCES [dbo].[klientSet]
        ([klientID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_klienttellimus'
CREATE INDEX [IX_FK_klienttellimus]
ON [dbo].[tellimusSet]
    ([klient_klientID]);
GO

-- Creating foreign key on [tellimus_tellimusID] in table 'arveSet'
ALTER TABLE [dbo].[arveSet]
ADD CONSTRAINT [FK_tellimusarve]
    FOREIGN KEY ([tellimus_tellimusID])
    REFERENCES [dbo].[tellimusSet]
        ([tellimusID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tellimusarve'
CREATE INDEX [IX_FK_tellimusarve]
ON [dbo].[arveSet]
    ([tellimus_tellimusID]);
GO

-- Creating foreign key on [koht_kohtID] in table 'tellimusSet'
ALTER TABLE [dbo].[tellimusSet]
ADD CONSTRAINT [FK_kohttellimus]
    FOREIGN KEY ([koht_kohtID])
    REFERENCES [dbo].[kohtSet]
        ([kohtID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_kohttellimus'
CREATE INDEX [IX_FK_kohttellimus]
ON [dbo].[tellimusSet]
    ([koht_kohtID]);
GO

-- Creating foreign key on [toode_toodeID] in table 'toodeKoostisosaSet'
ALTER TABLE [dbo].[toodeKoostisosaSet]
ADD CONSTRAINT [FK_toodetoodeKoostisosa]
    FOREIGN KEY ([toode_toodeID])
    REFERENCES [dbo].[toodeSet]
        ([toodeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_toodetoodeKoostisosa'
CREATE INDEX [IX_FK_toodetoodeKoostisosa]
ON [dbo].[toodeKoostisosaSet]
    ([toode_toodeID]);
GO

-- Creating foreign key on [koostisosa_koostisosaID] in table 'toodeKoostisosaSet'
ALTER TABLE [dbo].[toodeKoostisosaSet]
ADD CONSTRAINT [FK_koostisosatoodeKoostisosa]
    FOREIGN KEY ([koostisosa_koostisosaID])
    REFERENCES [dbo].[koostisosaSet]
        ([koostisosaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_koostisosatoodeKoostisosa'
CREATE INDEX [IX_FK_koostisosatoodeKoostisosa]
ON [dbo].[toodeKoostisosaSet]
    ([koostisosa_koostisosaID]);
GO

-- Creating foreign key on [ladu_laduID] in table 'salvestusSet'
ALTER TABLE [dbo].[salvestusSet]
ADD CONSTRAINT [FK_ladusalvestus]
    FOREIGN KEY ([ladu_laduID])
    REFERENCES [dbo].[laduSet]
        ([laduID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ladusalvestus'
CREATE INDEX [IX_FK_ladusalvestus]
ON [dbo].[salvestusSet]
    ([ladu_laduID]);
GO

-- Creating foreign key on [koostisosa_koostisosaID] in table 'salvestusSet'
ALTER TABLE [dbo].[salvestusSet]
ADD CONSTRAINT [FK_koostisosasalvestus]
    FOREIGN KEY ([koostisosa_koostisosaID])
    REFERENCES [dbo].[koostisosaSet]
        ([koostisosaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_koostisosasalvestus'
CREATE INDEX [IX_FK_koostisosasalvestus]
ON [dbo].[salvestusSet]
    ([koostisosa_koostisosaID]);
GO

-- Creating foreign key on [tarnija_tarnijaID] in table 'salvestusSet'
ALTER TABLE [dbo].[salvestusSet]
ADD CONSTRAINT [FK_tarnijasalvestus]
    FOREIGN KEY ([tarnija_tarnijaID])
    REFERENCES [dbo].[tarnijaSet]
        ([tarnijaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tarnijasalvestus'
CREATE INDEX [IX_FK_tarnijasalvestus]
ON [dbo].[salvestusSet]
    ([tarnija_tarnijaID]);
GO

-- Creating foreign key on [tellimus_tellimusID] in table 'tellimuseToodeSet'
ALTER TABLE [dbo].[tellimuseToodeSet]
ADD CONSTRAINT [FK_tellimustellimuseToode]
    FOREIGN KEY ([tellimus_tellimusID])
    REFERENCES [dbo].[tellimusSet]
        ([tellimusID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tellimustellimuseToode'
CREATE INDEX [IX_FK_tellimustellimuseToode]
ON [dbo].[tellimuseToodeSet]
    ([tellimus_tellimusID]);
GO

-- Creating foreign key on [toode_toodeID] in table 'tellimuseToodeSet'
ALTER TABLE [dbo].[tellimuseToodeSet]
ADD CONSTRAINT [FK_toodetellimuseToode]
    FOREIGN KEY ([toode_toodeID])
    REFERENCES [dbo].[toodeSet]
        ([toodeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_toodetellimuseToode'
CREATE INDEX [IX_FK_toodetellimuseToode]
ON [dbo].[tellimuseToodeSet]
    ([toode_toodeID]);
GO

-- Creating foreign key on [klient_klientID] in table 'brooneringSet'
ALTER TABLE [dbo].[brooneringSet]
ADD CONSTRAINT [FK_klientbroonering]
    FOREIGN KEY ([klient_klientID])
    REFERENCES [dbo].[klientSet]
        ([klientID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_klientbroonering'
CREATE INDEX [IX_FK_klientbroonering]
ON [dbo].[brooneringSet]
    ([klient_klientID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------