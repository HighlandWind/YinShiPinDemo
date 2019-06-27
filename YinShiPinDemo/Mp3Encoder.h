//
//  Mp3Encoder.h
//  YinShiPinDemo
//
//  Created by lgj on 2019/4/6.
//  Copyright © 2019年 LiuGJ. All rights reserved.
//

#ifndef Mp3Encoder_h
#define Mp3Encoder_h

#include "lame.h"

/**
 音频解码
 */
class Mp3Encoder {
private:
    FILE* pcmFile;
    FILE* mp3File;
    lame_t lameClient;
    
public:
    Mp3Encoder();
    ~Mp3Encoder();
    
    int Init(const char* pcmFilePath, const char* mp3FilePath, int sampleRate, int channels, int bitRate);
    void Encode();
    void Destory();
};

#endif /* Mp3Encoder_h */
