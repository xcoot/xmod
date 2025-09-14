.class public final Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$RealInjector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;


# virtual methods
.method public final getScreenOffBrightnessSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;)Landroid/hardware/Sensor;
    .locals 1

    .line 1
    iget-object p0, p2, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, p2, p0, v0}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    return-object p0
.end method

.method public final getScreenOffBrightnessSensorController(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;[ILcom/android/server/display/BrightnessMappingStrategy;)Lcom/android/server/display/ScreenOffBrightnessSensorController;
    .locals 7

    .line 1
    new-instance p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    move-object v6, p6

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/ScreenOffBrightnessSensorController;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;[ILcom/android/server/display/BrightnessMappingStrategy;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method
