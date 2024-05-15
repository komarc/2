CREATE TABLE [dbo].[Oktatok](
	[oktato_id] [int] NOT NULL,
	[vez_nev] [nvarchar](50) NOT NULL,
  	[ker_nev] [nvarchar](50) NOT NULL,
	[szul_dat] [date] NULL,
  	[email] [nvarchar](50) masked with (FUNCTION  = 'email()'),
 CONSTRAINT [OKT_Email_Contains_At] CHECK ([email] IS NULL OR [email] LIKE '%@%'),
 CONSTRAINT [PK_Oktatok] PRIMARY KEY CLUSTERED 
(
	[oktato_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Diakok](
	[diak_id] [int] NOT NULL,
	[vez_nev] [nvarchar](50) NOT NULL,
  	[ker_nev] [nvarchar](50) NOT NULL,
	[szul_dat] [date]  NOT NULL,
  	[email] [nvarchar](50) masked with (FUNCTION  = 'email()'),
 CONSTRAINT [DIAK_Email_Contains_At] CHECK ([email] IS NULL OR [email] LIKE '%@%'),
 CONSTRAINT [PK_Diakok] PRIMARY KEY CLUSTERED
(
	[diak_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Beiratkozas] (
  [beiratkozas_id] [int] PRIMARY KEY NOT NULL,
  [oktato_fk] [int] NOT NULL,
  [diak_fk] [int] NOT NULL,
  [bei_datum] [date] NOT NULL,
  [fiz_stat] [nvarchar](50) NOT NULL,
  FOREIGN KEY (oktato_fk) REFERENCES Oktatok(oktato_id),
  FOREIGN KEY (diak_fk) REFERENCES Diakok(diak_id)
);

CREATE TABLE [dbo].[Vizsgak](
  [vizsga_id] [int] PRIMARY KEY NOT NULL,
  [diak_fk] [int] NOT NULL,
  [eredmeny] [nvarchar](50) NOT NULL,
   [v_datum] [date] NULL,
  FOREIGN KEY (diak_fk) REFERENCES Diakok(diak_id)
);

CREATE TABLE [dbo].[Kategoriak](
  [kat_id] [int] PRIMARY KEY NOT NULL,
  [megnevezes] [nvarchar](50) NOT NULL,
  [oktato_fk] [int] NOT NULL,
  FOREIGN KEY (oktato_fk) REFERENCES Oktatok(oktato_id)
);