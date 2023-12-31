﻿; 【反馈或注释，勿动此行。请在下方添加新脚本内容】：双手抬起握拳
#NoEnv
SetBatchLines -1
SetWorkingDir %A_ScriptDir%

Gosub SDK加载连接

Global LLSDKFilePath := "test.jpg"  ; 让所有同步姿势都使用这个表情

姿势.同步姿势(15, 30, 30, 180, 30, 180)
Sleep 200
姿势.同步姿势(15, 20, 30, 0, 30, 0)
Sleep 200
姿势.同步姿势(15, -30, 30, 180, 30, 180)
Sleep 200
姿势.同步姿势(15, 30, 30, 180, 30, 180)
Sleep 200
姿势.同步姿势(15, 0, 30, 180, 30, 180)  ; 回正

Loop 2 {  ; 招手2次
    Sleep 180
    姿势.同步姿势(15, 0, 0, 180, 0, 0)
    Sleep 180
    姿势.同步姿势(15, 0, 30, 180, 0, 0)
}

; 侧身拍打3次
Sleep 180
姿势.同步姿势(15, 20, 30, 0, 30, 0)
Sleep 180
姿势.同步姿势(15, 20, 0, 0, 0, 0)
Sleep 180
姿势.同步姿势(15, -20, 30, 0, 30, 0)
Sleep 180
姿势.同步姿势(15, -20, 0, 0, 0, 0)
Sleep 180
姿势.同步姿势(15, 20, 30, 0, 30, 0)
Sleep 180
姿势.同步姿势(15, 20, 0, 0, 0, 0)

Loop 2 {  ; 回正挥舞双手2次
    Sleep 200
    姿势.同步姿势(15, 0, 8, 180, 8, 180)
    Sleep 200
    姿势.同步姿势(15, 0, 8, 0, 8, 0)
}

Sleep 200
姿势.同步姿势(15, 20, 8, 0, 8, 0)
Sleep 200
姿势.同步姿势(15, 20, 8, 100, 8, 100)
Sleep 200
姿势.同步姿势(15, -20, 8, 0, 8, 0)
Sleep 200
姿势.同步姿势(15, -20, 8, 100, 8, 100)

Sleep 200
姿势.同步姿势(15, 20, 30, -20, 30, 180)
Sleep 300
姿势.同步姿势(15, -20, 30, 180, 30, -20)  ; 摆造型
Sleep 100

Loop 2 {  ;  高举双手左右晃动展示
    Sleep 200
    姿势.同步姿势(15, 40, 20, 180, 20, 180)
    Sleep 200
    姿势.同步姿势(15, -40, 20, 180, 20, 180)
}

Loop 2 {  ; 拜拜
    Sleep 200
    姿势.同步姿势(15, 0, 0, 180, 0, 0)
    Sleep 200
    姿势.同步姿势(15, 0, 30, 180, 0, 0)
}
Sleep 200
姿势.同步姿势(15, 0, 0, 0, 0, 0)  ; 回正

Sleep 200
; 播放表情前需确保与上个动作有至少150毫秒的延时，避免线程抢占卡死
表情.播放表情("video.mp4")

表情.断开连接()
姿势.断开连接()
ExitApp
