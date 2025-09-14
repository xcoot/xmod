.class public final Lcom/android/server/GestureLauncherService$GestureEventListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method public constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 7
    iget-boolean v3, v2, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 9
    if-nez v3, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v3, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 14
    iget-object v4, v2, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 16
    if-ne v3, v4, :cond_2

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v2, v3, v4}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 26
    iget-object v2, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 28
    iget-object v2, v2, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 30
    const/16 v5, 0x100

    .line 32
    invoke-virtual {v2, v5}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 35
    iget-object v2, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 37
    iget-object v2, v2, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 39
    sget-object v5, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_WIGGLE:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 41
    invoke-interface {v2, v5}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 47
    move-result-wide v5

    .line 48
    iget-object v2, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 50
    iget-wide v7, v2, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 52
    sub-long v7, v5, v7

    .line 54
    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 56
    long-to-double v7, v7

    .line 57
    aget v4, v1, v4

    .line 59
    float-to-double v9, v4

    .line 60
    mul-double/2addr v9, v7

    .line 61
    double-to-long v9, v9

    .line 62
    aget v3, v1, v3

    .line 64
    float-to-double v3, v3

    .line 65
    mul-double/2addr v7, v3

    .line 66
    double-to-long v3, v7

    .line 67
    const/4 v7, 0x2

    .line 68
    aget v1, v1, v7

    .line 70
    float-to-int v1, v1

    .line 71
    iget-wide v7, v2, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 73
    sub-long v7, v5, v7

    .line 75
    iget-wide v11, v2, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 77
    sub-long v11, v9, v11

    .line 79
    iget-wide v13, v2, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 81
    sub-long v13, v3, v13

    .line 83
    iget v2, v2, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 85
    sub-int v2, v1, v2

    .line 87
    const-wide/16 v15, 0x0

    .line 89
    cmp-long v17, v7, v15

    .line 91
    if-ltz v17, :cond_2

    .line 93
    cmp-long v17, v11, v15

    .line 95
    if-ltz v17, :cond_2

    .line 97
    cmp-long v15, v13, v15

    .line 99
    if-gez v15, :cond_1

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    move-result-object v7

    .line 106
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    move-result-object v8

    .line 110
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    move-result-object v11

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v2

    .line 118
    filled-new-array {v7, v8, v11, v2}, [Ljava/lang/Object;

    .line 121
    move-result-object v2

    .line 122
    const v7, 0x9ca4

    .line 125
    invoke-static {v7, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 128
    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 130
    iput-wide v5, v0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 132
    iput-wide v9, v0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 134
    iput-wide v3, v0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 136
    iput v1, v0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 138
    :cond_2
    :goto_0
    return-void
.end method
