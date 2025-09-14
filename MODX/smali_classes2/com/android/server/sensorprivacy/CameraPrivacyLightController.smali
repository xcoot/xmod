.class public final Lcom/android/server/sensorprivacy/CameraPrivacyLightController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final LIGHT_VALUE_MULTIPLIER:D


# instance fields
.field public final mActivePackages:Ljava/util/Set;

.field public final mActivePhonePackages:Ljava/util/Set;

.field public mAlvSum:J

.field public final mAmbientLightValues:Ljava/util/ArrayDeque;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mCameraLights:Ljava/util/List;

.field public final mColors:[I

.field public final mContext:Landroid/content/Context;

.field public final mDelayedUpdateToken:Ljava/lang/Object;

.field public mElapsedRealTime:J

.field public mElapsedTimeStartedReading:J

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public mIsAmbientLightListenerRegistered:Z

.field public mLastLightColor:I

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public final mLightsManager:Landroid/hardware/lights/LightsManager;

.field public mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

.field public final mMovingAverageIntervalMillis:J

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mThresholds:[J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-wide v0, 0x3ff199999999999aL    # 1.1

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 11
    .line 12
    div-double/2addr v2, v0

    .line 13
    sput-wide v2, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->LIGHT_VALUE_MULTIPLIER:D

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePackages:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePhonePackages:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayDeque;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    .line 37
    .line 38
    const-wide/16 v2, 0x0

    .line 39
    .line 40
    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    .line 41
    .line 42
    iput v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLastLightColor:I

    .line 43
    .line 44
    new-instance v4, Ljava/lang/Object;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDelayedUpdateToken:Ljava/lang/Object;

    .line 50
    .line 51
    const-wide/16 v4, -0x1

    .line 52
    .line 53
    iput-wide v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const v5, 0x10700b2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    iput-object v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mColors:[I

    .line 67
    .line 68
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_0

    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 87
    .line 88
    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    .line 89
    .line 90
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mThresholds:[J

    .line 91
    .line 92
    return-void

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    new-instance v2, Landroid/os/Handler;

    .line 96
    .line 97
    invoke-direct {v2, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 98
    .line 99
    .line 100
    iput-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    .line 101
    .line 102
    new-instance p2, Landroid/os/HandlerExecutor;

    .line 103
    .line 104
    invoke-direct {p2, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 105
    .line 106
    .line 107
    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 108
    .line 109
    const-class p2, Landroid/app/AppOpsManager;

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Landroid/app/AppOpsManager;

    .line 116
    .line 117
    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 118
    .line 119
    const-class p2, Landroid/hardware/lights/LightsManager;

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    check-cast p2, Landroid/hardware/lights/LightsManager;

    .line 126
    .line 127
    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    .line 128
    .line 129
    const-class p2, Landroid/hardware/SensorManager;

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    check-cast p2, Landroid/hardware/SensorManager;

    .line 136
    .line 137
    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    const v2, 0x10e0058

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    int-to-long v2, p2

    .line 151
    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const p2, 0x10700b1

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    array-length p2, p1

    .line 165
    array-length v2, v4

    .line 166
    add-int/lit8 v2, v2, -0x1

    .line 167
    .line 168
    if-ne p2, v2, :cond_5

    .line 169
    .line 170
    array-length p2, p1

    .line 171
    new-array p2, p2, [J

    .line 172
    .line 173
    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mThresholds:[J

    .line 174
    .line 175
    move p2, v1

    .line 176
    :goto_0
    array-length v2, p1

    .line 177
    if-ge p2, v2, :cond_1

    .line 178
    .line 179
    aget v2, p1, p2

    .line 180
    .line 181
    iget-object v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mThresholds:[J

    .line 182
    .line 183
    int-to-double v4, v2

    .line 184
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    .line 185
    .line 186
    .line 187
    move-result-wide v4

    .line 188
    sget-wide v6, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->LIGHT_VALUE_MULTIPLIER:D

    .line 189
    .line 190
    mul-double/2addr v4, v6

    .line 191
    double-to-long v4, v4

    .line 192
    aput-wide v4, v3, p2

    .line 193
    .line 194
    add-int/lit8 p2, p2, 0x1

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_1
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/hardware/lights/LightsManager;->getLights()Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-ge v1, p2, :cond_3

    .line 208
    .line 209
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    check-cast p2, Landroid/hardware/lights/Light;

    .line 214
    .line 215
    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getType()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    const/16 v3, 0x9

    .line 220
    .line 221
    if-ne v2, v3, :cond_2

    .line 222
    .line 223
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    .line 224
    .line 225
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_3
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    .line 232
    .line 233
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-eqz p1, :cond_4

    .line 238
    .line 239
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 240
    .line 241
    return-void

    .line 242
    :cond_4
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 243
    .line 244
    const-string p2, "android:camera"

    .line 245
    .line 246
    const-string v0, "android:phone_call_camera"

    .line 247
    .line 248
    filled-new-array {p2, v0}, [Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 253
    .line 254
    invoke-virtual {p1, p2, v0, p0}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 258
    .line 259
    const/4 p2, 0x5

    .line 260
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    iput-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 265
    .line 266
    return-void

    .line 267
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 268
    .line 269
    new-instance p2, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v0, "There must be exactly one more color than thresholds. Found "

    .line 272
    .line 273
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    array-length v0, v4

    .line 277
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v0, " colors and "

    .line 281
    .line 282
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    array-length p1, p1

    .line 286
    const-string v0, " thresholds."

    .line 287
    .line 288
    invoke-static {p1, p2, v0}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw p0
.end method


# virtual methods
.method public final getCurrentIntervalMillis()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    .line 4
    .line 5
    const-wide/16 v4, -0x1

    .line 6
    .line 7
    cmp-long v4, v2, v4

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    :cond_0
    iget-wide v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedTimeStartedReading:J

    .line 16
    .line 17
    sub-long/2addr v2, v4

    .line 18
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    const-string p2, "android:camera"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePackages:Ljava/util/Set;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p2, "android:phone_call_camera"

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePhonePackages:Ljava/util/Set;

    .line 21
    .line 22
    :goto_0
    if-eqz p4, :cond_1

    .line 23
    .line 24
    check-cast p1, Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    check-cast p1, Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateLightSession()V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aget p1, p1, v2

    .line 13
    .line 14
    float-to-double v3, p1

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    sget-wide v5, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->LIGHT_VALUE_MULTIPLIER:D

    .line 20
    .line 21
    mul-double/2addr v3, v5

    .line 22
    double-to-int p1, v3

    .line 23
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    .line 36
    .line 37
    new-instance v3, Landroid/util/Pair;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    sub-long v4, v0, v4

    .line 44
    .line 45
    const-wide/16 v6, 0x1

    .line 46
    .line 47
    sub-long/2addr v4, v6

    .line 48
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Landroid/util/Pair;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    .line 71
    .line 72
    new-instance v4, Landroid/util/Pair;

    .line 73
    .line 74
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {v4, v5, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    iget-wide v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    .line 89
    .line 90
    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p1, Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v5

    .line 98
    sub-long v5, v0, v5

    .line 99
    .line 100
    iget-object p1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p1, Ljava/lang/Integer;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    int-to-long v7, p1

    .line 109
    mul-long/2addr v5, v7

    .line 110
    add-long/2addr v5, v3

    .line 111
    iput-wide v5, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    .line 112
    .line 113
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->removeObsoleteData(J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateLightSession()V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDelayedUpdateToken:Ljava/lang/Object;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    .line 127
    .line 128
    new-instance v0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/CameraPrivacyLightController;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDelayedUpdateToken:Ljava/lang/Object;

    .line 134
    .line 135
    iget-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    .line 136
    .line 137
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public final removeObsoleteData(J)V
    .locals 8

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/util/Pair;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/util/Pair;

    .line 25
    .line 26
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    sub-long v4, p1, v4

    .line 39
    .line 40
    cmp-long v2, v2, v4

    .line 41
    .line 42
    if-lez v2, :cond_0

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    iget-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    .line 51
    .line 52
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Ljava/lang/Long;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Ljava/lang/Long;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    sub-long/2addr v4, v6

    .line 69
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    int-to-long v0, v0

    .line 78
    mul-long/2addr v4, v0

    .line 79
    sub-long/2addr v2, v4

    .line 80
    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    :goto_1
    return-void
.end method

.method public setElapsedRealTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final updateLightSession()V
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/CameraPrivacyLightController;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePackages:Ljava/util/Set;

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x1

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePhonePackages:Ljava/util/Set;

    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    move v0, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v0, v3

    .line 51
    :goto_0
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-boolean v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 58
    .line 59
    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 60
    .line 61
    .line 62
    iput-boolean v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    .line 63
    .line 64
    :cond_2
    const-wide/16 v4, -0x1

    .line 65
    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    .line 69
    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    iget-object v6, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 77
    .line 78
    iget-object v7, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    .line 79
    .line 80
    const/4 v8, 0x3

    .line 81
    invoke-virtual {v6, p0, v1, v8, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 82
    .line 83
    .line 84
    iput-boolean v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    .line 85
    .line 86
    iget-wide v6, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    .line 87
    .line 88
    cmp-long v1, v6, v4

    .line 89
    .line 90
    if-nez v1, :cond_3

    .line 91
    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 93
    .line 94
    .line 95
    move-result-wide v6

    .line 96
    :cond_3
    iput-wide v6, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedTimeStartedReading:J

    .line 97
    .line 98
    :cond_4
    if-eqz v0, :cond_6

    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    .line 101
    .line 102
    if-nez v0, :cond_5

    .line 103
    .line 104
    return-void

    .line 105
    :cond_5
    invoke-virtual {v0}, Landroid/hardware/lights/LightsManager$LightsSession;->close()V

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    .line 110
    .line 111
    goto/16 :goto_5

    .line 112
    .line 113
    :cond_6
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 114
    .line 115
    if-nez v0, :cond_7

    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mColors:[I

    .line 118
    .line 119
    array-length v1, v0

    .line 120
    sub-int/2addr v1, v2

    .line 121
    aget v0, v0, v1

    .line 122
    .line 123
    goto/16 :goto_3

    .line 124
    .line 125
    :cond_7
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_8

    .line 132
    .line 133
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_8
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    .line 137
    .line 138
    cmp-long v4, v0, v4

    .line 139
    .line 140
    if-nez v4, :cond_9

    .line 141
    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 143
    .line 144
    .line 145
    move-result-wide v0

    .line 146
    :cond_9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->removeObsoleteData(J)V

    .line 147
    .line 148
    .line 149
    iget-object v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Landroid/util/Pair;

    .line 156
    .line 157
    iget-object v5, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Landroid/util/Pair;

    .line 164
    .line 165
    iget-wide v6, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    .line 168
    .line 169
    .line 170
    move-result-wide v8

    .line 171
    sub-long v8, v0, v8

    .line 172
    .line 173
    iget-object v10, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v10, Ljava/lang/Long;

    .line 176
    .line 177
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 178
    .line 179
    .line 180
    move-result-wide v10

    .line 181
    sub-long/2addr v8, v10

    .line 182
    const-wide/16 v10, 0x0

    .line 183
    .line 184
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 185
    .line 186
    .line 187
    move-result-wide v8

    .line 188
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v4, Ljava/lang/Integer;

    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    int-to-long v10, v4

    .line 197
    mul-long/2addr v8, v10

    .line 198
    sub-long/2addr v6, v8

    .line 199
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v4, Ljava/lang/Long;

    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 204
    .line 205
    .line 206
    move-result-wide v8

    .line 207
    sub-long/2addr v0, v8

    .line 208
    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v4, Ljava/lang/Integer;

    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    int-to-long v4, v4

    .line 217
    mul-long/2addr v0, v4

    .line 218
    add-long/2addr v0, v6

    .line 219
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    .line 220
    .line 221
    .line 222
    move-result-wide v4

    .line 223
    move v6, v3

    .line 224
    :goto_2
    iget-object v7, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mThresholds:[J

    .line 225
    .line 226
    array-length v8, v7

    .line 227
    if-ge v6, v8, :cond_b

    .line 228
    .line 229
    aget-wide v7, v7, v6

    .line 230
    .line 231
    mul-long/2addr v7, v4

    .line 232
    cmp-long v7, v0, v7

    .line 233
    .line 234
    if-gez v7, :cond_a

    .line 235
    .line 236
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mColors:[I

    .line 237
    .line 238
    aget v0, v0, v6

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_b
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mColors:[I

    .line 245
    .line 246
    array-length v1, v0

    .line 247
    sub-int/2addr v1, v2

    .line 248
    aget v0, v0, v1

    .line 249
    .line 250
    :goto_3
    iget v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLastLightColor:I

    .line 251
    .line 252
    if-ne v1, v0, :cond_c

    .line 253
    .line 254
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    .line 255
    .line 256
    if-eqz v1, :cond_c

    .line 257
    .line 258
    return-void

    .line 259
    :cond_c
    iput v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLastLightColor:I

    .line 260
    .line 261
    new-instance v1, Landroid/hardware/lights/LightsRequest$Builder;

    .line 262
    .line 263
    invoke-direct {v1}, Landroid/hardware/lights/LightsRequest$Builder;-><init>()V

    .line 264
    .line 265
    .line 266
    :goto_4
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    .line 267
    .line 268
    check-cast v2, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-ge v3, v2, :cond_d

    .line 275
    .line 276
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    .line 277
    .line 278
    check-cast v2, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    check-cast v2, Landroid/hardware/lights/Light;

    .line 285
    .line 286
    new-instance v4, Landroid/hardware/lights/LightState$Builder;

    .line 287
    .line 288
    invoke-direct {v4}, Landroid/hardware/lights/LightState$Builder;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v0}, Landroid/hardware/lights/LightState$Builder;->setColor(I)Landroid/hardware/lights/LightState$Builder;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-virtual {v4}, Landroid/hardware/lights/LightState$Builder;->build()Landroid/hardware/lights/LightState;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-virtual {v1, v2, v4}, Landroid/hardware/lights/LightsRequest$Builder;->addLight(Landroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)Landroid/hardware/lights/LightsRequest$Builder;

    .line 300
    .line 301
    .line 302
    add-int/lit8 v3, v3, 0x1

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_d
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    .line 306
    .line 307
    if-nez v0, :cond_e

    .line 308
    .line 309
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    .line 310
    .line 311
    const v2, 0x7fffffff

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v2}, Landroid/hardware/lights/LightsManager;->openSession(I)Landroid/hardware/lights/LightsManager$LightsSession;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    .line 319
    .line 320
    :cond_e
    iget-object p0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    .line 321
    .line 322
    invoke-virtual {v1}, Landroid/hardware/lights/LightsRequest$Builder;->build()Landroid/hardware/lights/LightsRequest;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {p0, v0}, Landroid/hardware/lights/LightsManager$LightsSession;->requestLights(Landroid/hardware/lights/LightsRequest;)V

    .line 327
    .line 328
    .line 329
    :goto_5
    return-void
.end method
