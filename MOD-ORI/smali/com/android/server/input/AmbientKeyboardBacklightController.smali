.class public final Lcom/android/server/input/AmbientKeyboardBacklightController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final DEBUG:Z

.field public static final HYSTERESIS_THRESHOLD:I = 0x2

.field public static final sAmbientControllerLock:Ljava/lang/Object;


# instance fields
.field public final mAmbientKeyboardBacklightListeners:Ljava/util/List;

.field public final mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

.field public final mContext:Landroid/content/Context;

.field public mCurrentBrightnessStepIndex:I

.field public mCurrentDefaultDisplayUniqueId:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public mHysteresisCount:I

.field public mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

.field public mLightSensor:Landroid/hardware/Sensor;

.field public mSmoothedLux:I

.field public mSmoothedLuxAtLastAdjustment:I

.field public final mSmoothingConstant:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "KbdBacklightController"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    new-instance v1, Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v2, Lcom/android/server/input/AmbientKeyboardBacklightController$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/android/server/input/AmbientKeyboardBacklightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/AmbientKeyboardBacklightController;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const p2, 0x107009b

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const v1, 0x107009c

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const v2, 0x107009d

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    array-length v3, p2

    .line 54
    array-length v4, v1

    .line 55
    if-ne v3, v4, :cond_6

    .line 56
    .line 57
    array-length v3, v1

    .line 58
    array-length v4, v2

    .line 59
    if-ne v3, v4, :cond_6

    .line 60
    .line 61
    array-length v3, p2

    .line 62
    new-array v4, v3, [Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 63
    .line 64
    iput-object v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 65
    .line 66
    move v4, v0

    .line 67
    :goto_0
    const/high16 v5, -0x80000000

    .line 68
    .line 69
    const v6, 0x7fffffff

    .line 70
    .line 71
    .line 72
    if-ge v4, v3, :cond_2

    .line 73
    .line 74
    aget v7, v2, v4

    .line 75
    .line 76
    if-gez v7, :cond_0

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_0
    move v6, v7

    .line 80
    :goto_1
    aget v7, v1, v4

    .line 81
    .line 82
    if-gez v7, :cond_1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_1
    move v5, v7

    .line 86
    :goto_2
    iget-object v7, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 87
    .line 88
    new-instance v8, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 89
    .line 90
    aget v9, p2, v4

    .line 91
    .line 92
    invoke-direct {v8, v9, v6, v5}, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;-><init>(III)V

    .line 93
    .line 94
    .line 95
    aput-object v8, v7, v4

    .line 96
    .line 97
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object p2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 101
    .line 102
    array-length v1, p2

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    aget-object v0, p2, v0

    .line 106
    .line 107
    iget v0, v0, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mDecreaseLuxThreshold:I

    .line 108
    .line 109
    if-ne v0, v5, :cond_5

    .line 110
    .line 111
    const/4 v0, 0x1

    .line 112
    sub-int/2addr v1, v0

    .line 113
    aget-object p2, p2, v1

    .line 114
    .line 115
    iget p2, p2, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mIncreaseLuxThreshold:I

    .line 116
    .line 117
    if-ne p2, v6, :cond_5

    .line 118
    .line 119
    new-instance p2, Landroid/util/TypedValue;

    .line 120
    .line 121
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 122
    .line 123
    .line 124
    const v1, 0x10500d8

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothingConstant:F

    .line 135
    .line 136
    float-to-double p1, p1

    .line 137
    const-wide/16 v0, 0x0

    .line 138
    .line 139
    cmpg-double v0, p1, v0

    .line 140
    .line 141
    if-lez v0, :cond_4

    .line 142
    .line 143
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 144
    .line 145
    cmpl-double p1, p1, v0

    .line 146
    .line 147
    if-gtz p1, :cond_4

    .line 148
    .line 149
    sget-boolean p1, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 150
    .line 151
    if-eqz p1, :cond_3

    .line 152
    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string p2, "Brightness steps: "

    .line 156
    .line 157
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object p2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 161
    .line 162
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string p2, " Smoothing constant = "

    .line 170
    .line 171
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothingConstant:F

    .line 175
    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    const-string p1, "KbdBacklightController"

    .line 184
    .line 185
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :cond_3
    return-void

    .line 189
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 190
    .line 191
    const-string p1, "The config files for auto keyboard backlight brightness must contain smoothing constant in range (0.0, 1.0]."

    .line 192
    .line 193
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p0

    .line 197
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 198
    .line 199
    const-string p1, "The config files for auto keyboard backlight brightness must contain arrays of length > 0 and have -1 or Integer.MIN_VALUE as lower bound for decrease thresholds and -1 or Integer.MAX_VALUE as upper bound for increase thresholds"

    .line 200
    .line 201
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p0

    .line 205
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    const-string p1, "The config files for auto keyboard backlight brightness must contain arrays of equal lengths"

    .line 208
    .line 209
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p0
.end method


# virtual methods
.method public addSensorListener(Landroid/hardware/Sensor;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/hardware/SensorManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/SensorManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->IMMEDIATE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 22
    .line 23
    iput v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    invoke-virtual {v0, p0, p1, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 32
    .line 33
    .line 34
    sget-boolean p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    const-string p0, "KbdBacklightController"

    .line 39
    .line 40
    const-string p1, "Registering ALS listener"

    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public final getAmbientLightSensor(Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;)Landroid/hardware/Sensor;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/hardware/SensorManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/hardware/SensorManager;

    .line 10
    .line 11
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-object v0, p0

    .line 15
    check-cast v0, Landroid/hardware/SensorManager;

    .line 16
    .line 17
    sget-boolean v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Ambient Light sensor data: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "KbdBacklightController"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p1, Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;->sensorType:Ljava/lang/String;

    .line 41
    .line 42
    iget-object p1, p1, Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;->sensorName:Ljava/lang/String;

    .line 43
    .line 44
    const/4 v1, 0x5

    .line 45
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public final handleDisplayChange()V
    .locals 6

    .line 1
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v3, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v3

    .line 20
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentDefaultDisplayUniqueId:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v5, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    monitor-exit v3

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-boolean v4, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    const-string v4, "KbdBacklightController"

    .line 39
    .line 40
    const-string v5, "Default display changed: resetting the light sensor"

    .line 41
    .line 42
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v2, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentDefaultDisplayUniqueId:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    .line 50
    .line 51
    check-cast v2, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 60
    .line 61
    invoke-virtual {p0, v2}, Lcom/android/server/input/AmbientKeyboardBacklightController;->removeSensorListener(Landroid/hardware/Sensor;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getAmbientLightSensorData(I)Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->getAmbientLightSensor(Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;)Landroid/hardware/Sensor;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    .line 75
    .line 76
    check-cast v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_4

    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->addSensorListener(Landroid/hardware/Sensor;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    monitor-exit v3

    .line 90
    return-void

    .line 91
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleDisplayChange()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleDisplayChange()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleDisplayChange()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget p1, p1, v0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    cmpg-float v1, p1, v1

    .line 8
    .line 9
    const-string v2, "KbdBacklightController"

    .line 10
    .line 11
    if-gez v1, :cond_0

    .line 12
    .line 13
    const-string p0, "Light sensor doesn\'t have valid value"

    .line 14
    .line 15
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 21
    .line 22
    sget-object v3, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->IMMEDIATE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 23
    .line 24
    if-ne v1, v3, :cond_1

    .line 25
    .line 26
    float-to-int p1, p1

    .line 27
    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothingConstant:F

    .line 31
    .line 32
    mul-float/2addr p1, v1

    .line 33
    const/high16 v4, 0x3f800000    # 1.0f

    .line 34
    .line 35
    sub-float/2addr v4, v1

    .line 36
    iget v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 37
    .line 38
    int-to-float v1, v1

    .line 39
    mul-float/2addr v4, v1

    .line 40
    add-float/2addr v4, p1

    .line 41
    float-to-int p1, v4

    .line 42
    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 43
    .line 44
    :goto_0
    sget-boolean p1, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v4, "Current smoothed lux from ALS = "

    .line 51
    .line 52
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 56
    .line 57
    invoke-static {v1, v4, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 61
    .line 62
    sget-object v4, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->STABLE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 63
    .line 64
    if-eq v1, v3, :cond_3

    .line 65
    .line 66
    iget v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 67
    .line 68
    iget v5, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    .line 69
    .line 70
    if-ne v1, v5, :cond_3

    .line 71
    .line 72
    iput-object v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_3
    iget v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    .line 77
    .line 78
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iget-object v5, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 83
    .line 84
    array-length v5, v5

    .line 85
    iget v6, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 86
    .line 87
    iget v7, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    .line 88
    .line 89
    if-le v6, v7, :cond_7

    .line 90
    .line 91
    iget-object v6, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 92
    .line 93
    if-eq v6, v3, :cond_5

    .line 94
    .line 95
    sget-object v7, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->INCREASING:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 96
    .line 97
    if-eq v6, v7, :cond_5

    .line 98
    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    const-string p1, "ALS transitioned to brightness increasing state"

    .line 102
    .line 103
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_4
    iput-object v7, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 107
    .line 108
    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 109
    .line 110
    :cond_5
    :goto_1
    if-ge v1, v5, :cond_b

    .line 111
    .line 112
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 113
    .line 114
    iget-object v6, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 115
    .line 116
    aget-object v6, v6, v1

    .line 117
    .line 118
    iget v6, v6, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mIncreaseLuxThreshold:I

    .line 119
    .line 120
    if-ge p1, v6, :cond_6

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_7
    if-ge v6, v7, :cond_b

    .line 127
    .line 128
    iget-object v5, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 129
    .line 130
    if-eq v5, v3, :cond_9

    .line 131
    .line 132
    sget-object v6, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->DECREASING:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 133
    .line 134
    if-eq v5, v6, :cond_9

    .line 135
    .line 136
    if-eqz p1, :cond_8

    .line 137
    .line 138
    const-string p1, "ALS transitioned to brightness decreasing state"

    .line 139
    .line 140
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    :cond_8
    iput-object v6, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 144
    .line 145
    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 146
    .line 147
    :cond_9
    :goto_2
    if-ltz v1, :cond_b

    .line 148
    .line 149
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 150
    .line 151
    iget-object v5, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 152
    .line 153
    aget-object v5, v5, v1

    .line 154
    .line 155
    iget v5, v5, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mDecreaseLuxThreshold:I

    .line 156
    .line 157
    if-le p1, v5, :cond_a

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_a
    add-int/lit8 v1, v1, -0x1

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 164
    .line 165
    if-ne p1, v3, :cond_c

    .line 166
    .line 167
    iput v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    .line 168
    .line 169
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 170
    .line 171
    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    .line 172
    .line 173
    iput-object v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 174
    .line 175
    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 176
    .line 177
    iget-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 178
    .line 179
    aget-object p1, p1, v1

    .line 180
    .line 181
    iget p1, p1, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mBrightnessValue:I

    .line 182
    .line 183
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 184
    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {v1, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 194
    .line 195
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_c
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    .line 200
    .line 201
    if-ne v1, p1, :cond_d

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_d
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 205
    .line 206
    const/4 v3, 0x1

    .line 207
    add-int/2addr p1, v3

    .line 208
    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 209
    .line 210
    sget-boolean p1, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 211
    .line 212
    if-eqz p1, :cond_e

    .line 213
    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v4, "Incremented hysteresis count to "

    .line 217
    .line 218
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 222
    .line 223
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v4, " (lux went from "

    .line 227
    .line 228
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    .line 232
    .line 233
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v4, " to "

    .line 237
    .line 238
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 242
    .line 243
    const-string v5, ")"

    .line 244
    .line 245
    invoke-static {p1, v4, v5, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :cond_e
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 249
    .line 250
    const/4 v2, 0x2

    .line 251
    if-lt p1, v2, :cond_f

    .line 252
    .line 253
    iput v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    .line 254
    .line 255
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 256
    .line 257
    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    .line 258
    .line 259
    iput v3, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 260
    .line 261
    iget-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 262
    .line 263
    aget-object p1, p1, v1

    .line 264
    .line 265
    iget p1, p1, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mBrightnessValue:I

    .line 266
    .line 267
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 268
    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-static {v1, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 278
    .line 279
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    .line 281
    .line 282
    :cond_f
    :goto_4
    return-void
.end method

.method public final removeSensorListener(Landroid/hardware/Sensor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/hardware/SensorManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/SensorManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 17
    .line 18
    .line 19
    sget-boolean p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    const-string p0, "KbdBacklightController"

    .line 24
    .line 25
    const-string p1, "Unregistering ALS listener"

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method
