//
//  MDViewController.m
//  MDBlurViewDemo
//
//  Created by Dimitri Bouniol on 7/26/13.
//  Copyright (c) 2013 Mochi Development, Inc. All rights reserved.
//
//  Copyright (c) 2013 Dimitri Bouniol, Mochi Development, Inc.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software, associated artwork, and documentation files (the "Software"),
//  to deal in the Software without restriction, including without limitation the
//  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
//  sell copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  1. The above copyright notice and this permission notice shall be included in
//     all copies or substantial portions of the Software.
//  2. Neither the name of Mochi Development, Inc. nor the names of its
//     contributors or products may be used to endorse or promote products
//     derived from this software without specific prior written permission.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
//  Mochi Dev, and the Mochi Development logo are copyright Mochi Development, Inc.
//

#import "MDViewController.h"
#import "MDBlurView.h"

@interface MDViewController ()

@end

@implementation MDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.scrollView.contentSize = CGSizeMake(800, 800);
	// Do any additional setup after loading the view, typically from a nib.
    
    //    self.blurView.maskView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Circle"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeBlurRadius:(UISlider *)sender
{
    self.blurView.blurFraction = sender.value;
}

- (IBAction)changeColor:(UISlider *)sender
{
    self.blurView.backgroundTintColor = [UIColor colorWithHue:_hue.value saturation:_sat.value brightness:_bright.value alpha:_alpha.value];
    
    _testSwatchA.backgroundColor = [UIColor colorWithHue:_hue.value saturation:_sat.value brightness:_bright.value alpha:1];
    _testSwatchB.backgroundColor = [UIColor colorWithHue:_hue.value saturation:_sat.value brightness:_bright.value alpha:_alpha.value];
}

- (IBAction)makeSmall:(id)sender
{
    [UIView animateWithDuration:0.5 animations:^{
        self.blurView.frame = CGRectMake(36, 62, 147, 65);
    }];
}

- (IBAction)makeBig:(id)sender
{
    [UIView animateWithDuration:0.5 animations:^{
        self.blurView.frame = CGRectMake(36, 62, 247, 165);
    }];
}

- (IBAction)toggleMask:(id)sender
{
    if (!self.blurView.maskImage) {
        self.blurView.maskImage = [[UIImage imageNamed:@"Circle"] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10)];
        
//        self.blurView.maskView = [[UIImageView alloc] initWithImage:[[UIImage imageNamed:@"Circle"] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10)]];
//        self.blurView.overlayMaskView = [[UIImageView alloc] initWithImage:[[UIImage imageNamed:@"Circle"] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10)]];
    } else {
        self.blurView.maskImage = nil;
        
//        self.blurView.maskView = nil;
//        self.blurView.overlayMaskView = nil;
    }
}

@end
