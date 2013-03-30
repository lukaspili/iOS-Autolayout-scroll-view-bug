//
//  ViewController.m
//  test
//
//  Created by Lukas on 3/26/13.
//  Copyright (c) 2013 Siu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize scrollView, imageView, label;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.label.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.imageView.image = [UIImage imageNamed:@"image.png"];

    self.label.text = @"Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text Text text END";
    [self.label sizeToFit];
    
    NSDictionary *viewsDictionnary = NSDictionaryOfVariableBindings(scrollView, imageView, label);
    [self.scrollView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[imageView]-20-[label]-10-|" options:0 metrics:0 views:viewsDictionnary]];
    
    
    self.imageView.userInteractionEnabled = YES;
    [self.imageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)]];
}

- (void)tap
{
    [self.navigationController pushViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"View2"] animated:YES];
}

@end
