import { Produto } from "./Produto";

export class Eletronico implements Produto{
    nome:string
    tipo:string
    preco:number

    constructor(nome:string, tipo:string, preco:number){
        this.nome = nome
        this.tipo = tipo
        this.preco = preco
    }

    infos():string{
        return `Produto: ${this.nome}, Tipo: ${this.tipo}, Preco: R$${this.preco}`
    }
    
    getPreco():number{
        return this.preco
    }
}
