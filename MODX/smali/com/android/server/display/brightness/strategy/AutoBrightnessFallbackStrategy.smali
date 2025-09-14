.class public final Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public final mInjector:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;

.field public mIsEnabled:Z

.field public mLeadDisplayId:I

.field mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

.field public mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$RealInjector;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;

    .line 11
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "AutoBrightnessFallbackStrategy:"

    .line 3
    const-string v1, "  mLeadDisplayId="

    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mLeadDisplayId:I

    .line 11
    const-string v2, "  mIsEnabled="

    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 17
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mIsEnabled:Z

    .line 19
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 22
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 28
    const-string v1, " "

    .line 30
    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 33
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->dump(Ljava/io/PrintWriter;)V

    .line 38
    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "AutoBrightnessFallbackStrategy"

    .line 3
    return-object p0
.end method

.method public final getReason()I
    .locals 0

    .line 1
    const/16 p0, 0x9

    .line 3
    return p0
.end method

.method public final setupAutoBrightnessFallbackSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V
    .locals 7

    .line 1
    iput-boolean p5, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mIsEnabled:Z

    .line 3
    iput p6, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mLeadDisplayId:I

    .line 5
    iget-object p5, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 7
    if-eqz p5, :cond_0

    .line 9
    const/4 p6, 0x0

    .line 10
    invoke-virtual {p5, p6}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 13
    const/4 p5, 0x0

    .line 14
    iput-object p5, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 16
    :cond_0
    iget-object p5, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;

    .line 18
    invoke-interface {p5, p1, p2}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;->getScreenOffBrightnessSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;)Landroid/hardware/Sensor;

    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensor:Landroid/hardware/Sensor;

    .line 24
    iget-object v5, p2, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    .line 26
    if-eqz v2, :cond_1

    .line 28
    if-eqz v5, :cond_1

    .line 30
    new-instance v4, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-direct {v4, p2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;-><init>(I)V

    .line 36
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;

    .line 38
    move-object v1, p1

    .line 39
    move-object v3, p3

    .line 40
    move-object v6, p4

    .line 41
    invoke-interface/range {v0 .. v6}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;->getScreenOffBrightnessSensorController(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;[ILcom/android/server/display/BrightnessMappingStrategy;)Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 47
    :cond_1
    return-void
.end method

.method public final strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    iget v1, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mTargetDisplayState:I

    .line 7
    iget-boolean v2, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mIsAutoBrightnessEnabled:Z

    .line 9
    if-eqz v2, :cond_1

    .line 11
    iget-boolean v2, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mIsEnabled:Z

    .line 13
    if-eqz v2, :cond_1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq v1, v2, :cond_0

    .line 18
    const/4 v3, 0x3

    .line 19
    if-ne v1, v3, :cond_1

    .line 21
    iget-boolean p1, p1, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 23
    if-nez p1, :cond_1

    .line 25
    :cond_0
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mLeadDisplayId:I

    .line 27
    const/4 p1, -0x1

    .line 28
    if-ne p0, p1, :cond_1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 35
    :cond_2
    return-void
.end method

.method public final updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->getAutomaticScreenBrightness()F

    .line 6
    move-result p0

    .line 7
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    .line 9
    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    .line 12
    const/16 v1, 0x9

    .line 14
    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    .line 17
    new-instance v1, Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 19
    invoke-direct {v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 22
    iput p0, v1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    .line 24
    iput p0, v1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mSdrBrightness:F

    .line 26
    iput-object v0, v1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 28
    const-string v0, "AutoBrightnessFallbackStrategy"

    .line 30
    iput-object v0, v1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 32
    iget p1, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    .line 34
    cmpl-float p0, p0, p1

    .line 36
    if-eqz p0, :cond_0

    .line 38
    const/4 p0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    :goto_0
    iput-boolean p0, v1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    .line 43
    new-instance p0, Lcom/android/server/display/DisplayBrightnessState;

    .line 45
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    .line 48
    return-object p0
.end method
