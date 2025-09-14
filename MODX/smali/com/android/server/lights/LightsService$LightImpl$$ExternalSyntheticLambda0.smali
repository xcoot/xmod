.class public final synthetic Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/lights/LightsService$LightImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/lights/LightsService$LightImpl;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/lights/LightsService$LightImpl;

    .line 3
    const-string v0, "[api] [SvcLED] stopFlashing : lightType: "

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v1, "LightsService"

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 15
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 17
    iget-byte v3, v3, Landroid/hardware/light/HwLight;->type:B

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {}, Lcom/android/server/lights/LightsService;->-$$Nest$smcallerInfoToString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    .line 45
    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 49
    iget-object v0, v0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    .line 51
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 54
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V

    .line 57
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 59
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 61
    iget-byte v3, v1, Landroid/hardware/light/HwLight;->type:B

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v5, -0x1

    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    .line 71
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 73
    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 75
    const/4 v2, 0x1

    .line 76
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 81
    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 83
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 86
    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 89
    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 91
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    monitor-exit v0

    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v1

    .line 97
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :try_start_2
    throw v1

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    goto :goto_1

    .line 101
    :cond_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIII)V

    .line 107
    :goto_0
    monitor-exit p0

    .line 108
    return-void

    .line 109
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    throw v0
.end method
