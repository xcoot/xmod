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

    .line 2
    .line 3
    iget-byte p0, p0, Landroid/hardware/light/HwLight;->type:B

    .line 4
    .line 5
    if-ltz p0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    if-ge p0, v0, :cond_0

    .line 10
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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 7
    .line 8
    iget-boolean p1, p1, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-byte p1, p2, Landroid/hardware/light/HwLight;->type:B

    .line 13
    .line 14
    const/4 p2, 0x3

    .line 15
    if-eq p1, p2, :cond_0

    .line 16
    .line 17
    const/4 p2, 0x4

    .line 18
    if-ne p1, p2, :cond_1

    .line 19
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

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final setFlashing(IIII)V
    .locals 11

    .line 1
    const-string v0, "LightsService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[api] [SvcLED] setFlashing : type: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 11
    .line 12
    iget-byte v2, v2, Landroid/hardware/light/HwLight;->type:B

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "("

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 25
    .line 26
    iget-byte v3, v3, Landroid/hardware/light/HwLight;->type:B

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, "), color: "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, ", mode: "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/4 v2, -0x1

    .line 56
    const/4 v3, 0x1

    .line 57
    if-ne p2, v2, :cond_0

    .line 58
    .line 59
    const-string v2, "Off"

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, "("

    .line 71
    .line 72
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v4, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    if-eqz p2, :cond_3

    .line 81
    .line 82
    if-eq p2, v3, :cond_2

    .line 83
    .line 84
    const/4 v4, 0x2

    .line 85
    if-eq p2, v4, :cond_1

    .line 86
    .line 87
    packed-switch p2, :pswitch_data_0

    .line 88
    .line 89
    .line 90
    const-string/jumbo v4, "translateMode error"

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_0
    const-string v4, "LIGHT_SEC_FLASH_FULLY_CHARGED"

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :pswitch_1
    const-string v4, "LIGHT_SEC_FLASH_LOW_BATTERY"

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_2
    const-string v4, "LIGHT_SEC_FLASH_MISSED_NOTIFICATION"

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_3
    const-string v4, "LIGHT_SEC_FLASH_CHARGING_ERROR"

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_4
    const-string v4, "LIGHT_SEC_FLASH_CHARGING"

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const-string v4, "LIGHT_FLASH_HARDWARE"

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    const-string v4, "LIGHT_FLASH_TIMED"

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    const-string v4, "LIGHT_FLASH_NONE"

    .line 116
    .line 117
    :goto_0
    const-string v5, ")"

    .line 118
    .line 119
    invoke-static {v2, v4, v5}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    :goto_1
    const-string v4, ", onMS: "

    .line 124
    .line 125
    const-string v5, ", offMS: "

    .line 126
    .line 127
    invoke-static {p3, v2, v4, v5, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v2, ", "

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lcom/android/server/lights/LightsService;->-$$Nest$smcallerInfoToString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 153
    .line 154
    iget v1, v0, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 155
    .line 156
    const/16 v2, 0x8

    .line 157
    .line 158
    if-eq v1, v2, :cond_4

    .line 159
    .line 160
    iget-boolean v0, v0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    .line 161
    .line 162
    if-nez v0, :cond_4

    .line 163
    .line 164
    const-string p0, "LightsService"

    .line 165
    .line 166
    const-string p1, "[api] [SvcLED] S Cover is closed so don\'t need LED On"

    .line 167
    .line 168
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_4
    monitor-enter p0

    .line 173
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    .line 174
    .line 175
    if-eqz v0, :cond_5

    .line 176
    .line 177
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 178
    .line 179
    iget-object v0, v0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    .line 180
    .line 181
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    :try_start_1
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 183
    .line 184
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V

    .line 185
    .line 186
    .line 187
    iget-object v4, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 188
    .line 189
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 190
    .line 191
    iget-byte v5, v1, Landroid/hardware/light/HwLight;->type:B

    .line 192
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

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 202
    .line 203
    invoke-virtual {p1, v3}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 207
    .line 208
    iget-object p1, p1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 209
    .line 210
    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 214
    .line 215
    iget-object p1, p1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 216
    .line 217
    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iget-object p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 222
    .line 223
    iget-object p3, p2, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 224
    .line 225
    iget p2, p2, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    .line 226
    .line 227
    int-to-long v1, p2

    .line 228
    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 229
    .line 230
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

    .line 239
    .line 240
    const-string v1, "[SvcLED] not mIsIDUsingPatternLED"

    .line 241
    .line 242
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIII)V

    .line 246
    .line 247
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

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 12
    .line 13
    if-ne p2, v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 16
    .line 17
    if-ne p3, v0, :cond_0

    .line 18
    .line 19
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 20
    .line 21
    if-ne p4, v0, :cond_0

    .line 22
    .line 23
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-boolean v0, v1, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    .line 28
    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, v1, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    .line 36
    .line 37
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 38
    .line 39
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 40
    .line 41
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 42
    .line 43
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    iput v7, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 49
    .line 50
    iget-byte v0, p0, Landroid/hardware/light/HwLight;->type:B

    .line 51
    .line 52
    const-string v8, "LightsService"

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    const/16 v2, 0x9

    .line 57
    .line 58
    if-eq v0, v2, :cond_1

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "[SvcLED] [setLightLocked] lightType:"

    .line 63
    .line 64
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-byte v2, p0, Landroid/hardware/light/HwLight;->type:B

    .line 68
    .line 69
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, ", color:"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, ", mode: "

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, ", onMS: "

    .line 90
    .line 91
    const-string v3, ", offMS: "

    .line 92
    .line 93
    invoke-static {p2, p3, v2, v3, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0, p4, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string/jumbo v2, "setLightState("

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget v2, p0, Landroid/hardware/light/HwLight;->id:I

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, ", 0x"

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v2, ")"

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-wide/32 v9, 0x20000

    .line 134
    .line 135
    .line 136
    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :try_start_0
    iget-object v0, v1, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    .line 140
    .line 141
    if-nez v0, :cond_3

    .line 142
    .line 143
    iget-object v0, v1, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    .line 144
    .line 145
    if-eqz v0, :cond_2

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_2
    iget v2, p0, Landroid/hardware/light/HwLight;->id:I

    .line 149
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

    .line 155
    .line 156
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

    .line 163
    .line 164
    invoke-direct {v0}, Landroid/hardware/light/HwLightState;-><init>()V

    .line 165
    .line 166
    .line 167
    iput p1, v0, Landroid/hardware/light/HwLightState;->color:I

    .line 168
    .line 169
    int-to-byte p1, p2

    .line 170
    iput-byte p1, v0, Landroid/hardware/light/HwLightState;->flashMode:B

    .line 171
    .line 172
    iput p3, v0, Landroid/hardware/light/HwLightState;->flashOnMs:I

    .line 173
    .line 174
    iput p4, v0, Landroid/hardware/light/HwLightState;->flashOffMs:I

    .line 175
    .line 176
    int-to-byte p1, v7

    .line 177
    iput-byte p1, v0, Landroid/hardware/light/HwLightState;->brightnessMode:B

    .line 178
    .line 179
    iget-object p1, v1, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    .line 180
    .line 181
    if-eqz p1, :cond_4

    .line 182
    .line 183
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Landroid/hardware/light/ILights;

    .line 188
    .line 189
    iget p0, p0, Landroid/hardware/light/HwLight;->id:I

    .line 190
    .line 191
    check-cast p1, Landroid/hardware/light/ILights$Stub$Proxy;

    .line 192
    .line 193
    invoke-virtual {p1, p0, v0}, Landroid/hardware/light/ILights$Stub$Proxy;->setLightState(ILandroid/hardware/light/HwLightState;)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_4
    iget-object p1, v1, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    .line 198
    .line 199
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lvendor/samsung/hardware/light/ISehLights;

    .line 204
    .line 205
    iget p0, p0, Landroid/hardware/light/HwLight;->id:I

    .line 206
    .line 207
    check-cast p1, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;

    .line 208
    .line 209
    invoke-virtual {p1, p0, v0}, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->setLightState(ILandroid/hardware/light/HwLightState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .line 211
    .line 212
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :goto_2
    :try_start_1
    const-string p1, "Failed issuing setLightState"

    .line 217
    .line 218
    invoke-static {v8, p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_5
    :goto_3
    return-void

    .line 223
    :goto_4
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 224
    .line 225
    .line 226
    throw p0
.end method

.method public final turnOff()V
    .locals 9

    .line 1
    const-string v0, "LightsService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[api] [SvcLED] turnOff : lightType: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 13
    .line 14
    iget-byte v3, v3, Landroid/hardware/light/HwLight;->type:B

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/lights/LightsService;->-$$Nest$smcallerInfoToString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    .line 48
    .line 49
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 58
    .line 59
    iget-byte v3, v1, Landroid/hardware/light/HwLight;->type:B

    .line 60
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

    .line 67
    .line 68
    .line 69
    sget v1, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 95
    .line 96
    iget-object v3, v2, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 97
    .line 98
    iget v2, v2, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    .line 99
    .line 100
    int-to-long v4, v2

    .line 101
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 102
    .line 103
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

    .line 108
    .line 109
    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 115
    .line 116
    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 123
    .line 124
    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 125
    .line 126
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    .line 128
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

    .line 137
    .line 138
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
