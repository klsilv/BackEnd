import { MetodosDePagamento } from "./MetodosDePagamento";

export class Pix implements MetodosDePagamento{
    metodo: string;
    taxa: number;

    constructor(metodo:string){
        this.metodo = metodo
        this.taxa = 0.75
    }

    getTaxa():number {
        return this.taxa
    }
}