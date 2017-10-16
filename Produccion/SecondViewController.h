//
//  SecondViewController.h
//  Producción
//
//  Created by Juan Pestana on 1/21/15.
//  Copyright (c) 2015 Juan Pestana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Censo.h"
#define TIPO 0
#define TIPO2 1
#define HORA 2
#define MINUTOS 3
#define MINMUERTOS 4

@interface SecondViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate, UITableViewDelegate, UITableViewDataSource>{
    
    
    IBOutlet UIPickerView *pickerView;
    
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




@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;


// DATOS DEL OPERADOR
@property (strong, nonatomic) IBOutlet UITextField *nomina;
@property (strong, nonatomic) IBOutlet UISegmentedControl *turno;

// DATOS DEL PEDIDO
@property (strong, nonatomic) IBOutlet UITextField *pedido;
@property (strong, nonatomic) IBOutlet UITextField *codigoUnico;
- (IBAction)comprobar:(id)sender;

// INFORMACION DEL PEDIDO
@property (strong, nonatomic) IBOutlet UILabel *descripcion;
@property (strong, nonatomic) IBOutlet UILabel *descripcionPedido;
@property (strong, nonatomic) IBOutlet UILabel *codigoCompleto;
@property (strong, nonatomic) IBOutlet UILabel *horaProduccion;
@property (strong, nonatomic) IBOutlet UILabel *minutoosProduccion;

// HORA DE ENTREGA
@property (strong, nonatomic) IBOutlet UILabel *dateEntrega;

// TRABAJO EN EL PEDIDO
@property (strong, nonatomic) IBOutlet UIPickerView *pickerViewuno;
@property (strong, nonatomic) IBOutlet UITextField *tipoText;
@property (strong, nonatomic) IBOutlet UITextField *tipo2Text;
@property (strong, nonatomic) IBOutlet UITextField *observaciones;
// esta esta hidden pero es para algo del ttc
@property (strong, nonatomic) IBOutlet UILabel *piezasMinDesempeno;
@property (strong, nonatomic) IBOutlet UILabel *maquina;


@property (strong, nonatomic) IBOutlet UIButton *iniciarBoton;
@property (strong, nonatomic) IBOutlet UIButton *detenerBoton;
@property (strong, nonatomic) IBOutlet UIButton *continuarBoton;
@property (strong, nonatomic) IBOutlet UILabel *muertos;
@property (strong, nonatomic) IBOutlet UILabel *labelTipo;
@property (strong, nonatomic) IBOutlet UILabel *labelObservaciones;



- (IBAction)iniciar:(id)sender;
- (IBAction)detener:(id)sender;
- (IBAction)continuar:(id)sender;




// bobinas

@property (strong, nonatomic) IBOutlet UITextField *lote;
@property (strong, nonatomic) IBOutlet UITextField *idBobina;
@property (strong, nonatomic) IBOutlet UITextField *pesoInicial;
@property (strong, nonatomic) IBOutlet UITextField *caja;
@property (strong, nonatomic) IBOutlet UITextField *produccion;
@property (strong, nonatomic) IBOutlet UITextField *piezasObtenidas;
@property (strong, nonatomic) IBOutlet UITextField *pesoFinal;
@property (strong, nonatomic) IBOutlet UITextField *folio;
- (IBAction)agregarBobinas:(id)sender;



// merma bolseo
@property (strong, nonatomic) IBOutlet UITextField *arranques;
@property (strong, nonatomic) IBOutlet UITextField *colilla;
@property (strong, nonatomic) IBOutlet UITextField *atorones;
@property (strong, nonatomic) IBOutlet UITextField *malSello;
@property (strong, nonatomic) IBOutlet UITextField *refilado;

@property (strong, nonatomic) IBOutlet UILabel *arranquesLabel;
@property (strong, nonatomic) IBOutlet UILabel *colillaLabel;
@property (strong, nonatomic) IBOutlet UILabel *atoronesLabel;
@property (strong, nonatomic) IBOutlet UILabel *malSelloLabel;
@property (strong, nonatomic) IBOutlet UILabel *refiladoLabel;




// merma impresion
@property (strong, nonatomic) IBOutlet UITextField *desfase;
@property (strong, nonatomic) IBOutlet UITextField *tonoBajo;
@property (strong, nonatomic) IBOutlet UITextField *manchas;
@property (strong, nonatomic) IBOutlet UITextField *brincos;
@property (strong, nonatomic) IBOutlet UITextField *malEmb;
@property (strong, nonatomic) IBOutlet UITextField *sobrantesImpresion;

@property (strong, nonatomic) IBOutlet UILabel *desfaseLabel;
@property (strong, nonatomic) IBOutlet UILabel *tonoBajoLabel;
@property (strong, nonatomic) IBOutlet UILabel *manchasLabel;
@property (strong, nonatomic) IBOutlet UILabel *brincosLabel;
@property (strong, nonatomic) IBOutlet UILabel *malEmbLabel;
@property (strong, nonatomic) IBOutlet UILabel *sobrantesImpresionLabel;




// merma extrusion
@property (strong, nonatomic) IBOutlet UITextField *arrugas;
@property (strong, nonatomic) IBOutlet UITextField *descalibre;
@property (strong, nonatomic) IBOutlet UITextField *parches;
@property (strong, nonatomic) IBOutlet UITextField *medida;
@property (strong, nonatomic) IBOutlet UITextField *grumos;
@property (strong, nonatomic) IBOutlet UITextField *bloqueo;
@property (strong, nonatomic) IBOutlet UITextField *sobrantesExtrusion;



@property (strong, nonatomic) IBOutlet UILabel *arrugasLabel;
@property (strong, nonatomic) IBOutlet UILabel *descalibreLabel;
@property (strong, nonatomic) IBOutlet UILabel *parchesLabel;
@property (strong, nonatomic) IBOutlet UILabel *medidaLabel;
@property (strong, nonatomic) IBOutlet UILabel *grumosLabel;
@property (strong, nonatomic) IBOutlet UILabel *bloqueoLabel;
@property (strong, nonatomic) IBOutlet UILabel *sobrantesExtrusionLabel;

- (IBAction)agregarMerma:(id)sender;


// detenidos

@property (strong, nonatomic) IBOutlet UITextField *bobinasDetenidos;
@property (strong, nonatomic) IBOutlet UITextField *idDetenidos;
@property (strong, nonatomic) IBOutlet UITextField *kgDetenidos;
@property (strong, nonatomic) IBOutlet UITextField *piezasDetenidos;
@property (strong, nonatomic) IBOutlet UITextField *observacionesDetenidos;


@property (strong, nonatomic) IBOutlet UILabel *bobinasDetenidosLabel;
@property (strong, nonatomic) IBOutlet UILabel *idDetenidosLabel;
@property (strong, nonatomic) IBOutlet UILabel *kgDetenidosLabel;
@property (strong, nonatomic) IBOutlet UILabel *piezasDetenidosLabel;
@property (strong, nonatomic) IBOutlet UILabel *observacionesDetenidosLabel;
- (IBAction)agregarDetenidos:(id)sender;




- (IBAction)bolseo:(id)sender;
- (IBAction)impresion:(id)sender;
- (IBAction)extrusion:(id)sender;
- (IBAction)detenidos:(id)sender;



// parametros

@property (strong, nonatomic) IBOutlet UITextField *selloUno;
@property (strong, nonatomic) IBOutlet UITextField *selloDos;
@property (strong, nonatomic) IBOutlet UITextField *selloTres;
@property (strong, nonatomic) IBOutlet UITextField *selloCuatro;
@property (strong, nonatomic) IBOutlet UITextField *distanciaSello;
@property (strong, nonatomic) IBOutlet UITextField *tiempoSello;


- (IBAction)sellos:(id)sender;

- (IBAction)calcularHoraEntrega:(id)sender;



// calculo ete

- (IBAction)calculoEte:(id)sender;


@property (strong, nonatomic) IBOutlet UILabel *eficienciaText;
@property (strong, nonatomic) IBOutlet UILabel *eteText;









@end
