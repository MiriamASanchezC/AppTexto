//
//  ViewController.m
//  AppTexto
//
//  Created by Miriam Sanchez on 24/02/25.
//

#import "ViewController.h"

@interface ViewController (){
    NSString * newFont;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.mensaje.text = @"Texto de ejemplo";
    self.mensaje.font = [UIFont fontWithName:@"Starborn" size:30];
    self.mensaje.textColor = [UIColor blackColor];
    newFont = @"Arial";
}


- (IBAction)changeSize:(id)sender {
    //Hacemos un cast de sender a UIButton
    UIButton *button = (UIButton *)sender;
    if ([button.titleLabel.text isEqualToString:@"Small"]) {
        self.mensaje.font = [UIFont fontWithName:newFont size:30];
        self.label.font = [UIFont fontWithName:newFont size:30];
    }else if([button.titleLabel.text isEqualToString:@"Medium"]){
        self.mensaje.font = [UIFont fontWithName:newFont size:40];
        self.label.font = [UIFont fontWithName:newFont size:40];
    }else if([button.titleLabel.text isEqualToString:@"Large"]){
        self.mensaje.font = [UIFont fontWithName:newFont size:60];
        self.label.font = [UIFont fontWithName:newFont size:60];
    }
}

- (IBAction)addShadow:(id)sender {
    //para el UITextField:
    if(self.mensaje.layer.shadowOpacity == 0){//verifica si la sombra esta desactivada
        self.mensaje.layer.shadowColor = [UIColor grayColor].CGColor; //Establece el color de la sombra
        self.mensaje.layer.shadowOffset = CGSizeMake(2, 2); //Establece el desplazamiento de la sombra visible
        self.mensaje.layer.shadowOpacity = 1.0;//Establece la opacidad de la sombra visible
        self.mensaje.layer.shadowRadius = 3.0; //Establece el radio difuminado de la sombra
    }else {
        self.mensaje.layer.shadowOpacity = 0; //Desactiva la sombra
    }
    //para una UILabel
    if (self.label.shadowColor) {
        self.label.shadowColor= nil; //desacctiva la sombra
    }else{
        self.label.shadowColor = [UIColor grayColor]; // establece el color de la sombra
        self.label.shadowOffset = CGSizeMake(2,2);//establece el desplazamiento de la sombra
    }
}

- (IBAction)changeFont:(id)sender {
    UIButton *button = (UIButton *) sender;
    if([button.titleLabel.text isEqualToString:@"Font1"]){
        newFont = @"CHERI___";
    }else if ([button.titleLabel.text isEqualToString:@"Font2"]){
        newFont = @"Daily Bubble";
    }else if ([button.titleLabel.text isEqualToString:@"Font3"]){
        newFont = @"Howdy Love";
    }else if ([button.titleLabel.text isEqualToString:@"Font4"]){
        newFont = @"Starborn";
    }
    self.mensaje.font = [UIFont fontWithName:newFont size:self.mensaje.font.pointSize];
    self.label.font = [UIFont fontWithName:newFont size:self.label.font.pointSize];
    
}

- (IBAction)changeColor:(UIButton *)sender {
    if([sender.titleLabel.text isEqualToString:@"Rojo"]){
        self.mensaje.textColor = [UIColor redColor];
        self.label.textColor = [UIColor redColor];
    }else if([sender.titleLabel.text isEqualToString:@"Verde"]){
        self.mensaje.textColor = [UIColor greenColor];
        self.label.textColor = [UIColor greenColor];
    }else if ([sender.titleLabel.text isEqualToString:@"Azul"]){
        self.mensaje.textColor = [UIColor blueColor];
        self.label.textColor = [UIColor blueColor];
    }
}


@end
