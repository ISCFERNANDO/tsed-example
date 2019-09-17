export const STORED_PROCEDURES = {
  GET: {
    SP_GET_CLIENTES_FRECUENTES: "CALL SP_Clientes_Frecuentes()",
    SP_GET_CLIENTES_LENAJOS: "CALL SP_Clientes_Lejanos()",
    SP_GET_ULTIMOS_10_PEDIDOS: "CALL SP_Ultimos10_Pedidos()",
    SP_GET_VIAJES_ULTIMO_MES: "CALL SP_Viajes_Ultimo_Mes()",
    SP_GET_CLIENTES: "CALL SP_Obtener_Clientes()",
  },
};
