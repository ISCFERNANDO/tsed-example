import { Service } from "@tsed/di";
import { DatabaseService } from "./database";
import { STORED_PROCEDURES } from "../../types/stored_procedures";
import { Clientes } from "../../models/db/Clientes";
import { UltimosPedidos } from "../../models/db/UltimosPedidos";
import { ChoferViajes } from "../../models/db/ChoferViajes";

@Service()
export class QueryService {
  constructor(private dbService: DatabaseService) {}

  async getClientesFrecuentes() {
    try {
      let sqlQuery: string = STORED_PROCEDURES.GET.SP_GET_CLIENTES_FRECUENTES;
      const resultSet = await this.dbService.query(sqlQuery);
      let clientes: Clientes[] = resultSet;
      return clientes;
    } catch (err) {
      return err;
    }
  }

  async getClientesLejanos() {
    try {
      let sqlQuery: string = STORED_PROCEDURES.GET.SP_GET_CLIENTES_LENAJOS;
      const resultSet = await this.dbService.query(sqlQuery);
      const clientes: Clientes[] = resultSet;
      return clientes;
    } catch (err) {
      return err;
    }
    0;
  }

  async getUltimos10Pedidos() {
    try {
      let sqlQuery: string = STORED_PROCEDURES.GET.SP_GET_ULTIMOS_10_PEDIDOS;
      const resultSet = await this.dbService.query(sqlQuery);
      const ultimosPedidos: UltimosPedidos[] = resultSet;
      return ultimosPedidos;
    } catch (err) {
      return err;
    }
  }

  async getViajesUltimoMes() {
    try {
      let sqlQuery: string = STORED_PROCEDURES.GET.SP_GET_VIAJES_ULTIMO_MES;
      const resultSet = await this.dbService.query(sqlQuery);
      const viajes: ChoferViajes[] = resultSet;
      return viajes;
    } catch (err) {
      return err;
    }
  }

  async getClientes() {
    try {
      let sqlQuery: string = STORED_PROCEDURES.GET.SP_GET_CLIENTES;
      const resultSet = await this.dbService.query(sqlQuery);
      const viajes: ChoferViajes[] = resultSet;
      return viajes;
    } catch (err) {
      return err;
    }
  }
}
