import { MetodosDePagamento } from "./MetodosDePagamento";

export class CartaoDeCredito implements MetodosDePagamento{
    metodo: string;
    taxa: number;

    constructor(metodo:string){
        this.metodo = metodo
        this.taxa = 1.2
    }

    getTaxa():number {
        return this.taxa
    }
}