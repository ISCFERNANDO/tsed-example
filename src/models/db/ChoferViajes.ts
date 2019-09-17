import { JsonProperty } from "@tsed/common";

export class ChoferViajes {
  @JsonProperty()
  licencia: string;
  @JsonProperty()
  nombreCompleto: string;

  constructor(licencia: string, nombreCompleto: string) {
    this.licencia = licencia;
    this.nombreCompleto = nombreCompleto;
  }
}
