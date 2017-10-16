//
//  ViewController.m
//  Producción
//
//  Created by Juan Pestana on 7/15/14.
//  Copyright (c) 2014 Juan Pestana. All rights reserved.
//
//192.168.42.250:85
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
   
    bool start;
    

    
    NSTimeInterval time;
}
@synthesize pickerDisponibilidad;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updateTime];
    
   // [self updateTime2];
    
    _continuarBoton.hidden = YES;
    _detenerBoton.hidden = YES;
    

    start = false;
    
    self.maquina.text = @"Bolseadora-1";
    
    
    
    
    _labelEficienciaFinal.hidden = YES;
    _labelEteFinal.hidden = YES;
    _porciento.hidden = YES;
    _piezasMinDesempeno.hidden = YES;
    _minFinalesLabel.hidden = YES;
    _labelMaquina.hidden = YES;
    _maquina.hidden = YES;
    _signoPercent.hidden = YES;
    _muertos.hidden = NO;
    _resultadoETE.hidden = YES;
    _labelHoras.hidden = YES;
    pickerDisponibilidad.hidden = YES;
    _tipoText.hidden = YES;
    _tipo2Text.hidden = YES;
    _observaciones.hidden = YES;
    _labelObervaciones.hidden = YES;
    _labelTipo.hidden = YES;
    _labelIdBobina.hidden = YES;
    _labelPesoInicial.hidden = YES;
    _labelProduccion.hidden = YES;
    _labelPiezasObtenidas.hidden = YES;
    _labelPesoFinal.hidden = YES;
    _labelFolio.hidden = YES;
    _idBobina.hidden = YES;
    _pesoInicial.hidden = YES;
    _produccion.hidden = YES;
    _piezasObtenidas.hidden = YES;
    _pesoFinal.hidden = YES;
    _folio.hidden = YES;
    _lote.hidden = YES;
    _loteLabel.hidden = YES;
    _caja.hidden = YES;
    _cajaLabel.hidden = YES;
    
    //MERMA HIDDEN
    _arranques.hidden = YES;
    _colilla.hidden = YES;
    _atorones.hidden = YES;
    _malSello.hidden = YES;
    _refilado.hidden = YES;
    _desfase.hidden = YES;
    _tonoBajo.hidden = YES;
    _manchas.hidden = YES;
    _brincos.hidden = YES;
    _malEmb.hidden = YES;
    _sobrantesImpresion.hidden = YES;
    _arrugas.hidden = YES;
    _descalibre.hidden = YES;
    _parches.hidden = YES;
    _medida.hidden = YES;
    _grumos.hidden = YES;
    _bloqueo.hidden = YES;
    _sobrantesExtrusion.hidden = YES;

    
    _arranquesLabel.hidden = YES;
    _colillaLable.hidden = YES;
    _atoronesLabel.hidden = YES;
    _malSelloLabel.hidden = YES;
    _refiladoLabel.hidden = YES;
    _desfaseLabel.hidden = YES;
    _tonoBajoLabel.hidden = YES;
    _manchasLabel.hidden = YES;
    _brincosLabel.hidden = YES;
    _malEmbLabel.hidden = YES;
    _sobrantesLabel.hidden = YES;
    _arrugasLabel.hidden = YES;
    _descalibreLabel.hidden = YES;
    _parchesLabel.hidden = YES;
    _medidaLabel.hidden = YES;
    _grumosLabel.hidden = YES;
    _bloqueoLabel.hidden = YES;
    _sobrantesExtLabel.hidden = YES;
    
    
    
    _bobinasDetenidos.hidden = YES;
    _bobinasDetenidosLabel.hidden = YES;
    _idDetenidos.hidden = YES;
    _idDetenidosLabel.hidden = YES;
    _kgDetenidos.hidden = YES;
    _kgDetenidosLabel.hidden = YES;
    _piezasDetenidos.hidden = YES;
    _piezasDetenidosLabel.hidden = YES;
    _observacionesDetenidos.hidden = YES;
    _observacionesDetenidosLabel.hidden = YES;
    
    
    
    arraytipo = [[NSMutableArray alloc]init];
    [arraytipo addObject:@""];
    [arraytipo addObject:@"1 MTTO CORRECTIVO"];
    [arraytipo addObject:@"2 MTTO PREVENTIVO"];
    [arraytipo addObject:@"3 CAMBIO BOBINA"];
    [arraytipo addObject:@"4 CAMBIO MODELO"];
    [arraytipo addObject:@"5 AJUSTES"];
    [arraytipo addObject:@"7 HORA COMIDA"];
    [arraytipo addObject:@"11 FALTA MATERIAL/HERRAMIENTA"];
    [arraytipo addObject:@"12 FALTA PROGRAMA"];
    [arraytipo addObject:@"13 FALLA MATERIAL"];
    [arraytipo addObject:@"14 CALIDAD"];
    [arraytipo addObject:@"15 OTROS"];
    
    arraytipo2 = [[NSMutableArray alloc]init];
    [arraytipo2 addObject:@""];
    [arraytipo2 addObject:@"6 CAMBIO TURNO"];
    [arraytipo2 addObject:@"8 FALTA PERSONAL"];
    [arraytipo2 addObject:@"9 TIRAR MERMA/LIMPIEZA"];
    [arraytipo2 addObject:@"10 PREPARAR MATERIAL"];
    
    
    
    
}



//- (void)updateTime2
//{
//    
//    [self performSelector:@selector(updateTime) withObject:self afterDelay:1.0];
//
//    NSDateFormatter *timeFormat = [[NSDateFormatter alloc]init];
//    [timeFormat setDateFormat:@"hh:mm:ss"];
//    _date.text = [timeFormat stringFromDate:[NSDate date]];
//    
//    
//    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
//    [dateFormat setDateFormat:@"yyy-MM-dd"];
//    //_fecha.text = [dateFormat stringFromDate:[NSDate date]];
//    
//    
//    
//}


/*------------------------*/

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}



-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == TIPO)
        return [arraytipo count];
    if (component == TIPO2)
        return [arraytipo2 count];
    
    return 0;
}



//- (NSAttributedString *)pickerView:(UIPickerView *)pickerView attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component
//{
//    NSString *title = @"sample title";
//    NSAttributedString *attString = [[NSAttributedString alloc] initWithString:title attributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
//    
//    return attString;
//    
//}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    
    if (component == TIPO)
        return [arraytipo objectAtIndex:row];
    if (component == TIPO2)
        return [arraytipo2 objectAtIndex:row];
    
    return 0;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    _tipoText.text = [arraytipo objectAtIndex:[pickerView selectedRowInComponent:0]];
    _tipo2Text.text = [arraytipo2 objectAtIndex:[pickerView selectedRowInComponent:1]];
   
    
}






/*----------------------*/





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)verificar:(id)sender {
    
    //bucar piezas por minuto de pedido
    NSString *strURL65 = [NSString stringWithFormat:@"http://192.168.42.250:85/piezasMin.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
    
    NSData *dataURL65 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL65]];
    
    NSString *strResult65 = [[NSString alloc] initWithData:dataURL65 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult65);
    
    NSString *resul = strResult65;
    double result = [resul doubleValue];
    
    double ttcCodigo = 1 / result;
    NSString *ttcCodigoString = [NSString stringWithFormat:@"%f", ttcCodigo];
    
    self.piezasMinDesempeno.text = ttcCodigoString;
    
    
    
    
    _labelHoras.hidden = NO;
    _minFinalesLabel.hidden = NO;
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"ZUBEX" message:@"CAMPOS VACIOS" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    
    
    if (([_pedido.text isEqual: @""]) || ([_nomina.text isEqual:@""]) || ([_codigoUnico.text isEqual:@""])) {
        [alert show];
    }
    else{
    
    NSString *strURL = [NSString stringWithFormat:@"http://192.168.42.250:85/general.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
    
    NSData *dataURL = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL]];
    
    NSString *strResult = [[NSString alloc] initWithData:dataURL encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult);
    
    self.descripcion.text = strResult;

    //PEDIDO
    
    NSString *strURL2 = [NSString stringWithFormat:@"http://192.168.42.250:85/zubex2.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
    
    NSData *dataURL2 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL2]];
    
    NSString *strResult2 = [[NSString alloc] initWithData:dataURL2 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult2);
    
    self.descripcionPedido.text = strResult2;
    
    
    
    //BREAK_______________
    
    //MILLARES
    NSString *strURL4 = [NSString stringWithFormat:@"http://192.168.42.250:85/zubex3.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
    
    NSData *dataURL4 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL4]];
    
    NSString *strResult4 = [[NSString alloc] initWithData:dataURL4 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult4);
    
    NSString *millaresString = strResult4;
    double millares = [millaresString intValue];
    
    
    //PIEZAS MINUTO
    NSString *strURL5 = [NSString stringWithFormat:@"http://192.168.42.250:85/zubex4.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
    
    NSData *dataURL5 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL5]];
    
    NSString *strResult5 = [[NSString alloc] initWithData:dataURL5 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult5);
    
    NSString *piezasMinString = strResult5;
    double piezasMin = [piezasMinString intValue];
        
        
    //CODIGO COMPLETO
        NSString *strURL100 = [NSString stringWithFormat:@"http://192.168.42.250:85/codigoCompleto.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
        
        NSData *dataURL100 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL100]];
        
        NSString *strResult100 = [[NSString alloc] initWithData:dataURL100 encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult100);
        
        _codigoCompleto.text = strResult100;
    
    
    
    //NUMERO BOBINAS
    NSString *strURL6 = [NSString stringWithFormat:@"http://192.168.42.250:85/zubex5.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
    
    NSData *dataURL6 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL6]];
    
    NSString *strResult6 = [[NSString alloc] initWithData:dataURL6 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult6);
    
    
    NSString *numeroBobinasString = strResult6;
    double numeroBobinas = [numeroBobinasString intValue];
    
    
    double tiempoProduccion = ((millares / piezasMin) + (numeroBobinas * 5)) / 60;
    
    int tiempoProduccion2 = ((millares / piezasMin) + (numeroBobinas * 5)) / 60;
    
    NSString *juancho2 = [NSString stringWithFormat:@"%d", tiempoProduccion2];
    
        
        
    
    //NSString *juancho = [NSString stringWithFormat:@"%10.4f", tiempoProduccion];
        
        double minutosTiempo1 = tiempoProduccion - tiempoProduccion2;
        
      int minutosTiempo2 = minutosTiempo1 * 60;
        
       NSString *minutosFinales = [NSString stringWithFormat:@"%d", minutosTiempo2];
        
        
        
    self.pruebaMillares.text = juancho2;
    
       self.minFinales.text = minutosFinales;
        
    
    }
    
    
    
    //NSString *juancho = [NSString stringWithFormat:@"%0.16g", hola];
    
    
}

- (IBAction)detener:(id)sender {
    
    
    _continuarBoton.hidden = NO;
    _detenerBoton.hidden = YES;
    
    
    if (start == false) {
        start = true;
        
        time = [NSDate timeIntervalSinceReferenceDate];
        
        [self update];
    }
    else{
        
        start = false;
    }
    
    _muertos.hidden = NO;

    
    pickerDisponibilidad.hidden = NO;
    _tipoText.hidden = NO;
    _tipo2Text.hidden = NO;
   
    _observaciones.hidden = NO;
    
   
    _labelObervaciones.hidden = NO;
    _labelTipo.hidden = NO;
}


- (void) update {
    
    if (start == false) {
        return;
    }
    
    NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate];
    NSTimeInterval elapsedTime = currentTime - time;
    
    
    int minutes = (int)(elapsedTime / 60.0);
    
    int seconds = (int)(elapsedTime = elapsedTime - (minutes * 60));
    
    [self performSelector:@selector(update) withObject:self afterDelay:0.1];
    
    self.muertos.text = [NSString stringWithFormat:@"%u:%02u", minutes, seconds];

    
}

- (IBAction)iniciar:(id)sender {
    
   
    _iniciarBoton.hidden = YES;
    _detenerBoton.hidden = NO;
    
    
    
    self.maquina.text = @"Bolseadora-1";

    
    NSString *strURL8 = [NSString stringWithFormat:@"http://192.168.42.250:85/monitoreo.php?pedido=%@&codigoUnico=%@&hora=%@&click=%@&motivo=%@&motivo2=%@&observaciones=%@&nomina=%@&fecha=%@&maquina=%@",[_pedido.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding],[_codigoUnico.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [_pruebaMillares.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso.click stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], @"INICIO", @"INICIO", @"INICIO", [_nomina.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.maquina.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSData *dataURL8 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL8]];
    
    NSString *strResult8 = [[NSString alloc] initWithData:dataURL8 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult8);
    
    UIAlertView *alert2 = [[UIAlertView alloc]initWithTitle:@"ZUBEX" message:@"PROCESO INICIADO" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [alert2 show];
    
    
    
    //BREAK_______________
    
    //MILLARES
    NSString *strURL4 = [NSString stringWithFormat:@"http://192.168.42.250:85/zubex3.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
    
    NSData *dataURL4 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL4]];
    
    NSString *strResult4 = [[NSString alloc] initWithData:dataURL4 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult4);
    
    NSString *millaresString = strResult4;
    double millares = [millaresString intValue];
    
    
    //PIEZAS MINUTO
    NSString *strURL5 = [NSString stringWithFormat:@"http://192.168.42.250:85/zubex4.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
    
    NSData *dataURL5 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL5]];
    
    NSString *strResult5 = [[NSString alloc] initWithData:dataURL5 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult5);
    
    NSString *piezasMinString = strResult5;
    double piezasMin = [piezasMinString intValue];
    
    
    
    //NUMERO BOBINAS
    NSString *strURL6 = [NSString stringWithFormat:@"http://192.168.42.250:85/zubex5.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
    
    NSData *dataURL6 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL6]];
    
    NSString *strResult6 = [[NSString alloc] initWithData:dataURL6 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult6);
    
    
    NSString *numeroBobinasString = strResult6;
    double numeroBobinas = [numeroBobinasString intValue];
    
    
    double tiempoProduccion = ((millares / piezasMin) + (numeroBobinas * 5)) / 60;
    double minutosTiempoProduccion = tiempoProduccion * 60;
    
    //BREAK___________________________
    
    
    
    
    //FECHA ENTREGA
    NSDate *currentTime = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm - dd/MM/yyyy"];
    
    
    double horasAgregadasFinales = minutosTiempoProduccion *60;
    
    currentTime = [currentTime dateByAddingTimeInterval:(horasAgregadasFinales)];
    
    NSString *resultString = [dateFormatter stringFromDate: currentTime];
    
    
    _date.text = resultString;
    
    
    

    
    
    
    //INSERTAR EN HORA INICIO
    
    if (auxcenso10 == nil)
    {
        auxcenso10 = [[Censo alloc]init];
    }
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc]init];
    [timeFormat setDateFormat:@"HH:mm - dd/MM/yyyy"];
    auxcenso10.horaInicio = [timeFormat stringFromDate:[NSDate date]];
    
    
    NSString *strURL30 = [NSString stringWithFormat:@"http://192.168.42.250:85/horaInicio.php?pedido=%@&codigoUnico=%@&horaInicio=%@",_pedido.text, _codigoUnico.text, [auxcenso10.horaInicio stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSData *dataURL30 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL30]];
    
    NSString *strResult30 = [[NSString alloc] initWithData:dataURL30 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult30);
    
    
    
}






- (IBAction)continuar:(id)sender {
    
    //TIPO Y TIPO2
    
    if (((![_tipoText.text isEqualToString:@""]) && ([_tipo2Text.text isEqualToString:@""])) ||  (([_tipoText.text isEqualToString:@""]) && (![_tipo2Text.text isEqualToString:@""]))  ) {
        
        
        _continuarBoton.hidden = YES;
        _detenerBoton.hidden = NO;
        
        _muertos.hidden = YES;
        start = false;
        
        NSTimeInterval currentTime1 = [NSDate timeIntervalSinceReferenceDate];
        NSTimeInterval elapsedTime1 = currentTime1 - time;
        
        
        int minutes1 = (int)(elapsedTime1 / 60.0);
        
        //int seconds1 = (int)(elapsedTime1 = elapsedTime1 - (minutes1 * 60));
        
        //self.prueaba.text = [NSString stringWithFormat:@"%u", minutes1];
        
        
        //NSString *piezasMinString = strResult5;
        //double piezasMin = [piezasMinString intValue];
        //NSString *juancho = [NSString stringWithFormat:@"%10.4f", tiempoProduccion];
        
        NSString *minutesJuancho = [NSString stringWithFormat:@"%u", minutes1];
        auxcenso3.muertos = minutesJuancho;
        //self.muertos.text = minutesJuancho;
        
        NSString *strURL10 = [NSString stringWithFormat:@"http://192.168.42.250:85/minMuertos.php?pedido=%@&codigoUnico=%@&minMuertos=%@",_pedido.text, _codigoUnico.text, [minutesJuancho stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
        //_pedido.text, auxcenso3.muertos
        
        NSData *dataURL10 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL10]];
        
        NSString *strResult10 = [[NSString alloc] initWithData:dataURL10 encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult10);
        
        // self.muertos.text = @"";
        
        
        
        //GET HORA INICIO
        NSString *strURL50 = [NSString stringWithFormat:@"http://192.168.42.250:85/pruebagetFinal.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
        
        NSData *dataURL50 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL50]];
        
        NSString *strResult50 = [[NSString alloc] initWithData:dataURL50 encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult50);
        
        
        
        //AGARRAR TIEMPO PRODUCCION OTRA VEZ
        //BREAK_______________
        
        //MILLARES
        NSString *strURL4 = [NSString stringWithFormat:@"http://192.168.42.250:85/zubex3.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
        
        NSData *dataURL4 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL4]];
        
        NSString *strResult4 = [[NSString alloc] initWithData:dataURL4 encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult4);
        
        NSString *millaresString = strResult4;
        double millares = [millaresString intValue];
        
        
        //PIEZAS MINUTO
        NSString *strURL5 = [NSString stringWithFormat:@"http://192.168.42.250:85/zubex4.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
        
        NSData *dataURL5 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL5]];
        
        NSString *strResult5 = [[NSString alloc] initWithData:dataURL5 encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult5);
        
        NSString *piezasMinString = strResult5;
        double piezasMin = [piezasMinString intValue];
        
        
        
        //NUMERO BOBINAS
        NSString *strURL6 = [NSString stringWithFormat:@"http://192.168.42.250:85/zubex5.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
        
        NSData *dataURL6 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL6]];
        
        NSString *strResult6 = [[NSString alloc] initWithData:dataURL6 encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult6);
        
        
        NSString *numeroBobinasString = strResult6;
        double numeroBobinas = [numeroBobinasString intValue];
        
        
        double tiempoProduccion = ((millares / piezasMin) + (numeroBobinas * 5)) / 60;
        double minutosTiempoProduccion = tiempoProduccion * 60;
        
        //BREAK___________________________
        
        
        //FECHA ENTREGA
        
        
        double horasAgregadasFinales = minutosTiempoProduccion *60;
        
        //FECHA FINAL
        NSString *dateString = strResult50;
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.dateFormat = @"HH:mm - dd/MM/yyyy";
        NSDate *date = [dateFormatter dateFromString:dateString];
        date = [date dateByAddingTimeInterval:(horasAgregadasFinales)];
        
        //SUMA MINUTOS MUERTOS
        NSString *strURL61 = [NSString stringWithFormat:@"http://192.168.42.250:85/getMinMuertosFecha.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
        
        NSData *dataURL61 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL61]];
        
        NSString *strResult61 = [[NSString alloc] initWithData:dataURL61 encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult61);
        
        
        double preMinMuertosFecha = [strResult61 intValue];
        
        double sumMinMuertosFecha = preMinMuertosFecha * 60;
        
        date = [date dateByAddingTimeInterval:(sumMinMuertosFecha)];
        NSString *resultString2 = [dateFormatter stringFromDate: date];
        
        
        //self.fechaFija.text = resultString2;
        _date.text = resultString2;
        
        
        
        self.maquina.text = @"1";
        
        
        
        
        
        
        if (auxcenso5 == nil)
        {
            auxcenso5 = [[Censo alloc]init];
        }
        switch (_turno.selectedSegmentIndex) {
            case 0:
                auxcenso5.turno = @"DIA";
                break;
            case 1:
                auxcenso5.turno = @"TARDE";
                break;
            case 2:
                auxcenso5.turno = @"NOCHE";
                break;
            case 3:
                auxcenso5.turno = @"12 HORAS";
            default:
                break;
                
        }
        
        
        //MINUTOS MUERTOS ETE  (SOLAMENTE MINUTOS MUERTOS DE TIPO 1
        
        
        if ([_tipo2Text.text isEqual:@""]) {
            
            
            
            NSString *strURL20 = [NSString stringWithFormat:@"http://192.168.42.250:85/minMuertosETE.php?pedido=%@&codigoUnico=%@&minMuertos=%@&nomina=%@&fecha=%@&turno=%@",_pedido.text, _codigoUnico.text, [self.muertos.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.nomina.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
            
            NSData *dataURL20 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL20]];
            
            NSString *strResult20 = [[NSString alloc] initWithData:dataURL20 encoding:NSUTF8StringEncoding];
            
            NSLog(@"%@", strResult20);
        }
        
        
        
        
        
        
        
        
        NSString *strURL11 = [NSString stringWithFormat:@"http://192.168.42.250:85/monitoreo.php?pedido=%@&codigoUnico=%@&hora=%@&click=%@&motivo=%@&motivo2=%@&observaciones=%@&nomina=%@&fecha=%@&maquina=%@", _pedido.text, _codigoUnico.text, [self.pruebaMillares.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso.click stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.tipoText.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.tipo2Text.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], _observaciones.text, _nomina.text, [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.maquina.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
        //_pedido.text, auxcenso3.muertos
        
        NSData *dataURL11 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL11]];
        
        NSString *strResult11 = [[NSString alloc] initWithData:dataURL11 encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult11);
        
        
        
        
        
        pickerDisponibilidad.hidden = YES;
        _tipoText.hidden = YES;
        _tipo2Text.hidden = YES;
        
        _observaciones.hidden = YES;
        
        _labelObervaciones.hidden = YES;
        _labelTipo.hidden = YES;
        
        self.observaciones.text = @"";
        
        
       
    }
    
    else {
    
    
    
        UIAlertView *alert3 = [[UIAlertView alloc]initWithTitle:@"ZUBEX" message:@"CAMPOS INCORRECTOS" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        
        [alert3 show];
    
  
}
}



























- (void)updateTime
{
    if (auxcenso == nil)
    {
        auxcenso = [[Censo alloc]init];
    }
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc]init];
    [timeFormat setDateFormat:@"hh:mm:ss"];
    auxcenso.click = [timeFormat stringFromDate:[NSDate date]];
    
    [self performSelector:@selector(updateTime) withObject:self afterDelay:1.0];
    
    
    if (auxcenso2 == nil) {
        auxcenso2 = [[Censo alloc]init];
    }
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyy-MM-dd"];
    auxcenso2.fecha = [dateFormat stringFromDate:[NSDate date]];
    
    
   // _date.text = [timeFormat stringFromDate:[NSDate date]];
    
    
    
}






- (IBAction)aparecerBobinas:(id)sender {
    
    _labelIdBobina.hidden = NO;
    _labelPesoInicial.hidden = NO;
    _labelProduccion.hidden = NO;
    _labelPiezasObtenidas.hidden = NO;
    _labelPesoFinal.hidden = NO;
    _labelFolio.hidden = NO;
    _idBobina.hidden = NO;
    _pesoInicial.hidden = NO;
    _produccion.hidden = NO;
    _piezasObtenidas.hidden = NO;
    _pesoFinal.hidden = NO;
    _folio.hidden = NO;
    _lote.hidden = NO;
    _loteLabel.hidden = NO;
    _caja.hidden = NO;
    _cajaLabel.hidden = NO;



    
}

- (IBAction)agregarBobinas:(id)sender {
    
    self.maquina.text = @"Bolseadora-1";
    
    
    
    NSString *piezasObtenidas = [NSString stringWithFormat:@"%@", _piezasObtenidas.text];
    double piezasObtenidasDouble = [piezasObtenidas doubleValue];
    
    
    NSString *ttcPiezasObtenidas = [NSString stringWithFormat:@"%@", _piezasMinDesempeno.text];
    double ttcPiezasObtenidasDesempeno = [ttcPiezasObtenidas doubleValue];
    
   
    
    
    
    double desempenoDouble = piezasObtenidasDouble * ttcPiezasObtenidasDesempeno;
    NSString *desempeno = [NSString stringWithFormat:@"%f", desempenoDouble];
    
   // _desempenoText.text = [NSString stringWithFormat:@"%@", desempeno];
    
    
    
    
    
    
    
    
    

    
    if (auxcenso5 == nil)
    {
        auxcenso5 = [[Censo alloc]init];
    }
    switch (_turno.selectedSegmentIndex) {
        case 0:
            auxcenso5.turno = @"DIA";
            break;
        case 1:
            auxcenso5.turno = @"TARDE";
            break;
        case 2:
            auxcenso5.turno = @"NOCHE";
            break;
        case 3:
            auxcenso5.turno = @"12 HORAS";
        default:
            break;
            
    }
    
    NSString *strURL12 = [NSString stringWithFormat:@"http://192.168.42.250:85/bobinas.php?pedido=%@&codigoUnico=%@&idBobina=%@&pesoInicial=%@&produccion=%@&piezasObtenidas=%@&pesoFinal=%@&folio=%@&nomina=%@&fecha=%@&turno=%@&caja=%@&lote=%@&maquina=%@",_pedido.text, _codigoUnico.text, _idBobina.text, _pesoInicial.text, _produccion.text, _piezasObtenidas.text, _pesoFinal.text, _folio.text, [self.nomina.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.caja.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.lote.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.maquina.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSData *dataURL12 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL12]];
    
    NSString *strResult12 = [[NSString alloc] initWithData:dataURL12 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult12);
    
    
    _labelIdBobina.hidden = YES;
    _labelPesoInicial.hidden = YES;
    _labelProduccion.hidden = YES;
    _labelPiezasObtenidas.hidden = YES;
    _labelPesoFinal.hidden = YES;
    _labelFolio.hidden = YES;
    _idBobina.hidden = YES;
    _pesoInicial.hidden = YES;
    _produccion.hidden = YES;
    _piezasObtenidas.hidden = YES;
    _pesoFinal.hidden = YES;
    _folio.hidden = YES;
    _lote.hidden = YES;
    _loteLabel.hidden = YES;
    _caja.hidden = YES;
    _cajaLabel.hidden = YES;
    _produccion.text = @"";
    _caja.text = @"";
    _piezasObtenidas.text = @"";
    _folio.text = @"";
    
     UIAlertView *alert3 = [[UIAlertView alloc]initWithTitle:@"ZUBEX" message:@"BOBINA AGREGADA" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [alert3 show];
    
    
    
    
    
    
    
    
    //agregar a base de datos desempeno
    
    NSString *strURL126 = [NSString stringWithFormat:@"http://192.168.42.250:85/desempeno.php?nomina=%@&turno=%@&fecha=%@&pedido=%@&codigoUnico=%@&piezas=%f&ttc=%@&desempeno=%f",_nomina.text, [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], _pedido.text, [_codigoUnico.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], piezasObtenidasDouble, _piezasMinDesempeno.text, desempenoDouble];
    
    NSData *dataURL126 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL126]];
    
    NSString *strResult126 = [[NSString alloc] initWithData:dataURL126 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult126);

    
    
    
    
    
    
    
}






//- (IBAction)ETE:(id)sender {
//    
//    _signoPercent.hidden = NO;
//    
//    if (auxcenso5 == nil)
//    {
//        auxcenso5 = [[Censo alloc]init];
//    }
//    switch (_turno.selectedSegmentIndex) {
//        case 0:
//            auxcenso5.turno = @"DIA";
//            break;
//        case 1:
//            auxcenso5.turno = @"TARDE";
//            break;
//        case 2:
//            auxcenso5.turno = @"NOCHE";
//            break;
//        case 3:
//            auxcenso5.turno = @"12 HORAS";
//        default:
//            break;
//            
//    }
//    
//    NSString *strURL23 = [NSString stringWithFormat:@"http://192.168.42.250:85/sumMinMuertos.php?nomina=%@&fecha=%@&turno=%@",_nomina.text, [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
//    
//    NSData *dataURL23 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL23]];
//    
//    NSString *strResult23 = [[NSString alloc] initWithData:dataURL23 encoding:NSUTF8StringEncoding];
//    
//    NSLog(@"%@", strResult23);
//
//    NSString *res = strResult23;
//    
//    int minMuertos = [res intValue];
//    
//    switch (_turno.selectedSegmentIndex) {
//        case 0:
//            self.resultadoETE.text = @"510";
//            break;
//        case 1:
//            self.resultadoETE.text = @"480";
//            break;
//        case 2:
//            self.resultadoETE.text = @"450";
//            break;
//        case 3:
//            self.resultadoETE.text = @"720";
//        default:
//            break;
//            
//            }
//    
//    
//    NSString *time = _resultadoETE.text;
//    int tiempoTurno = [time intValue];
//    
//    
//    
//    
//    
//    
//    
//    //DISPONIBILIDAD
//    double minOperacion = tiempoTurno - minMuertos;
//    
//    double disponibilidad = minOperacion / tiempoTurno;
//    
//    
//    NSString *final = [NSString stringWithFormat:@"%10.4f", disponibilidad];
//    
//    
//    
//    //DESEMPENO
//    NSString *strURL24 = [NSString stringWithFormat:@"http://192.168.42.250:85/ttc.php?pedido=%@",_pedido.text];
//    
//    NSData *dataURL24 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL24]];
//    
//    NSString *strResult24 = [[NSString alloc] initWithData:dataURL24 encoding:NSUTF8StringEncoding];
//    
//    NSLog(@"%@", strResult24);
//    
//    NSString *res1 = strResult24;
//    
//    double ttc = [res1 intValue];
//    
//    double ttc2 = 1 / ttc;
//    
//    NSString *final1 = [NSString stringWithFormat:@"%10.4f", ttc2];
//
//    
//    
//    NSString *strURL25 = [NSString stringWithFormat:@"http://192.168.42.250:85/sumPiezasObtenidas.php?nomina=%@&fecha=%@&turno=%@",_nomina.text, [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] ];
//    
//    NSData *dataURL25 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL25]];
//    
//    NSString *strResult25 = [[NSString alloc] initWithData:dataURL25 encoding:NSUTF8StringEncoding];
//    
//    NSLog(@"%@", strResult25);
//    
//    
//    NSString *res2 = strResult25;
//    
//    double piezasProducidas = [res2 intValue];
//    
//    double desempeno = (ttc2 * piezasProducidas) / minOperacion;
//    
//    
//    
//    
//    NSString *final2 = [NSString stringWithFormat:@"%10.4f", desempeno];
//
//    
//    
//    //CALIDAD
//    NSString *strURL26 = [NSString stringWithFormat:@"http://192.168.42.250:85/sumPesoInicial.php?nomina=%@&fecha=%@&turno=%@",_nomina.text, [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] ];
//    
//    NSData *dataURL26 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL26]];
//    
//    NSString *strResult26 = [[NSString alloc] initWithData:dataURL26 encoding:NSUTF8StringEncoding];
//    
//    NSLog(@"%@", strResult26);
//
//    NSString *res3 = strResult26;
//    
//    double pesoInicial = [res3 intValue];
//    
//    NSString *strURL27 = [NSString stringWithFormat:@"http://192.168.42.250:85/sumPesoFinal.php?nomina=%@&fecha=%@&turno=%@",_nomina.text, [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] ];
//    
//    NSData *dataURL27 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL27]];
//    
//    NSString *strResult27 = [[NSString alloc] initWithData:dataURL27 encoding:NSUTF8StringEncoding];
//    
//    NSLog(@"%@", strResult27);
//    
//    
//    NSString *res4 = strResult27;
//    
//    double produccion = [res4 intValue];
//    
//    double merma = pesoInicial - produccion;
//    
//    double calidad = (pesoInicial - merma) / pesoInicial;
//    
//    
//    //ETE
//    
//    double ete = (disponibilidad * desempeno * calidad) *100;
//    
//    
//    
//    
//    
//    
//    NSString *final10 = [NSString stringWithFormat:@"%10.2f", ete];
//
//
//    _prueba1.text = final10;
//    
//    
//}






- (IBAction)agregarMerma:(id)sender {
    
    if (auxcenso5 == nil)
    {
        auxcenso5 = [[Censo alloc]init];
    }
    switch (_turno.selectedSegmentIndex) {
        case 0:
            auxcenso5.turno = @"DIA";
            break;
        case 1:
            auxcenso5.turno = @"TARDE";
            break;
        case 2:
            auxcenso5.turno = @"NOCHE";
            break;
        case 3:
            auxcenso5.turno = @"12 HORAS";
        default:
            break;
            
    }

    
    
    
    
    // PEso inicial que esta en el text
    NSString *pesoInicialInt = _pesoInicial.text;
    double pesoInicialFinal = [pesoInicialInt doubleValue];
    
    
    //peso inicial
    NSString *pesoFinalFinal = _pesoFinal.text;
    double pesoFinalFinalInt = [pesoFinalFinal doubleValue];
    
    //produccion es la suma de todas las producciones
    NSString *strURL270 = [NSString stringWithFormat:@"http://192.168.42.250:85/sumProduccion.php?nomina=%@&idBobina=%@&pedido=%@&codigoUnico=%@",_nomina.text, _idBobina.text, _pedido.text, _codigoUnico.text];
    
    NSData *dataURL270 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL270]];
    
    NSString *strResult270 = [[NSString alloc] initWithData:dataURL270 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult270);
    
    NSString *produccionInt = strResult270;
    double produccionFinal = [produccionInt doubleValue];
    
    
    
    NSString *strURL2700 = [NSString stringWithFormat:@"http://192.168.42.250:85/sumDetenidos.php?pedido=%@&codigoUnico=%@",_pedido.text, _codigoUnico.text];
    
    NSData *dataURL2700 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL2700]];
    
    NSString *strResult2700 = [[NSString alloc] initWithData:dataURL2700 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult2700);
    
    NSString *kgDetenidos = strResult2700;
    double kgDetenidosInt = [kgDetenidos doubleValue];
    
    
    double mermaComparacionInt = pesoInicialFinal - produccionFinal - pesoFinalFinalInt - kgDetenidosInt;
    
    NSString *mermaComparacionFinal = [NSString stringWithFormat:@"%f", mermaComparacionInt];
    
    
    NSString *arranquesInt = _arranques.text;
    double arranques = [arranquesInt doubleValue];
    
    NSString *colillaInt = _colilla.text;
    double colilla = [colillaInt doubleValue];
    
    NSString *atoronesInt = _atorones.text;
    double atorones = [atoronesInt doubleValue];
    
    NSString *malSelloInt = _malSello.text;
    double malSello = [malSelloInt doubleValue];
    
    NSString *refiladoInt = _refilado.text;
    double refilado = [refiladoInt doubleValue];
    
    NSString *desfaseInt = _desfase.text;
    double desfase = [desfaseInt doubleValue];
    
    NSString *tonoBajoInt = _tonoBajo.text;
    double tonoBajo = [tonoBajoInt doubleValue];
    
    NSString *manchasInt = _manchas.text;
    double manchas = [manchasInt doubleValue];
    
    NSString *brincosInt = _brincos.text;
    double brincos = [brincosInt doubleValue];
    
    NSString *malEmbInt = _malEmb.text;
    double malEmb = [malEmbInt doubleValue];
    
    NSString *sobrantesImpresionInt = _sobrantesImpresion.text;
    double sobrantesImpresion = [sobrantesImpresionInt doubleValue];
    
    NSString *arrugasInt = _arrugas.text;
    double arrugas = [arrugasInt doubleValue];
    
    NSString *descalibreInt = _descalibre.text;
    double descalibre = [descalibreInt doubleValue];
    
    NSString *parchesInt = _parches.text;
    double parches = [parchesInt doubleValue];
    
    NSString *medidaInt = _medida.text;
    double medida = [medidaInt doubleValue];
    
    NSString *grumosInt = _grumos.text;
    double grumos = [grumosInt doubleValue];
    
    NSString *bloqueoInt = _bloqueo.text;
    double bloqueo = [bloqueoInt doubleValue];
    
    NSString *sobrantesExtrusionInt = _sobrantesExtrusion.text;
    double sobrantesExtrusion = [sobrantesExtrusionInt doubleValue];
    
    
    double sumaMerma = colilla + arranques + atorones + malSello + refilado + desfase + tonoBajo + manchas + brincos + malEmb + sobrantesImpresion + arrugas + descalibre + parches + medida + grumos + bloqueo + sobrantesExtrusion;
    
    NSString *sumaMermaString = [NSString stringWithFormat:@"%f", sumaMerma];
    
    self.maquina.text = @"Bolseadora-1";

    if ([sumaMermaString isEqual: mermaComparacionFinal]) {
        
        NSString *strURL30 = [NSString stringWithFormat:@"http://192.168.42.250:85/mermaBolseo.php?pedido=%@&codigoUnico=%@&arranques=%@&colilla=%@&atorones=%@&malSello=%@&refilado=%@&maquina=%@&fecha=%@&nomina=%@&turno=%@",_pedido.text, _codigoUnico.text, _arranques.text, _colilla.text, _atorones.text, _malSello.text, _refilado.text, _maquina.text, [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], _nomina.text, [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
        
        NSData *dataURL30 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL30]];
        
        NSString *strResult30 = [[NSString alloc] initWithData:dataURL30 encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult30);
        
        
        NSString *strURL31 = [NSString stringWithFormat:@"http://192.168.42.250:85/mermaImpresion.php?pedido=%@&codigoUnico=%@&desfase=%@&tonoBajo=%@&manchas=%@&brincos=%@&malEmb=%@&sobrantes=%@&maquina=%@",_pedido.text, _codigoUnico.text, _desfase.text, _tonoBajo.text, _manchas.text, _brincos.text, _malEmb.text, _sobrantesImpresion.text, _maquina.text];
        
        NSData *dataURL31 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL31]];
        
        NSString *strResult31 = [[NSString alloc] initWithData:dataURL31 encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult31);
        
        
        
        NSString *strURL32 = [NSString stringWithFormat:@"http://192.168.42.250:85/mermaExtrusion.php?pedido=%@&codigoUnico=%@&arrugas=%@&descalibre=%@&parches=%@&medida=%@&grumos=%@&bloqueo=%@&sobrantes=%@&maquina=%@",_pedido.text, _codigoUnico.text,_arrugas.text, _descalibre.text, _parches.text, _medida.text, _grumos.text, _bloqueo.text, _sobrantesExtrusion.text, _maquina.text];
        
        NSData *dataURL32 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL32]];
        
        NSString *strResult32 = [[NSString alloc] initWithData:dataURL32 encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult32);
        
        _arranques.hidden = YES;
        _colilla.hidden = YES;
        _atorones.hidden = YES;
        _malSello.hidden = YES;
        _refilado.hidden = YES;
        _desfase.hidden = YES;
        _tonoBajo.hidden = YES;
        _manchas.hidden = YES;
        _brincos.hidden = YES;
        _malEmb.hidden = YES;
        _sobrantesImpresion.hidden = YES;
        _arrugas.hidden = YES;
        _descalibre.hidden = YES;
        _parches.hidden = YES;
        _medida.hidden = YES;
        _grumos.hidden = YES;
        _bloqueo.hidden = YES;
        _sobrantesExtrusion.hidden = YES;
        
        
        _arranquesLabel.hidden = YES;
        _colillaLable.hidden = YES;
        _atoronesLabel.hidden = YES;
        _malSelloLabel.hidden = YES;
        _refiladoLabel.hidden = YES;
        _desfaseLabel.hidden = YES;
        _tonoBajoLabel.hidden = YES;
        _manchasLabel.hidden = YES;
        _brincosLabel.hidden = YES;
        _malEmbLabel.hidden = YES;
        _sobrantesLabel.hidden = YES;
        _arrugasLabel.hidden = YES;
        _descalibreLabel.hidden = YES;
        _parchesLabel.hidden = YES;
        _medidaLabel.hidden = YES;
        _grumosLabel.hidden = YES;
        _bloqueoLabel.hidden = YES;
        _sobrantesExtLabel.hidden = YES;
        
        
        
        
        _arranques.text = @"";
        _colilla.text = @"";
        _atorones.text = @"";
        _malSello.text = @"";
        _refilado.text = @"";
        _desfase.text = @"";
        _tonoBajo.text = @"";
        _manchas.text = @"";
        _brincos.text = @"";
        _malEmb.text = @"";
        _sobrantesImpresion.text = @"";
        _arrugas.text = @"";
        _descalibre.text = @"";
        _parches.text = @"";
        _medida.text = @"";
        _grumos.text = @"";
        _bloqueo.text = @"";
        _sobrantesExtrusion.text = @"";
        
//        
//        _arranquesLabel.text = @"";
//        _colillaLable.text = @"";
//        _atoronesLabel.text = @"";
//        _malSelloLabel.text = @"";
//        _refiladoLabel.text = @"";
//        _desfaseLabel.text = @"";
//        _tonoBajoLabel.text = @"";
//        _manchasLabel.text = @"";
//        _brincosLabel.text = @"";
//        _malEmbLabel.text = @"";
//        _sobrantesLabel.text = @"";
//        _arrugasLabel.text = @"";
//        _descalibreLabel.text = @"";
//        _parchesLabel.text = @"";
//        _medidaLabel.text = @"";
//        _grumosLabel.text = @"";
//        _bloqueoLabel.text = @"";
//        _sobrantesExtLabel.text = @"";
        
        
        
        
        UIAlertView *alert5 = [[UIAlertView alloc]initWithTitle:@"ZUBEX" message:@"MERMA AGREGADA" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        
        [alert5 show];

        
        
    }
    else {
        
        
        double mermaFaltante = mermaComparacionInt - sumaMerma;
        NSString *mermaFaltanteString = [NSString stringWithFormat:@"%0.3f", mermaFaltante];
        
        
        
        UIAlertView *alertMerma = [[UIAlertView alloc]initWithTitle:@"ZUBEX" message:mermaFaltanteString delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertMerma show];
        
    }
    

    
    
    
    
    
    
    

    
}

- (IBAction)bolseo:(id)sender {
    
    //arranques
    if (_arranques.hidden) {
        
        _arranques.hidden = NO;
        
    } else if (!_arranques.hidden) {
        
        _arranques.hidden = YES;
        
    }
    
    if (_arranquesLabel.hidden) {
        
        _arranquesLabel.hidden = NO;
        
    } else if (!_arranquesLabel.hidden) {
        
        _arranquesLabel.hidden = YES;
        
    }
    
    //colilla
    
    if (_colilla.hidden) {
        
        _colilla.hidden = NO;
        
    } else if (!_colilla.hidden) {
        
        _colilla.hidden = YES;
        
    }
    
    if (_colillaLable.hidden) {
        
        _colillaLable.hidden = NO;
        
    } else if (!_colillaLable.hidden) {
        
        _colillaLable.hidden = YES;
        
    }
    
    //atorones
    
    if (_atorones.hidden) {
        
        _atorones.hidden = NO;
        
    } else if (!_atorones.hidden) {
        
        _atorones.hidden = YES;
        
    }
    
    if (_atoronesLabel.hidden) {
        
        _atoronesLabel.hidden = NO;
        
    } else if (!_atoronesLabel.hidden) {
        
        _atoronesLabel.hidden = YES;
        
    }
    
    //malSello
    
    if (_malSello.hidden) {
        
        _malSello.hidden = NO;
        
    } else if (!_malSello.hidden) {
        
        _malSello.hidden = YES;
        
    }
    
    if (_malSelloLabel.hidden) {
        
        _malSelloLabel.hidden = NO;
        
    } else if (!_malSelloLabel.hidden) {
        
        _malSelloLabel.hidden = YES;
        
    }
    
    //refilado
    
    if (_refilado.hidden) {
        
        _refilado.hidden = NO;
        
    } else if (!_refilado.hidden) {
        
        _refilado.hidden = YES;
        
    }
    
    
    if (_refiladoLabel.hidden) {
        
        _refiladoLabel.hidden = NO;
        
    } else if (!_refiladoLabel.hidden) {
        
        _refiladoLabel.hidden = YES;
        
    }
    
    
    
}

- (IBAction)impresion:(id)sender {
    
    //desfase
    if (_desfase.hidden) {
        
        _desfase.hidden = NO;
        
    } else if (!_desfase.hidden) {
        
        _desfase.hidden = YES;
        
    }
    
    if (_desfaseLabel.hidden) {
        
        _desfaseLabel.hidden = NO;
        
    } else if (!_desfaseLabel.hidden) {
        
        _desfaseLabel.hidden = YES;
        
    }
    
    
    //tonobajo
    
    if (_tonoBajo.hidden) {
        
        _tonoBajo.hidden = NO;
        
    } else if (!_tonoBajo.hidden) {
        
        _tonoBajo.hidden = YES;
        
    }
    
    if (_tonoBajoLabel.hidden) {
        
        _tonoBajoLabel.hidden = NO;
        
    } else if (!_tonoBajoLabel.hidden) {
        
        _tonoBajoLabel.hidden = YES;
        
    }
    
    
    //manchas
    if (_manchas.hidden) {
        
        _manchas.hidden = NO;
        
    } else if (!_manchas.hidden) {
        
        _manchas.hidden = YES;
        
    }
    
    if (_manchasLabel.hidden) {
        
        _manchasLabel.hidden = NO;
        
    } else if (!_manchasLabel.hidden) {
        
        _manchasLabel.hidden = YES;
        
    }
    
    //brincos
    
    if (_brincos.hidden) {
        
        _brincos.hidden = NO;
        
    } else if (!_brincos.hidden) {
        
        _brincos.hidden = YES;
        
    }
    
    if (_brincosLabel.hidden) {
        
        _brincosLabel.hidden = NO;
        
    } else if (!_brincosLabel.hidden) {
        
        _brincosLabel.hidden = YES;
        
    }
    
    
    //malEmb
    

    if (_malEmb.hidden) {
        
        _malEmb.hidden = NO;
        
    } else if (!_malEmb.hidden) {
        
        _malEmb.hidden = YES;
        
    }
    
    if (_malEmbLabel.hidden) {
        
        _malEmbLabel.hidden = NO;
        
    } else if (!_malEmbLabel.hidden) {
        
        _malEmbLabel.hidden = YES;
        
    }
    
    
    //sobrantesImpresion
    
    if (_sobrantesImpresion.hidden) {
        
        _sobrantesImpresion.hidden = NO;
        
    } else if (!_sobrantesImpresion.hidden) {
        
        _sobrantesImpresion.hidden = YES;
        
    }
    
    if (_sobrantesLabel.hidden) {
        
        _sobrantesLabel.hidden = NO;
        
    } else if (!_sobrantesLabel.hidden) {
        
        _sobrantesLabel.hidden = YES;
        
    }
    
  
    
    
}

- (IBAction)extrusion:(id)sender {
    
    //arrugas
    if (_arrugas.hidden) {
        
        _arrugas.hidden = NO;
        
    } else if (!_arrugas.hidden) {
        
        _arrugas.hidden = YES;
        
    }
    
    if (_arrugasLabel.hidden) {
        
        _arrugasLabel.hidden = NO;
        
    } else if (!_arrugasLabel.hidden) {
        
        _arrugasLabel.hidden = YES;
        
    }
    
    //descalibre
    if (_descalibre.hidden) {
        
        _descalibre.hidden = NO;
        
    } else if (!_descalibre.hidden) {
        
        _descalibre.hidden = YES;
        
    }
    
    if (_descalibreLabel.hidden) {
        
        _descalibreLabel.hidden = NO;
        
    } else if (!_descalibreLabel.hidden) {
        
        _descalibreLabel.hidden = YES;
        
    }
    
    
    //parches
    
    if (_parches.hidden) {
        
        _parches.hidden = NO;
        
    } else if (!_parches.hidden) {
        
        _parches.hidden = YES;
        
    }
    
    if (_parchesLabel.hidden) {
        
        _parchesLabel.hidden = NO;
        
    } else if (!_parchesLabel.hidden) {
        
        _parchesLabel.hidden = YES;
        
    }
    
    
    //medida
    
    if (_medida.hidden) {
        
        _medida.hidden = NO;
        
    } else if (!_medida.hidden) {
        
        _medida.hidden = YES;
        
    }
    
    if (_medidaLabel.hidden) {
        
        _medidaLabel.hidden = NO;
        
    } else if (!_medidaLabel.hidden) {
        
        _medidaLabel.hidden = YES;
        
    }
    
    
    //grumos
    if (_grumos.hidden) {
        
        _grumos.hidden = NO;
        
    } else if (!_grumos.hidden) {
        
        _grumos.hidden = YES;
        
    }
    
    if (_grumosLabel.hidden) {
        
        _grumosLabel.hidden = NO;
        
    } else if (!_grumosLabel.hidden) {
        
        _grumosLabel.hidden = YES;
        
    }
    
    
    
    //bloqueo
    
    if (_bloqueo.hidden) {
        
        _bloqueo.hidden = NO;
        
    } else if (!_bloqueo.hidden) {
        
        _bloqueo.hidden = YES;
        
    }
    
    if (_bloqueoLabel.hidden) {
        
        _bloqueoLabel.hidden = NO;
        
    } else if (!_bloqueoLabel.hidden) {
        
        _bloqueoLabel.hidden = YES;
        
    }
    
    
    //sobrantesextrusino
    
    if (_sobrantesExtrusion.hidden) {
        
        _sobrantesExtrusion.hidden = NO;
        
    } else if (!_sobrantesExtrusion.hidden) {
        
        _sobrantesExtrusion.hidden = YES;
        
    }
    
    if (_sobrantesExtLabel.hidden) {
        
        _sobrantesExtLabel.hidden = NO;
        
    } else if (!_sobrantesExtLabel.hidden) {
        
        _sobrantesExtLabel.hidden = YES;
        
    }
    
    
    
    //_arrugas.hidden = NO;
    //_descalibre.hidden = NO;
    //_parches.hidden = NO;
    //_medida.hidden = NO;
    //_grumos.hidden = NO;
    //_bloqueo.hidden = NO;
//    _sobrantesExtrusion.hidden = NO;
//    _arrugasLabel.hidden = NO;
//    _descalibreLabel.hidden = NO;
//    _parchesLabel.hidden = NO;
//    _medidaLabel.hidden = NO;
//    _grumosLabel.hidden = NO;
//    _bloqueoLabel.hidden = NO;
//    _sobrantesExtLabel.hidden = NO;
}










- (IBAction)date:(id)sender {
    
   

}





- (IBAction)reiniciar:(id)sender {
    
    if ([_tiempoSellos.text isEqualToString:@""]) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"ZUBEX" message:@"PARAMETROS INCOMPLETOS" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
    else
    
    {
    
    _pedido.text = @"";
    _codigoUnico.text = @"";
    _descripcion.text = @"";
    _descripcionPedido.text = @"";
    _pruebaMillares.text = @"";
    _muertos.text = @"";
    _tipoText.text = @"";
    _tipo2Text.text = @"";
    _observaciones.text = @"";
    _idBobina.text = @"";
    _pesoInicial.text = @"";
    _produccion.text = @"";
    _piezasObtenidas.text = @"";
    _pesoFinal.text = @"";
    _folio.text = @"";
    _arranques.text = @"";
    _colilla.text = @"";
    _atorones.text = @"";
    _malSello.text = @"";
    _refilado.text = @"";
    _desfase.text = @"";
    _tonoBajo.text = @"";
    _manchas.text = @"";
    _brincos.text = @"";
    _malEmb.text = @"";
    _sobrantesImpresion.text = @"";
    _arrugas.text = @"";
    _descalibre.text = @"";
    _parches.text = @"";
    _medida.text = @"";
    _grumos.text = @"";
    _bloqueo.text = @"";
    _sobrantesExtrusion.text = @"";
    _date.text = @"";
    _minFinales.text = @"";
    _lote.text = @"";
        

    _selloUno.text = @"";
    _selloDos.text = @"";
    _selloTres.text = @"";
    _selloCuatro.text = @"";
    _distanciaSellos.text = @"";
    _tiempoSellos.text = @"";

        
    _codigoCompleto.text = @"";
    
    
    _continuarBoton.hidden = YES;
    _detenerBoton.hidden = YES;
    _iniciarBoton.hidden = NO;
    
    
    
    _minFinalesLabel.hidden = YES;
    _labelMaquina.hidden = YES;
    _maquina.hidden = YES;
    _signoPercent.hidden = YES;
    _muertos.hidden = NO;
    _resultadoETE.hidden = YES;
    _labelHoras.hidden = YES;
    pickerDisponibilidad.hidden = YES;
    _tipoText.hidden = YES;
    _tipo2Text.hidden = YES;
    _observaciones.hidden = YES;
    _labelObervaciones.hidden = YES;
    _labelTipo.hidden = YES;
    _labelIdBobina.hidden = YES;
    _labelPesoInicial.hidden = YES;
    _labelProduccion.hidden = YES;
    _labelPiezasObtenidas.hidden = YES;
    _labelPesoFinal.hidden = YES;
    _labelFolio.hidden = YES;
    _idBobina.hidden = YES;
    _pesoInicial.hidden = YES;
    _produccion.hidden = YES;
    _piezasObtenidas.hidden = YES;
    _pesoFinal.hidden = YES;
    _folio.hidden = YES;
    _lote.hidden = YES;
    _loteLabel.hidden = YES;
    _caja.hidden = YES;
    _cajaLabel.hidden = YES;
    
    //MERMA HIDDEN
    _arranques.hidden = YES;
    _colilla.hidden = YES;
    _atorones.hidden = YES;
    _malSello.hidden = YES;
    _refilado.hidden = YES;
    _desfase.hidden = YES;
    _tonoBajo.hidden = YES;
    _manchas.hidden = YES;
    _brincos.hidden = YES;
    _malEmb.hidden = YES;
    _sobrantesImpresion.hidden = YES;
    _arrugas.hidden = YES;
    _descalibre.hidden = YES;
    _parches.hidden = YES;
    _medida.hidden = YES;
    _grumos.hidden = YES;
    _bloqueo.hidden = YES;
    _sobrantesExtrusion.hidden = YES;
    
    
    _arranquesLabel.hidden = YES;
    _colillaLable.hidden = YES;
    _atoronesLabel.hidden = YES;
    _malSelloLabel.hidden = YES;
    _refiladoLabel.hidden = YES;
    _desfaseLabel.hidden = YES;
    _tonoBajoLabel.hidden = YES;
    _manchasLabel.hidden = YES;
    _brincosLabel.hidden = YES;
    _malEmbLabel.hidden = YES;
    _sobrantesLabel.hidden = YES;
    _arrugasLabel.hidden = YES;
    _descalibreLabel.hidden = YES;
    _parchesLabel.hidden = YES;
    _medidaLabel.hidden = YES;
    _grumosLabel.hidden = YES;
    _bloqueoLabel.hidden = YES;
    _sobrantesExtLabel.hidden = YES;
    _porciento.hidden = YES;
    _labelEteFinal.hidden = YES;
    _labelEficienciaFinal.hidden = YES;
        
        
        
        
    }
    
}













- (IBAction)sellos:(id)sender {
    
    _maquina.text = @"Bolseadora-1";
    
    if (auxcenso5 == nil)
    {
        auxcenso5 = [[Censo alloc]init];
    }
    switch (_turno.selectedSegmentIndex) {
        case 0:
            auxcenso5.turno = @"DIA";
            break;
        case 1:
            auxcenso5.turno = @"TARDE";
            break;
        case 2:
            auxcenso5.turno = @"NOCHE";
            break;
        case 3:
            auxcenso5.turno = @"12 HORAS";
        default:
            break;
            
    }

    
    NSString *strURL80 = [NSString stringWithFormat:@"http://192.168.42.250:85/parametros.php?nomina=%@&turno=%@&pedido=%@&codigoUnico=%@&maquina=%@&selloUno=%@&selloDos=%@&selloTres=%@&selloCuatro=%@&distancia=%@&tiempo=%@&fecha=%@",[_nomina.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.pedido.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding],[_codigoUnico.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [_maquina.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.selloUno.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.selloDos.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.selloTres.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.selloCuatro.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.distanciaSellos.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.tiempoSellos.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSData *dataURL80 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL80]];
    
    NSString *strResult80 = [[NSString alloc] initWithData:dataURL80 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult80);
    
    _selloUno.text = @"";
    _selloDos.text = @"";
    _selloTres.text = @"";
    _selloCuatro.text = @"";
    _distanciaSellos.text = @"";
    _tiempoSellos.text = @"";
    
    
    
}
- (IBAction)detenidos:(id)sender {
    
    
    //bobinas detenidos
    if (_bobinasDetenidos.hidden) {
        
        _bobinasDetenidos.hidden = NO;
        
    } else if (!_bobinasDetenidos.hidden) {
        
        _bobinasDetenidos.hidden = YES;
        
    }
    
    if (_bobinasDetenidosLabel.hidden) {
        
        _bobinasDetenidosLabel.hidden = NO;
        
    } else if (!_bobinasDetenidosLabel.hidden) {
        
        _bobinasDetenidosLabel.hidden = YES;
        
    }
    
    
    //id detenidos
    if (_idDetenidos.hidden) {
        
        _idDetenidos.hidden = NO;
        
    } else if (!_idDetenidos.hidden) {
        
        _idDetenidos.hidden = YES;
        
    }
    
    if (_idDetenidosLabel.hidden) {
        
        _idDetenidosLabel.hidden = NO;
        
    } else if (!_idDetenidosLabel.hidden) {
        
        _idDetenidosLabel.hidden = YES;
        
    }
    
    
    
    //kg detenidos
    if (_kgDetenidos.hidden) {
        
        _kgDetenidos.hidden = NO;
        
    } else if (!_kgDetenidos.hidden) {
        
        _kgDetenidos.hidden = YES;
        
    }
    
    if (_kgDetenidosLabel.hidden) {
        
        _kgDetenidosLabel.hidden = NO;
        
    } else if (!_kgDetenidosLabel.hidden) {
        
        _kgDetenidosLabel.hidden = YES;
        
    }
    
    
    
    //piezas detenidos
    if (_piezasDetenidos.hidden) {
        
        _piezasDetenidos.hidden = NO;
        
    } else if (!_piezasDetenidos.hidden) {
        
        _piezasDetenidos.hidden = YES;
        
    }
    
    if (_piezasDetenidosLabel.hidden) {
        
        _piezasDetenidosLabel.hidden = NO;
        
    } else if (!_piezasDetenidosLabel.hidden) {
        
        _piezasDetenidosLabel.hidden = YES;
        
    }
    
    
    
    //observaciones detenidos
    if (_observacionesDetenidos.hidden) {
        
        _observacionesDetenidos.hidden = NO;
        
    } else if (!_observacionesDetenidos.hidden) {
        
        _observacionesDetenidos.hidden = YES;
        
    }
    
    if (_observacionesDetenidosLabel.hidden) {
        
        _observacionesDetenidosLabel.hidden = NO;
        
    } else if (!_observacionesDetenidosLabel.hidden) {
        
        _observacionesDetenidosLabel.hidden = YES;
        
    }
    
    
    
    
    
}
- (IBAction)agregarDetenidos:(id)sender {
    
    
    
    
    self.maquina.text = @"Bolseadora-1";
    
    
    if (auxcenso5 == nil)
    {
        auxcenso5 = [[Censo alloc]init];
    }
    switch (_turno.selectedSegmentIndex) {
        case 0:
            auxcenso5.turno = @"DIA";
            break;
        case 1:
            auxcenso5.turno = @"TARDE";
            break;
        case 2:
            auxcenso5.turno = @"NOCHE";
            break;
        case 3:
            auxcenso5.turno = @"12 HORAS";
        default:
            break;
            
    }
    
    NSString *strURL128 = [NSString stringWithFormat:@"http://192.168.42.250:85/detenidos.php?nominaDetenidos=%@&turnoDetenidos=%@&pedidoDetenidos=%@&codigoUnicoDetenidos=%@&bobinasDetenidos=%@&idBobinasDetenidos%@&kgDetenidos=%@&piezasDetenidos=%@&observacionesDetenidos=%@",[self.nomina.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.pedido.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.codigoUnico.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.bobinasDetenidos.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.idDetenidos.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.kgDetenidos.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.piezasDetenidos.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [self.observacionesDetenidos.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSData *dataURL128 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL128]];
    
    NSString *strResult128 = [[NSString alloc] initWithData:dataURL128 encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult128);
    
    
    
    
    
    
    _bobinasDetenidos.hidden = YES;
    _bobinasDetenidosLabel.hidden = YES;
    _idDetenidos.hidden = YES;
    _idDetenidosLabel.hidden = YES;
    _kgDetenidos.hidden = YES;
    _kgDetenidosLabel.hidden = YES;
    _piezasDetenidos.hidden = YES;
    _piezasDetenidosLabel.hidden = YES;
    _observacionesDetenidos.hidden = YES;
    _observacionesDetenidosLabel.hidden = YES;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
- (IBAction)nuevoEteCalculo:(id)sender {
    
    self.maquina.text = @"Bolseadora-1";
    
    
    if (auxcenso5 == nil)
    {
        auxcenso5 = [[Censo alloc]init];
    }
    switch (_turno.selectedSegmentIndex) {
        case 0:
            auxcenso5.turno = @"DIA";
            break;
        case 1:
            auxcenso5.turno = @"TARDE";
            break;
        case 2:
            auxcenso5.turno = @"NOCHE";
            break;
        case 3:
            auxcenso5.turno = @"12 HORAS";
        default:
            break;
            
    }
    
    
    
    // NO EXISTE
    NSString *strURL25 = [NSString stringWithFormat:@"http://192.168.42.250:85/sumEteNuevo.php?nomina=%@&fecha=%@&turno=%@",_nomina.text, [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] ];
    
    NSData *dataURL25 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL25]];
    
    NSString *strResult25 = [[NSString alloc] initWithData:dataURL25 encoding:NSUTF8StringEncoding];
    
//    NSLog(@"1. %@", strResult25);
//    NSLog(@"1");
    
    
    NSString *sumaDesempeno = strResult25;
    
    //-------------------------------------------------------/
    double sumaDesempenoDouble = [sumaDesempeno doubleValue];
    //-------------------------------------------------------/
//    NSLog(@"Double sumadesemepnodobule:  %f", sumaDesempenoDouble);
    
    // EL PROBLEMA ESTA EN QUE NO EXISTE SUMETEUNUEVO, POR LO QUE NO EXISTE EL
    // DOUBLE DESEMPENO DOUBLE
    
    
    
    
    
    
    
   
    //CALCULAR MINUTOS MUERTOS OPERACION
    if (auxcenso5 == nil)
    {
        auxcenso5 = [[Censo alloc]init];
    }
    switch (_turno.selectedSegmentIndex) {
        case 0:
            auxcenso5.turno = @"DIA";
            break;
        case 1:
            auxcenso5.turno = @"TARDE";
            break;
        case 2:
            auxcenso5.turno = @"NOCHE";
            break;
        case 3:
            auxcenso5.turno = @"12 HORAS";
        default:
            break;
            
    }
    
    
    // SI EXISTE
    NSString *strURL23 = [NSString stringWithFormat:@"http://192.168.42.250:85/sumMinMuertos.php?nomina=%@&fecha=%@&turno=%@",_nomina.text, [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSData *dataURL23 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL23]];
    
    NSString *strResult23 = [[NSString alloc] initWithData:dataURL23 encoding:NSUTF8StringEncoding];
    
//    NSLog(@"2.summinmuertos %@", strResult23);
//    NSLog(@"SumMinMuertos");
//    
    NSString *res = strResult23;
    
    int minMuertos = [res intValue];
    
    switch (_turno.selectedSegmentIndex) {
        case 0:
            self.resultadoETE.text = @"510";
            break;
        case 1:
            self.resultadoETE.text = @"480";
            break;
        case 2:
            self.resultadoETE.text = @"450";
            break;
        case 3:
            self.resultadoETE.text = @"720";
        default:
            break;
            
    }
    
    
    
    // ETE DESEMPENO FINAL
    // SI ESTA BIEN
    NSString *time = _resultadoETE.text;
    int tiempoTurno = [time intValue];
    
    
    
    // ESTE PASO SI ESTA BIEN, PORQUE SI EXISTE TIEMPO TURNO Y MIN MUERTOS
    double minOperacion = tiempoTurno - minMuertos;
    
    
    // DISPONIBILIDAD
    //SI ESTA BIEN
    double disponibilidadEteNuevo = minOperacion / tiempoTurno;
    
    
    // DESEMPENO
    //AQUI ESTA MAL PORQUE FALTA SUMADESEMPENO DOUBLE
    //---------------------------------------------------------------------
    double eteDesempenoFinal = (sumaDesempenoDouble / minOperacion) * 100;
    //---------------------------------------------------------------------

    
    // ESTA MAL POR LO MISMO
    _prueba.text = [NSString stringWithFormat:@"%10.2f", eteDesempenoFinal];
    
    _porciento.hidden = NO;
    
    
    
    
    //SUMA PESO INICIAL
    // SI EXISTE
    NSString *strURL299 = [NSString stringWithFormat:@"http://192.168.42.250:85/sumPesoInicialEteNuevo.php?nomina=%@&fecha=%@&turno=%@",_nomina.text, [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSData *dataURL299 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL299]];
    
    NSString *strResult299 = [[NSString alloc] initWithData:dataURL299 encoding:NSUTF8StringEncoding];
    
//    NSLog(@"3. %@", strResult299);
    
     NSString *res299 = strResult299;
    
    
    double sumPesoInicialEteNuevoDouble = [res299 doubleValue];
    
    
    
    
    //AGARRAR MERMA BOLSEO ARRANQUES
    // SI EXISTE
    
    NSString *strURL300 = [NSString stringWithFormat:@"http://192.168.42.250:85/sumMermaBolseoArranques.php?nomina=%@&fecha=%@&turno=%@",_nomina.text, [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSData *dataURL300 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL300]];
    
    NSString *strResult300 = [[NSString alloc] initWithData:dataURL300 encoding:NSUTF8StringEncoding];
    
//    NSLog(@"4. %@", strResult300);
    
    NSString *res300 = strResult300;
    
    
    double mermaBolseoArranques = [res300 doubleValue];
    
    
    
    
    
    // AGARRAR MERMA BOLSEO COLILLAS
    // SI EXISTE
    
    
    NSString *strURL301 = [NSString stringWithFormat:@"http://192.168.42.250:85/sumMermaBolseoColilla.php?nomina=%@&fecha=%@&turno=%@",_nomina.text, [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSData *dataURL301 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL301]];
    
    NSString *strResult301 = [[NSString alloc] initWithData:dataURL301 encoding:NSUTF8StringEncoding];
    
//    NSLog(@"5. %@", strResult301);
    
    NSString *res301 = strResult301;
    
    
    double mermaBolseoColilla = [res301 doubleValue];

    
    
    
    // AGARRAR MERMA BOLSEO ATORNOES
    // SI EXISTE
    
    
    NSString *strURL302 = [NSString stringWithFormat:@"http://192.168.42.250:85/sumMermaBolseoAtorones.php?nomina=%@&fecha=%@&turno=%@",_nomina.text, [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSData *dataURL302 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL302]];
    
    NSString *strResult302 = [[NSString alloc] initWithData:dataURL302 encoding:NSUTF8StringEncoding];
    
//    NSLog(@"6. %@", strResult302);
    
    NSString *res302 = strResult302;
    
    
    double mermaBolseoAtorones = [res302 doubleValue];

    
    
    
    //AGARRAR MERMA BOLSEO MALSELLO
    // SI EXISTE
    
    NSString *strURL303 = [NSString stringWithFormat:@"http://192.168.42.250:85/sumMermaBolseomalSello.php?nomina=%@&fecha=%@&turno=%@",_nomina.text, [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSData *dataURL303 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL303]];
    
    NSString *strResult303 = [[NSString alloc] initWithData:dataURL303 encoding:NSUTF8StringEncoding];
    
//    NSLog(@"7. %@", strResult303);
    
    NSString *res303 = strResult303;
    
    
    double mermaBolseomalSello = [res303 doubleValue];

    
    
    
    
    
    //AGARRAR MERMA BOLSEO REFILADO
    // SI EXISTE
    
    NSString *strURL304 = [NSString stringWithFormat:@"http://192.168.42.250:85/sumMermaBolseorefilado.php?nomina=%@&fecha=%@&turno=%@",_nomina.text, [auxcenso2.fecha stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [auxcenso5.turno stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSData *dataURL304 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL304]];
    
    NSString *strResult304 = [[NSString alloc] initWithData:dataURL304 encoding:NSUTF8StringEncoding];
    
//    NSLog(@"8. %@", strResult304);
    
    NSString *res304 = strResult304;
    
    
    double mermaBolseorefilado = [res304 doubleValue];

    
    
    // SI ESTA BIEN ESTE DOUBLE
    double mermaBolseoFinalEteNuevo = mermaBolseoArranques + mermaBolseoAtorones + mermaBolseoColilla + mermaBolseomalSello + mermaBolseorefilado;
    
    
    
    
    
    // CALCULAR CALIDAD
    // ESTE CALCULO SI ESTA BIEN
    double calidadEteNuevo = (sumPesoInicialEteNuevoDouble - mermaBolseoFinalEteNuevo) / sumPesoInicialEteNuevoDouble;
    
    
    
    
    
    
    //CALCULAR ETE
    
    //--------------------------BIEN-----------------BIEN-------------------MAL
    double eteNuevoFinal = (calidadEteNuevo * disponibilidadEteNuevo * eteDesempenoFinal) * 100;
    
    
    // EFICIENCIA
    //----------------------------MAL------------------BIEN
    double eficienciaFinal = (eteDesempenoFinal * calidadEteNuevo) * 100;
    
    
    
    
    
    _signoPercent.hidden = NO;
    NSString *eteFinal = [NSString stringWithFormat:@"%f", eteNuevoFinal];
    _prueba1.text = eteFinal;
    
    
    NSString *eficienciaFinalEte = [NSString stringWithFormat:@"%f", eficienciaFinal];
    _prueba.text = eficienciaFinalEte;
    
    _labelEteFinal.hidden = NO;
    _labelEficienciaFinal.hidden = NO;
    
    
    
    
    
    
}
@end
