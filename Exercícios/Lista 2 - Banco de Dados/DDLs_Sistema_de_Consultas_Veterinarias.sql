CREATE DATABASE SistemadeConsultasVeterinarias;
GO

USE SistemadeConsultasVeterinarias;
GO

CREATE TABLE Proprietarios (
    id_Proprietario INT PRIMARY KEY IDENTITY,              
    nome NVARCHAR(MAX),              
    cpf NVARCHAR(14) UNIQUE,         
    telefone NVARCHAR(MAX),           
    email NVARCHAR(MAX)              
);
GO

CREATE TABLE Veterinarios (
    id_veterinario INT PRIMARY KEY IDENTITY,              
    nome NVARCHAR(MAX),              
    crm NVARCHAR(20) UNIQUE,         
    especialidade NVARCHAR(MAX),    
    telefone NVARCHAR(MAX),           
    email NVARCHAR(MAX)             
);
