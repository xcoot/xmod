.class public final Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 6
    .line 7
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    aget p1, p1, v3

    .line 11
    .line 12
    float-to-int p1, p1

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget v4, v2, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    .line 17
    .line 18
    add-int/lit8 v4, v4, 0x1

    .line 19
    .line 20
    iput v4, v2, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    .line 21
    .line 22
    iget-boolean v5, v2, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2, p1, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_bopr(II)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 30
    .line 31
    iget-object v2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 39
    .line 40
    iget v2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 41
    .line 42
    const/16 v4, 0x36

    .line 43
    .line 44
    if-ge v2, v4, :cond_1

    .line 45
    .line 46
    iget-boolean v2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object p1, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 51
    .line 52
    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 58
    .line 59
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_VALUE_DEBOUNCE_MILLIS:I

    .line 60
    .line 61
    int-to-long v4, p0

    .line 62
    add-long/2addr v0, v4

    .line 63
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method
