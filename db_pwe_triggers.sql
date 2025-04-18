-- trigger para la tabla EMPRESAS_TAMANIOS para actualizar la fecha_fin_et
CREATE OR REPLACE FUNCTION actualizar_fecha_tamanio()
RETURNS TRIGGER AS $$
DECLARE
  fecha_previa date;
BEGIN
  SELECT MAX(fecha_inicio_et)  INTO fecha_previa  FROM EMPRESAS_TAMANIOS
  WHERE id_empresa = NEW.id_empresa AND fecha_inicio_et < NEW.fecha_inicio_et;

  IF fecha_previa IS NOT NULL THEN
    UPDATE EMPRESAS_TAMANIOS SET fecha_fin_et = NEW.fecha_inicio_et
    WHERE id_empresa = NEW.id_empresa AND fecha_inicio_et = fecha_previa;
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER actualizar_fecha_tamanio_trigger
BEFORE INSERT ON EMPRESAS_TAMANIOS
FOR EACH ROW
EXECUTE FUNCTION actualizar_fecha_tamanio();

SELECT * FROM EMPRESAS_TAMANIOS;
