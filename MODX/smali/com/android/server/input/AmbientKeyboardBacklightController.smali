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

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    sput-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 14
    iput-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    .line 16
    new-instance v1, Landroid/os/Handler;

    .line 18
    new-instance v2, Lcom/android/server/input/AmbientKeyboardBacklightController$$ExternalSyntheticLambda0;

    .line 20
    invoke-direct {v2, p0}, Lcom/android/server/input/AmbientKeyboardBacklightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/AmbientKeyboardBacklightController;)V

    .line 23
    invoke-direct {v1, p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 26
    iput-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object p1

    .line 32
    const p2, 0x107009b

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 38
    move-result-object p2

    .line 39
    const v1, 0x107009c

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 45
    move-result-object v1

    .line 46
    const v2, 0x107009d

    .line 49
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 52
    move-result-object v2

    .line 53
    array-length v3, p2

    .line 54
    array-length v4, v1

    .line 55
    if-ne v3, v4, :cond_6

    .line 57
    array-length v3, v1

    .line 58
    array-length v4, v2

    .line 59
    if-ne v3, v4, :cond_6

    .line 61
    array-length v3, p2

    .line 62
    new-array v4, v3, [Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 64
    iput-object v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 66
    move v4, v0

    .line 67
    :goto_0
    const/high16 v5, -0x80000000

    .line 69
    const v6, 0x7fffffff

    .line 72
    if-ge v4, v3, :cond_2

    .line 74
    aget v7, v2, v4

    .line 76
    if-gez v7, :cond_0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    move v6, v7

    .line 80
    :goto_1
    aget v7, v1, v4

    .line 82
    if-gez v7, :cond_1

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    move v5, v7

    .line 86
    :goto_2
    iget-object v7, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 88
    new-instance v8, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 90
    aget v9, p2, v4

    .line 92
    invoke-direct {v8, v9, v6, v5}, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;-><init>(III)V

    .line 95
    aput-object v8, v7, v4

    .line 97
    add-int/lit8 v4, v4, 0x1

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object p2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 102
    array-length v1, p2

    .line 103
    if-eqz v1, :cond_5

    .line 105
    aget-object v0, p2, v0

    .line 107
    iget v0, v0, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mDecreaseLuxThreshold:I

    .line 109
    if-ne v0, v5, :cond_5

    .line 111
    const/4 v0, 0x1

    .line 112
    sub-int/2addr v1, v0

    .line 113
    aget-object p2, p2, v1

    .line 115
    iget p2, p2, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mIncreaseLuxThreshold:I

    .line 117
    if-ne p2, v6, :cond_5

    .line 119
    new-instance p2, Landroid/util/TypedValue;

    .line 121
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 124
    const v1, 0x10500d8

    .line 127
    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 130
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    .line 133
    move-result p1

    .line 134
    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothingConstant:F

    .line 136
    float-to-double p1, p1

    .line 137
    const-wide/16 v0, 0x0

    .line 139
    cmpg-double v0, p1, v0

    .line 141
    if-lez v0, :cond_4

    .line 143
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 145
    cmpl-double p1, p1, v0

    .line 147
    if-gtz p1, :cond_4

    .line 149
    sget-boolean p1, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 151
    if-eqz p1, :cond_3

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    .line 155
    const-string p2, "Brightness steps: "

    .line 157
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    iget-object p2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 162
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string p2, " Smoothing constant = "

    .line 171
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothingConstant:F

    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object p0

    .line 183
    const-string p1, "KbdBacklightController"

    .line 185
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_3
    return-void

    .line 189
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 191
    const-string p1, "The config files for auto keyboard backlight brightness must contain smoothing constant in range (0.0, 1.0]."

    .line 193
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 196
    throw p0

    .line 197
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 199
    const-string p1, "The config files for auto keyboard backlight brightness must contain arrays of length > 0 and have -1 or Integer.MIN_VALUE as lower bound for decrease thresholds and -1 or Integer.MAX_VALUE as upper bound for increase thresholds"

    .line 201
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 204
    throw p0

    .line 205
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 207
    const-string p1, "The config files for auto keyboard backlight brightness must contain arrays of equal lengths"

    .line 209
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 212
    throw p0
.end method


# virtual methods
.method public addSensorListener(Landroid/hardware/Sensor;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    .line 3
    const-class v1, Landroid/hardware/SensorManager;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/SensorManager;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    if-nez p1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->IMMEDIATE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 18
    iput-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 20
    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 23
    iput v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    .line 28
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 30
    const/4 v2, 0x3

    .line 31
    invoke-virtual {v0, p0, p1, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 34
    sget-boolean p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 36
    if-eqz p0, :cond_1

    .line 38
    const-string p0, "KbdBacklightController"

    .line 40
    const-string p1, "Registering ALS listener"

    .line 42
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public final getAmbientLightSensor(Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;)Landroid/hardware/Sensor;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    .line 3
    const-class v0, Landroid/hardware/SensorManager;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/hardware/SensorManager;

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-object v0, p0

    .line 15
    check-cast v0, Landroid/hardware/SensorManager;

    .line 17
    sget-boolean v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "Ambient Light sensor data: "

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    const-string v1, "KbdBacklightController"

    .line 37
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    iget-object v0, p1, Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;->sensorType:Ljava/lang/String;

    .line 42
    iget-object p1, p1, Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;->sensorName:Ljava/lang/String;

    .line 44
    const/4 v1, 0x5

    .line 45
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public final handleDisplayChange()V
    .locals 6

    .line 1
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v3, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    .line 19
    monitor-enter v3

    .line 20
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentDefaultDisplayUniqueId:Ljava/lang/String;

    .line 22
    iget-object v5, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 24
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_1

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

    .line 36
    if-eqz v4, :cond_2

    .line 38
    const-string v4, "KbdBacklightController"

    .line 40
    const-string v5, "Default display changed: resetting the light sensor"

    .line 42
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_2
    iget-object v2, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentDefaultDisplayUniqueId:Ljava/lang/String;

    .line 49
    iget-object v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    .line 51
    check-cast v2, Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_3

    .line 59
    iget-object v2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 61
    invoke-virtual {p0, v2}, Lcom/android/server/input/AmbientKeyboardBacklightController;->removeSensorListener(Landroid/hardware/Sensor;)V

    .line 64
    :cond_3
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getAmbientLightSensorData(I)Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->getAmbientLightSensor(Landroid/hardware/display/DisplayManagerInternal$AmbientLightSensorData;)Landroid/hardware/Sensor;

    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 74
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    .line 76
    check-cast v0, Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->addSensorListener(Landroid/hardware/Sensor;)V

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

    .line 4
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleDisplayChange()V

    .line 4
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleDisplayChange()V

    .line 4
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 3
    const/4 v0, 0x0

    .line 4
    aget p1, p1, v0

    .line 6
    const/4 v1, 0x0

    .line 7
    cmpg-float v1, p1, v1

    .line 9
    const-string v2, "KbdBacklightController"

    .line 11
    if-gez v1, :cond_0

    .line 13
    const-string p0, "Light sensor doesn\'t have valid value"

    .line 15
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    goto/16 :goto_4

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 22
    sget-object v3, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->IMMEDIATE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 24
    if-ne v1, v3, :cond_1

    .line 26
    float-to-int p1, p1

    .line 27
    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothingConstant:F

    .line 32
    mul-float/2addr p1, v1

    .line 33
    const/high16 v4, 0x3f800000    # 1.0f

    .line 35
    sub-float/2addr v4, v1

    .line 36
    iget v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

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

    .line 44
    :goto_0
    sget-boolean p1, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 46
    if-eqz p1, :cond_2

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    const-string v4, "Current smoothed lux from ALS = "

    .line 52
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    iget v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 57
    invoke-static {v1, v4, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 62
    sget-object v4, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->STABLE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 64
    if-eq v1, v3, :cond_3

    .line 66
    iget v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 68
    iget v5, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    .line 70
    if-ne v1, v5, :cond_3

    .line 72
    iput-object v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 74
    goto/16 :goto_4

    .line 76
    :cond_3
    iget v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 81
    move-result v1

    .line 82
    iget-object v5, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 84
    array-length v5, v5

    .line 85
    iget v6, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 87
    iget v7, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    .line 89
    if-le v6, v7, :cond_7

    .line 91
    iget-object v6, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 93
    if-eq v6, v3, :cond_5

    .line 95
    sget-object v7, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->INCREASING:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 97
    if-eq v6, v7, :cond_5

    .line 99
    if-eqz p1, :cond_4

    .line 101
    const-string p1, "ALS transitioned to brightness increasing state"

    .line 103
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_4
    iput-object v7, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 108
    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 110
    :cond_5
    :goto_1
    if-ge v1, v5, :cond_b

    .line 112
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 114
    iget-object v6, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 116
    aget-object v6, v6, v1

    .line 118
    iget v6, v6, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mIncreaseLuxThreshold:I

    .line 120
    if-ge p1, v6, :cond_6

    .line 122
    goto :goto_3

    .line 123
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 125
    goto :goto_1

    .line 126
    :cond_7
    if-ge v6, v7, :cond_b

    .line 128
    iget-object v5, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 130
    if-eq v5, v3, :cond_9

    .line 132
    sget-object v6, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->DECREASING:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 134
    if-eq v5, v6, :cond_9

    .line 136
    if-eqz p1, :cond_8

    .line 138
    const-string p1, "ALS transitioned to brightness decreasing state"

    .line 140
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_8
    iput-object v6, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 145
    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 147
    :cond_9
    :goto_2
    if-ltz v1, :cond_b

    .line 149
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 151
    iget-object v5, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 153
    aget-object v5, v5, v1

    .line 155
    iget v5, v5, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mDecreaseLuxThreshold:I

    .line 157
    if-le p1, v5, :cond_a

    .line 159
    goto :goto_3

    .line 160
    :cond_a
    add-int/lit8 v1, v1, -0x1

    .line 162
    goto :goto_2

    .line 163
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 165
    if-ne p1, v3, :cond_c

    .line 167
    iput v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    .line 169
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 171
    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    .line 173
    iput-object v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisState:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    .line 175
    iput v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 177
    iget-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 179
    aget-object p1, p1, v1

    .line 181
    iget p1, p1, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mBrightnessValue:I

    .line 183
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object p1

    .line 189
    invoke-static {v1, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 192
    move-result-object p1

    .line 193
    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 195
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    goto :goto_4

    .line 199
    :cond_c
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    .line 201
    if-ne v1, p1, :cond_d

    .line 203
    goto :goto_4

    .line 204
    :cond_d
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 206
    const/4 v3, 0x1

    .line 207
    add-int/2addr p1, v3

    .line 208
    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 210
    sget-boolean p1, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 212
    if-eqz p1, :cond_e

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    .line 216
    const-string v4, "Incremented hysteresis count to "

    .line 218
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    iget v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 223
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    const-string v4, " (lux went from "

    .line 228
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    .line 233
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const-string v4, " to "

    .line 238
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget v4, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 243
    const-string v5, ")"

    .line 245
    invoke-static {p1, v4, v5, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_e
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 250
    const/4 v2, 0x2

    .line 251
    if-lt p1, v2, :cond_f

    .line 253
    iput v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mCurrentBrightnessStepIndex:I

    .line 255
    iget p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLux:I

    .line 257
    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mSmoothedLuxAtLastAdjustment:I

    .line 259
    iput v3, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHysteresisCount:I

    .line 261
    iget-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mBrightnessSteps:[Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;

    .line 263
    aget-object p1, p1, v1

    .line 265
    iget p1, p1, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mBrightnessValue:I

    .line 267
    iget-object v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    move-result-object p1

    .line 273
    invoke-static {v1, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 276
    move-result-object p1

    .line 277
    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 279
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    :cond_f
    :goto_4
    return-void
.end method

.method public final removeSensorListener(Landroid/hardware/Sensor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    .line 3
    const-class v1, Landroid/hardware/SensorManager;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/SensorManager;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    if-nez p1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 19
    sget-boolean p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->DEBUG:Z

    .line 21
    if-eqz p0, :cond_1

    .line 23
    const-string p0, "KbdBacklightController"

    .line 25
    const-string p1, "Unregistering ALS listener"

    .line 27
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_1
    :goto_0
    return-void
.end method
