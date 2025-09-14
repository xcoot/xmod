.class public final Lcom/android/server/display/AutomaticBrightnessController$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method private final onAccuracyChanged$com$android$server$display$AutomaticBrightnessController$4(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAccuracyChanged$com$android$server$display$AutomaticBrightnessController$5(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->$r8$classId:I

    .line 3
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 8
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInjectedLuxEvent:Landroid/hardware/SensorEvent;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastRealLuxEventDuringInjection:Landroid/hardware/SensorEvent;

    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->onSensorChangedInternal(Landroid/hardware/SensorEvent;)V

    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 21
    iget-boolean v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    .line 23
    if-eqz v0, :cond_6

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 28
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 30
    const/4 v0, 0x0

    .line 31
    aget p1, p1, v0

    .line 33
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 35
    iget-object v1, v1, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 37
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    .line 40
    move-result v1

    .line 41
    const/16 v2, 0x8

    .line 43
    const/4 v3, 0x1

    .line 44
    if-ne v1, v2, :cond_1

    .line 46
    const/4 v1, 0x0

    .line 47
    cmpl-float v1, p1, v1

    .line 49
    if-ltz v1, :cond_2

    .line 51
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 53
    iget v1, v1, Lcom/android/server/display/AutomaticBrightnessController;->mProximityThreshold:F

    .line 55
    cmpg-float p1, p1, v1

    .line 57
    if-gez p1, :cond_2

    .line 59
    :goto_0
    move p1, v3

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 63
    iget-object v1, v1, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 65
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    .line 68
    move-result v1

    .line 69
    const v2, 0x10068

    .line 72
    if-ne v1, v2, :cond_2

    .line 74
    const/high16 v1, 0x41a80000    # 21.0f

    .line 76
    cmpl-float p1, p1, v1

    .line 78
    if-ltz p1, :cond_2

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move p1, v0

    .line 82
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    const-string v2, "[api] onSensorChanged: proximity: "

    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    const-string v2, "AutomaticBrightnessController"

    .line 98
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 103
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    .line 105
    if-eqz v1, :cond_6

    .line 107
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    .line 109
    if-nez v1, :cond_3

    .line 111
    if-nez p1, :cond_3

    .line 113
    goto :goto_3

    .line 114
    :cond_3
    if-ne v1, v3, :cond_4

    .line 116
    if-eqz p1, :cond_4

    .line 118
    goto :goto_3

    .line 119
    :cond_4
    if-eqz p1, :cond_5

    .line 121
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    .line 123
    goto :goto_2

    .line 124
    :cond_5
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    .line 126
    :goto_2
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 128
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOnProximityChangedRunnable:Lcom/android/server/display/AutomaticBrightnessController$2;

    .line 130
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    const-wide/16 v0, 0xc8

    .line 135
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    :cond_6
    :goto_3
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
