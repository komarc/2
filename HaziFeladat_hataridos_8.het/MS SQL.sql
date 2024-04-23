CREATE TABLE [dbo].[Ugyfel](
	[LOGIN] [nvarchar](255) NOT NULL,
	[EMAIL] [nvarchar](255) masked with (FUNCTION  = 'email()'),
	[NEV] [nvarchar](255) NOT NULL,
	[SZULEV] [int] masked with (FUNCTION  = 'random(1,5)'),
	[NEM] [nvarchar](1) NULL,
	[CIM] [nvarchar](255) masked with (FUNCTION  = 'partial(4,"***",2)'),
 CONSTRAINT [PK_Ugyfel] PRIMARY KEY CLUSTERED 
(
	[LOGIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]