//
//  ViewController.h
//  AppTexto
//
//  Created by Miriam Sanchez on 24/02/25.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *mensaje;
- (IBAction)cambiarColor:(id)sender;
- (IBAction)changeFont:(id)sender;
- (IBAction)addShadow:(id)sender;
- (IBAction)changeSize:(id)sender;


@end

