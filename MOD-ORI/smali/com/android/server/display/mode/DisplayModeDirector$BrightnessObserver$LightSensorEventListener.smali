.class public final Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final mInjectSensorEventRunnable:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;

.field public mLastSensorData:F

.field public mLoggingEnabled:Z

.field public mTimestamp:J

.field public final synthetic this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;

    .line 12
    .line 13
    return-void
.end method

.method public static isDifferentZone(FF[F)Z
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_3

    .line 5
    .line 6
    aget v3, p2, v2

    .line 7
    .line 8
    cmpg-float v4, p0, v3

    .line 9
    .line 10
    if-gtz v4, :cond_0

    .line 11
    .line 12
    cmpl-float v4, p1, v3

    .line 13
    .line 14
    if-gtz v4, :cond_1

    .line 15
    .line 16
    :cond_0
    cmpl-float v4, p0, v3

    .line 17
    .line 18
    if-lez v4, :cond_2

    .line 19
    .line 20
    cmpg-float v3, p1, v3

    .line 21
    .line 22
    if-gtz v3, :cond_2

    .line 23
    .line 24
    :cond_1
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    return v1
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget p1, p1, v0

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLoggingEnabled:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string p1, "DisplayModeDirector"

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "On sensor changed: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 22
    .line 23
    invoke-static {v1, v2, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 31
    .line 32
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 33
    .line 34
    iput p0, p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->onLightSensorChanged(F)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 47
    .line 48
    iget v2, v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 49
    .line 50
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 51
    .line 52
    invoke-static {p1, v2, v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[F)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 59
    .line 60
    iget v3, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 61
    .line 62
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 63
    .line 64
    invoke-static {v1, v3, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[F)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 73
    .line 74
    iget v3, v3, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 75
    .line 76
    cmpg-float v2, v2, v3

    .line 77
    .line 78
    if-ltz v2, :cond_3

    .line 79
    .line 80
    :cond_2
    if-eqz v1, :cond_4

    .line 81
    .line 82
    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 83
    .line 84
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 85
    .line 86
    iget v3, v3, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 87
    .line 88
    cmpl-float v2, v2, v3

    .line 89
    .line 90
    if-lez v2, :cond_4

    .line 91
    .line 92
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 93
    .line 94
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    .line 95
    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    iget-object v2, v2, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    .line 99
    .line 100
    iput v0, v2, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 101
    .line 102
    iput v0, v2, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    .line 103
    .line 104
    iput v0, v2, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    .line 105
    .line 106
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    iput-wide v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mTimestamp:J

    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    .line 119
    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    iget v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 123
    .line 124
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->addValue(JF)V

    .line 125
    .line 126
    .line 127
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    .line 130
    .line 131
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;

    .line 132
    .line 133
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v2, v3}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    .line 137
    .line 138
    .line 139
    if-eqz p1, :cond_6

    .line 140
    .line 141
    iget p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 142
    .line 143
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 144
    .line 145
    iget v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 146
    .line 147
    cmpl-float p1, p1, v0

    .line 148
    .line 149
    if-gtz p1, :cond_7

    .line 150
    .line 151
    :cond_6
    if-eqz v1, :cond_8

    .line 152
    .line 153
    iget p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 156
    .line 157
    iget v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 158
    .line 159
    cmpg-float p1, p1, v0

    .line 160
    .line 161
    if-gez p1, :cond_8

    .line 162
    .line 163
    :cond_7
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 164
    .line 165
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;

    .line 168
    .line 169
    const-wide/16 v1, 0xfa

    .line 170
    .line 171
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    .line 173
    .line 174
    :cond_8
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 175
    .line 176
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 177
    .line 178
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 179
    .line 180
    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mIdleScreenRefreshRateTimeout:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_e

    .line 187
    .line 188
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 189
    .line 190
    iget p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 191
    .line 192
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 193
    .line 194
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 195
    .line 196
    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 198
    .line 199
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 200
    .line 201
    if-eqz v1, :cond_d

    .line 202
    .line 203
    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceConfig;->mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

    .line 204
    .line 205
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_9

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 213
    .line 214
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 215
    .line 216
    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceConfig;->mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

    .line 217
    .line 218
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const/4 v1, -0x1

    .line 224
    :cond_a
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_b

    .line 229
    .line 230
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    check-cast v2, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;

    .line 235
    .line 236
    iget-object v3, v2, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->lux:Ljava/math/BigInteger;

    .line 237
    .line 238
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    int-to-float v3, v3

    .line 243
    cmpg-float v3, v3, p1

    .line 244
    .line 245
    if-gtz v3, :cond_a

    .line 246
    .line 247
    iget-object v1, v2, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->timeout:Ljava/math/BigInteger;

    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    goto :goto_0

    .line 254
    :cond_b
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 255
    .line 256
    if-eqz p1, :cond_c

    .line 257
    .line 258
    iget p1, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    .line 259
    .line 260
    if-eq v1, p1, :cond_e

    .line 261
    .line 262
    :cond_c
    new-instance p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 263
    .line 264
    invoke-direct {p1, v1}, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;-><init>(I)V

    .line 265
    .line 266
    .line 267
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 268
    .line 269
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 270
    .line 271
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 272
    .line 273
    monitor-enter p1

    .line 274
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 277
    .line 278
    .line 279
    monitor-exit p1

    .line 280
    goto :goto_3

    .line 281
    :catchall_0
    move-exception p0

    .line 282
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    throw p0

    .line 284
    :catchall_1
    move-exception p0

    .line 285
    goto :goto_2

    .line 286
    :cond_d
    :goto_1
    const/4 p1, 0x0

    .line 287
    :try_start_2
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 288
    .line 289
    monitor-exit v0

    .line 290
    goto :goto_3

    .line 291
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 292
    throw p0

    .line 293
    :cond_e
    :goto_3
    return-void
.end method

.method public final processSensorData(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->getEstimate(J)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 15
    .line 16
    iput p1, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 17
    .line 18
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter p1

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 28
    .line 29
    .line 30
    monitor-exit p1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method
