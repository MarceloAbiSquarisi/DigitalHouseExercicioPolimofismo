import UIKit

class Funcionario{
    var nome: String
    var salario: Float
    var cpf: String
    
    init(nome: String, salario: Float, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func calculaBonus(){
        print("valor do Bonus")
    }
}

class Programador: Funcionario{
    var plataforma: String
    
    init(plataforma: String, nome: String, salario: Float, cpf: String){
        self.plataforma = plataforma
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func calculaBonus() {
        print("valor do bunus: \(self.salario * 0.2)")
    }
}

class Designer: Funcionario{
    var ferramenta: String
    init(ferramenta: String, nome: String, salario: Float, cpf: String){
        self.ferramenta = ferramenta
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
     
    override func calculaBonus() {
          print("valor do bunus: \(self.salario * 0.15)")
      }
}

class Veiculo{
    var cor: String
    var preco: Float
    var numeroPassageiros: Int
    
    init(cor: String, preco: Float, numeroPassageiros: Int){
        self.cor = cor
        self.preco = preco
        self.numeroPassageiros = numeroPassageiros
    }
    
    func CalculaConsumoCombstivel(distancia: Float){
        print("O consumo foi de: \(Float(self.numeroPassageiros) * distancia)")
    }
}

class Carro: Veiculo{
    var tamanhoRodas: Float
    
    init(tamanhoRodas: Float, cor: String, preco: Float, numeroPassageiros: Int){
        self.tamanhoRodas = tamanhoRodas
        super.init(cor: cor , preco: preco, numeroPassageiros: numeroPassageiros)
    }
    
    override func CalculaConsumoCombstivel(distancia: Float) {
        print("O consumo foi de: \(Float(self.numeroPassageiros) * distancia * tamanhoRodas)")
    }
}

class Aviao: Veiculo{
    var piloto: String
    var companhiaAeria: String
    
    init (piloto: String, companhiaAeria: String, cor: String, preco: Float, numeroPassageiros: Int){
        self.piloto =  piloto
        self.companhiaAeria =  companhiaAeria
        super.init(cor: cor , preco: preco, numeroPassageiros: numeroPassageiros)
        
    }
}

