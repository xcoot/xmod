.class public final Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;
.super Lcom/android/server/display/brightness/clamper/BrightnessClamper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public mCurrentAvgPowerConsumed:F

.field public mCurrentThermalLevel:I

.field public mDataId:Ljava/lang/String;

.field public final mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda1;

.field public final mDataSetMapper:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda2;

.field public final mInjector:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$Injector;

.field public mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

.field public mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

.field public mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

.field public mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

.field public mPowerThrottlingDataOverride:Ljava/util/Map;

.field public mUniqueDisplayId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$PowerData;)V
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
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPowerThrottlingDataOverride:Ljava/util/Map;

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mCurrentThermalLevel:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mCurrentAvgPowerConsumed:F

    .line 22
    .line 23
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mUniqueDisplayId:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mDataId:Ljava/lang/String;

    .line 26
    .line 27
    new-instance p3, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda1;

    .line 28
    .line 29
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda1;

    .line 33
    .line 34
    new-instance p3, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda2;

    .line 35
    .line 36
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mDataSetMapper:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda2;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mInjector:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$Injector;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance p1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 47
    .line 48
    sget-object p3, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    .line 49
    .line 50
    invoke-direct {p1, p3}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 54
    .line 55
    new-instance p1, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda3;

    .line 56
    .line 57
    const/4 p3, 0x0

    .line 58
    invoke-direct {p1, p0, p4, p3}, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$PowerData;I)V

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
    .locals 3

    .line 1
    const-string v0, "BrightnessPowerClamper:"

    .line 2
    .line 3
    const-string v1, "  mCurrentAvgPowerConsumed="

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mCurrentAvgPowerConsumed:F

    .line 10
    .line 11
    const-string v2, "  mUniqueDisplayId="

    .line 12
    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mUniqueDisplayId:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "  mCurrentThermalLevel="

    .line 20
    .line 21
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mCurrentThermalLevel:I

    .line 26
    .line 27
    const-string v2, "  mPowerThrottlingDataFromDDC="

    .line 28
    .line 29
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    const-string/jumbo v1, "null"

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :goto_0
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 46
    .line 47
    .line 48
    invoke-super {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->dump(Ljava/io/PrintWriter;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final getType()Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;->POWER:Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onDeviceConfigChanged()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;)V

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
    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$PowerData;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$PowerData;I)V

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

.method public final recalculateActiveData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mUniqueDisplayId:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mDataId:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPowerThrottlingDataOverride:Ljava/util/Map;

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
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mDataId:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 25
    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object v3, v0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 47
    .line 48
    .line 49
    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->start()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-object v3, v0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 66
    .line 67
    .line 68
    iput-object v1, v0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 69
    .line 70
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->recalculateBrightnessCap()V

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_1
    return-void
.end method

.method public final recalculateBrightnessCap()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mCurrentThermalLevel:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 9
    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    move v3, v2

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 28
    .line 29
    iget v5, v4, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 30
    .line 31
    if-gt v5, v0, :cond_1

    .line 32
    .line 33
    iget v3, v4, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->powerQuotaMilliWatts:F

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v3, v2

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    cmpl-float v0, v3, v2

    .line 43
    .line 44
    const/high16 v1, 0x3f800000    # 1.0f

    .line 45
    .line 46
    if-lez v0, :cond_3

    .line 47
    .line 48
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mCurrentAvgPowerConsumed:F

    .line 49
    .line 50
    cmpl-float v2, v0, v3

    .line 51
    .line 52
    if-lez v2, :cond_3

    .line 53
    .line 54
    div-float/2addr v3, v0

    .line 55
    mul-float/2addr v3, v1

    .line 56
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    .line 57
    .line 58
    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->brightnessLowestCapAllowed:F

    .line 59
    .line 60
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/4 v0, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/4 v0, 0x0

    .line 67
    :goto_1
    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mBrightnessCap:F

    .line 68
    .line 69
    cmpl-float v2, v2, v1

    .line 70
    .line 71
    if-nez v2, :cond_4

    .line 72
    .line 73
    iget-boolean v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mIsActive:Z

    .line 74
    .line 75
    if-eq v2, v0, :cond_5

    .line 76
    .line 77
    :cond_4
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mIsActive:Z

    .line 78
    .line 79
    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mBrightnessCap:F

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 82
    .line 83
    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 84
    .line 85
    .line 86
    :cond_5
    return-void
.end method

.method public final setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$PowerData;)V
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
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mUniqueDisplayId:Ljava/lang/String;

    .line 7
    .line 8
    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mDataId:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 15
    .line 16
    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

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
    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 27
    .line 28
    const-string v1, "BrightnessPowerClamper"

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const-string/jumbo v0, "default"

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mDataId:Ljava/lang/String;

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
    const-string v2, "Power throttling data is missing for powerThrottlingDataId="

    .line 46
    .line 47
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mDataId:Ljava/lang/String;

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
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    .line 65
    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    const-string p0, "Power throttling data is missing for configuration data."

    .line 69
    .line 70
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public final stop()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
