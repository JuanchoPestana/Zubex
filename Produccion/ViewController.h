//
//  ViewController.h
//  Producción
//
//  Created by Juan Pestana on 7/15/14.
//  Copyright (c) 2014 Juan Pestana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Censo.h"
#define TIPO 0
#define TIPO2 1
#define HORA 2
#define MINUTOS 3
#define MINMUERTOS 4

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate, UITableViewDelegate, UITableViewDataSource>{
    
    
    
    
    
    IBOutlet UIPickerView *pickerDisponibilidad;
    
    
    NSMutableArray *arraytipo;
    NSMutableArray *arraytipo2;
    NSMutableArray *arrayhora;
    NSMutableArray *arrayminutos;
    NSMutableArray *arrayminmuertos;
    
    Censo *auxcenso;
    Censo *auxcenso2;
    Censo *auxcenso3;
    
    Censo *auxcenso5;
    
    Censo *auxcenso6;
    
    
    Censo *auxcenso10;
    
    
    

}


@property (strong, nonatomic) IBOutlet UITextField *codigoUnico;

@property (strong, nonatomic) IBOutlet UITextField *nomina;


@property (strong, nonatomic) IBOutlet UILabel *descripcion;

@property (strong, nonatomic) IBOutlet UITextField *pedido;

@property (strong, nonatomic) IBOutlet UILabel *descripcionPedido;

@property (strong, nonatomic) IBOutlet UILabel *pruebaMillares;

@property (strong, nonatomic) IBOutlet UILabel *labelHoras;

@property (strong, nonatomic) IBOutlet UILabel *muertos;


@property (strong, nonatomic) IBOutlet UIPickerView *pickerDisponibilidad;


@property (strong, nonatomic) IBOutlet UITextField *tipoText;

@property (strong, nonatomic) IBOutlet UITextField *tipo2Text;


@property (strong, nonatomic) IBOutlet UITextField *observaciones;

- (IBAction)verificar:(id)sender;

- (IBAction)detener:(id)sender;

- (IBAction)continuar:(id)sender;

- (IBAction)iniciar:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *labelMaquina;



@property (strong, nonatomic) IBOutlet UILabel *labelTipo;


@property (strong, nonatomic) IBOutlet UILabel *labelObervaciones;
@property (strong, nonatomic) IBOutlet UILabel *maquina;

@property (strong, nonatomic) IBOutlet UISegmentedControl *turno;

- (IBAction)aparecerBobinas:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *labelIdBobina;
@property (strong, nonatomic) IBOutlet UITextField *idBobina;
@property (strong, nonatomic) IBOutlet UILabel *labelPesoInicial;
@property (strong, nonatomic) IBOutlet UITextField *pesoInicial;
@property (strong, nonatomic) IBOutlet UILabel *labelProduccion;
@property (strong, nonatomic) IBOutlet UITextField *produccion;
@property (strong, nonatomic) IBOutlet UILabel *labelPiezasObtenidas;
@property (strong, nonatomic) IBOutlet UITextField *piezasObtenidas;
@property (strong, nonatomic) IBOutlet UILabel *labelPesoFinal;
@property (strong, nonatomic) IBOutlet UITextField *pesoFinal;
@property (strong, nonatomic) IBOutlet UILabel *labelFolio;
@property (strong, nonatomic) IBOutlet UITextField *folio;

@property (strong, nonatomic) IBOutlet UILabel *signoPercent;


@property (strong, nonatomic) IBOutlet UILabel *resultadoETE;


- (IBAction)agregarBobinas:(id)sender;



- (IBAction)ETE:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *prueba1;




@property (strong, nonatomic) IBOutlet UITextField *arranques;
@property (strong, nonatomic) IBOutlet UITextField *colilla;
@property (strong, nonatomic) IBOutlet UITextField *atorones;
@property (strong, nonatomic) IBOutlet UITextField *malSello;
@property (strong, nonatomic) IBOutlet UITextField *refilado;


@property (strong, nonatomic) IBOutlet UITextField *desfase;
@property (strong, nonatomic) IBOutlet UITextField *tonoBajo;
@property (strong, nonatomic) IBOutlet UITextField *manchas;
@property (strong, nonatomic) IBOutlet UITextField *brincos;
@property (strong, nonatomic) IBOutlet UITextField *malEmb;
@property (strong, nonatomic) IBOutlet UITextField *sobrantesImpresion;





@property (strong, nonatomic) IBOutlet UITextField *arrugas;
@property (strong, nonatomic) IBOutlet UITextField *descalibre;
@property (strong, nonatomic) IBOutlet UITextField *parches;
@property (strong, nonatomic) IBOutlet UITextField *medida;
@property (strong, nonatomic) IBOutlet UITextField *grumos;
@property (strong, nonatomic) IBOutlet UITextField *bloqueo;
@property (strong, nonatomic) IBOutlet UITextField *sobrantesExtrusion;



- (IBAction)agregarMerma:(id)sender;

- (IBAction)bolseo:(id)sender;
- (IBAction)impresion:(id)sender;
- (IBAction)extrusion:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *arranquesLabel;
@property (strong, nonatomic) IBOutlet UILabel *colillaLable;
@property (strong, nonatomic) IBOutlet UILabel *atoronesLabel;
@property (strong, nonatomic) IBOutlet UILabel *malSelloLabel;
@property (strong, nonatomic) IBOutlet UILabel *refiladoLabel;


@property (strong, nonatomic) IBOutlet UILabel *desfaseLabel;
@property (strong, nonatomic) IBOutlet UILabel *tonoBajoLabel;
@property (strong, nonatomic) IBOutlet UILabel *manchasLabel;
@property (strong, nonatomic) IBOutlet UILabel *brincosLabel;
@property (strong, nonatomic) IBOutlet UILabel *malEmbLabel;
@property (strong, nonatomic) IBOutlet UILabel *sobrantesLabel;



@property (strong, nonatomic) IBOutlet UILabel *arrugasLabel;

@property (strong, nonatomic) IBOutlet UILabel *descalibreLabel;
@property (strong, nonatomic) IBOutlet UILabel *parchesLabel;
@property (strong, nonatomic) IBOutlet UILabel *medidaLabel;
@property (strong, nonatomic) IBOutlet UILabel *grumosLabel;
@property (strong, nonatomic) IBOutlet UILabel *bloqueoLabel;
@property (strong, nonatomic) IBOutlet UILabel *sobrantesExtLabel;




@property (strong, nonatomic) IBOutlet UILabel *minFinales;

@property (strong, nonatomic) IBOutlet UILabel *minFinalesLabel;

@property (strong, nonatomic) IBOutlet UILabel *date;





@property (strong, nonatomic) IBOutlet UITextField *pruebaMUERTOS;


- (IBAction)date:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *fechaFija;

@property (strong, nonatomic) IBOutlet UIButton *iniciarBoton;

@property (strong, nonatomic) IBOutlet UIButton *continuarBoton;

@property (strong, nonatomic) IBOutlet UIButton *detenerBoton;



- (IBAction)reiniciar:(id)sender;


@property (strong, nonatomic) IBOutlet UILabel *cajaLabel;
@property (strong, nonatomic) IBOutlet UITextField *caja;

@property (strong, nonatomic) IBOutlet UILabel *loteLabel;
@property (strong, nonatomic) IBOutlet UITextField *lote;


@property (strong, nonatomic) IBOutlet UITextField *selloUno;
@property (strong, nonatomic) IBOutlet UITextField *selloDos;
@property (strong, nonatomic) IBOutlet UITextField *selloTres;
@property (strong, nonatomic) IBOutlet UITextField *selloCuatro;
@property (strong, nonatomic) IBOutlet UITextField *distanciaSellos;
@property (strong, nonatomic) IBOutlet UITextField *tiempoSellos;



- (IBAction)sellos:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *codigoCompleto;



- (IBAction)detenidos:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *bobinasDetenidos;
@property (strong, nonatomic) IBOutlet UILabel *bobinasDetenidosLabel;

@property (strong, nonatomic) IBOutlet UITextField *idDetenidos;
@property (strong, nonatomic) IBOutlet UILabel *idDetenidosLabel;

@property (strong, nonatomic) IBOutlet UITextField *kgDetenidos;
@property (strong, nonatomic) IBOutlet UILabel *kgDetenidosLabel;

@property (strong, nonatomic) IBOutlet UITextField *piezasDetenidos;
@property (strong, nonatomic) IBOutlet UILabel *piezasDetenidosLabel;

@property (strong, nonatomic) IBOutlet UITextField *observacionesDetenidos;
@property (strong, nonatomic) IBOutlet UILabel *observacionesDetenidosLabel;

- (IBAction)agregarDetenidos:(id)sender;


@property (strong, nonatomic) IBOutlet UILabel *nuevoEteLabel;
- (IBAction)nuevoEteCalculo:(id)sender;






@property (strong, nonatomic) IBOutlet UILabel *piezasMinDesempeno;


@property (strong, nonatomic) IBOutlet UILabel *desempenoText;
@property (strong, nonatomic) IBOutlet UILabel *piezasObtenidasDoubleText;



@property (strong, nonatomic) IBOutlet UILabel *prueba;



@property (strong, nonatomic) IBOutlet UILabel *porciento;


@property (strong, nonatomic) IBOutlet UILabel *labelEficienciaFinal;

@property (strong, nonatomic) IBOutlet UILabel *labelEteFinal;












@end
