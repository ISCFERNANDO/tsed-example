import { JsonProperty } from "@tsed/common";

export class UltimosPedidos {
  @JsonProperty()
  pedidoID: number;
  @JsonProperty()
  fechaPedido: string;
  @JsonProperty()
  nombreCliente: string;
  @JsonProperty()
  placaCamioneta: string;
  @JsonProperty()
  nombreChofer: string;
  @JsonProperty()
  choferID: number;

  constructor(
    pedidoID: number,
    fechaPedido: string,
    nombreCliente: string,
    placaCamioneta: string,
    nombreChofer: string,
    choferID: number
  ) {
    this.pedidoID = pedidoID;
    this.fechaPedido = fechaPedido;
    this.nombreCliente = nombreCliente;
    this.placaCamioneta = placaCamioneta;
    this.nombreChofer = nombreChofer;
    this.choferID = choferID;
  }
}
