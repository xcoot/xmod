.class public final Lcom/android/server/display/DisplayPowerProximityStateController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerProximityStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerProximityStateController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

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
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 3
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    .line 5
    if-eqz v1, :cond_7

    .line 7
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerProximityStateController;->mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Injector$$ExternalSyntheticLambda0;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v0

    .line 16
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 18
    const/4 v2, 0x0

    .line 19
    aget p1, p1, v2

    .line 21
    const/4 v3, 0x0

    .line 22
    cmpl-float v3, p1, v3

    .line 24
    const/4 v4, 0x1

    .line 25
    if-ltz v3, :cond_0

    .line 27
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 29
    iget v3, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximityThreshold:F

    .line 31
    cmpg-float p1, p1, v3

    .line 33
    if-gez p1, :cond_0

    .line 35
    move p1, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move p1, v2

    .line 38
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 40
    iget-object v3, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    const-string v6, "[api] onSensorChanged: proximity: "

    .line 46
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    invoke-static {v3, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 61
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    .line 63
    if-eqz v3, :cond_7

    .line 65
    iget v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 67
    if-nez v3, :cond_1

    .line 69
    if-nez p1, :cond_1

    .line 71
    goto :goto_3

    .line 72
    :cond_1
    if-ne v3, v4, :cond_2

    .line 74
    if-eqz p1, :cond_2

    .line 76
    goto :goto_3

    .line 77
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    .line 79
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    const/4 v3, 0x3

    .line 83
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 85
    const/16 v6, 0x32

    .line 87
    const/4 v7, -0x1

    .line 88
    if-eqz p1, :cond_5

    .line 90
    iput v4, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 92
    iget p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorPositiveDebounceDelay:I

    .line 94
    if-eq p1, v7, :cond_3

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move p1, v2

    .line 98
    :goto_1
    int-to-long v7, p1

    .line 99
    add-long/2addr v0, v7

    .line 100
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsEarsenseProximity:Z

    .line 102
    if-eqz p1, :cond_4

    .line 104
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsViewTypeCover:Z

    .line 106
    if-eqz p1, :cond_4

    .line 108
    move v2, v6

    .line 109
    :cond_4
    int-to-long v6, v2

    .line 110
    add-long/2addr v0, v6

    .line 111
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 113
    invoke-virtual {v5, v3}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 116
    goto :goto_2

    .line 117
    :cond_5
    iput v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 119
    iget p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorNegativeDebounceDelay:I

    .line 121
    if-eq p1, v7, :cond_6

    .line 123
    move v6, p1

    .line 124
    :cond_6
    int-to-long v6, v6

    .line 125
    add-long/2addr v0, v6

    .line 126
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 128
    invoke-virtual {v5, v3}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 131
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->debounceProximitySensor()V

    .line 134
    :cond_7
    :goto_3
    return-void
.end method
