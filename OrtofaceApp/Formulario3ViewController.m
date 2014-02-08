//
//  Formulario3ViewController.m
//  OrtofaceApp
//
//  Created by andres ocampo on 18/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import "Formulario3ViewController.h"
#import "KBF3ScrollView.h"
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <ImageIO/ImageIO.h>
#import <AssetsLibrary/AssetsLibrary.h>


@interface Formulario3ViewController ()

- (void) displayScreenshotImage;
- (UIImage *)uiKitScreenshot;

@end

@implementation Formulario3ViewController


@synthesize Nombre_Apnea, Apellido_Apnea, Fecha_Apnea, Direccion_Apnea, Numero_Apnea, Piso_Apnea, Localidad_Apnea, CodigoPostal_Apnea, Edad_Apnea, FechaNacimiento_Apnea, TelefonoMovil_Apnea, TelefonoParticular_Apnea, CorreoElectronico_Apnea, QuienHaReferidoConsulta_Apnea, ProblemaPrincipal_Apnea, Peso_Apnea, Talla_Apnea, UstedRocaNo_Apnea, UstedRocaSi_Apnea, UstedRocaNoSe_Apnea,IntensidadRonquidoIgualHablarX, IntensidadRonquidoMayorHablarX, IntensidadRonquidoMuyFuerteX, IntensidadRonquidoRespiracionX, FrecuenciaRoncaDosUnoMesX, FrecuenciaRoncaDosUnoSemanaX, FrecuenciaRoncaNuncaX, FrecuenciaRoncaTodosDiasX, FrecuenciaRoncaTresCuatroSemanaX, RonquidoMolestaNo, RonquidoMolestaSi, PresionAltaNo, PresionAltaSi, PausaRespiracionDosUnoMesX, PausaRespiracionDosUnoSemanaX, PausaRespiracionNuncaX, PausaRespiracionTodosDiasX, PausaRespiracionTresCuatroSemanaX, CanzadoDiaDosUnoMesX, CanzadoDiaDosUnoSemanaX, CanzadoDiaNuncaX, CanzadoDiaTodosDiasX, CanzadoDiaTresCuatroSemanaX, CanzadoLevantarseDosUnoMesX, CanzadoLevantarseDosUnoSemanaX, CanzadoLevantarseNuncaX, CanzadoLevantarseTodosDiasX, CanzadoLevantarseTresCuatroSemanaX, DormidoVehiculoNo, DormidoVehiculoSi, scrollView;


@synthesize overlayImageView;
@synthesize backgroundImageView;
@synthesize screenshotImage;
@synthesize screenPictureView;
@synthesize screenPictureLabel;
@synthesize screenPictureImageView;



/*-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"First to second"])
    {
        self.messageNombre_Apnea = Nombre_Apnea.text;
        self.messageApellido_Apnea = Apellido_Apnea.text;
        FirmaDigital_Apnea_ViewController *targetVC = [segue destinationViewController];
        targetVC.messageNombre_Apnea = self.messageNombre_Apnea;
        targetVC.messageApellido_Apnea = self.messageApellido_Apnea;
    }
}*/




-(IBAction)enviar:(id)sender

{
    
    NSString *enviaStringObservaciones_Apnea = Observaciones_Apnea.text;
    NSUserDefaults *defaultsObservaciones_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsObservaciones_Apnea setObject:enviaStringObservaciones_Apnea forKey:@"enviaStringObservaciones_Apnea"];
    [defaultsObservaciones_Apnea synchronize];
    
    NSString *enviaNombre_Apnea = Nombre_Apnea.text;
    NSUserDefaults *defaultsNombre_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsNombre_Apnea setObject:enviaNombre_Apnea forKey:@"enviaStringNombre_Apnea"];
    [defaultsNombre_Apnea synchronize];
    
    NSString *enviaApellido_Apnea = Apellido_Apnea.text;
    NSUserDefaults *defaultsApellido_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsApellido_Apnea setObject:enviaApellido_Apnea forKey:@"enviaStringApellido_Apnea"];
    [defaultsApellido_Apnea synchronize];
    
    NSString *enviaFecha_Apnea = Fecha_Apnea.text;
    NSUserDefaults *defaultsFecha_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsFecha_Apnea setObject:enviaFecha_Apnea forKey:@"enviaStringFecha_Apnea"];
    [defaultsFecha_Apnea synchronize];
    
    NSString *enviaDireccion_Apnea = Direccion_Apnea.text;
    NSUserDefaults *defaultsDireccion_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsDireccion_Apnea setObject:enviaDireccion_Apnea forKey:@"enviaStringDireccion_Apnea"];
    [defaultsDireccion_Apnea synchronize];
    
    NSString *enviaNumero_Apnea = Numero_Apnea.text;
    NSUserDefaults *defaultsNumero_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsNumero_Apnea setObject:enviaNumero_Apnea forKey:@"enviaStringNumero_Apnea"];
    [defaultsNumero_Apnea synchronize];
    
    NSString *enviaPiso_Apnea = Piso_Apnea.text;
    NSUserDefaults *defaultsPiso_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsPiso_Apnea setObject:enviaPiso_Apnea forKey:@"enviaStringPiso_Apnea"];
    [defaultsPiso_Apnea synchronize];
    
    NSString *enviaLocalidad_Apnea = Localidad_Apnea.text;
    NSUserDefaults *defaultsLocalidad_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsLocalidad_Apnea setObject:enviaLocalidad_Apnea forKey:@"enviaStringLocalidad_Apnea"];
    [defaultsLocalidad_Apnea synchronize];
    
    NSString *enviaCodigoPostal_Apnea = CodigoPostal_Apnea.text;
    NSUserDefaults *defaultsCodigoPostal_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsCodigoPostal_Apnea setObject:enviaCodigoPostal_Apnea forKey:@"enviaStringCodigoPostal_Apnea"];
    [defaultsCodigoPostal_Apnea synchronize];
    
    NSString *enviaEdad_Apnea = Edad_Apnea.text;
    NSUserDefaults *defaultsEdad_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsEdad_Apnea setObject:enviaEdad_Apnea forKey:@"enviaStringEdad_Apnea"];
    [defaultsEdad_Apnea synchronize];
    
    NSString *enviaFechaNacimiento_Apnea = FechaNacimiento_Apnea.text;
    NSUserDefaults *defaultsFechaNacimiento_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsFechaNacimiento_Apnea setObject:enviaFechaNacimiento_Apnea forKey:@"enviaStringFechaNacimiento_Apnea"];
    [defaultsFechaNacimiento_Apnea synchronize];
    
    NSString *enviaTelefonoParticular_Apnea = TelefonoParticular_Apnea.text;
    NSUserDefaults *defaultsTelefonoParticular_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsTelefonoParticular_Apnea setObject:enviaTelefonoParticular_Apnea forKey:@"enviaStringTelefonoParticular_Apnea"];
    [defaultsTelefonoParticular_Apnea synchronize];
    
    NSString *enviaTelefonoMovil_Apnea = TelefonoMovil_Apnea.text;
    NSUserDefaults *defaultsTelefonoMovil_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsTelefonoMovil_Apnea setObject:enviaTelefonoMovil_Apnea forKey:@"enviaStringTelefonoMovil_Apnea"];
    [defaultsTelefonoMovil_Apnea synchronize];
    
    NSString *enviaCorreoElectronico_Apnea = CorreoElectronico_Apnea.text;
    NSUserDefaults *defaultsCorreoElectronico_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsCorreoElectronico_Apnea setObject:enviaCorreoElectronico_Apnea forKey:@"enviaStringCorreoElectronico_Apnea"];
    [defaultsCorreoElectronico_Apnea synchronize];
    
    NSString *enviaQuienHaReferidoConsulta_Apnea = QuienHaReferidoConsulta_Apnea.text;
    NSUserDefaults *defaultsQuienHaReferidoConsulta_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsQuienHaReferidoConsulta_Apnea setObject:enviaQuienHaReferidoConsulta_Apnea forKey:@"enviaStringQuienHaReferidoConsulta_Apnea"];
    [defaultsQuienHaReferidoConsulta_Apnea synchronize];
    
    NSString *enviaProblemaPrincipal_Apnea = ProblemaPrincipal_Apnea.text;
    NSUserDefaults *defaultsProblemaPrincipal_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsProblemaPrincipal_Apnea setObject:enviaProblemaPrincipal_Apnea forKey:@"enviaStringProblemaPrincipal_Apnea"];
    [defaultsProblemaPrincipal_Apnea synchronize];
    
    NSString *enviaPeso_Apnea = Peso_Apnea.text;
    NSUserDefaults *defaultsPeso_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsPeso_Apnea setObject:enviaPeso_Apnea forKey:@"enviaStringPeso_Apnea"];
    [defaultsPeso_Apnea synchronize];
    
    NSString *enviaTalla_Apnea = Talla_Apnea.text;
    NSUserDefaults *defaultsTalla_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsTalla_Apnea setObject:enviaTalla_Apnea forKey:@"enviaStringTalla_Apnea"];
    [defaultsTalla_Apnea synchronize];
    
    NSString *enviaUstedRocaNo_Apnea = UstedRocaNo_Apnea.text;
    NSUserDefaults *defaultsUstedRocaNo_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsUstedRocaNo_Apnea setObject:enviaUstedRocaNo_Apnea forKey:@"enviaStringUstedRocaNo_Apnea"];
    [defaultsUstedRocaNo_Apnea synchronize];
    
    NSString *enviaUstedRocaSi_Apnea = UstedRocaSi_Apnea.text;
    NSUserDefaults *defaultsUstedRocaSi_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsUstedRocaSi_Apnea setObject:enviaUstedRocaSi_Apnea forKey:@"enviaStringUstedRocaSi_Apnea"];
    [defaultsUstedRocaSi_Apnea synchronize];
    
    NSString *enviaUstedRocaNoSe_Apnea = UstedRocaNoSe_Apnea.text;
    NSUserDefaults *defaultsUstedRocaNoSe_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsUstedRocaNoSe_Apnea setObject:enviaUstedRocaNoSe_Apnea forKey:@"enviaStringUstedRocaNoSe_Apnea"];
    [defaultsUstedRocaNoSe_Apnea synchronize];
    
    NSString *enviaIntensidadRonquidoRespiracionX = IntensidadRonquidoRespiracionX.text;
    NSUserDefaults *defaultsIntensidadRonquidoRespiracionX = [NSUserDefaults standardUserDefaults];
    [defaultsIntensidadRonquidoRespiracionX setObject:enviaIntensidadRonquidoRespiracionX forKey:@"enviaStringIntensidadRonquidoRespiracionX"];
    [defaultsIntensidadRonquidoRespiracionX synchronize];
    
    NSString *enviaIntensidadRonquidoIgualHablarX = IntensidadRonquidoIgualHablarX.text;
    NSUserDefaults *defaultsIntensidadRonquidoIgualHablarX = [NSUserDefaults standardUserDefaults];
    [defaultsIntensidadRonquidoIgualHablarX setObject:enviaIntensidadRonquidoIgualHablarX forKey:@"enviaStringIntensidadRonquidoIgualHablarX"];
    [defaultsIntensidadRonquidoIgualHablarX synchronize];
    
    NSString *enviaIntensidadRonquidoMayorHablarX = IntensidadRonquidoMayorHablarX.text;
    NSUserDefaults *defaultsIntensidadRonquidoMayorHablarX = [NSUserDefaults standardUserDefaults];
    [defaultsIntensidadRonquidoMayorHablarX setObject:enviaIntensidadRonquidoMayorHablarX forKey:@"enviaStringIntensidadRonquidoMayorHablarX"];
    [defaultsIntensidadRonquidoMayorHablarX synchronize];
    
    NSString *enviaIntensidadRonquidoMuyFuerteX = IntensidadRonquidoMuyFuerteX.text;
    NSUserDefaults *defaultsIntensidadRonquidoMuyFuerteX = [NSUserDefaults standardUserDefaults];
    [defaultsIntensidadRonquidoMuyFuerteX setObject:enviaIntensidadRonquidoMuyFuerteX forKey:@"enviaStringIntensidadRonquidoMuyFuerteX"];
    [defaultsIntensidadRonquidoMuyFuerteX synchronize];
    
    NSString *enviaFrecuenciaRoncaTodosDiasX = FrecuenciaRoncaTodosDiasX.text;
    NSUserDefaults *defaultsFrecuenciaRoncaTodosDiasX = [NSUserDefaults standardUserDefaults];
    [defaultsFrecuenciaRoncaTodosDiasX setObject:enviaFrecuenciaRoncaTodosDiasX forKey:@"enviaStringFrecuenciaRoncaTodosDiasX"];
    [defaultsFrecuenciaRoncaTodosDiasX synchronize];
    
    NSString *enviaFrecuenciaRoncaTresCuatroSemanaX = FrecuenciaRoncaTresCuatroSemanaX.text;
    NSUserDefaults *defaultsFrecuenciaRoncaTresCuatroSemanaX = [NSUserDefaults standardUserDefaults];
    [defaultsFrecuenciaRoncaTresCuatroSemanaX setObject:enviaFrecuenciaRoncaTresCuatroSemanaX forKey:@"enviaStringFrecuenciaRoncaTresCuatroSemanaX"];
    [defaultsFrecuenciaRoncaTresCuatroSemanaX synchronize];
    
    NSString *enviaFrecuenciaRoncaDosUnoSemanaX = FrecuenciaRoncaDosUnoSemanaX.text;
    NSUserDefaults *defaultsFrecuenciaRoncaDosUnoSemanaX = [NSUserDefaults standardUserDefaults];
    [defaultsFrecuenciaRoncaDosUnoSemanaX setObject:enviaFrecuenciaRoncaDosUnoSemanaX forKey:@"enviaStringFrecuenciaRoncaDosUnoSemanaX"];
    [defaultsFrecuenciaRoncaDosUnoSemanaX synchronize];
    
    NSString *enviaFrecuenciaRoncaDosUnoMesX = FrecuenciaRoncaDosUnoMesX.text;
    NSUserDefaults *defaultsFrecuenciaRoncaDosUnoMesX = [NSUserDefaults standardUserDefaults];
    [defaultsFrecuenciaRoncaDosUnoMesX setObject:enviaFrecuenciaRoncaDosUnoMesX forKey:@"enviaStringFrecuenciaRoncaDosUnoMesX"];
    [defaultsFrecuenciaRoncaDosUnoMesX synchronize];
    
    NSString *enviaFrecuenciaRoncaNuncaX = FrecuenciaRoncaNuncaX.text;
    NSUserDefaults *defaultsFrecuenciaRoncaNuncaX = [NSUserDefaults standardUserDefaults];
    [defaultsFrecuenciaRoncaNuncaX setObject:enviaFrecuenciaRoncaNuncaX forKey:@"enviaStringFrecuenciaRoncaNuncaX"];
    [defaultsFrecuenciaRoncaNuncaX synchronize];
    
    NSString *enviaRonquidoMolestaNo = RonquidoMolestaNo.text;
    NSUserDefaults *defaultsRonquidoMolestaNo = [NSUserDefaults standardUserDefaults];
    [defaultsRonquidoMolestaNo setObject:enviaRonquidoMolestaNo forKey:@"enviaStringRonquidoMolestaNo"];
    [defaultsRonquidoMolestaNo synchronize];
    
    NSString *enviaRonquidoMolestaSi = RonquidoMolestaSi.text;
    NSUserDefaults *defaultsRonquidoMolestaSi = [NSUserDefaults standardUserDefaults];
    [defaultsRonquidoMolestaSi setObject:enviaRonquidoMolestaSi forKey:@"enviaStringRonquidoMolestaSi"];
    [defaultsRonquidoMolestaSi synchronize];
    
    NSString *enviaPresionAltaNo = PresionAltaNo.text;
    NSUserDefaults *defaultsPresionAltaNo = [NSUserDefaults standardUserDefaults];
    [defaultsPresionAltaNo setObject:enviaPresionAltaNo forKey:@"enviaStringPresionAltaNo"];
    [defaultsPresionAltaNo synchronize];
    
    NSString *enviaPresionAltaSi = PresionAltaSi.text;
    NSUserDefaults *defaultsPresionAltaSi = [NSUserDefaults standardUserDefaults];
    [defaultsPresionAltaSi setObject:enviaPresionAltaSi forKey:@"enviaStringPresionAltaSi"];
    [defaultsPresionAltaSi synchronize];
    
    NSString *enviaPausaRespiracionTodosDiasX = PausaRespiracionTodosDiasX.text;
    NSUserDefaults *defaultsPausaRespiracionTodosDiasX = [NSUserDefaults standardUserDefaults];
    [defaultsPausaRespiracionTodosDiasX setObject:enviaPausaRespiracionTodosDiasX forKey:@"enviaStringPausaRespiracionTodosDiasX"];
    [defaultsPausaRespiracionTodosDiasX synchronize];
    
    NSString *enviaPausaRespiracionTresCuatroSemanaX = PausaRespiracionTresCuatroSemanaX.text;
    NSUserDefaults *defaultsPausaRespiracionTresCuatroSemanaX = [NSUserDefaults standardUserDefaults];
    [defaultsPausaRespiracionTresCuatroSemanaX setObject:enviaPausaRespiracionTresCuatroSemanaX forKey:@"enviaStringPausaRespiracionTresCuatroSemanaX"];
    [defaultsPausaRespiracionTresCuatroSemanaX synchronize];
    
    NSString *enviaPausaRespiracionDosUnoSemanaX = PausaRespiracionDosUnoSemanaX.text;
    NSUserDefaults *defaultsPausaRespiracionDosUnoSemanaX = [NSUserDefaults standardUserDefaults];
    [defaultsPausaRespiracionDosUnoSemanaX setObject:enviaPausaRespiracionDosUnoSemanaX forKey:@"enviaStringPausaRespiracionDosUnoSemanaX"];
    [defaultsPausaRespiracionDosUnoSemanaX synchronize];
    
    NSString *enviaPausaRespiracionDosUnoMesX = PausaRespiracionDosUnoMesX.text;
    NSUserDefaults *defaultsPausaRespiracionDosUnoMesX = [NSUserDefaults standardUserDefaults];
    [defaultsPausaRespiracionDosUnoMesX setObject:enviaPausaRespiracionDosUnoMesX forKey:@"enviaStringPausaRespiracionDosUnoMesX"];
    [defaultsPausaRespiracionDosUnoMesX synchronize];
    
    NSString *enviaPausaRespiracionNuncaX = PausaRespiracionNuncaX.text;
    NSUserDefaults *defaultsPausaRespiracionNuncaX = [NSUserDefaults standardUserDefaults];
    [defaultsPausaRespiracionNuncaX setObject:enviaPausaRespiracionNuncaX forKey:@"enviaStringPausaRespiracionNuncaX"];
    [defaultsPausaRespiracionNuncaX synchronize];
    
    NSString *enviaCanzadoLevantarseTodosDiasX = CanzadoLevantarseTodosDiasX.text;
    NSUserDefaults *defaultsCanzadoLevantarseTodosDiasX = [NSUserDefaults standardUserDefaults];
    [defaultsCanzadoLevantarseTodosDiasX setObject:enviaCanzadoLevantarseTodosDiasX forKey:@"enviaStringCanzadoLevantarseTodosDiasX"];
    [defaultsCanzadoLevantarseTodosDiasX synchronize];
    
    NSString *enviaCanzadoLevantarseTresCuatroSemanaX = CanzadoLevantarseTresCuatroSemanaX.text;
    NSUserDefaults *defaultsCanzadoLevantarseTresCuatroSemanaX = [NSUserDefaults standardUserDefaults];
    [defaultsCanzadoLevantarseTresCuatroSemanaX setObject:enviaCanzadoLevantarseTresCuatroSemanaX forKey:@"enviaStringCanzadoLevantarseTresCuatroSemanaX"];
    [defaultsCanzadoLevantarseTresCuatroSemanaX synchronize];
    
    NSString *enviaCanzadoLevantarseDosUnoSemanaX = CanzadoLevantarseDosUnoSemanaX.text;
    NSUserDefaults *defaultsCanzadoLevantarseDosUnoSemanaX = [NSUserDefaults standardUserDefaults];
    [defaultsCanzadoLevantarseDosUnoSemanaX setObject:enviaCanzadoLevantarseDosUnoSemanaX forKey:@"enviaStringCanzadoLevantarseDosUnoSemanaX"];
    [defaultsCanzadoLevantarseDosUnoSemanaX synchronize];
    
    NSString *enviaCanzadoLevantarseDosUnoMesX = CanzadoLevantarseDosUnoMesX.text;
    NSUserDefaults *defaultsCanzadoLevantarseDosUnoMesX = [NSUserDefaults standardUserDefaults];
    [defaultsCanzadoLevantarseDosUnoMesX setObject:enviaCanzadoLevantarseDosUnoMesX forKey:@"enviaStringCanzadoLevantarseDosUnoMesX"];
    [defaultsCanzadoLevantarseDosUnoMesX synchronize];
    
    NSString *enviaCanzadoLevantarseNuncaX = CanzadoLevantarseNuncaX.text;
    NSUserDefaults *defaultsCanzadoLevantarseNuncaX = [NSUserDefaults standardUserDefaults];
    [defaultsCanzadoLevantarseNuncaX setObject:enviaCanzadoLevantarseNuncaX forKey:@"enviaStringCanzadoLevantarseNuncaX"];
    [defaultsCanzadoLevantarseNuncaX synchronize];
    
    NSString *enviaCanzadoDiaTodosDiasX = CanzadoDiaTodosDiasX.text;
    NSUserDefaults *defaultsCanzadoDiaTodosDiasX = [NSUserDefaults standardUserDefaults];
    [defaultsCanzadoDiaTodosDiasX setObject:enviaCanzadoDiaTodosDiasX forKey:@"enviaStringCanzadoDiaTodosDiasX"];
    [defaultsCanzadoDiaTodosDiasX synchronize];
    
    NSString *enviaCanzadoDiaTresCuatroSemanaX = CanzadoDiaTresCuatroSemanaX.text;
    NSUserDefaults *defaultsCanzadoDiaTresCuatroSemanaX = [NSUserDefaults standardUserDefaults];
    [defaultsCanzadoDiaTresCuatroSemanaX setObject:enviaCanzadoDiaTresCuatroSemanaX forKey:@"enviaStringCanzadoDiaTresCuatroSemanaX"];
    [defaultsCanzadoDiaTresCuatroSemanaX synchronize];
    
    NSString *enviaCanzadoDiaDosUnoSemanaX = CanzadoDiaDosUnoSemanaX.text;
    NSUserDefaults *defaultsCanzadoDiaDosUnoSemanaX = [NSUserDefaults standardUserDefaults];
    [defaultsCanzadoDiaDosUnoSemanaX setObject:enviaCanzadoDiaDosUnoSemanaX forKey:@"enviaStringCanzadoDiaDosUnoSemanaX"];
    [defaultsCanzadoDiaDosUnoSemanaX synchronize];
    
    NSString *enviaCanzadoDiaDosUnoMesX = CanzadoDiaDosUnoMesX.text;
    NSUserDefaults *defaultsCanzadoDiaDosUnoMesX = [NSUserDefaults standardUserDefaults];
    [defaultsCanzadoDiaDosUnoMesX setObject:enviaCanzadoDiaDosUnoMesX forKey:@"enviaStringCanzadoDiaDosUnoMesX"];
    [defaultsCanzadoDiaDosUnoMesX synchronize];
    
    NSString *enviaCanzadoDiaNuncaX = CanzadoDiaNuncaX.text;
    NSUserDefaults *defaultsCanzadoDiaNuncaX = [NSUserDefaults standardUserDefaults];
    [defaultsCanzadoDiaNuncaX setObject:enviaCanzadoDiaNuncaX forKey:@"enviaStringCanzadoDiaNuncaX"];
    [defaultsCanzadoDiaNuncaX synchronize];
    
    NSString *enviaDormidoVehiculoNo = CanzadoDiaDosUnoMesX.text;
    NSUserDefaults *defaultsDormidoVehiculoNo = [NSUserDefaults standardUserDefaults];
    [defaultsDormidoVehiculoNo setObject:enviaDormidoVehiculoNo forKey:@"enviaStringDormidoVehiculoNo"];
    [defaultsDormidoVehiculoNo synchronize];
    
    NSString *enviaDormidoVehiculoSi = DormidoVehiculoSi.text;
    NSUserDefaults *defaultsDormidoVehiculoSi = [NSUserDefaults standardUserDefaults];
    [defaultsDormidoVehiculoSi setObject:enviaDormidoVehiculoSi forKey:@"enviaStringDormidoVehiculoSi"];
    [defaultsDormidoVehiculoSi synchronize];
    
    /*
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Atención!"
                                                    message:@"Por favor escriba las observaciones  que considere necesarias, además de pulsar el botón Finalizar, para continuar con el proceso."
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"Muchas Gracias!", nil];
    
    [alert show];*/
}

-(IBAction)cargarInformacion:(id)sender

{
    NSUserDefaults *defaultsObservaciones_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringObservaciones_Apnea = [defaultsObservaciones_Apnea objectForKey:@"enviaStringObservaciones_Apnea"];
    [Observaciones_Apnea setText:cargaStringObservaciones_Apnea];
    
       
    NSUserDefaults *defaultsNombre_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringNombre_Apnea = [defaultsNombre_Apnea objectForKey:@"enviaStringNombre_Apnea"];
    [Nombre_Apnea setText:cargaStringNombre_Apnea];
    
    NSUserDefaults *defaultsApellido_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringApellido_Apnea = [defaultsApellido_Apnea objectForKey:@"enviaStringApellido_Apnea"];
    [Apellido_Apnea setText:cargaStringApellido_Apnea];
    
    NSUserDefaults *defaultsFecha_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringFecha_Apnea = [defaultsFecha_Apnea objectForKey:@"enviaStringFecha_Apnea"];
    [Fecha_Apnea setText:cargaStringFecha_Apnea];
    
    NSUserDefaults *defaultsDireccion_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringDireccion_Apnea = [defaultsDireccion_Apnea objectForKey:@"enviaStringDireccion_Apnea"];
    [Direccion_Apnea setText:cargaStringDireccion_Apnea];
    
    NSUserDefaults *defaultsNumero_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringNumero_Apnea = [defaultsNumero_Apnea objectForKey:@"enviaStringNumero_Apnea"];
    [Numero_Apnea setText:cargaStringNumero_Apnea];
    
    NSUserDefaults *defaultsPiso_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPiso_Apnea = [defaultsPiso_Apnea objectForKey:@"enviaStringPiso_Apnea"];
    [Piso_Apnea setText:cargaStringPiso_Apnea];
    
    NSUserDefaults *defaultsLocalidad_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringLocalidad_Apnea = [defaultsLocalidad_Apnea objectForKey:@"enviaStringLocalidad_Apnea"];
    [Localidad_Apnea setText:cargaStringLocalidad_Apnea];
    
    NSUserDefaults *defaultsCodigoPostal_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCodigoPostal_Apnea = [defaultsCodigoPostal_Apnea objectForKey:@"enviaStringCodigoPostal_Apnea"];
    [CodigoPostal_Apnea setText:cargaStringCodigoPostal_Apnea];
    
    NSUserDefaults *defaultsEdad_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringEdad_Apnea = [defaultsEdad_Apnea objectForKey:@"enviaStringEdad_Apnea"];
    [Edad_Apnea setText:cargaStringEdad_Apnea];
    
    NSUserDefaults *defaultsFechaNacimiento_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringFechaNacimiento_Apnea = [defaultsFechaNacimiento_Apnea objectForKey:@"enviaStringFechaNacimiento_Apnea"];
    [FechaNacimiento_Apnea setText:cargaStringFechaNacimiento_Apnea];
    
    NSUserDefaults *defaultsTelefonoParticular_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringTelefonoParticular_Apnea = [defaultsTelefonoParticular_Apnea objectForKey:@"enviaStringTelefonoParticular_Apnea"];
    [TelefonoParticular_Apnea setText:cargaStringTelefonoParticular_Apnea];
    
    NSUserDefaults *defaultsTelefonoMovil_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringTelefonoMovil_Apnea = [defaultsTelefonoMovil_Apnea objectForKey:@"enviaStringTelefonoMovil_Apnea"];
    [TelefonoMovil_Apnea setText:cargaStringTelefonoMovil_Apnea];
    
    NSUserDefaults *defaultsCorreoElectronico_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCorreoElectronico_Apnea = [defaultsCorreoElectronico_Apnea objectForKey:@"enviaStringCorreoElectronico_Apnea"];
    [CorreoElectronico_Apnea setText:cargaStringCorreoElectronico_Apnea];
    
    NSUserDefaults *defaultsQuienHaReferidoConsulta_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringQuienHaReferidoConsulta_Apnea = [defaultsQuienHaReferidoConsulta_Apnea objectForKey:@"enviaStringQuienHaReferidoConsulta_Apnea"];
    [QuienHaReferidoConsulta_Apnea setText:cargaStringQuienHaReferidoConsulta_Apnea];
    
    NSUserDefaults *defaultsProblemaPrincipal_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringProblemaPrincipal_Apnea = [defaultsProblemaPrincipal_Apnea objectForKey:@"enviaStringProblemaPrincipal_Apnea"];
    [ProblemaPrincipal_Apnea setText:cargaStringProblemaPrincipal_Apnea];
    
    NSUserDefaults *defaultsPeso_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPeso_Apnea = [defaultsPeso_Apnea objectForKey:@"enviaStringPeso_Apnea"];
    [Peso_Apnea setText:cargaStringPeso_Apnea];
    
    NSUserDefaults *defaultsTalla_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringTalla_Apnea = [defaultsTalla_Apnea objectForKey:@"enviaStringTalla_Apnea"];
    [Talla_Apnea setText:cargaStringTalla_Apnea];
    
    NSUserDefaults *defaultsUstedRocaNo_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringUstedRocaNo_Apnea = [defaultsUstedRocaNo_Apnea objectForKey:@"enviaStringUstedRocaNo_Apnea"];
    [UstedRocaNo_Apnea setText:cargaStringUstedRocaNo_Apnea];
    
    NSUserDefaults *defaultsUstedRocaSi_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringUstedRocaSi_Apnea = [defaultsUstedRocaSi_Apnea objectForKey:@"enviaStringUstedRocaSi_Apnea"];
    [UstedRocaSi_Apnea setText:cargaStringUstedRocaSi_Apnea];
    
    NSUserDefaults *defaultsUstedRocaNoSe_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringUstedRocaNoSe_Apnea = [defaultsUstedRocaNoSe_Apnea objectForKey:@"enviaStringUstedRocaNoSe_Apnea"];
    [UstedRocaNoSe_Apnea setText:cargaStringUstedRocaNoSe_Apnea];
    
    NSUserDefaults *defaultsIntensidadRonquidoRespiracionX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringIntensidadRonquidoRespiracionX = [defaultsIntensidadRonquidoRespiracionX objectForKey:@"enviaStringIntensidadRonquidoRespiracionX"];
    [IntensidadRonquidoRespiracionX setText:cargaStringIntensidadRonquidoRespiracionX];
    
    NSUserDefaults *defaultsIntensidadRonquidoIgualHablarX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringIntensidadRonquidoIgualHablarX = [defaultsIntensidadRonquidoIgualHablarX objectForKey:@"enviaStringIntensidadRonquidoIgualHablarX"];
    [IntensidadRonquidoIgualHablarX setText:cargaStringIntensidadRonquidoIgualHablarX];
    
    NSUserDefaults *defaultsIntensidadRonquidoMayorHablarX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringIntensidadRonquidoMayorHablarX = [defaultsIntensidadRonquidoMayorHablarX objectForKey:@"enviaStringIntensidadRonquidoMayorHablarX"];
    [IntensidadRonquidoMayorHablarX setText:cargaStringIntensidadRonquidoMayorHablarX];
    
    NSUserDefaults *defaultsIntensidadRonquidoMuyFuerteX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringIntensidadRonquidoMuyFuerteX = [defaultsIntensidadRonquidoMuyFuerteX objectForKey:@"enviaStringIntensidadRonquidoMuyFuerteX"];
    [IntensidadRonquidoMuyFuerteX setText:cargaStringIntensidadRonquidoMuyFuerteX];
    
    NSUserDefaults *defaultsFrecuenciaRoncaTodosDiasX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringFrecuenciaRoncaTodosDiasX = [defaultsFrecuenciaRoncaTodosDiasX objectForKey:@"enviaStringFrecuenciaRoncaTodosDiasX"];
    [FrecuenciaRoncaTodosDiasX setText:cargaStringFrecuenciaRoncaTodosDiasX];
    
    NSUserDefaults *defaultsFrecuenciaRoncaTresCuatroSemanaX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringFrecuenciaRoncaTresCuatroSemanaX = [defaultsFrecuenciaRoncaTresCuatroSemanaX objectForKey:@"enviaStringFrecuenciaRoncaTresCuatroSemanaX"];
    [FrecuenciaRoncaTresCuatroSemanaX setText:cargaStringFrecuenciaRoncaTresCuatroSemanaX];
    
    NSUserDefaults *defaultsFrecuenciaRoncaDosUnoSemanaX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringFrecuenciaRoncaDosUnoSemanaX = [defaultsFrecuenciaRoncaDosUnoSemanaX objectForKey:@"enviaStringFrecuenciaRoncaDosUnoSemanaX"];
    [FrecuenciaRoncaDosUnoSemanaX setText:cargaStringFrecuenciaRoncaDosUnoSemanaX];
    
    NSUserDefaults *defaultsFrecuenciaRoncaDosUnoMesX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringFrecuenciaRoncaDosUnoMesX = [defaultsFrecuenciaRoncaDosUnoMesX objectForKey:@"enviaStringFrecuenciaRoncaDosUnoMesX"];
    [FrecuenciaRoncaDosUnoMesX setText:cargaStringFrecuenciaRoncaDosUnoMesX];
    
    NSUserDefaults *defaultsFrecuenciaRoncaNuncaX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringFrecuenciaRoncaNuncaX = [defaultsFrecuenciaRoncaNuncaX objectForKey:@"enviaStringFrecuenciaRoncaNuncaX"];
    [FrecuenciaRoncaNuncaX setText:cargaStringFrecuenciaRoncaNuncaX];
    
    NSUserDefaults *defaultsRonquidoMolestaNo = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringRonquidoMolestaNo = [defaultsRonquidoMolestaNo objectForKey:@"enviaStringRonquidoMolestaNo"];
    [RonquidoMolestaNo setText:cargaStringRonquidoMolestaNo];
    
    NSUserDefaults *defaultsRonquidoMolestaSi = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringRonquidoMolestaSi = [defaultsRonquidoMolestaSi objectForKey:@"enviaStringRonquidoMolestaSi"];
    [RonquidoMolestaSi setText:cargaStringRonquidoMolestaSi];
    
    NSUserDefaults *defaultsPresionAltaNo = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPresionAltaNo = [defaultsPresionAltaNo objectForKey:@"enviaStringPresionAltaNo"];
    [PresionAltaNo setText:cargaStringPresionAltaNo];
    
    NSUserDefaults *defaultsPresionAltaSi = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPresionAltaSi = [defaultsPresionAltaSi objectForKey:@"enviaStringPresionAltaSi"];
    [PresionAltaSi setText:cargaStringPresionAltaSi];
    
    NSUserDefaults *defaultsPausaRespiracionTodosDiasX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPausaRespiracionTodosDiasX = [defaultsPausaRespiracionTodosDiasX objectForKey:@"enviaStringPausaRespiracionTodosDiasX"];
    [PausaRespiracionTodosDiasX setText:cargaStringPausaRespiracionTodosDiasX];
    
    NSUserDefaults *defaultsPausaRespiracionTresCuatroSemanaX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPausaRespiracionTresCuatroSemanaX = [defaultsPausaRespiracionTresCuatroSemanaX objectForKey:@"enviaStringPausaRespiracionTresCuatroSemanaX"];
    [PausaRespiracionTresCuatroSemanaX setText:cargaStringPausaRespiracionTresCuatroSemanaX];
    
    NSUserDefaults *defaultsPausaRespiracionDosUnoSemanaX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPausaRespiracionDosUnoSemanaX = [defaultsPausaRespiracionDosUnoSemanaX objectForKey:@"enviaStringPausaRespiracionDosUnoSemanaX"];
    [PausaRespiracionDosUnoSemanaX setText:cargaStringPausaRespiracionDosUnoSemanaX];
    
    NSUserDefaults *defaultsPausaRespiracionDosUnoMesX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPausaRespiracionDosUnoMesX = [defaultsPausaRespiracionDosUnoMesX objectForKey:@"enviaStringPausaRespiracionDosUnoMesX"];
    [PausaRespiracionDosUnoMesX setText:cargaStringPausaRespiracionDosUnoMesX];
    
    NSUserDefaults *defaultsPausaRespiracionNuncaX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPausaRespiracionNuncaX = [defaultsPausaRespiracionNuncaX objectForKey:@"enviaStringPausaRespiracionNuncaX"];
    [PausaRespiracionNuncaX setText:cargaStringPausaRespiracionNuncaX];
    
    NSUserDefaults *defaultsCanzadoLevantarseTodosDiasX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCanzadoLevantarseTodosDiasX = [defaultsCanzadoLevantarseTodosDiasX objectForKey:@"enviaStringCanzadoLevantarseTodosDiasX"];
    [CanzadoLevantarseTodosDiasX setText:cargaStringCanzadoLevantarseTodosDiasX];
        
    NSUserDefaults *defaultsCanzadoLevantarseTresCuatroSemanaX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCanzadoLevantarseTresCuatroSemanaX = [defaultsCanzadoLevantarseTresCuatroSemanaX objectForKey:@"enviaStringCanzadoLevantarseTresCuatroSemanaX"];
    [CanzadoLevantarseTresCuatroSemanaX setText:cargaStringCanzadoLevantarseTresCuatroSemanaX];
    
    NSUserDefaults *defaultsCanzadoLevantarseDosUnoSemanaX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCanzadoLevantarseDosUnoSemanaX = [defaultsCanzadoLevantarseDosUnoSemanaX objectForKey:@"enviaStringCanzadoLevantarseDosUnoSemanaX"];
    [CanzadoLevantarseDosUnoSemanaX setText:cargaStringCanzadoLevantarseDosUnoSemanaX];
    
    NSUserDefaults *defaultsCanzadoLevantarseDosUnoMesX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCanzadoLevantarseDosUnoMesX = [defaultsCanzadoLevantarseDosUnoMesX objectForKey:@"enviaStringCanzadoLevantarseDosUnoMesX"];
    [CanzadoLevantarseDosUnoMesX setText:cargaStringCanzadoLevantarseDosUnoMesX];
    
    NSUserDefaults *defaultsCanzadoLevantarseNuncaX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCanzadoLevantarseNuncaX = [defaultsCanzadoLevantarseNuncaX objectForKey:@"enviaStringCanzadoLevantarseNuncaX"];
    [CanzadoLevantarseNuncaX setText:cargaStringCanzadoLevantarseNuncaX];
    
    NSUserDefaults *defaultsCanzadoDiaTodosDiasX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCanzadoDiaTodosDiasX = [defaultsCanzadoDiaTodosDiasX objectForKey:@"enviaStringCanzadoDiaTodosDiasX"];
    [CanzadoDiaTodosDiasX setText:cargaStringCanzadoDiaTodosDiasX];
    
    NSUserDefaults *defaultsCanzadoDiaTresCuatroSemanaX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCanzadoDiaTresCuatroSemanaX = [defaultsCanzadoDiaTresCuatroSemanaX objectForKey:@"enviaStringCanzadoDiaTresCuatroSemanaX"];
    [CanzadoDiaTresCuatroSemanaX setText:cargaStringCanzadoDiaTresCuatroSemanaX];
    
    NSUserDefaults *defaultsCanzadoDiaDosUnoSemanaX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCanzadoDiaDosUnoSemanaX = [defaultsCanzadoDiaDosUnoSemanaX objectForKey:@"enviaStringCanzadoDiaDosUnoSemanaX"];
    [CanzadoDiaDosUnoSemanaX setText:cargaStringCanzadoDiaDosUnoSemanaX];
    
    NSUserDefaults *defaultsCanzadoDiaDosUnoMesX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCanzadoDiaDosUnoMesX = [defaultsCanzadoDiaDosUnoMesX objectForKey:@"enviaStringCanzadoDiaDosUnoMesX"];
    [CanzadoDiaDosUnoMesX setText:cargaStringCanzadoDiaDosUnoMesX];
    
    NSUserDefaults *defaultsCanzadoDiaNuncaX = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCanzadoDiaNuncaX = [defaultsCanzadoDiaNuncaX objectForKey:@"enviaStringCanzadoDiaNuncaX"];
    [CanzadoDiaNuncaX setText:cargaStringCanzadoDiaNuncaX];
    
    NSUserDefaults *defaultsDormidoVehiculoNo = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringDormidoVehiculoNo = [defaultsDormidoVehiculoNo objectForKey:@"enviaStringDormidoVehiculoNo"];
    [DormidoVehiculoNo setText:cargaStringDormidoVehiculoNo];
    
    NSUserDefaults *defaultsDormidoVehiculoSi = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringDormidoVehiculoSi = [defaultsDormidoVehiculoSi objectForKey:@"enviaStringDormidoVehiculoSi"];
    [DormidoVehiculoSi setText:cargaStringDormidoVehiculoSi];

      
}

-(IBAction)dismisseNombre_Apnea:(id)sender
{
    [sender resignFirstResponder];
}

-(IBAction)dismisseApellido_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseFecha_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseDireccion_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseNumero_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePiso_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseLocalidad_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCodigoPostal_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseEdad_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseFechaNacimiento_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTelefonoParticular_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTelefonoMovil_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCorreoElectronico_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseQuienHaReferidoConsulta_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemaPrincipal_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePeso_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTalla_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseUstedRocaNo_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseUstedRocaSi_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseUstedRocaNoSe_Apnea:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseIntensidadRonquidoRespiracionX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseIntensidadRonquidoIgualHablarX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseIntensidadRonquidoMayorHablarX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseIntensidadRonquidoMuyFuerteX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseFrecuenciaRoncaTodosDiasX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseFrecuenciaRoncaTresCuatroSemanaX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseFrecuenciaRoncaDosUnoSemanaX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseFrecuenciaRoncaDosUnoMesX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseFrecuenciaRoncaNuncaX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseRonquidoMolestaNo:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseRonquidoMolestaSi:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePresionAltaNo:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePresionAltaSi:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePausaRespiracionTodosDiasX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePausaRespiracionTresCuatroSemanaX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePausaRespiracionDosUnoSemanaX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePausaRespiracionDosUnoMesX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePausaRespiracionNuncaX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCanzadoLevantarseTodosDiasX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCanzadoLevantarseTresCuatroSemanaX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCanzadoLevantarseDosUnoSemanaX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCanzadoLevantarseDosUnoMesX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCanzadoLevantarseNuncaX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCanzadoDiaTodosDiasX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCanzadoDiaTresCuatroSemanaX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCanzadoDiaDosUnoSemanaX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCanzadoDiaDosUnoMesX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCanzadoDiaNuncaX:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseDormidoVehiculoNo:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseDormidoVehiculoSi:(id)sender
{
    [sender resignFirstResponder];
}





- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.overlayImageView.image = [UIImage imageNamed:@"iPhone4"];
    self.backgroundImageView.image = [UIImage imageNamed:@"Aurora"];

}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == Nombre_Apnea)
    {
        [Nombre_Apnea becomeFirstResponder];
    }
    else if (textField == Apellido_Apnea)
    {
        [Apellido_Apnea becomeFirstResponder];
    }
    else if (textField == Fecha_Apnea)
    {
        [Fecha_Apnea becomeFirstResponder];
    }
    else if (textField == Direccion_Apnea)
    {
        [Direccion_Apnea becomeFirstResponder];
    }
    else if (textField == Numero_Apnea)
    {
        [Numero_Apnea becomeFirstResponder];
    }
    else if (textField == Piso_Apnea)
    {
        [Piso_Apnea becomeFirstResponder];
    }
    else if (textField == Localidad_Apnea)
    {
        [Localidad_Apnea becomeFirstResponder];
    }
    else if (textField == CodigoPostal_Apnea)
    {
        [CodigoPostal_Apnea becomeFirstResponder];
    }
    else if (textField == Edad_Apnea)
    {
        [Edad_Apnea becomeFirstResponder];
    }
    else if (textField == FechaNacimiento_Apnea)
    {
        [FechaNacimiento_Apnea becomeFirstResponder];
    }
    else if (textField == TelefonoParticular_Apnea)
    {
        [TelefonoParticular_Apnea becomeFirstResponder];
    }
    else if (textField == TelefonoMovil_Apnea)
    {
        [TelefonoMovil_Apnea becomeFirstResponder];
    }
    else if (textField == CorreoElectronico_Apnea)
    {
        [CorreoElectronico_Apnea becomeFirstResponder];
    }
    else if (textField == QuienHaReferidoConsulta_Apnea)
    {
        [QuienHaReferidoConsulta_Apnea becomeFirstResponder];
    }
    else if (textField == ProblemaPrincipal_Apnea)
    {
        [ProblemaPrincipal_Apnea becomeFirstResponder];
    }
    else if (textField == Peso_Apnea)
    {
        [Peso_Apnea becomeFirstResponder];
    }
    else if (textField == Talla_Apnea)
    {
        [Talla_Apnea becomeFirstResponder];
    }
    else if (textField == UstedRocaNo_Apnea)
    {
        [UstedRocaNo_Apnea becomeFirstResponder];
    }
    else if (textField == UstedRocaSi_Apnea)
    {
        [UstedRocaSi_Apnea becomeFirstResponder];
    }
    else if (textField == UstedRocaNoSe_Apnea)
    {
        [UstedRocaNoSe_Apnea becomeFirstResponder];
    }
    else if (textField == IntensidadRonquidoRespiracionX)
    {
        [IntensidadRonquidoRespiracionX becomeFirstResponder];
    }
    else if (textField == IntensidadRonquidoIgualHablarX)
    {
        [IntensidadRonquidoIgualHablarX becomeFirstResponder];
    }
    else if (textField == IntensidadRonquidoMayorHablarX)
    {
        [IntensidadRonquidoMayorHablarX becomeFirstResponder];
    }
    else if (textField == IntensidadRonquidoMuyFuerteX)
    {
        [IntensidadRonquidoMuyFuerteX becomeFirstResponder];
    }
    else if (textField == FrecuenciaRoncaTodosDiasX)
    {
        [FrecuenciaRoncaTodosDiasX becomeFirstResponder];
    }
    else if (textField == FrecuenciaRoncaTresCuatroSemanaX)
    {
        [FrecuenciaRoncaTresCuatroSemanaX becomeFirstResponder];
    }
    else if (textField == FrecuenciaRoncaDosUnoSemanaX)
    {
        [FrecuenciaRoncaDosUnoSemanaX becomeFirstResponder];
    }
    else if (textField == FrecuenciaRoncaDosUnoMesX)
    {
        [FrecuenciaRoncaDosUnoMesX becomeFirstResponder];
    }
    else if (textField == FrecuenciaRoncaNuncaX)
    {
        [FrecuenciaRoncaNuncaX becomeFirstResponder];
    }
    else if (textField == RonquidoMolestaNo)
    {
        [RonquidoMolestaNo becomeFirstResponder];
    }
    else if (textField == RonquidoMolestaSi)
    {
        [RonquidoMolestaSi becomeFirstResponder];
    }
    else if (textField == PresionAltaNo)
    {
        [PresionAltaNo becomeFirstResponder];
    }
    else if (textField == PresionAltaSi)
    {
        [PresionAltaSi becomeFirstResponder];
    }
    else if (textField == PausaRespiracionTodosDiasX)
    {
        [PausaRespiracionTodosDiasX becomeFirstResponder];
    }
    else if (textField == PausaRespiracionTresCuatroSemanaX)
    {
        [PausaRespiracionTresCuatroSemanaX becomeFirstResponder];
    }
    else if (textField == PausaRespiracionDosUnoSemanaX)
    {
        [PausaRespiracionDosUnoSemanaX becomeFirstResponder];
    }
    else if (textField == PausaRespiracionDosUnoMesX)
    {
        [PausaRespiracionDosUnoMesX becomeFirstResponder];
    }
    else if (textField == PausaRespiracionNuncaX)
    {
        [PausaRespiracionNuncaX becomeFirstResponder];
    }
    else if (textField == CanzadoLevantarseTodosDiasX)
    {
        [CanzadoLevantarseTodosDiasX becomeFirstResponder];
    }
    else if (textField == CanzadoLevantarseTresCuatroSemanaX)
    {
        [CanzadoLevantarseTresCuatroSemanaX becomeFirstResponder];
    }
    else if (textField == CanzadoLevantarseDosUnoSemanaX)
    {
        [CanzadoLevantarseDosUnoSemanaX becomeFirstResponder];
    }
    else if (textField == CanzadoLevantarseDosUnoMesX)
    {
        [CanzadoLevantarseDosUnoMesX becomeFirstResponder];
    }
    else if (textField == CanzadoLevantarseNuncaX)
    {
        [CanzadoLevantarseNuncaX becomeFirstResponder];
    }
    else if (textField == CanzadoDiaTodosDiasX)
    {
        [CanzadoDiaTodosDiasX becomeFirstResponder];
    }
    else if (textField == CanzadoDiaTresCuatroSemanaX)
    {
        [CanzadoDiaTresCuatroSemanaX becomeFirstResponder];
    }
    else if (textField == CanzadoDiaDosUnoSemanaX)
    {
        [CanzadoDiaDosUnoSemanaX becomeFirstResponder];
    }
    else if (textField == CanzadoDiaDosUnoMesX)
    {
        [CanzadoDiaDosUnoMesX becomeFirstResponder];
    }
    else if (textField == CanzadoDiaNuncaX)
    {
        [CanzadoDiaNuncaX becomeFirstResponder];
    }
    else if (textField == DormidoVehiculoNo)
    {
        [DormidoVehiculoNo becomeFirstResponder];
    }
    else if (textField == DormidoVehiculoSi)
    {
        [DormidoVehiculoSi becomeFirstResponder];
    }
    else
    {
        [textField resignFirstResponder];
    }

    return YES;
    
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    [scrollView adjustOffsetToIdealIfNeeded];
}

-(IBAction)getUIKitScreeshot
{
    self.screenPictureView = nil;
    self.screenshotImage = [self uiKitScreenshot];
    [self performSelector:@selector(displayScreenshotImage) withObject:nil afterDelay:0.10];
    self.screenPictureLabel.text = @"Imagen Completada";
}


-(UIImage *)uiKitScreenshot

{
    CGSize imageSize = [[UIScreen mainScreen]bounds].size;
    
    if (NULL != UIGraphicsBeginImageContextWithOptions)
        UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0);
    else
        UIGraphicsBeginImageContext(imageSize);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    for (UIWindow *window in [[UIApplication sharedApplication] windows])
    {
        if (![window respondsToSelector:@selector(screen)] || [window screen] == [UIScreen mainScreen])
        {
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, [window center].x, [window center].y);
            CGContextConcatCTM(context, [window transform]);
            CGContextTranslateCTM(context,  - [window bounds].size.width * [[window layer] anchorPoint].x ,
                                  - [window bounds].size.height * [[window layer]anchorPoint].y);
            [[window layer]renderInContext:context];
            
            CGContextRestoreGState(context);
        }
    }
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();    
    UIGraphicsEndImageContext();    
    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Atención!"
                                                    message:@"Proceso realizado Satisfactoriamente"
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"OK!", nil];
    
    [alert show];
    
    
    /*MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    
    picker.mailComposeDelegate = self;
    
    [picker setSubject:@"Envío *.jpg para base de datos Nuevos pacientes"];
    
    NSArray *toRecipient = [NSArray arrayWithObject:@"phdafoe@gmail.com"];
    
    [picker setToRecipients:toRecipient];
   
    NSData *imageData = UIImageJPEGRepresentation(image, 1);
    
    [picker addAttachmentData:imageData mimeType:@"../jpg" fileName:@"Screenshot.jpg"];
    
    NSString *emailBody = @"Texto complementario";
    
    [picker setMessageBody:emailBody isHTML:YES];
    
    [self presentViewController:picker animated:YES completion:nil];*/
    
    return image;
    
        
}



/*- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled: you cancelled the operation and no email message was queued.");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved: you saved the email message in the drafts folder.");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail send: the email message is queued in the outbox. It is ready to send.");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail failed: the email message was not saved or queued, possibly due to an error.");
            break;
        default:
            NSLog(@"Mail not sent.");
            break;
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}*/

-(void)displayScreenshotImage
{
    self.screenPictureImageView.layer.minificationFilter = kCAFilterLinear;
    self.screenPictureImageView.layer.minificationFilterBias = 0.0;
    self.screenPictureImageView.image = self.screenshotImage;
    self.screenPictureLabel.text = @"Imagen Completada";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
