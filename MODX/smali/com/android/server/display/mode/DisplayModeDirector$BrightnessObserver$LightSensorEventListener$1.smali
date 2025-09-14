.class public final Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$2:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 7
    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    .line 10
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 12
    iget v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 14
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 16
    iget v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 18
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 20
    invoke-static {v1, v2, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[F)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 28
    iget v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 30
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 32
    iget v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 34
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 36
    invoke-static {v1, v2, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[F)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 44
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 46
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    .line 48
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;

    .line 50
    const-wide/16 v1, 0xfa

    .line 52
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    :cond_1
    return-void
.end method
