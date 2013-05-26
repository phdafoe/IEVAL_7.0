//
//  SecondViewController.m
//  OrtofaceApp
//
//  Created by andres ocampo on 16/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import "SecondViewController.h"
#import "KBScrollView.h"
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <ImageIO/ImageIO.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "FirmaDigtalViewController.h"

@interface SecondViewController ()

- (void) displayScreenshotImage;
- (UIImage *)uiKitScreenshot;


@end

@implementation SecondViewController

@synthesize estasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica, SeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico, ConLaOrganizacionGeneralDeLaClinicaInsatisfecho, ConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho, ConLaOrganizacionGeneralDeLaClinicaMuySatisfecho, ConLaOrganizacionGeneralDeLaClinicaSatisfecho,ConLaOrganizacionGeneralDeLaClinicaTerminoMedio,ConLasInstalacionesDondeTrabajamosInsatisfecho,ConLasInstalacionesDondeTrabajamosMuyInsatisfecho,ConLasInstalacionesDondeTrabajamosMuySatisfecho,ConLasInstalacionesDondeTrabajamosSatisfecho,ConLasInstalacionesDondeTrabajamosTerminoMedio,ConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho,ConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho,ConLaSolucionLosProblemasPlateadosPorLosPacientesMuySatisfecho,ConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho,ConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio,CosasQueTeGustaronDeLaConsulta1,CosasQueTeGustaronDeLaConsulta2,CosasQueTeGustaronDeLaConsulta3, SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho,SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho,SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho,SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho,SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio, RecomendariasOrtofaceUnAmigoConocidoNo, RecomendariasOrtofaceUnAmigoConocidoSi, AreasQueDebenSerMejoradas1, AreasQueDebenSerMejoradas2, AreasQueDebenSerMejoradas3, scrollView;

@synthesize overlayImageView;
@synthesize backgroundImageView;
@synthesize screenshotImage;
@synthesize screenPictureView;
@synthesize screenPictureLabel;
@synthesize screenPictureImageView;

/*@synthesize messageNombre_Adulto, messageApellido_Adulto;

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"First to second"])
    {
        self.messageNombre_Adulto = Nombre_Adulto.text;
        self.messageApellido_Adulto = Apellido_Adulto.text;
        FirmaDigtalViewController *targetVC = [segue destinationViewController];
        targetVC.messageNombre_Adulto = self.messageNombre_Adulto;
        targetVC.messageApellido_Adulto = self.messageApellido_Adulto;
    }
}*/

-(IBAction)enviar:(id)sender

{
    
    NSString *enviaStringestasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica = estasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica.text;
    NSUserDefaults *defaultsestasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica = [NSUserDefaults standardUserDefaults];
    [defaultsestasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica setObject:enviaStringestasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica forKey:@"enviaStringestasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica"];
    [defaultsestasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica synchronize];
    
    NSString *enviaStringSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico = SeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico.text;
    NSUserDefaults *defaultsSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico = [NSUserDefaults standardUserDefaults];
    [defaultsSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico setObject:enviaStringSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico forKey:@"enviaStringSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico"];
    [defaultsSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico synchronize];
    
    NSString *enviaStringCosasQueTeGustaronDeLaConsulta1 = CosasQueTeGustaronDeLaConsulta1.text;
    NSUserDefaults *defaultsCosasQueTeGustaronDeLaConsulta1 = [NSUserDefaults standardUserDefaults];
    [defaultsCosasQueTeGustaronDeLaConsulta1 setObject:enviaStringCosasQueTeGustaronDeLaConsulta1 forKey:@"enviaStringCosasQueTeGustaronDeLaConsulta1"];
    [defaultsCosasQueTeGustaronDeLaConsulta1 synchronize];
    
    
    NSString *enviaStringCosasQueTeGustaronDeLaConsulta2 = CosasQueTeGustaronDeLaConsulta2.text;
    NSUserDefaults *defaultsCosasQueTeGustaronDeLaConsulta2 = [NSUserDefaults standardUserDefaults];
    [defaultsCosasQueTeGustaronDeLaConsulta2 setObject:enviaStringCosasQueTeGustaronDeLaConsulta2 forKey:@"enviaStringCosasQueTeGustaronDeLaConsulta2"];
    [defaultsCosasQueTeGustaronDeLaConsulta2 synchronize];
    
    NSString *enviaStringCosasQueTeGustaronDeLaConsulta3 = CosasQueTeGustaronDeLaConsulta3.text;
    NSUserDefaults *defaultsCosasQueTeGustaronDeLaConsulta3 = [NSUserDefaults standardUserDefaults];
    [defaultsCosasQueTeGustaronDeLaConsulta3 setObject:enviaStringCosasQueTeGustaronDeLaConsulta3 forKey:@"enviaStringCosasQueTeGustaronDeLaConsulta3"];
    [defaultsCosasQueTeGustaronDeLaConsulta3 synchronize];
    
    NSString *enviaStringAreasQueDebenSerMejoradas1 = AreasQueDebenSerMejoradas1.text;
    NSUserDefaults *defaultsAreasQueDebenSerMejoradas1 = [NSUserDefaults standardUserDefaults];
    [defaultsAreasQueDebenSerMejoradas1 setObject:enviaStringAreasQueDebenSerMejoradas1 forKey:@"enviaStringAreasQueDebenSerMejoradas1"];
    [defaultsAreasQueDebenSerMejoradas1 synchronize];
    
    NSString *enviaStringAreasQueDebenSerMejoradas2 = AreasQueDebenSerMejoradas2.text;
    NSUserDefaults *defaultsAreasQueDebenSerMejoradas2 = [NSUserDefaults standardUserDefaults];
    [defaultsAreasQueDebenSerMejoradas2 setObject:enviaStringAreasQueDebenSerMejoradas2 forKey:@"enviaStringAreasQueDebenSerMejoradas2"];
    [defaultsAreasQueDebenSerMejoradas2 synchronize];
    
    NSString *enviaStringAreasQueDebenSerMejoradas3 = AreasQueDebenSerMejoradas3.text;
    NSUserDefaults *defaultsAreasQueDebenSerMejoradas3 = [NSUserDefaults standardUserDefaults];
    [defaultsAreasQueDebenSerMejoradas3 setObject:enviaStringAreasQueDebenSerMejoradas3 forKey:@"enviaStringAreasQueDebenSerMejoradas3"];
    [defaultsAreasQueDebenSerMejoradas3 synchronize];
    
    NSString *enviaStringConLasInstalacionesDondeTrabajamosMuyInsatisfecho = ConLasInstalacionesDondeTrabajamosMuyInsatisfecho.text;
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosMuyInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLasInstalacionesDondeTrabajamosMuyInsatisfecho setObject:enviaStringConLasInstalacionesDondeTrabajamosMuyInsatisfecho forKey:@"enviaStringConLasInstalacionesDondeTrabajamosMuyInsatisfecho"];
    [defaultsConLasInstalacionesDondeTrabajamosMuyInsatisfecho synchronize];
    
    NSString *enviaStringConLasInstalacionesDondeTrabajamosInsatisfecho = ConLasInstalacionesDondeTrabajamosInsatisfecho.text;
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLasInstalacionesDondeTrabajamosInsatisfecho setObject:enviaStringConLasInstalacionesDondeTrabajamosInsatisfecho forKey:@"enviaStringConLasInstalacionesDondeTrabajamosInsatisfecho"];
    [defaultsConLasInstalacionesDondeTrabajamosInsatisfecho synchronize];
    
    NSString *enviaStringConLasInstalacionesDondeTrabajamosTerminoMedio = ConLasInstalacionesDondeTrabajamosTerminoMedio.text;
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosTerminoMedio = [NSUserDefaults standardUserDefaults];
    [defaultsConLasInstalacionesDondeTrabajamosTerminoMedio setObject:enviaStringConLasInstalacionesDondeTrabajamosTerminoMedio forKey:@"enviaStringConLasInstalacionesDondeTrabajamosTerminoMedio"];
    [defaultsConLasInstalacionesDondeTrabajamosTerminoMedio synchronize];
    
    NSString *enviaStringConLasInstalacionesDondeTrabajamosSatisfecho = ConLasInstalacionesDondeTrabajamosSatisfecho.text;
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosSatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLasInstalacionesDondeTrabajamosSatisfecho setObject:enviaStringConLasInstalacionesDondeTrabajamosSatisfecho forKey:@"enviaStringConLasInstalacionesDondeTrabajamosSatisfecho"];
    [defaultsConLasInstalacionesDondeTrabajamosSatisfecho synchronize];
    
    NSString *enviaStringConLasInstalacionesDondeTrabajamosMuySatisfecho = ConLasInstalacionesDondeTrabajamosMuySatisfecho.text;
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosMuySatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLasInstalacionesDondeTrabajamosMuySatisfecho setObject:enviaStringConLasInstalacionesDondeTrabajamosMuySatisfecho forKey:@"enviaStringConLasInstalacionesDondeTrabajamosMuySatisfecho"];
    [defaultsConLasInstalacionesDondeTrabajamosMuySatisfecho synchronize];
    
    NSString *enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho = ConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho.text;
    NSUserDefaults *defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho setObject:enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho forKey:@"enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho"];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho synchronize];
    
    NSString *enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho = ConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho.text;
    NSUserDefaults *defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho setObject:enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho forKey:@"enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho"];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho synchronize];
    
    NSString *enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio = ConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio.text;
    NSUserDefaults *defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio = [NSUserDefaults standardUserDefaults];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio setObject:enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio forKey:@"enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio"];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio synchronize];
    
    NSString *enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho = ConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho.text;
    NSUserDefaults *defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho setObject:enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho forKey:@"enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho"];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho synchronize];
    
    NSString *enviaStringConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho = ConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho.text;
    NSUserDefaults *defaultsConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho setObject:enviaStringConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho forKey:@"enviaStringConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho"];
    [defaultsConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho synchronize];
    
    NSString *enviaStringConLaOrganizacionGeneralDeLaClinicaInsatisfecho = ConLaOrganizacionGeneralDeLaClinicaInsatisfecho.text;
    NSUserDefaults *defaultsConLaOrganizacionGeneralDeLaClinicaInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLaOrganizacionGeneralDeLaClinicaInsatisfecho setObject:enviaStringConLaOrganizacionGeneralDeLaClinicaInsatisfecho forKey:@"enviaStringConLaOrganizacionGeneralDeLaClinicaInsatisfecho"];
    [defaultsConLaOrganizacionGeneralDeLaClinicaInsatisfecho synchronize];
    
    NSString *enviaStringConLaOrganizacionGeneralDeLaClinicaTerminoMedio = ConLaOrganizacionGeneralDeLaClinicaTerminoMedio.text;
    NSUserDefaults *defaultsConLaOrganizacionGeneralDeLaClinicaTerminoMedio = [NSUserDefaults standardUserDefaults];
    [defaultsConLaOrganizacionGeneralDeLaClinicaTerminoMedio setObject:enviaStringConLaOrganizacionGeneralDeLaClinicaTerminoMedio forKey:@"enviaStringConLaOrganizacionGeneralDeLaClinicaTerminoMedio"];
    [defaultsConLaOrganizacionGeneralDeLaClinicaTerminoMedio synchronize];
    
    NSString *enviaStringConLaOrganizacionGeneralDeLaClinicaSatisfecho = ConLaOrganizacionGeneralDeLaClinicaSatisfecho.text;
    NSUserDefaults *defaultsConLaOrganizacionGeneralDeLaClinicaSatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLaOrganizacionGeneralDeLaClinicaSatisfecho setObject:enviaStringConLaOrganizacionGeneralDeLaClinicaSatisfecho forKey:@"enviaStringConLaOrganizacionGeneralDeLaClinicaSatisfecho"];
    [defaultsConLaOrganizacionGeneralDeLaClinicaSatisfecho synchronize];
    
    NSString *enviaStringConLaOrganizacionGeneralDeLaClinicaMuySatisfecho = ConLaOrganizacionGeneralDeLaClinicaMuySatisfecho.text;
    NSUserDefaults *defaultsConLaOrganizacionGeneralDeLaClinicaMuySatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLaOrganizacionGeneralDeLaClinicaMuySatisfecho setObject:enviaStringConLaOrganizacionGeneralDeLaClinicaMuySatisfecho forKey:@"enviaStringConLaOrganizacionGeneralDeLaClinicaMuySatisfecho"];
    [defaultsConLaOrganizacionGeneralDeLaClinicaMuySatisfecho synchronize];
    
    NSString *enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho = SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho.text;
    NSUserDefaults *defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho setObject:enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho forKey:@"enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho"];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho synchronize];
    
    NSString *enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho = SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho.text;
    NSUserDefaults *defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho setObject:enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho forKey:@"enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho"];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho synchronize];
    
    NSString *enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio = SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio.text;
    NSUserDefaults *defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio = [NSUserDefaults standardUserDefaults];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio setObject:enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio forKey:@"enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio"];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio synchronize];
    
    NSString *enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho = SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho.text;
    NSUserDefaults *defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho setObject:enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho forKey:@"enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho"];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho synchronize];
    
    NSString *enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho = SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho.text;
    NSUserDefaults *defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho setObject:enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho forKey:@"enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho"];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho synchronize];
    
    NSString *enviaStringRecomendariasOrtofaceUnAmigoConocidoNo = RecomendariasOrtofaceUnAmigoConocidoNo.text;
    NSUserDefaults *defaultsRecomendariasOrtofaceUnAmigoConocidoNo = [NSUserDefaults standardUserDefaults];
    [defaultsRecomendariasOrtofaceUnAmigoConocidoNo setObject:enviaStringRecomendariasOrtofaceUnAmigoConocidoNo forKey:@"enviaStringRecomendariasOrtofaceUnAmigoConocidoNo"];
    [defaultsRecomendariasOrtofaceUnAmigoConocidoNo synchronize];
    
    NSString *enviaStringRecomendariasOrtofaceUnAmigoConocidoSi = RecomendariasOrtofaceUnAmigoConocidoSi.text;
    NSUserDefaults *defaultsRecomendariasOrtofaceUnAmigoConocidoSi = [NSUserDefaults standardUserDefaults];
    [defaultsRecomendariasOrtofaceUnAmigoConocidoSi setObject:enviaStringRecomendariasOrtofaceUnAmigoConocidoSi forKey:@"enviaStringOperadoDeAmigdalasVegetacionesEdad_Adulto"];
    [defaultsRecomendariasOrtofaceUnAmigoConocidoSi synchronize];
    
}



-(IBAction)cargarInformacion:(id)sender
{
    
    NSUserDefaults *defaultsestasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringestasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica = [defaultsestasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica:@"enviaStringestasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica"];
    [estasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica setText:cargaStringestasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica];
    
    NSUserDefaults *defaultsSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico = [defaultsSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico objectForKey:@"enviaStringSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico"];
    [SeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico setText:cargaStringSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico];
    
    NSUserDefaults *defaultsCosasQueTeGustaronDeLaConsulta1 = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCosasQueTeGustaronDeLaConsulta1 = [defaultsCosasQueTeGustaronDeLaConsulta1 objectForKey:@"enviaStringCosasQueTeGustaronDeLaConsulta1"];
    [CosasQueTeGustaronDeLaConsulta1 setText:cargaStringCosasQueTeGustaronDeLaConsulta1];
    
    NSUserDefaults *defaultsCosasQueTeGustaronDeLaConsulta2 = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCosasQueTeGustaronDeLaConsulta2 = [defaultsCosasQueTeGustaronDeLaConsulta2 objectForKey:@"enviaStringCosasQueTeGustaronDeLaConsulta2"];
    [CosasQueTeGustaronDeLaConsulta2 setText:cargaStringCosasQueTeGustaronDeLaConsulta2];
    
    NSUserDefaults *defaultsCosasQueTeGustaronDeLaConsulta3 = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCosasQueTeGustaronDeLaConsulta3 = [defaultsCosasQueTeGustaronDeLaConsulta3 objectForKey:@"enviaStringCosasQueTeGustaronDeLaConsulta3"];
    [CosasQueTeGustaronDeLaConsulta3 setText:cargaStringCosasQueTeGustaronDeLaConsulta3];
    
    NSUserDefaults *defaultsAreasQueDebenSerMejoradas1 = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAreasQueDebenSerMejoradas1 = [defaultsAreasQueDebenSerMejoradas1 objectForKey:@"enviaStringAreasQueDebenSerMejoradas1"];
    [AreasQueDebenSerMejoradas1 setText:cargaStringAreasQueDebenSerMejoradas1];
    
    NSUserDefaults *defaultsAreasQueDebenSerMejoradas2 = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAreasQueDebenSerMejoradas2 = [defaultsAreasQueDebenSerMejoradas2 objectForKey:@"enviaStringAreasQueDebenSerMejoradas2"];
    [AreasQueDebenSerMejoradas2 setText:cargaStringAreasQueDebenSerMejoradas2];
    
    NSUserDefaults *defaultsAreasQueDebenSerMejoradas3 = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAreasQueDebenSerMejoradas3 = [defaultsAreasQueDebenSerMejoradas3 objectForKey:@"enviaStringAreasQueDebenSerMejoradas3"];
    [AreasQueDebenSerMejoradas3 setText:cargaStringAreasQueDebenSerMejoradas3];
    
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosMuyInsatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLasInstalacionesDondeTrabajamosMuyInsatisfecho = [defaultsConLasInstalacionesDondeTrabajamosMuyInsatisfecho objectForKey:@"enviaStringConLasInstalacionesDondeTrabajamosMuyInsatisfecho"];
    [ConLasInstalacionesDondeTrabajamosMuyInsatisfecho setText:cargaStringConLasInstalacionesDondeTrabajamosMuyInsatisfecho];
    
    
    
    
       
}


-(IBAction)dismisseObservaciones:(id)sender
{
    [sender resignFirstResponder];
}

-(IBAction)dismisseFecha_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseNombre_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseApellido_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseDireccion_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseNumero_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePiso_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseLocalidad_Adulto:(id)sender;
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCodigoPostal_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseFechaNacimiento_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseEdad_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTelefonoParticular_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCorreoElectronico_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseMovil_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseQuienHaReferidoNuestraConsulta_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemaPrincipalDeDientes_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePadeceEnfermedadNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePadeceEnfermedadSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePadeceEnfermedadCuales_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAlergiaMedicamentosComidasNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAlergiaMedicamentosComidasSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAlergiaMedicamentosComidasCuales_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseMedicacionUtilizada_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTratamientoOrtodoncicoNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTratamientoOrtodoncicoSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTratamientoOrtodoncicoCuales_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseOperadoDeAmigdalasVegetacionesNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseOperadoDeAmigdalasVegetacionesSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseOperadoDeAmigdalasVegetacionesCuales_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseHipertensoNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseHipertensoSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseEmbarazadaNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseEmbarazadaSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseFumadorNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseFumadorSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAlergicoNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAlergicoSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemasCardiacosNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemasCardiacosSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemasCardiacosCuales_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseHepatitisA_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseHepatitisB_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseHepatitisC_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAnemiaX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseDepresionX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseEpilepsiaX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemasdeRinonesX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseUlcerasX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseDiabetesX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseHIVX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemasTiroidesX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemasPulmonaresX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCanceresTumoresX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseMareosX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseDesmayosX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseSangraEnciasX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.overlayImageView.image = [UIImage imageNamed:@"iPhone4"];
    self.backgroundImageView.image = [UIImage imageNamed:@"Aurora"];
    
    

}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == Fecha_Adulto) {
        [Fecha_Adulto becomeFirstResponder];
    }
    else if (textField == Nombre_Adulto)
    {
        [Nombre_Adulto becomeFirstResponder];
    }
    else if (textField == Apellido_Adulto)
    {
        [Apellido_Adulto becomeFirstResponder];
    }
    else if (textField == Direccion_Adulto)
    {
        [Direccion_Adulto becomeFirstResponder];
    }
    else if (textField == Numero_Adulto)
    {
        [Numero_Adulto becomeFirstResponder];
    }
    else if (textField == Piso_Adulto)
    {
        [Piso_Adulto becomeFirstResponder];
    }
    else if (textField == Localidad_Adulto)
    {
        [Localidad_Adulto becomeFirstResponder];
    }
    else if (textField == CodigoPostal_Adulto)
    {
        [CodigoPostal_Adulto becomeFirstResponder];
    }
    else if (textField == FechaNacimiento_Adulto)
    {
        [FechaNacimiento_Adulto becomeFirstResponder];
    }
    else if (textField == Edad_Adulto)
    {
        [Edad_Adulto becomeFirstResponder];
    }
    else if (textField == TelefonoParticular_Adulto)
    {
        [TelefonoParticular_Adulto becomeFirstResponder];
    }
    else if (textField == CorreoElectronico_Adulto)
    {
        [CorreoElectronico_Adulto becomeFirstResponder];
    }
    else if (textField == Movil_Adulto)
    {
        [Movil_Adulto becomeFirstResponder];
    }
    else if (textField == QuienHaReferidoNuestraConsulta_Adulto)
    {
        [QuienHaReferidoNuestraConsulta_Adulto becomeFirstResponder];
    }
    else if (textField == ProblemaPrincipalDeDientes_Adulto)
    {
        [ProblemaPrincipalDeDientes_Adulto becomeFirstResponder];
    }
    else if (textField == PadeceEnfermedadNo_Adulto)
    {
        [PadeceEnfermedadNo_Adulto becomeFirstResponder];
    }
    else if (textField == PadeceEnfermedadSi_Adulto)
    {
        [PadeceEnfermedadSi_Adulto becomeFirstResponder];
    }
    else if (textField == PadeceEnfermedadCuales_Adulto)
    {
        [PadeceEnfermedadCuales_Adulto becomeFirstResponder];
    }
    else if (textField == AlergiaMedicamentosComidasNo_Adulto)
    {
        [AlergiaMedicamentosComidasNo_Adulto becomeFirstResponder];
    }
    else if (textField == AlergiaMedicamentosComidasSi_Adulto)
    {
        [AlergiaMedicamentosComidasSi_Adulto becomeFirstResponder];
    }
    else if (textField == AlergiaMedicamentosComidasCuales_Adulto)
    {
        [AlergiaMedicamentosComidasCuales_Adulto becomeFirstResponder];
    }
    else if (textField == MedicacionUtilizada_Adulto)
    {
        [MedicacionUtilizada_Adulto becomeFirstResponder];
    }
    else if (textField == TratamientoOrtodoncicoNo_Adulto)
    {
        [TratamientoOrtodoncicoNo_Adulto becomeFirstResponder];
    }
    else if (textField == TratamientoOrtodoncicoSi_Adulto)
    {
        [TratamientoOrtodoncicoSi_Adulto becomeFirstResponder];
    }
    else if (textField == TratamientoOrtodoncicoEdad_Adulto)
    {
        [TratamientoOrtodoncicoEdad_Adulto becomeFirstResponder];
    }
    else if (textField == OperadoDeAmigdalasVegetacionesNo_Adulto)
    {
        [OperadoDeAmigdalasVegetacionesNo_Adulto becomeFirstResponder];
    }
    else if (textField == OperadoDeAmigdalasVegetacionesSi_Adulto)
    {
        [OperadoDeAmigdalasVegetacionesSi_Adulto becomeFirstResponder];
    }
    else if (textField == OperadoDeAmigdalasVegetacionesEdad_Adulto)
    {
        [OperadoDeAmigdalasVegetacionesEdad_Adulto becomeFirstResponder];
    }
    else if (textField == HipertensoNo_Adulto)
    {
        [HipertensoNo_Adulto becomeFirstResponder];
    }
    else if (textField == HipertensoSi_Adulto)
    {
        [HipertensoSi_Adulto becomeFirstResponder];
    }
    else if (textField == EmbarazadaNo_Adulto)
    {
        [EmbarazadaNo_Adulto becomeFirstResponder];
    }
    else if (textField == EmbarazadaSi_Adulto)
    {
        [EmbarazadaSi_Adulto becomeFirstResponder];
    }
    else if (textField == FumadorNo_Adulto)
    {
        [FumadorNo_Adulto becomeFirstResponder];
    }
    else if (textField == FumadorSi_Adulto)
    {
        [FumadorSi_Adulto becomeFirstResponder];
    }
    else if (textField == AlergicoNo_Adulto)
    {
        [AlergicoNo_Adulto becomeFirstResponder];
    }
    else if (textField == AlergicoSi_Adulto)
    {
        [AlergicoSi_Adulto becomeFirstResponder];
    }
    else if (textField == ProblemasCardiacosNo_Adulto)
    {
        [ProblemasCardiacosNo_Adulto becomeFirstResponder];
    }
    else if (textField == ProblemasCardiacosSi_Adulto)
    {
        [ProblemasCardiacosSi_Adulto becomeFirstResponder];
    }
    else if (textField == ProblemasCardiacosCuales_Adulto)
    {
        [ProblemasCardiacosCuales_Adulto becomeFirstResponder];
    }
    else if (textField == HepatitisA_Adulto)
    {
        [HepatitisA_Adulto becomeFirstResponder];
    }
    else if (textField == HepatitisB_Adulto)
    {
        [HepatitisB_Adulto becomeFirstResponder];
    }
    else if (textField == HepatitisC_Adulto)
    {
        [HepatitisC_Adulto becomeFirstResponder];
    }
    else if (textField == AnemiaX_Adulto)
    {
        [AnemiaX_Adulto becomeFirstResponder];
    }
    else if (textField == DepresionX_Adulto)
    {
        [DepresionX_Adulto becomeFirstResponder];
    }
    else if (textField == EpilepsiaX_Adulto)
    {
        [EpilepsiaX_Adulto becomeFirstResponder];
    }
    else if (textField == ProblemasdeRinonesX_Adulto)
    {
        [ProblemasdeRinonesX_Adulto becomeFirstResponder];
    }
    else if (textField == UlcerasX_Adulto)
    {
        [UlcerasX_Adulto becomeFirstResponder];
    }
    else if (textField == DiabetesX_Adulto)
    {
        [DiabetesX_Adulto becomeFirstResponder];
    }
    else if (textField == HIVX_Adulto)
    {
        [HIVX_Adulto becomeFirstResponder];
    }
    else if (textField == ProblemasTiroidesX_Adulto)
    {
        [ProblemasTiroidesX_Adulto becomeFirstResponder];
    }
    else if (textField == ProblemasPulmonaresX_Adulto)
    {
        [ProblemasPulmonaresX_Adulto becomeFirstResponder];
    }
    else if (textField == CanceresTumoresX_Adulto)
    {
        [CanceresTumoresX_Adulto becomeFirstResponder];
    }
    else if (textField == MareosX_Adulto)
    {
        [MareosX_Adulto becomeFirstResponder];
    }
    else if (textField == DesmayosX_Adulto)
    {
        [DesmayosX_Adulto becomeFirstResponder];
    }
    else if (textField == SangraEnciasX_Adulto)
    {
        [SangraEnciasX_Adulto becomeFirstResponder];
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
        
        [picker setMessageBody:emailBody isHTML:NO];
        
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


@end
