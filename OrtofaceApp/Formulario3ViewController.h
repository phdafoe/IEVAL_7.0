//
//  Formulario3ViewController.h
//  OrtofaceApp
//
//  Created by andres ocampo on 18/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>

@class KBF3ScrollView;

@interface Formulario3ViewController : UIViewController  <UITextFieldDelegate, UITextViewDelegate, MFMailComposeViewControllerDelegate>

{
    //Observaciones
    IBOutlet UITextView *Observaciones_Apnea;
    
    
    //formulario 3
    
   
    UIImageView *backgroundImageView;
    UIImageView *overlayImageView;
    BOOL scaning;
    
    IBOutlet UITextField *Nombre_Apnea;
    IBOutlet UITextField *Apellido_Apnea;
    IBOutlet UITextField *Fecha_Apnea;
    IBOutlet UITextField *Direccion_Apnea;
    IBOutlet UITextField *Numero_Apnea;
    IBOutlet UITextField *Piso_Apnea;
    IBOutlet UITextField *Localidad_Apnea;
    IBOutlet UITextField *CodigoPostal_Apnea;
    IBOutlet UITextField *Edad_Apnea;
    IBOutlet UITextField *FechaNacimiento_Apnea;
    IBOutlet UITextField *TelefonoParticular_Apnea;
    IBOutlet UITextField *TelefonoMovil_Apnea;
    IBOutlet UITextField *CorreoElectronico_Apnea;
    IBOutlet UITextField *QuienHaReferidoConsulta_Apnea;
    IBOutlet UITextField *ProblemaPrincipal_Apnea;
    
    
    IBOutlet UITextField *Peso_Apnea;
    IBOutlet UITextField *Talla_Apnea;
    
    IBOutlet UITextField *UstedRocaNo_Apnea;
    IBOutlet UITextField *UstedRocaSi_Apnea;
    IBOutlet UITextField *UstedRocaNoSe_Apnea;
    
    IBOutlet UITextField *IntensidadRonquidoRespiracionX;
    IBOutlet UITextField *IntensidadRonquidoIgualHablarX;
    IBOutlet UITextField *IntensidadRonquidoMayorHablarX;
    IBOutlet UITextField *IntensidadRonquidoMuyFuerteX;
    
    IBOutlet UITextField *FrecuenciaRoncaTodosDiasX;
    IBOutlet UITextField *FrecuenciaRoncaTresCuatroSemanaX;
    IBOutlet UITextField *FrecuenciaRoncaDosUnoSemanaX;
    IBOutlet UITextField *FrecuenciaRoncaDosUnoMesX;
    IBOutlet UITextField *FrecuenciaRoncaNuncaX;
    
    IBOutlet UITextField *RonquidoMolestaNo;
    IBOutlet UITextField *RonquidoMolestaSi;
    
    IBOutlet UITextField *PresionAltaNo;
    IBOutlet UITextField *PresionAltaSi;
    
    IBOutlet UITextField *PausaRespiracionTodosDiasX;
    IBOutlet UITextField *PausaRespiracionTresCuatroSemanaX;
    IBOutlet UITextField *PausaRespiracionDosUnoSemanaX;
    IBOutlet UITextField *PausaRespiracionDosUnoMesX;
    IBOutlet UITextField *PausaRespiracionNuncaX;
    
    IBOutlet UITextField *CanzadoLevantarseTodosDiasX;
    IBOutlet UITextField *CanzadoLevantarseTresCuatroSemanaX;
    IBOutlet UITextField *CanzadoLevantarseDosUnoSemanaX;
    IBOutlet UITextField *CanzadoLevantarseDosUnoMesX;
    IBOutlet UITextField *CanzadoLevantarseNuncaX;
    
    IBOutlet UITextField *CanzadoDiaTodosDiasX;
    IBOutlet UITextField *CanzadoDiaTresCuatroSemanaX;
    IBOutlet UITextField *CanzadoDiaDosUnoSemanaX;
    IBOutlet UITextField *CanzadoDiaDosUnoMesX;
    IBOutlet UITextField *CanzadoDiaNuncaX;
    
    IBOutlet UITextField *DormidoVehiculoNo;
    IBOutlet UITextField *DormidoVehiculoSi;
    
    
}

@property (nonatomic, retain) UIImage *screenshotImage;
@property (nonatomic, retain) IBOutlet UIImageView *backgroundImageView;
@property (nonatomic, retain) IBOutlet UIImageView *overlayImageView;
@property (nonatomic, retain) IBOutlet UIView *screenPictureView;
@property (nonatomic, retain) IBOutlet UILabel *screenPictureLabel;
@property (nonatomic, retain) IBOutlet UIImageView * screenPictureImageView;

@property (nonatomic, retain) IBOutlet KBF3ScrollView *scrollView;


@property (nonatomic, retain) IBOutlet UITextField *Nombre_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *Apellido_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *Fecha_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *Direccion_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *Numero_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *Piso_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *Localidad_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *CodigoPostal_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *Edad_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *FechaNacimiento_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *TelefonoParticular_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *TelefonoMovil_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *CorreoElectronico_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *QuienHaReferidoConsulta_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *ProblemaPrincipal_Apnea;


@property (nonatomic, retain) IBOutlet UITextField *Peso_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *Talla_Apnea;

@property (nonatomic, retain) IBOutlet UITextField *UstedRocaNo_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *UstedRocaSi_Apnea;
@property (nonatomic, retain) IBOutlet UITextField *UstedRocaNoSe_Apnea;

@property (nonatomic, retain) IBOutlet UITextField *IntensidadRonquidoRespiracionX;
@property (nonatomic, retain) IBOutlet UITextField *IntensidadRonquidoIgualHablarX;
@property (nonatomic, retain) IBOutlet UITextField *IntensidadRonquidoMayorHablarX;
@property (nonatomic, retain) IBOutlet UITextField *IntensidadRonquidoMuyFuerteX;

@property (nonatomic, retain) IBOutlet UITextField *FrecuenciaRoncaTodosDiasX;
@property (nonatomic, retain) IBOutlet UITextField *FrecuenciaRoncaTresCuatroSemanaX;
@property (nonatomic, retain) IBOutlet UITextField *FrecuenciaRoncaDosUnoSemanaX;
@property (nonatomic, retain) IBOutlet UITextField *FrecuenciaRoncaDosUnoMesX;
@property (nonatomic, retain) IBOutlet UITextField *FrecuenciaRoncaNuncaX;

@property (nonatomic, retain) IBOutlet UITextField *RonquidoMolestaNo;
@property (nonatomic, retain) IBOutlet UITextField *RonquidoMolestaSi;

@property (nonatomic, retain) IBOutlet UITextField *PresionAltaNo;
@property (nonatomic, retain) IBOutlet UITextField *PresionAltaSi;

@property (nonatomic, retain) IBOutlet UITextField *PausaRespiracionTodosDiasX;
@property (nonatomic, retain) IBOutlet UITextField *PausaRespiracionTresCuatroSemanaX;
@property (nonatomic, retain) IBOutlet UITextField *PausaRespiracionDosUnoSemanaX;
@property (nonatomic, retain) IBOutlet UITextField *PausaRespiracionDosUnoMesX;
@property (nonatomic, retain) IBOutlet UITextField *PausaRespiracionNuncaX;

@property (nonatomic, retain) IBOutlet UITextField *CanzadoLevantarseTodosDiasX;
@property (nonatomic, retain) IBOutlet UITextField *CanzadoLevantarseTresCuatroSemanaX;
@property (nonatomic, retain) IBOutlet UITextField *CanzadoLevantarseDosUnoSemanaX;
@property (nonatomic, retain) IBOutlet UITextField *CanzadoLevantarseDosUnoMesX;
@property (nonatomic, retain) IBOutlet UITextField *CanzadoLevantarseNuncaX;

@property (nonatomic, retain) IBOutlet UITextField *CanzadoDiaTodosDiasX;
@property (nonatomic, retain) IBOutlet UITextField *CanzadoDiaTresCuatroSemanaX;
@property (nonatomic, retain) IBOutlet UITextField *CanzadoDiaDosUnoSemanaX;
@property (nonatomic, retain) IBOutlet UITextField *CanzadoDiaDosUnoMesX;
@property (nonatomic, retain) IBOutlet UITextField *CanzadoDiaNuncaX;

@property (nonatomic, retain) IBOutlet UITextField *DormidoVehiculoNo;
@property (nonatomic, retain) IBOutlet UITextField *DormidoVehiculoSi;

// acciones de salvado y recarga de datos del formulario

-(IBAction)enviar:(id)sender;
-(IBAction)cargarInformacion:(id)sender;

// formulario 3


-(IBAction)getUIKitScreeshot;

-(IBAction)dismisseNombre_Apnea:(id)sender;
-(IBAction)dismisseApellido_Apnea:(id)sender;
-(IBAction)dismisseFecha_Apnea:(id)sender;
-(IBAction)dismisseDireccion_Apnea:(id)sender;
-(IBAction)dismisseNumero_Apnea:(id)sender;
-(IBAction)dismissePiso_Apnea:(id)sender;
-(IBAction)dismisseLocalidad_Apnea:(id)sender;
-(IBAction)dismisseCodigoPostal_Apnea:(id)sender;
-(IBAction)dismisseEdad_Apnea:(id)sender;
-(IBAction)dismisseFechaNacimiento_Apnea:(id)sender;
-(IBAction)dismisseTelefonoParticular_Apnea:(id)sender;
-(IBAction)dismisseTelefonoMovil_Apnea:(id)sender;
-(IBAction)dismisseCorreoElectronico_Apnea:(id)sender;
-(IBAction)dismisseQuienHaReferidoConsulta_Apnea:(id)sender;
-(IBAction)dismisseProblemaPrincipal_Apnea:(id)sender;

-(IBAction)dismissePeso_Apnea:(id)sender;
-(IBAction)dismisseTalla_Apnea:(id)sender;

-(IBAction)dismisseUstedRocaNo_Apnea:(id)sender;
-(IBAction)dismisseUstedRocaSi_Apnea:(id)sender;
-(IBAction)dismisseUstedRocaNoSe_Apnea:(id)sender;

-(IBAction)dismisseIntensidadRonquidoRespiracionX:(id)sender;
-(IBAction)dismisseIntensidadRonquidoIgualHablarX:(id)sender;
-(IBAction)dismisseIntensidadRonquidoMayorHablarX:(id)sender;
-(IBAction)dismisseIntensidadRonquidoMuyFuerteX:(id)sender;

-(IBAction)dismisseFrecuenciaRoncaTodosDiasX:(id)sender;
-(IBAction)dismisseFrecuenciaRoncaTresCuatroSemanaX:(id)sender;
-(IBAction)dismisseFrecuenciaRoncaDosUnoSemanaX:(id)sender;
-(IBAction)dismisseFrecuenciaRoncaDosUnoMesX:(id)sender;
-(IBAction)dismisseFrecuenciaRoncaNuncaX:(id)sender;

-(IBAction)dismisseRonquidoMolestaNo:(id)sender;
-(IBAction)dismisseRonquidoMolestaSi:(id)sender;

-(IBAction)dismissePresionAltaNo:(id)sender;
-(IBAction)dismissePresionAltaSi:(id)sender;

-(IBAction)dismissePausaRespiracionTodosDiasX:(id)sender;
-(IBAction)dismissePausaRespiracionTresCuatroSemanaX:(id)sender;
-(IBAction)dismissePausaRespiracionDosUnoSemanaX:(id)sender;
-(IBAction)dismissePausaRespiracionDosUnoMesX:(id)sender;
-(IBAction)dismissePausaRespiracionNuncaX:(id)sender;

-(IBAction)dismisseCanzadoLevantarseTodosDiasX:(id)sender;
-(IBAction)dismisseCanzadoLevantarseTresCuatroSemanaX:(id)sender;
-(IBAction)dismisseCanzadoLevantarseDosUnoSemanaX:(id)sender;
-(IBAction)dismisseCanzadoLevantarseDosUnoMesX:(id)sender;
-(IBAction)dismisseCanzadoLevantarseNuncaX:(id)sender;

-(IBAction)dismisseCanzadoDiaTodosDiasX:(id)sender;
-(IBAction)dismisseCanzadoDiaTresCuatroSemanaX:(id)sender;
-(IBAction)dismisseCanzadoDiaDosUnoSemanaX:(id)sender;
-(IBAction)dismisseCanzadoDiaDosUnoMesX:(id)sender;
-(IBAction)dismisseCanzadoDiaNuncaX:(id)sender;

-(IBAction)dismisseDormidoVehiculoNo:(id)sender;
-(IBAction)dismisseDormidoVehiculoSi:(id)sender;

@property (strong, nonatomic) NSString *messageNombre_Apnea;
@property (strong, nonatomic) NSString *messageApellido_Apnea;

@end
