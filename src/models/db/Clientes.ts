import { JsonProperty } from "@tsed/common";

export class Clientes {
  @JsonProperty()
  nombreCompleto: string;

  constructor(nombreCompleto: string) {
    this.nombreCompleto = nombreCompleto;
  }
}
