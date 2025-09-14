.class public final Lcom/android/server/lights/LightsService$1;
.super Landroid/os/HandlerThread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 2
    .line 3
    const-string/jumbo p1, "mSvcLEDThread"

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onLooperPrepared()V
    .locals 6

    .line 1
    const-string v0, "[SvcLED]   mUseSoftwareAutoBrightness: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 4
    .line 5
    new-instance v2, Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 8
    .line 9
    iget-object v4, v3, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    .line 10
    .line 11
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-direct {v2, v3, v4}, Lcom/android/server/lights/LightsService$SvcLEDHandler;-><init>(Lcom/android/server/lights/LightsService;Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    iput-object v2, v1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    iput-boolean v3, v2, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v4, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 44
    .line 45
    const v5, 0x1110282

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    iput-boolean v5, v4, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    .line 53
    .line 54
    iget-object v4, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 55
    .line 56
    const v5, 0x1110042

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iput-boolean v2, v4, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 66
    .line 67
    iget-boolean v2, v2, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    .line 68
    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    const-string v2, "/sys/class/sec/led/led_lowpower"

    .line 72
    .line 73
    invoke-static {v2}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_0

    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 80
    .line 81
    iput-boolean v3, v2, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_2

    .line 86
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 87
    .line 88
    iget-boolean v3, v2, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    .line 89
    .line 90
    if-eqz v3, :cond_1

    .line 91
    .line 92
    const/16 v3, 0x2bc

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    const/4 v3, 0x0

    .line 96
    :goto_1
    iput v3, v2, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    .line 97
    .line 98
    const-string v2, "LightsService"

    .line 99
    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 106
    .line 107
    iget-boolean v0, v0, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    .line 108
    .line 109
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, ",  mUseLEDAutoBrightness: "

    .line 113
    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 118
    .line 119
    iget-boolean v0, v0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    .line 120
    .line 121
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v0, ",  mDelayForcedSvcLEDTask: "

    .line 125
    .line 126
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 130
    .line 131
    iget v0, v0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    .line 132
    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, ",  mUsePatternLED: "

    .line 137
    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 142
    .line 143
    iget-boolean p0, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    .line 144
    .line 145
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    monitor-exit v1

    .line 156
    return-void

    .line 157
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    throw p0
.end method
