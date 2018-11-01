namespace COGERTI.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class NotebookFuncionarioCCPlantaTable : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CentroCustoes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Codigo = c.Double(nullable: false),
                        Nome = c.String(),
                        Apelido = c.String(),
                        StatusCentroCustoId = c.Byte(nullable: false),
                        StatusCentroCusto_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.StatusCentroCustoes", t => t.StatusCentroCusto_Id)
                .Index(t => t.StatusCentroCusto_Id);
            
            CreateTable(
                "dbo.StatusCentroCustoes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Nome = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Funcionarios",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Nome = c.String(),
                        UsuarioRede = c.String(),
                        CentroCustoId = c.Byte(nullable: false),
                        LocalSiteId = c.Byte(nullable: false),
                        StatusFuncionarioId = c.Byte(nullable: false),
                        CentroCusto_Id = c.Int(),
                        LocalSite_Id = c.Int(),
                        StatusFuncionario_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.CentroCustoes", t => t.CentroCusto_Id)
                .ForeignKey("dbo.LocalSites", t => t.LocalSite_Id)
                .ForeignKey("dbo.StatusFuncionarios", t => t.StatusFuncionario_Id)
                .Index(t => t.CentroCusto_Id)
                .Index(t => t.LocalSite_Id)
                .Index(t => t.StatusFuncionario_Id);
            
            CreateTable(
                "dbo.LocalSites",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Nome = c.String(nullable: false),
                        Sigla = c.String(nullable: false, maxLength: 3),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.StatusFuncionarios",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Nome = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.OwnerDevices",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Nome = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.StatusDevices",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Nome = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            AddColumn("dbo.Notebooks", "SerialNo", c => c.String());
            AddColumn("dbo.Notebooks", "Patrimonio", c => c.Double());
            AddColumn("dbo.Notebooks", "Marca", c => c.String());
            AddColumn("dbo.Notebooks", "Modelo", c => c.String());
            AddColumn("dbo.Notebooks", "NotaFiscal", c => c.Double());
            AddColumn("dbo.Notebooks", "Garantia_Inicio", c => c.DateTime());
            AddColumn("dbo.Notebooks", "Garantia_Termino", c => c.DateTime());
            AddColumn("dbo.Notebooks", "StatusDeviceId", c => c.Byte(nullable: false));
            AddColumn("dbo.Notebooks", "OwnerDeviceId", c => c.Byte(nullable: false));
            AddColumn("dbo.Notebooks", "LocalSiteId", c => c.Byte(nullable: false));
            AddColumn("dbo.Notebooks", "FuncionarioId", c => c.Byte(nullable: false));
            AddColumn("dbo.Notebooks", "Funcionario_Id", c => c.Int());
            AddColumn("dbo.Notebooks", "LocalSite_Id", c => c.Int());
            AddColumn("dbo.Notebooks", "OwnerDevice_Id", c => c.Int());
            AddColumn("dbo.Notebooks", "StatusDevice_Id", c => c.Int());
            CreateIndex("dbo.Notebooks", "Funcionario_Id");
            CreateIndex("dbo.Notebooks", "LocalSite_Id");
            CreateIndex("dbo.Notebooks", "OwnerDevice_Id");
            CreateIndex("dbo.Notebooks", "StatusDevice_Id");
            AddForeignKey("dbo.Notebooks", "Funcionario_Id", "dbo.Funcionarios", "Id");
            AddForeignKey("dbo.Notebooks", "LocalSite_Id", "dbo.LocalSites", "Id");
            AddForeignKey("dbo.Notebooks", "OwnerDevice_Id", "dbo.OwnerDevices", "Id");
            AddForeignKey("dbo.Notebooks", "StatusDevice_Id", "dbo.StatusDevices", "Id");
            DropColumn("dbo.Notebooks", "Name");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Notebooks", "Name", c => c.String());
            DropForeignKey("dbo.Notebooks", "StatusDevice_Id", "dbo.StatusDevices");
            DropForeignKey("dbo.Notebooks", "OwnerDevice_Id", "dbo.OwnerDevices");
            DropForeignKey("dbo.Notebooks", "LocalSite_Id", "dbo.LocalSites");
            DropForeignKey("dbo.Notebooks", "Funcionario_Id", "dbo.Funcionarios");
            DropForeignKey("dbo.Funcionarios", "StatusFuncionario_Id", "dbo.StatusFuncionarios");
            DropForeignKey("dbo.Funcionarios", "LocalSite_Id", "dbo.LocalSites");
            DropForeignKey("dbo.Funcionarios", "CentroCusto_Id", "dbo.CentroCustoes");
            DropForeignKey("dbo.CentroCustoes", "StatusCentroCusto_Id", "dbo.StatusCentroCustoes");
            DropIndex("dbo.Notebooks", new[] { "StatusDevice_Id" });
            DropIndex("dbo.Notebooks", new[] { "OwnerDevice_Id" });
            DropIndex("dbo.Notebooks", new[] { "LocalSite_Id" });
            DropIndex("dbo.Notebooks", new[] { "Funcionario_Id" });
            DropIndex("dbo.Funcionarios", new[] { "StatusFuncionario_Id" });
            DropIndex("dbo.Funcionarios", new[] { "LocalSite_Id" });
            DropIndex("dbo.Funcionarios", new[] { "CentroCusto_Id" });
            DropIndex("dbo.CentroCustoes", new[] { "StatusCentroCusto_Id" });
            DropColumn("dbo.Notebooks", "StatusDevice_Id");
            DropColumn("dbo.Notebooks", "OwnerDevice_Id");
            DropColumn("dbo.Notebooks", "LocalSite_Id");
            DropColumn("dbo.Notebooks", "Funcionario_Id");
            DropColumn("dbo.Notebooks", "FuncionarioId");
            DropColumn("dbo.Notebooks", "LocalSiteId");
            DropColumn("dbo.Notebooks", "OwnerDeviceId");
            DropColumn("dbo.Notebooks", "StatusDeviceId");
            DropColumn("dbo.Notebooks", "Garantia_Termino");
            DropColumn("dbo.Notebooks", "Garantia_Inicio");
            DropColumn("dbo.Notebooks", "NotaFiscal");
            DropColumn("dbo.Notebooks", "Modelo");
            DropColumn("dbo.Notebooks", "Marca");
            DropColumn("dbo.Notebooks", "Patrimonio");
            DropColumn("dbo.Notebooks", "SerialNo");
            DropTable("dbo.StatusDevices");
            DropTable("dbo.OwnerDevices");
            DropTable("dbo.StatusFuncionarios");
            DropTable("dbo.LocalSites");
            DropTable("dbo.Funcionarios");
            DropTable("dbo.StatusCentroCustoes");
            DropTable("dbo.CentroCustoes");
        }
    }
}
