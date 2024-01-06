CREATE DATABASE TextileDB;

CREATE TABLE [dbo].[Admin] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (100) NULL,
    [Password] NVARCHAR (100) NULL,
    [Company]  NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[Orders] (
    [Id]                    INT         IDENTITY (1, 1) NOT NULL,
    [OrderingCompany]       NCHAR (100) NULL,
    [Name]                  NCHAR (100) NULL,
    [OrderStatus]           NCHAR (100) NULL,
    [PaymentStatus]         NCHAR (100) NULL,
    [OrderDate]             DATE        NULL,
    [EstimatedDeliveryDate] DATE        NULL,
    [ActualDeliveryDate]    DATE        NULL,
    [FactoryDate]           DATE        NULL,
    [ShippingMethods]       NCHAR (100) NULL,
    [DeliveryAddress]       NCHAR (100) NULL,
    [ProductName]           NCHAR (100) NULL,
    [ProductSize]           NCHAR (10)  NULL,
    [ProductAmount]         INT         NULL,
    [UnitPrice]             FLOAT (53)  NULL,
    [TotalPrice]            FLOAT (53)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


CREATE TABLE [dbo].[Products] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [Picture]      NVARCHAR (200) NULL,
    [Name]         VARCHAR (100)  NULL,
    [MainCategory] VARCHAR (100)  NULL,
    [SubCategory]  VARCHAR (100)  NULL,
    [Season]       VARCHAR (100)  NULL,
    [Size]         VARCHAR (100)  NULL,
    [Vendor]       VARCHAR (100)  NULL,
    [Price]        FLOAT (53)     NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);



CREATE TABLE [dbo].[User] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (100) NULL,
    [Password] NVARCHAR (100) NULL,
    [Company]  NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


CREATE TABLE [dbo].[Vendor] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (100) NULL,
    [Password] NVARCHAR (100) NULL,
    [Company]  NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

-- Admin tablosuna veri ekleme
INSERT INTO [dbo].[Admin] ([Name], [Password], [Company])
VALUES
    ('Büşra', 'büşra', 'b company'),
    ('x', 'x', 'x company'),
    ('y', 'y', 'y company');

-- Orders tablosuna veri ekleme
INSERT INTO [dbo].[Orders] ([OrderingCompany], [Name], [OrderStatus], [PaymentStatus], [OrderDate], [EstimatedDeliveryDate], [ActualDeliveryDate], [FactoryDate], [ShippingMethods], [DeliveryAddress], [ProductName], [ProductSize], [ProductAmount], [UnitPrice], [TotalPrice])
VALUES
    ('x company', 'order1', 'new', 'paid', '2023-01-01', '2023-02-02', '2023-03-03', '2023-04-04', 'air', 'turkey', 'product 1', 's', 10, 10, 100),
    ('y company', 'order2', 'new', 'unpaid', '2023-05-05', '2023-06-06', '2023-07-07', '2023-08-08', 'ship', 'england', 'product 2', 'm', 2, 10, 20),
    ('z company', 'order3', 'new', 'paid', '2023-06-06', '2023-07-07', '2023-08-08', '2023-09-09', 'air', 'france', 'product3', 'xl', 10, 100, 1000);

-- Products tablosuna veri ekleme
INSERT INTO [dbo].[Products] ([Picture], [Name], [MainCategory], [SubCategory], [Season], [Size], [Vendor], [Price])
VALUES
    ('https://cdn2.sorsware.com/jimmykey/ContentImages/Product/2023yaz/23SP020054/pantolon_23sp020054_beyaz-100-beyaz_1_614x805.webp', 'BEYAZ ÇIÇEK DESENLI KISA KOLLU YAZLIK GÖMLEK', 'Kadin Giyim', 'Gömlek', 'Ilkbahar/Yaz', 'S M L XL', 'A Company', 699.95),
    ('https://cdn2.sorsware.com/jimmykey/ContentImages/Product/2023yaz/23SE030078/elbise_23se030078_ekru-114-ekru_1_614x805.webp', 'EKRU ASKILI ÇIÇEK DESENLI MIDI ELBISE', 'Kadin Giyim', 'Elbise', 'Ilkbahar/Yaz', 'S M L XL', 'B Company', 999.95),
    ('https://cdn2.sorsware.com/jimmykey/ContentImages/Product/2023yaz/23SP050250/pantolon_23sp050250_kobalt-165-mavi_1_614x805.webp', 'MAVI BOL KESIM YÜKSEK BEL KETEN PANTOLON', 'Kadin Giyim', 'Pantolon', 'Ilkbahar/Yaz', 'S M L XL', 'C Company', 1995.95);

-- User tablosuna veri ekleme
INSERT INTO [dbo].[User] ([Name], [Password], [Company])
VALUES
    ('x', 'x', 'xx company'),
    ('y', 'y', 'yy company');

-- Vendor tablosuna veri ekleme
INSERT INTO [dbo].[Vendor] ([Name], [Password], [Company])
VALUES
    ('x', 'x', 'xxx company');
