//
//  ViewController.m
//  YinShiPinDemo
//
//  Created by lgj on 2019/4/5.
//  Copyright © 2019年 LiuGJ. All rights reserved.
//

#import "ViewController.h"
#import "CommonUtil.h"
#import "Mp3Encoder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"音视频编码";
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *encodeBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, self.view.frame.size.height / 2 - 20, 100, 40)];
    [encodeBtn setTitle:@"Encode" forState:UIControlStateNormal];
    [encodeBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [encodeBtn setBackgroundColor:[UIColor yellowColor]];
    [encodeBtn addTarget:self action:@selector(encodeBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:encodeBtn];
}

- (void)encodeBtnClick {
    NSLog(@"Start Encode...");
    
    /**
     * 将解码功能组件化
     */
    Mp3Encoder* encoder = new Mp3Encoder();
    const char* pcmFilePath = [[CommonUtil bundlePath:@"vocal.pcm"] cStringUsingEncoding:NSUTF8StringEncoding];
    const char* mp3FilePath = [[CommonUtil documentsPath:@"vocal.mp3"] cStringUsingEncoding:NSUTF8StringEncoding];
    int sampleRate = 44100;
    int channels = 2;
    int bitRate = 128 * 1024;
    
    if (TARGET_IPHONE_SIMULATOR) {
        NSLog(@"%s", mp3FilePath);
    }
    
    encoder->Init(pcmFilePath, mp3FilePath, sampleRate, channels, bitRate);
    encoder->Encode();
    encoder->Destory();
    delete encoder;
    
    NSLog(@"Encode Success");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

