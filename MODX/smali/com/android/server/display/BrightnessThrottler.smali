.class public final Lcom/android/server/display/BrightnessThrottler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mBrightnessCap:F

.field public mBrightnessMaxReason:I

.field public final mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public final mDataPointMapper:Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda0;

.field public final mDataSetMapper:Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda1;

.field public mDdcThermalThrottlingDataMap:Ljava/util/Map;

.field public final mDeviceConfigHandler:Landroid/os/Handler;

.field public final mDeviceConfigListener:Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;

.field public final mHandler:Landroid/os/Handler;

.field public final mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

.field public mTempSensor:Lcom/android/server/display/config/SensorData;

.field public mThermalBrightnessThrottlingDataId:Ljava/lang/String;

.field public final mThermalBrightnessThrottlingDataOverride:Ljava/util/Map;

.field public mThermalBrightnessThrottlingDataString:Ljava/lang/String;

.field public mThermalThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

.field public final mThrottlingChangeCallback:Ljava/lang/Runnable;

.field public mThrottlingStatus:I

.field public mUniqueDisplayId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "BrightnessThrottler"

    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/BrightnessThrottler;->DEBUG:Z

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/android/server/display/config/SensorData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataOverride:Ljava/util/Map;

    .line 18
    new-instance v0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda0;

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mDataPointMapper:Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda0;

    .line 25
    new-instance v0, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda1;

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mDataSetMapper:Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda1;

    .line 32
    iput-object p2, p0, Lcom/android/server/display/BrightnessThrottler;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p3, p0, Lcom/android/server/display/BrightnessThrottler;->mDeviceConfigHandler:Landroid/os/Handler;

    .line 36
    iput-object p7, p0, Lcom/android/server/display/BrightnessThrottler;->mDdcThermalThrottlingDataMap:Ljava/util/Map;

    .line 38
    iput-object p4, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingChangeCallback:Ljava/lang/Runnable;

    .line 40
    new-instance p3, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    .line 42
    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/BrightnessThrottler;Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;)V

    .line 45
    iput-object p3, p0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    .line 47
    iput-object p5, p0, Lcom/android/server/display/BrightnessThrottler;->mUniqueDisplayId:Ljava/lang/String;

    .line 49
    new-instance p2, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    sget-object p1, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    .line 56
    invoke-direct {p2, p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    .line 59
    iput-object p2, p0, Lcom/android/server/display/BrightnessThrottler;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 61
    new-instance p1, Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;

    .line 63
    invoke-direct {p1, p0}, Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;-><init>(Lcom/android/server/display/BrightnessThrottler;)V

    .line 66
    iput-object p1, p0, Lcom/android/server/display/BrightnessThrottler;->mDeviceConfigListener:Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;

    .line 68
    iput-object p6, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 70
    iput-object p7, p0, Lcom/android/server/display/BrightnessThrottler;->mDdcThermalThrottlingDataMap:Ljava/util/Map;

    .line 72
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler;->loadThermalBrightnessThrottlingDataFromDeviceConfig()V

    .line 75
    iget-object p1, p0, Lcom/android/server/display/BrightnessThrottler;->mDdcThermalThrottlingDataMap:Ljava/util/Map;

    .line 77
    iget-object p2, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 79
    iget-object p3, p0, Lcom/android/server/display/BrightnessThrottler;->mUniqueDisplayId:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/android/server/display/BrightnessThrottler;->mDdcThermalThrottlingDataMap:Ljava/util/Map;

    .line 83
    iput-object p2, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/android/server/display/BrightnessThrottler;->mUniqueDisplayId:Ljava/lang/String;

    .line 87
    iput-object p8, p0, Lcom/android/server/display/BrightnessThrottler;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 89
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler;->resetThermalThrottlingData()V

    .line 92
    return-void
.end method


# virtual methods
.method public final getConfigFromId(Ljava/lang/String;)Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataOverride:Ljava/util/Map;

    .line 3
    iget-object v1, p0, Lcom/android/server/display/BrightnessThrottler;->mUniqueDisplayId:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataOverride:Ljava/util/Map;

    .line 15
    iget-object v1, p0, Lcom/android/server/display/BrightnessThrottler;->mUniqueDisplayId:Ljava/lang/String;

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map;

    .line 23
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 29
    :goto_0
    if-nez v0, :cond_1

    .line 31
    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler;->mDdcThermalThrottlingDataMap:Ljava/util/Map;

    .line 33
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 37
    move-object v0, p0

    .line 38
    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 40
    :cond_1
    return-object v0
.end method

.method public final loadThermalBrightnessThrottlingDataFromDeviceConfig()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string/jumbo v2, "display_manager"

    .line 9
    const-string/jumbo v3, "brightness_throttling_data"

    .line 12
    invoke-interface {v0, v2, v3, v1}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataString:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataOverride:Ljava/util/Map;

    .line 20
    check-cast v0, Ljava/util/HashMap;

    .line 22
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 25
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataString:Ljava/lang/String;

    .line 27
    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lcom/android/server/display/BrightnessThrottler;->mDataPointMapper:Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda0;

    .line 31
    iget-object v2, p0, Lcom/android/server/display/BrightnessThrottler;->mDataSetMapper:Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda1;

    .line 33
    invoke-static {v0, v1, v2}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseDeviceConfigMap(Ljava/lang/String;Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/Map;

    .line 36
    move-result-object v0

    .line 37
    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataOverride:Ljava/util/Map;

    .line 39
    check-cast p0, Ljava/util/HashMap;

    .line 41
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string p0, "BrightnessThrottler"

    .line 47
    const-string v0, "DeviceConfig ThermalBrightnessThrottlingData is null"

    .line 49
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return-void
.end method

.method public final resetThermalThrottlingData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler;->mSkinThermalStatusObserver:Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->stopObserving()V

    .line 6
    iget-object v1, p0, Lcom/android/server/display/BrightnessThrottler;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 8
    iget-object v1, v1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 10
    iget-object v2, p0, Lcom/android/server/display/BrightnessThrottler;->mDeviceConfigListener:Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;

    .line 12
    invoke-interface {v1, v2}, Landroid/provider/DeviceConfigInterface;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    iput v1, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessCap:F

    .line 19
    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 22
    const/4 v1, -0x1

    .line 23
    iput v1, p0, Lcom/android/server/display/BrightnessThrottler;->mThrottlingStatus:I

    .line 25
    iget-object v1, v2, Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;->this$0:Lcom/android/server/display/BrightnessThrottler;

    .line 27
    iget-object v1, v1, Lcom/android/server/display/BrightnessThrottler;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 29
    iget-object v3, v2, Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 31
    iget-object v1, v1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 33
    const-string/jumbo v4, "display_manager"

    .line 36
    invoke-interface {v1, v4, v3, v2}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 39
    iget-object v1, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/server/display/BrightnessThrottler;->getConfigFromId(Ljava/lang/String;)Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 47
    iget-object v1, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 49
    const-string/jumbo v2, "default"

    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v1

    .line 56
    const-string v3, "BrightnessThrottler"

    .line 58
    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 62
    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessThrottler;->getConfigFromId(Ljava/lang/String;)Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 67
    move-result-object v1

    .line 68
    iput-object v1, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 70
    const-string v1, "Falling back to default throttling Id"

    .line 72
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessThrottler;->mThermalThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 77
    if-eqz v1, :cond_4

    .line 79
    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 81
    iget-boolean v1, v0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z

    .line 83
    if-eqz v1, :cond_3

    .line 85
    iget-object v1, v0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 87
    if-nez v1, :cond_1

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iput-object p0, v0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 92
    iget-object p0, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 94
    iget-object v1, v1, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_2

    .line 102
    sget-boolean p0, Lcom/android/server/display/BrightnessThrottler;->DEBUG:Z

    .line 104
    if-eqz p0, :cond_4

    .line 106
    const-string p0, "Thermal status observer already started"

    .line 108
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->stopObserving()V

    .line 115
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->registerThermalListener()V

    .line 118
    goto :goto_1

    .line 119
    :cond_3
    :goto_0
    iput-object p0, v0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 121
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->registerThermalListener()V

    .line 124
    :cond_4
    :goto_1
    return-void
.end method
