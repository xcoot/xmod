.class public final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/LogicalLight;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBrightnessMode:I

.field public mColor:I

.field public final mHwLight:Landroid/hardware/light/HwLight;

.field public mInitialized:Z

.field public final mIsIDUsingPatternLED:Z

.field public mMode:I

.field public mOffMS:I

.field public mOnMS:I

.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public static -$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 3
    iget-byte p0, p0, Landroid/hardware/light/HwLight;->type:B

    .line 5
    if-ltz p0, :cond_0

    .line 7
    const/16 v0, 0xa

    .line 9
    if-ge p0, v0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public constructor <init>(Lcom/android/server/lights/LightsService;Landroid/hardware/light/HwLight;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 6
    iput-object p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 8
    iget-boolean p1, p1, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    .line 10
    if-eqz p1, :cond_1

    .line 12
    iget-byte p1, p2, Landroid/hardware/light/HwLight;->type:B

    .line 14
    const/4 p2, 0x3

    .line 15
    if-eq p1, p2, :cond_0

    .line 17
    const/4 p2, 0x4

    .line 18
    if-ne p1, p2, :cond_1

    .line 20
    :cond_0
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    .line 25
    return-void
.end method


# virtual methods
.method public final setFlashing(IIII)V
    .locals 11

    .line 1
    const-string v0, "LightsService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "[api] [SvcLED] setFlashing : type: "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 12
    iget-byte v2, v2, Landroid/hardware/light/HwLight;->type:B

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "("

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 24
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 26
    iget-byte v3, v3, Landroid/hardware/light/HwLight;->type:B

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v2, "), color: "

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v2, ", mode: "

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const/4 v2, -0x1

    .line 56
    const/4 v3, 0x1

    .line 57
    if-ne p2, v2, :cond_0

    .line 59
    const-string v2, "Off"

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v4, "("

    .line 72
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v4, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 77
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    if-eqz p2, :cond_3

    .line 82
    if-eq p2, v3, :cond_2

    .line 84
    const/4 v4, 0x2

    .line 85
    if-eq p2, v4, :cond_1

    .line 87
    packed-switch p2, :pswitch_data_0

    .line 90
    const-string/jumbo v4, "translateMode error"

    .line 93
    goto :goto_0

    .line 94
    :pswitch_0
    const-string v4, "LIGHT_SEC_FLASH_FULLY_CHARGED"

    .line 96
    goto :goto_0

    .line 97
    :pswitch_1
    const-string v4, "LIGHT_SEC_FLASH_LOW_BATTERY"

    .line 99
    goto :goto_0

    .line 100
    :pswitch_2
    const-string v4, "LIGHT_SEC_FLASH_MISSED_NOTIFICATION"

    .line 102
    goto :goto_0

    .line 103
    :pswitch_3
    const-string v4, "LIGHT_SEC_FLASH_CHARGING_ERROR"

    .line 105
    goto :goto_0

    .line 106
    :pswitch_4
    const-string v4, "LIGHT_SEC_FLASH_CHARGING"

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const-string v4, "LIGHT_FLASH_HARDWARE"

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    const-string v4, "LIGHT_FLASH_TIMED"

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    const-string v4, "LIGHT_FLASH_NONE"

    .line 117
    :goto_0
    const-string v5, ")"

    .line 119
    invoke-static {v2, v4, v5}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    :goto_1
    const-string v4, ", onMS: "

    .line 125
    const-string v5, ", offMS: "

    .line 127
    invoke-static {p3, v2, v4, v5, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 130
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, ", "

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {}, Lcom/android/server/lights/LightsService;->-$$Nest$smcallerInfoToString()Ljava/lang/String;

    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 154
    iget v1, v0, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 156
    const/16 v2, 0x8

    .line 158
    if-eq v1, v2, :cond_4

    .line 160
    iget-boolean v0, v0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    .line 162
    if-nez v0, :cond_4

    .line 164
    const-string p0, "LightsService"

    .line 166
    const-string p1, "[api] [SvcLED] S Cover is closed so don\'t need LED On"

    .line 168
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 172
    :cond_4
    monitor-enter p0

    .line 173
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    .line 175
    if-eqz v0, :cond_5

    .line 177
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 179
    iget-object v0, v0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    .line 181
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    :try_start_1
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 184
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V

    .line 187
    iget-object v4, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 189
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 191
    iget-byte v5, v1, Landroid/hardware/light/HwLight;->type:B

    .line 193
    const/4 v10, 0x1

    .line 194
    move v6, p1

    .line 195
    move v7, p2

    .line 196
    move v8, p3

    .line 197
    move v9, p4

    .line 198
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    .line 201
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 203
    invoke-virtual {p1, v3}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    .line 206
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 208
    iget-object p1, p1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 210
    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 215
    iget-object p1, p1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 217
    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 220
    move-result-object p1

    .line 221
    iget-object p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 223
    iget-object p3, p2, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 225
    iget p2, p2, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    .line 227
    int-to-long v1, p2

    .line 228
    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 231
    monitor-exit v0

    .line 232
    goto :goto_2

    .line 233
    :catchall_0
    move-exception p1

    .line 234
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :try_start_2
    throw p1

    .line 236
    :catchall_1
    move-exception p1

    .line 237
    goto :goto_3

    .line 238
    :cond_5
    const-string v0, "LightsService"

    .line 240
    const-string v1, "[SvcLED] not mIsIDUsingPatternLED"

    .line 242
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIII)V

    .line 248
    :goto_2
    monitor-exit p0

    .line 249
    return-void

    .line 250
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 251
    throw p1

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setLightLocked(IIII)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    .line 3
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 9
    if-ne p1, v0, :cond_0

    .line 11
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 13
    if-ne p2, v0, :cond_0

    .line 15
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 17
    if-ne p3, v0, :cond_0

    .line 19
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 21
    if-ne p4, v0, :cond_0

    .line 23
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    .line 25
    if-nez v0, :cond_0

    .line 27
    iget-boolean v0, v1, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    .line 29
    if-eqz v0, :cond_5

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, v1, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    .line 37
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 39
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 41
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 43
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 45
    const/4 v7, 0x0

    .line 46
    iput v7, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    .line 48
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 50
    iget-byte v0, p0, Landroid/hardware/light/HwLight;->type:B

    .line 52
    const-string v8, "LightsService"

    .line 54
    if-eqz v0, :cond_1

    .line 56
    const/16 v2, 0x9

    .line 58
    if-eq v0, v2, :cond_1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    const-string v2, "[SvcLED] [setLightLocked] lightType:"

    .line 64
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget-byte v2, p0, Landroid/hardware/light/HwLight;->type:B

    .line 69
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v2, ", color:"

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, ", mode: "

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v2, ", onMS: "

    .line 91
    const-string v3, ", offMS: "

    .line 93
    invoke-static {p2, p3, v2, v3, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 96
    invoke-static {v0, p4, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v2, "setLightState("

    .line 104
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    iget v2, p0, Landroid/hardware/light/HwLight;->id:I

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v2, ", 0x"

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v2, ")"

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    const-wide/32 v9, 0x20000

    .line 136
    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 139
    :try_start_0
    iget-object v0, v1, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    .line 141
    if-nez v0, :cond_3

    .line 143
    iget-object v0, v1, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    .line 145
    if-eqz v0, :cond_2

    .line 147
    goto :goto_0

    .line 148
    :cond_2
    iget v2, p0, Landroid/hardware/light/HwLight;->id:I

    .line 150
    move v3, p1

    .line 151
    move v4, p2

    .line 152
    move v5, p3

    .line 153
    move v6, p4

    .line 154
    invoke-static/range {v2 .. v7}, Lcom/android/server/lights/LightsService;->setLight_native(IIIIII)V

    .line 157
    goto :goto_1

    .line 158
    :catchall_0
    move-exception p0

    .line 159
    goto :goto_4

    .line 160
    :catch_0
    move-exception p0

    .line 161
    goto :goto_2

    .line 162
    :cond_3
    :goto_0
    new-instance v0, Landroid/hardware/light/HwLightState;

    .line 164
    invoke-direct {v0}, Landroid/hardware/light/HwLightState;-><init>()V

    .line 167
    iput p1, v0, Landroid/hardware/light/HwLightState;->color:I

    .line 169
    int-to-byte p1, p2

    .line 170
    iput-byte p1, v0, Landroid/hardware/light/HwLightState;->flashMode:B

    .line 172
    iput p3, v0, Landroid/hardware/light/HwLightState;->flashOnMs:I

    .line 174
    iput p4, v0, Landroid/hardware/light/HwLightState;->flashOffMs:I

    .line 176
    int-to-byte p1, v7

    .line 177
    iput-byte p1, v0, Landroid/hardware/light/HwLightState;->brightnessMode:B

    .line 179
    iget-object p1, v1, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    .line 181
    if-eqz p1, :cond_4

    .line 183
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Landroid/hardware/light/ILights;

    .line 189
    iget p0, p0, Landroid/hardware/light/HwLight;->id:I

    .line 191
    check-cast p1, Landroid/hardware/light/ILights$Stub$Proxy;

    .line 193
    invoke-virtual {p1, p0, v0}, Landroid/hardware/light/ILights$Stub$Proxy;->setLightState(ILandroid/hardware/light/HwLightState;)V

    .line 196
    goto :goto_1

    .line 197
    :cond_4
    iget-object p1, v1, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    .line 199
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lvendor/samsung/hardware/light/ISehLights;

    .line 205
    iget p0, p0, Landroid/hardware/light/HwLight;->id:I

    .line 207
    check-cast p1, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;

    .line 209
    invoke-virtual {p1, p0, v0}, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->setLightState(ILandroid/hardware/light/HwLightState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 215
    goto :goto_3

    .line 216
    :goto_2
    :try_start_1
    const-string p1, "Failed issuing setLightState"

    .line 218
    invoke-static {v8, p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    goto :goto_1

    .line 222
    :cond_5
    :goto_3
    return-void

    .line 223
    :goto_4
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 226
    throw p0
.end method

.method public final turnOff()V
    .locals 9

    .line 1
    const-string v0, "LightsService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "[api] [SvcLED] turnOff : lightType: "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 12
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 14
    iget-byte v3, v3, Landroid/hardware/light/HwLight;->type:B

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-static {}, Lcom/android/server/lights/LightsService;->-$$Nest$smcallerInfoToString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    .line 43
    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 47
    iget-object v0, v0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    .line 49
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 52
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V

    .line 55
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 57
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 59
    iget-byte v3, v1, Landroid/hardware/light/HwLight;->type:B

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v5, -0x1

    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    .line 69
    sget v1, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 71
    const/4 v2, 0x1

    .line 72
    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 76
    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    .line 79
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 81
    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 83
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 88
    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 90
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 93
    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 96
    iget-object v3, v2, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 98
    iget v2, v2, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    .line 100
    int-to-long v4, v2

    .line 101
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v1

    .line 106
    goto :goto_1

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 109
    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 111
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 116
    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 118
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 121
    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 124
    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 126
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    :goto_0
    monitor-exit v0

    .line 130
    goto :goto_2

    .line 131
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    throw v1

    .line 133
    :catchall_1
    move-exception v0

    .line 134
    goto :goto_3

    .line 135
    :cond_1
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIII)V

    .line 139
    :goto_2
    monitor-exit p0

    .line 140
    return-void

    .line 141
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    throw v0
.end method
