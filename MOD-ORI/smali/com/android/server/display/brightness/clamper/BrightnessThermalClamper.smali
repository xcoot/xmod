.class public final Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;
.super Lcom/android/server/display/brightness/clamper/BrightnessClamper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public mDataId:Ljava/lang/String;

.field public final mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda0;

.field public final mDataSetMapper:Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda1;

.field public final mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;

.field public mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

.field public mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

.field public mThermalThrottlingDataOverride:Ljava/util/Map;

.field public mThrottlingStatus:I

.field public mUniqueDisplayId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/android/server/display/brightness/clamper/BrightnessClamper;-><init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalThrottlingDataOverride:Ljava/util/Map;

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mUniqueDisplayId:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mDataId:Ljava/lang/String;

    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    iput p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThrottlingStatus:I

    .line 21
    .line 22
    new-instance p3, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    new-instance p3, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mDataSetMapper:Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance p3, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 40
    .line 41
    sget-object v0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    .line 42
    .line 43
    invoke-direct {p3, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    .line 44
    .line 45
    .line 46
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 47
    .line 48
    new-instance p3, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;

    .line 49
    .line 50
    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$Injector;Landroid/os/Handler;)V

    .line 51
    .line 52
    .line 53
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;

    .line 54
    .line 55
    new-instance p1, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;

    .line 56
    .line 57
    const/4 p3, 0x0

    .line 58
    invoke-direct {p1, p0, p4, p3}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "BrightnessThermalClamper:"

    .line 2
    .line 3
    const-string v1, "  mThrottlingStatus: "

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThrottlingStatus:I

    .line 10
    .line 11
    const-string v2, "  mUniqueDisplayId: "

    .line 12
    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mUniqueDisplayId:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "  mDataId: "

    .line 20
    .line 21
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mDataId:Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "  mDataOverride: "

    .line 28
    .line 29
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalThrottlingDataOverride:Ljava/util/Map;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "  mDataFromDeviceConfig: "

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "  mDataActive: "

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    const-string v1, "  ThermalStatusObserver:"

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "    mStarted: "

    .line 96
    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-boolean v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mStarted:Z

    .line 101
    .line 102
    const-string v3, "    mObserverTempSensor: "

    .line 103
    .line 104
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget-object v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 121
    .line 122
    if-eqz v0, :cond_0

    .line 123
    .line 124
    const-string v0, "    ThermalService available"

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    const-string v0, "    ThermalService not available"

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->dump(Ljava/io/PrintWriter;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public final getType()Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;->THERMAL:Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onDeviceConfigChanged()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onDisplayChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final recalculateActiveData$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mUniqueDisplayId:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mDataId:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalThrottlingDataOverride:Ljava/util/Map;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/Map;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mDataId:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 25
    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->recalculateBrightnessCap$1()V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public final recalculateBrightnessCap$1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 9
    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    .line 27
    .line 28
    iget v4, v3, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 29
    .line 30
    iget v5, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThrottlingStatus:I

    .line 31
    .line 32
    if-gt v4, v5, :cond_0

    .line 33
    .line 34
    iget v1, v3, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;->brightness:F

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mBrightnessCap:F

    .line 39
    .line 40
    cmpl-float v0, v1, v0

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mIsActive:Z

    .line 45
    .line 46
    if-eq v0, v2, :cond_2

    .line 47
    .line 48
    :cond_1
    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mBrightnessCap:F

    .line 49
    .line 50
    iput-boolean v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mIsActive:Z

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 53
    .line 54
    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public final setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;)V
    .locals 3

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mUniqueDisplayId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mUniqueDisplayId:Ljava/lang/String;

    .line 7
    .line 8
    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mThermalThrottlingDataId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mDataId:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 15
    .line 16
    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 17
    .line 18
    check-cast v1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 27
    .line 28
    const-string v1, "BrightnessThermalClamper"

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const-string/jumbo v0, "default"

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mDataId:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "Thermal throttling data is missing for thermalThrottlingDataId="

    .line 46
    .line 47
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mDataId:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;

    .line 65
    .line 66
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mStarted:Z

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 71
    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    const-string p0, "Thermal status observer already started"

    .line 88
    .line 89
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->stopObserving()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->registerThermalListener()V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->registerThermalListener()V

    .line 103
    .line 104
    .line 105
    :goto_1
    return-void
.end method

.method public final stop()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->stopObserving()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
