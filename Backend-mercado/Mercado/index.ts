import { Alimento } from "./produtos/Alimento";
import { Eletronico } from "./produtos/Eletronico";
import { Bebida } from "./produtos/Bebida";
import { Pix } from "./pagamento/Pix";
import { Dinheiro } from "./pagamento/Dinheiro";
import { CartaoDeCredito } from "./pagamento/CartaoDeCredito";
import * as readlineSync from 'readline-sync';

const myPix:Pix = new Pix(`Pix`)
const myCartao:CartaoDeCredito = new CartaoDeCredito(`Cartao de credito`)
const myDinheiro:Dinheiro = new Dinheiro(`Dinheiro`)

const myAlimento:Alimento = new Alimento(`Laranja`, `Alimento`, 8)
const myEletronico:Eletronico = new Eletronico(`Televisao`, `Eletronico`, 1200)
const myBebida:Bebida = new Bebida(`Refrigerante`, `Bebida`, 10)
const myAlimento2:Alimento = new Alimento(`Feijao`, `Alimento`, 20)
const myBebida2:Bebida = new Bebida(`Suco`, `Bebida`, 14)

let carrinhoDeCompras:any = []

function comprarProduto ():void{
    let perguntaProduto:string = `Produtos disponiveis:\n1. ${myAlimento.infos()}\n2. ${myBebida.infos()}\n3. ${myEletronico.infos()}\n4. ${myAlimento2.infos()}\n5. ${myBebida2.infos()}\n`
    let produtoSelecionado:number = Number((readlineSync.question(perguntaProduto)))

    switch(produtoSelecionado){
        case 1:
            carrinhoDeCompras.push(myAlimento)
            console.log(`Item inserido ao carrinho`)
            break
        case 2:
            carrinhoDeCompras.push(myBebida)
            console.log(`Item inserido ao carrinho`)
            break
        case 3:
            carrinhoDeCompras.push(myEletronico)
            console.log(`Item inserido ao carrinho`)
            break
        case 4:
            carrinhoDeCompras.push(myAlimento2)
            console.log(`Item inserido ao carrinho`)
            break
        case 5:
            carrinhoDeCompras.push(myBebida2)
            console.log(`Item inserido ao carrinho`)
            break
        default:
            console.log(`Item indisponivel`)
            break
    }
    console.log(`---------------------------------`)
}

let precoTotalCarrinho:number = 0

function verCarrinho():void{
    carrinhoDeCompras.forEach((item, index) => {
        console.log(`${index+1}. Produto: ${item.nome}, Tipo: ${item.tipo}, Preco: ${item.getPreco()}`)
    });



    for (let itemLista of carrinhoDeCompras){
        let calculaPrecoCarrinho:number = itemLista.getPreco()
        precoTotalCarrinho +=calculaPrecoCarrinho
    }
    console.log(`Preco total do carrinho: ${precoTotalCarrinho}\n---------------------------------\n`)
}

function selecionarPagamento():void{

    let perguntaPagamento = `Selecione uma forma de pagamento:\n1. Pix\n2. Dinheiro\n3. Cartao de credito\n---------------------------------\n`
    const pagamentoSelecionado:number = Number((readlineSync.question(perguntaPagamento)))
    switch(pagamentoSelecionado){
        case 1:
            precoTotalCarrinho *= myPix.taxa
            break
        case 2:
            precoTotalCarrinho *= myDinheiro.taxa
            break
        case 3:
            precoTotalCarrinho *= myCartao.taxa
            break
        default:
            console.log(`forma invalida no momento`)
    }
}

function pagar():void{
    selecionarPagamento()
    carrinhoDeCompras.splice(0,carrinhoDeCompras.length)
    console.log(`Preco total: ${precoTotalCarrinho}\nPagamento efetuado com sucesso\n---------------------------------`)
    precoTotalCarrinho = 0
}

let constinuaPrompt:boolean = true

while (constinuaPrompt == true){
    const pergunta:string = `Menu:\n1. Comprar produto\n2. Ver carrinho\n3. Pagar\n4. Sair\n---------------------------------\n`
    let resposta:number = Number((readlineSync.question(pergunta)))
    switch(resposta){
        case 1: 
            comprarProduto()
            break
        case 2:
            verCarrinho()
            break

        case 3:
            pagar()
            break

        case 4:
            constinuaPrompt = false
            console.log(`Saindo...`)
            break

        default:
        console.log(`Opcao invalida`)
    }
}