.class public final Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;
.super Landroid/hardware/TriggerEventListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method public constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 3
    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 3
    iget-boolean v1, v0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 5
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p1, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    .line 10
    iget-object v1, v0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 12
    if-ne p1, v1, :cond_3

    .line 14
    iget-object p1, v0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 21
    iget-object p1, p1, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 23
    const-string/jumbo v0, "sensor"

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/hardware/SensorManager;

    .line 32
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 34
    iget-object v0, v0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 36
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    .line 39
    move-result v0

    .line 40
    iget-object v1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 42
    iget-object v1, v1, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    .line 44
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 47
    move-result v1

    .line 48
    if-nez v0, :cond_1

    .line 50
    if-nez v1, :cond_2

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 54
    const/4 v1, 0x1

    .line 55
    const/4 v2, 0x2

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 64
    iget-object v0, v0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 66
    const/16 v1, 0x3dd

    .line 68
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 71
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 73
    iget-object v0, v0, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 75
    sget-object v1, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_LIFT:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 77
    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 80
    :cond_2
    iget-object p0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 82
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    .line 84
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 89
    move-result p1

    .line 90
    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 92
    :cond_3
    return-void
.end method
