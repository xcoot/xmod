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

    .line 3
    const-string/jumbo p1, "mSvcLEDThread"

    .line 6
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final onLooperPrepared()V
    .locals 6

    .line 1
    const-string v0, "[SvcLED]   mUseSoftwareAutoBrightness: "

    .line 3
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 5
    new-instance v2, Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 7
    iget-object v3, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 9
    iget-object v4, v3, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    .line 11
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 14
    move-result-object v4

    .line 15
    invoke-direct {v2, v3, v4}, Lcom/android/server/lights/LightsService$SvcLEDHandler;-><init>(Lcom/android/server/lights/LightsService;Landroid/os/Looper;)V

    .line 18
    iput-object v2, v1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 20
    iget-object v1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 22
    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 27
    const/4 v3, 0x1

    .line 28
    iput-boolean v3, v2, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    .line 30
    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 35
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 37
    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v2

    .line 43
    iget-object v4, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 45
    const v5, 0x1110282

    .line 48
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 51
    move-result v5

    .line 52
    iput-boolean v5, v4, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    .line 54
    iget-object v4, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 56
    const v5, 0x1110042

    .line 59
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 62
    move-result v2

    .line 63
    iput-boolean v2, v4, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    .line 65
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 67
    iget-boolean v2, v2, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    .line 69
    if-eqz v2, :cond_0

    .line 71
    const-string v2, "/sys/class/sec/led/led_lowpower"

    .line 73
    invoke-static {v2}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 81
    iput-boolean v3, v2, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

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

    .line 88
    iget-boolean v3, v2, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    .line 90
    if-eqz v3, :cond_1

    .line 92
    const/16 v3, 0x2bc

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    const/4 v3, 0x0

    .line 96
    :goto_1
    iput v3, v2, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    .line 98
    const-string v2, "LightsService"

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 107
    iget-boolean v0, v0, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    .line 109
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    const-string v0, ",  mUseLEDAutoBrightness: "

    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 119
    iget-boolean v0, v0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    .line 121
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    const-string v0, ",  mDelayForcedSvcLEDTask: "

    .line 126
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 131
    iget v0, v0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    const-string v0, ",  mUsePatternLED: "

    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object p0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    .line 143
    iget-boolean p0, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    .line 145
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 152
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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
