//
//  ViewController.m
//  BaseAnimationDemo
//
//  Created by Yolanda on 2017/9/13.
//  Copyright © 2017年 Yolanda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *myView;
@property (nonatomic, strong) UIView *myView2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   // [self positionAnimation];
   // [self transformAnimation];
   // [self fadeAnimation];
   // [self rotationAnimation];
   // [self transform3DAnimation];
    
  
    
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
   // [self boundsAniamtion];
    //[self scaleAnimation];
    
   // [self positionAnimation];
   // [self bgColorAnimation];
    
    //[self cornerRadiusAnimation];
    
   // [self borderAnimation];
    
    [self shadowColorAnimation];
}

//MARK: - getter
- (UIView *)myView {
    if (!_myView) {
        _myView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 80, 80)];
        _myView.backgroundColor = [UIColor yellowColor];
        [self.view addSubview:_myView];
    }
    return _myView;
}
- (UIView *)myView2 {
    if (!_myView2) {
        _myView2 = [[UIView alloc]initWithFrame:CGRectMake(-50, 100, 50, 50)];
        _myView2.backgroundColor = [UIColor yellowColor];
        [self.view addSubview:_myView2];
    }
    return _myView2;
}

//MARK: - 位移动画
- (void)positionAnimation {
    /*  注释部分于下面代码效果相同
     CABasicAnimation *positionAniamtion = [CABasicAnimation animationWithKeyPath:@"position"];
     positionAniamtion.fromValue = [NSValue valueWithCGPoint:CGPointMake(100, 100)];
     positionAniamtion.toValue = [NSValue valueWithCGPoint:CGPointMake(300, 100)];
     */
    CABasicAnimation *positionAniamtion = [CABasicAnimation animationWithKeyPath:@"transform.translation.x"];
    positionAniamtion.fromValue = @100;
    positionAniamtion.toValue = @150;
    positionAniamtion.duration = 2.0;
    positionAniamtion.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    //动画完成后不删除
    positionAniamtion.removedOnCompletion = NO;
    //保持最新的状态
    positionAniamtion.fillMode = kCAFillModeForwards;
    [self.myView.layer addAnimation:positionAniamtion forKey:@"positionAniamtion"];
}

//MARK: - 缩放动画
- (void)scaleAnimation {
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    //scaleAnimation.fromValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)];
    scaleAnimation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.5, 1.5, 1.0)];
    scaleAnimation.duration = 1.0;
    scaleAnimation.removedOnCompletion = NO;
    scaleAnimation.fillMode = kCAFillModeForwards;
    [self.myView.layer addAnimation:scaleAnimation forKey:@"transformAnimation"];

}
//MARK： - bounds动画
- (void)boundsAniamtion {
    CABasicAnimation *boundsAniamtion = [CABasicAnimation animationWithKeyPath:@"bounds.size.width"];
  
    boundsAniamtion.toValue =  @(150);
    boundsAniamtion.duration = 1.0;
    boundsAniamtion.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    boundsAniamtion.removedOnCompletion = NO;
    boundsAniamtion.fillMode = kCAFillModeForwards;
    [self.myView.layer addAnimation:boundsAniamtion forKey:@"size"];
}

//MARK: - 背景颜色
- (void)bgColorAnimation {
    
    CABasicAnimation *bgColorAnimation = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    bgColorAnimation.toValue = (id)([UIColor redColor].CGColor);
    bgColorAnimation.duration = 3.0;
    bgColorAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    bgColorAnimation.removedOnCompletion = NO;
    bgColorAnimation.fillMode = kCAFillModeForwards;
    [self.myView.layer addAnimation:bgColorAnimation forKey:@"bgColorAnimation"];
}
//MARK: - 圆角动画
- (void)cornerRadiusAnimation {
    CABasicAnimation *cornerRadiusAnimation = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    cornerRadiusAnimation.toValue = @(40);
    cornerRadiusAnimation.duration = 1.0;
    cornerRadiusAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    cornerRadiusAnimation.removedOnCompletion = NO;
    cornerRadiusAnimation.fillMode = kCAFillModeForwards;
    [self.myView.layer addAnimation:cornerRadiusAnimation forKey:@"cornerRadiusAnimation"];
}
//MARK: - 边框动画
- (void)borderAnimation {
    CABasicAnimation *cornerRadiusAnimation = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    cornerRadiusAnimation.toValue = @(40);
    cornerRadiusAnimation.duration = 1.0;
    cornerRadiusAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    cornerRadiusAnimation.removedOnCompletion = NO;
    cornerRadiusAnimation.fillMode = kCAFillModeForwards;
 
    CABasicAnimation *borderWidthAnimation = [CABasicAnimation animationWithKeyPath:@"borderWidth"];
    borderWidthAnimation.toValue = @(5.0);
    borderWidthAnimation.duration = 1.0;
    borderWidthAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    borderWidthAnimation.removedOnCompletion = NO;
    borderWidthAnimation.fillMode = kCAFillModeForwards;
    CABasicAnimation *borderColorAnimation = [CABasicAnimation animationWithKeyPath:@"borderColor"];
    borderColorAnimation.toValue = (id)[UIColor purpleColor].CGColor;
    borderColorAnimation.duration = 1.0;
    borderColorAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    borderColorAnimation.removedOnCompletion = NO;
    borderColorAnimation.fillMode = kCAFillModeForwards;
    
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.animations = @[cornerRadiusAnimation, borderColorAnimation, borderWidthAnimation];
    group.duration = 1.0;
    group.repeatCount = MAXFLOAT;
    group.removedOnCompletion = NO;
    group.fillMode = kCAFillModeForwards;
    
    [self.myView.layer addAnimation:group forKey:nil];
}
//MARK: - 阴影颜色动画
- (void)shadowColorAnimation {
    CABasicAnimation *shadowColorAnimation = [CABasicAnimation animationWithKeyPath:@"shadowColor"];
    shadowColorAnimation.fromValue = (id)[UIColor whiteColor].CGColor;
    shadowColorAnimation.toValue = (id)[UIColor purpleColor].CGColor;
    shadowColorAnimation.duration = 1.0;
    shadowColorAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    shadowColorAnimation.removedOnCompletion = NO;
    shadowColorAnimation.fillMode = kCAFillModeForwards;
    
    [self.myView.layer addAnimation:shadowColorAnimation forKey:@"shadowColorAnimation"];
    
}
//MARK: - 透明度动画
- (void)fadeAnimation {
    
    CABasicAnimation *fadeAnimation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    fadeAnimation.fromValue = @1.0;
    fadeAnimation.toValue = @0.0;
    fadeAnimation.duration = 3.0;
    fadeAnimation.removedOnCompletion = NO;
    fadeAnimation.fillMode = kCAFillModeForwards;
    [self.myView.layer addAnimation:fadeAnimation forKey:@"fadeAnimation"];
    
}

//MARK: - 旋转动画
- (void)rotationAnimation {
    CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    //这里不用写fromValue
    rotationAnimation.toValue = @(M_PI);
    rotationAnimation.duration = 2;
    //旋转效果累计（即下一次动画执行是否接着刚才的动画）
    rotationAnimation.cumulative = YES;
    
    rotationAnimation.repeatCount = MAXFLOAT;
    [self.myView.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}
/**动画效果和上面一模一样*/
- (void)rotationAnimation2 {
    CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform"];
     //CATransform3DIdentity 是单位矩阵，该矩阵没有缩放、旋转、歪斜、透视。把该矩阵应用到图层上面会把图层几何属性修改为默认值
    rotationAnimation.fromValue = [NSValue valueWithCATransform3D:CATransform3DIdentity];
    //围绕z轴旋转
    rotationAnimation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI, 0, 0, 1)];
    //旋转效果累计（即下一次动画执行是否接着刚才的动画）
    rotationAnimation.cumulative = YES;
    
    rotationAnimation.repeatCount = MAXFLOAT;
    [self.myView.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}
//MARK: - 3D旋转动画
- (void)transform3DAnimation {
    CATransform3D  rotate = CATransform3DMakeRotation(M_PI/6, 1, 0, 0);
    //self.myView.layer.transform = CATransform3d
    [UIView animateWithDuration:3.0 animations:^{
        self.myView.layer.transform = CATransform3DMakeRotation(M_PI/2, 0, 1, 0);
    }];

    
}


//MARK: - Animating Multiple Changes Together
- (void)groupAnimation {
    //Animation1
    CAKeyframeAnimation *widthAnimation = [CAKeyframeAnimation animationWithKeyPath:@"borderWidth"];
    NSArray *widthValues = @[@1.0, @10.0, @5.0, @30.0, @0.5, @15.0, @2.0, @50.0, @0.0];
    widthAnimation.values = widthValues;
    widthAnimation.calculationMode = kCAAnimationPaced;
    //Animation2
    CAKeyframeAnimation *colorAnimation = [CAKeyframeAnimation animationWithKeyPath:@"borderColor"];
    NSArray *colorValues = @[(id)[UIColor redColor].CGColor,
                             (id)[UIColor greenColor].CGColor,
                             (id)[UIColor blueColor].CGColor];
    colorAnimation.values = colorValues;
    colorAnimation.calculationMode = kCAAnimationPaced;
    
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.animations = @[widthAnimation, colorAnimation];
    group.duration = 5.0;
    
    [self.myView.layer addAnimation:group forKey:@"borderChanges"];
}

//MARK: - Aniamting a transition
- (void)transitionAnimation {
    CATransition *transition = [CATransition animation];
    transition.startProgress = 0;
    transition.endProgress = 1.0;
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromRight;
    transition.duration = 1.0;
    [self.myView.layer addAnimation:transition forKey:@"transition"];
    [self.myView2.layer addAnimation:transition forKey:@"transition"];
    self.myView.hidden = YES;
    self.myView2.hidden = NO;
}

- (void)transactionAnimation {
    [CATransaction begin];
    
    self.myView.layer.zPosition = 200;
    self.myView.layer.opacity = 0;
    
    [CATransaction commit];
}
- (void)perspectiveAnimation {
    CATransform3D perspective = CATransform3DIdentity;
    perspective.m34 = -1.0/0.01;
    self.myView.layer.sublayerTransform = perspective;
  
}
@end
