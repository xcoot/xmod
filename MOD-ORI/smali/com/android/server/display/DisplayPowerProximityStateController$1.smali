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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

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
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerProximityStateController;->mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Injector$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aget p1, p1, v2

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    cmpl-float v3, p1, v3

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    if-ltz v3, :cond_0

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 28
    .line 29
    iget v3, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximityThreshold:F

    .line 30
    .line 31
    cmpg-float p1, p1, v3

    .line 32
    .line 33
    if-gez p1, :cond_0

    .line 34
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

    .line 39
    .line 40
    iget-object v3, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v6, "[api] onSensorChanged: proximity: "

    .line 45
    .line 46
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v3, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController$1;->this$0:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 60
    .line 61
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    .line 62
    .line 63
    if-eqz v3, :cond_7

    .line 64
    .line 65
    iget v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 66
    .line 67
    if-nez v3, :cond_1

    .line 68
    .line 69
    if-nez p1, :cond_1

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_1
    if-ne v3, v4, :cond_2

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    .line 81
    .line 82
    const/4 v3, 0x3

    .line 83
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 84
    .line 85
    const/16 v6, 0x32

    .line 86
    .line 87
    const/4 v7, -0x1

    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    iput v4, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 91
    .line 92
    iget p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorPositiveDebounceDelay:I

    .line 93
    .line 94
    if-eq p1, v7, :cond_3

    .line 95
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

    .line 101
    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsViewTypeCover:Z

    .line 105
    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    move v2, v6

    .line 109
    :cond_4
    int-to-long v6, v2

    .line 110
    add-long/2addr v0, v6

    .line 111
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 112
    .line 113
    invoke-virtual {v5, v3}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    iput v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 118
    .line 119
    iget p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorNegativeDebounceDelay:I

    .line 120
    .line 121
    if-eq p1, v7, :cond_6

    .line 122
    .line 123
    move v6, p1

    .line 124
    :cond_6
    int-to-long v6, v6

    .line 125
    add-long/2addr v0, v6

    .line 126
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 127
    .line 128
    invoke-virtual {v5, v3}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 129
    .line 130
    .line 131
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->debounceProximitySensor()V

    .line 132
    .line 133
    .line 134
    :cond_7
    :goto_3
    return-void
.end method
