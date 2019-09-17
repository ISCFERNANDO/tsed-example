import { Controller, Get, Req, Res, Next } from "@tsed/common";
import { HTTPStatusCodes } from "../types/http";
import { ResponseOkJson, ResponseErrorJson } from "../models/response";
import { QueryService } from "../services/db/QueryService";

@Controller("/query")
export class Query {
  constructor(private queryService: QueryService) {}

  @Get("/clientesFrecuentes")
  async getClientesFrecuentes(@Req() req, @Res() res, @Next() next) {
    try {
      const result = await this.queryService.getClientesFrecuentes();
      res
        .status(HTTPStatusCodes.OK)
        .json(ResponseOkJson(HTTPStatusCodes.OK, result, "OK"));
    } catch (err) {
      res
        .status(HTTPStatusCodes.INTERNAL_SERVER_ERROR)
        .json(ResponseErrorJson(HTTPStatusCodes.INTERNAL_SERVER_ERROR, {}));
    }
  }

  @Get("/clientesLejanos")
  async getClientesLejanos(@Req() req, @Res() res, @Next() next) {
    try {
      const result = await this.queryService.getClientesLejanos();
      res
        .status(HTTPStatusCodes.OK)
        .json(ResponseOkJson(HTTPStatusCodes.OK, result, "OK"));
    } catch (err) {
      res
        .status(HTTPStatusCodes.INTERNAL_SERVER_ERROR)
        .json(ResponseErrorJson(HTTPStatusCodes.INTERNAL_SERVER_ERROR, {}));
    }
  }

  @Get("/ultimosPedidos")
  async getUltimosPedidos(@Req() req, @Res() res, @Next() next) {
    try {
      const result = await this.queryService.getUltimos10Pedidos();
      res
        .status(HTTPStatusCodes.OK)
        .json(ResponseOkJson(HTTPStatusCodes.OK, result, "OK"));
    } catch (err) {
      res
        .status(HTTPStatusCodes.INTERNAL_SERVER_ERROR)
        .json(ResponseErrorJson(HTTPStatusCodes.INTERNAL_SERVER_ERROR, {}));
    }
  }

  @Get("/viajesUltimoMes")
  async getViajesUltimoMes(@Req() req, @Res() res, @Next() next) {
    try {
      const result = await this.queryService.getViajesUltimoMes();
      res
        .status(HTTPStatusCodes.OK)
        .json(ResponseOkJson(HTTPStatusCodes.OK, result, "OK"));
    } catch (err) {
      res
        .status(HTTPStatusCodes.INTERNAL_SERVER_ERROR)
        .json(ResponseErrorJson(HTTPStatusCodes.INTERNAL_SERVER_ERROR, {}));
    }
  }

  @Get("/clientes")
  async getClientes(@Req() req, @Res() res, @Next() next) {
    try {
      const result = await this.queryService.getClientes();
      res
        .status(HTTPStatusCodes.OK)
        .json(ResponseOkJson(HTTPStatusCodes.OK, result, "OK"));
    } catch (err) {
      res
        .status(HTTPStatusCodes.INTERNAL_SERVER_ERROR)
        .json(ResponseErrorJson(HTTPStatusCodes.INTERNAL_SERVER_ERROR, {}));
    }
  }
}
