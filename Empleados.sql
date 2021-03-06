USE [Empleados]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 15/11/2018 11:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[AddNewEmpDetails]    Script Date: 15/11/2018 11:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[AddNewEmpDetails]
(
@Name varchar (50),
@City varchar (50),
@Address varchar (50)
)
as
begin
	Insert into Employee
	values(@Name, @City, @Address)
	End
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmpById]    Script Date: 15/11/2018 11:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[DeleteEmpById] (  
   @EmpId int  
)  
as   
begin  
   Delete from Employee where Id=@EmpId  
End 
GO
/****** Object:  StoredProcedure [dbo].[GetEmployees]    Script Date: 15/11/2018 11:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetEmployees]
as
begin
	select * from Employee
	End
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmpDetails]    Script Date: 15/11/2018 11:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[UpdateEmpDetails](
@EmpId int,
@Name varchar (50),
@City varchar (50),
@Address varchar (50)
)
as
begin
	Update Employee set
	Name=@Name, City=@city, Address=@Address
	where Id=@EmpId
	End
GO
