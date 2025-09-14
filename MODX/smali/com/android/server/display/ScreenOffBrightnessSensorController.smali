.class public final Lcom/android/server/display/ScreenOffBrightnessSensorController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public final mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

.field public final mHandler:Landroid/os/Handler;

.field public mLastSensorValue:I

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public mRegistered:Z

.field public mSensorDisableTime:J

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mSensorValueToLux:[I


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;[ILcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    .line 7
    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorDisableTime:J

    .line 11
    iput-object p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 13
    iput-object p2, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLightSensor:Landroid/hardware/Sensor;

    .line 15
    iput-object p3, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mHandler:Landroid/os/Handler;

    .line 17
    iput-object p4, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 19
    iput-object p5, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorValueToLux:[I

    .line 21
    iput-object p6, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 23
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "Screen Off Brightness Sensor Controller:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 8
    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 11
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v1, "registered="

    .line 19
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget-boolean v1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    .line 24
    const-string/jumbo v2, "lastSensorValue="

    .line 27
    invoke-static {p1, v1, v0, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object p1

    .line 31
    iget p0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public final getAutomaticScreenBrightness()F
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    .line 3
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 5
    if-ltz v0, :cond_2

    .line 7
    iget-object v2, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorValueToLux:[I

    .line 9
    array-length v2, v2

    .line 10
    if-ge v0, v2, :cond_2

    .line 12
    iget-boolean v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    .line 14
    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 18
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;->uptimeMillis()J

    .line 21
    move-result-wide v2

    .line 22
    iget-wide v4, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorDisableTime:J

    .line 24
    sub-long/2addr v2, v4

    .line 25
    const-wide/16 v4, 0x5dc

    .line 27
    cmp-long v0, v2, v4

    .line 29
    if-lez v0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorValueToLux:[I

    .line 34
    iget v2, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    .line 36
    aget v0, v0, v2

    .line 38
    if-gez v0, :cond_1

    .line 40
    return v1

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 43
    int-to-float v0, v0

    .line 44
    const/4 v1, 0x0

    .line 45
    const/4 v2, -0x1

    .line 46
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(Ljava/lang/String;FI)F

    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_2
    :goto_0
    return v1
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 7
    const/4 v0, 0x0

    .line 8
    aget p1, p1, v0

    .line 10
    float-to-int p1, p1

    .line 11
    iput p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    .line 13
    :cond_0
    return-void
.end method

.method public final setLightSensorEnabled(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 9
    iget-object v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLightSensor:Landroid/hardware/Sensor;

    .line 11
    const/4 v1, 0x3

    .line 12
    iget-object v2, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mHandler:Landroid/os/Handler;

    .line 14
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 17
    move-result p1

    .line 18
    iput-boolean p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    .line 20
    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mLastSensorValue:I

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-nez p1, :cond_1

    .line 26
    iget-boolean p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    .line 28
    if-eqz p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 32
    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 35
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mRegistered:Z

    .line 38
    iget-object p1, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 40
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;->uptimeMillis()J

    .line 43
    move-result-wide v0

    .line 44
    iput-wide v0, p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;->mSensorDisableTime:J

    .line 46
    :cond_1
    :goto_0
    return-void
.end method
