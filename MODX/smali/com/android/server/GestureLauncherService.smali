.class public final Lcom/android/server/GestureLauncherService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x12cL

.field static final EMERGENCY_GESTURE_POWER_BUTTON_COOLDOWN_PERIOD_MS_MAX:I = 0x1388

.field static final POWER_SHORT_TAP_SEQUENCE_MAX_INTERVAL_MS:J = 0x1f4L


# instance fields
.field public mCameraGestureLastEventTime:J

.field public mCameraGestureOnTimeMs:J

.field public mCameraGestureSensor1LastOnTimeMs:J

.field public mCameraGestureSensor2LastOnTimeMs:J

.field public mCameraLaunchLastEventExtra:I

.field public mCameraLaunchRegistered:Z

.field public mCameraLaunchSensor:Landroid/hardware/Sensor;

.field public mCameraLiftRegistered:Z

.field public final mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

.field public mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

.field public final mContext:Landroid/content/Context;

.field public final mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mSettingObserver:Lcom/android/server/GestureLauncherService$2;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mUserId:I

.field public final mUserReceiver:Lcom/android/server/GestureLauncherService$1;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    new-instance v1, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v1}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/GestureLauncherService;-><init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureEventListener;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 4
    new-instance v0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 6
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 7
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 8
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 10
    new-instance v0, Lcom/android/server/GestureLauncherService$1;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$1;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Lcom/android/server/GestureLauncherService$1;

    .line 11
    new-instance v0, Lcom/android/server/GestureLauncherService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$2;-><init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Lcom/android/server/GestureLauncherService$2;

    .line 12
    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 14
    iput-object p3, p0, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public static getEmergencyGesturePowerButtonCooldownPeriodMs(Landroid/content/Context;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo p1, "emergency_gesture_power_button_cooldown_period_ms"

    .line 8
    const/16 v0, 0xbb8

    .line 10
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result p0

    .line 14
    const/16 p1, 0x1388

    .line 16
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z
    .locals 1

    .line 1
    const v0, 0x111006a

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static isGestureLauncherEnabled(Landroid/content/res/Resources;)Z
    .locals 3

    .line 1
    const v0, 0x10e0056

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v0, v2, :cond_0

    .line 12
    const-string/jumbo v0, "gesture.disable_camera_launch"

    .line 15
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 28
    const v0, 0x10e0057

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 34
    move-result v0

    .line 35
    if-eq v0, v2, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const v0, 0x1110163

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_3

    .line 47
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 48
    :cond_3
    return v1
.end method


# virtual methods
.method public handleCameraGesture(ZI)Z
    .locals 6

    .line 1
    const-wide/16 v0, 0x40

    .line 3
    const-string v2, "GestureLauncher:handleCameraGesture"

    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object v2

    .line 14
    const-string/jumbo v3, "user_setup_complete"

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, -0x2

    .line 19
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 25
    if-eqz p1, :cond_0

    .line 27
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 29
    const-wide/16 v2, 0x1f4

    .line 31
    invoke-virtual {p0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 39
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 45
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 47
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 49
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz p0, :cond_1

    .line 53
    :try_start_1
    invoke-interface {p0, p2}, Lcom/android/internal/statusbar/IStatusBar;->onCameraLaunchGestureDetected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :catch_0
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 59
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 64
    return v4

    .line 65
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 68
    throw p0
.end method

.method public handleEmergencyGesture()Z
    .locals 5

    .line 1
    const-wide/16 v0, 0x40

    .line 3
    const-string v2, "GestureLauncher:handleEmergencyGesture"

    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object p0

    .line 14
    const-string/jumbo v2, "user_setup_complete"

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, -0x2

    .line 19
    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 25
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 27
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 33
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 35
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 37
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-eqz p0, :cond_0

    .line 41
    :try_start_1
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->onEmergencyActionLaunchGestureDetected()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :catch_0
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 54
    return v3

    .line 55
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 58
    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 2

    .line 1
    const/16 v0, 0x258

    .line 3
    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 20
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 26
    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 28
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 30
    const-string/jumbo v0, "power"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/os/PowerManager;

    .line 39
    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    .line 41
    const/4 v0, 0x1

    .line 42
    const-string v1, "GestureLauncherService"

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 50
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 56
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateEmergencyGestureEnabled()V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateEmergencyGesturePowerButtonCooldownPeriodMs()V

    .line 62
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 65
    move-result p1

    .line 66
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 68
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    .line 72
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 74
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Lcom/android/server/GestureLauncherService$1;

    .line 79
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    .line 85
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 90
    move-result-object p0

    .line 91
    const-string p1, "android.hardware.type.watch"

    .line 93
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 96
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/GestureLauncherService;

    .line 3
    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public final registerContentObservers()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "camera_gesture_disabled"

    .line 10
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    move-result-object v1

    .line 14
    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 16
    const/4 v3, 0x0

    .line 17
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Lcom/android/server/GestureLauncherService$2;

    .line 19
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 22
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    move-result-object v0

    .line 28
    const-string/jumbo v1, "camera_double_tap_power_gesture_disabled"

    .line 31
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    move-result-object v1

    .line 35
    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 37
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 40
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    move-result-object v0

    .line 46
    const-string/jumbo v1, "camera_lift_trigger_enabled"

    .line 49
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    move-result-object v1

    .line 53
    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 55
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 58
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    move-result-object v0

    .line 64
    const-string/jumbo v1, "emergency_gesture_enabled"

    .line 67
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 70
    move-result-object v1

    .line 71
    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 73
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 76
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 81
    move-result-object v0

    .line 82
    const-string/jumbo v1, "emergency_gesture_power_button_cooldown_period_ms"

    .line 85
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 88
    move-result-object v1

    .line 89
    iget p0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 91
    invoke-virtual {v0, v1, v3, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 94
    return-void
.end method

.method public updateCameraDoubleTapPowerEnabled()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 3
    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    move-result-object v0

    .line 19
    const-string/jumbo v2, "camera_double_tap_power_gesture_disabled"

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 26
    move-result v0

    .line 27
    :cond_0
    monitor-enter p0

    .line 28
    :try_start_0
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v0
.end method

.method public final updateCameraRegistered()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 9
    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v3

    .line 15
    const v4, 0x10e0056

    .line 18
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 21
    move-result v3

    .line 22
    const/4 v5, 0x1

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, -0x1

    .line 25
    if-eq v3, v7, :cond_0

    .line 27
    const-string/jumbo v3, "gesture.disable_camera_launch"

    .line 30
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_0

    .line 36
    move v3, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v3, v6

    .line 39
    :goto_0
    const-string v8, " in the sensor."

    .line 41
    const-string v9, " in resources, "

    .line 43
    const-string v10, "Wrong configuration. Sensor type and sensor string type don\'t match: "

    .line 45
    iget-object v11, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 47
    const-string/jumbo v12, "sensor"

    .line 50
    if-eqz v3, :cond_3

    .line 52
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    move-result-object v1

    .line 56
    const-string/jumbo v3, "camera_gesture_disabled"

    .line 59
    invoke-static {v1, v3, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_3

    .line 65
    iget-boolean v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 67
    if-eqz v1, :cond_1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 73
    move-result-wide v1

    .line 74
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 76
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 78
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Landroid/hardware/SensorManager;

    .line 86
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 89
    move-result v2

    .line 90
    if-eq v2, v7, :cond_4

    .line 92
    iput-boolean v6, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 94
    const v3, 0x10402ef

    .line 97
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v1, v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 104
    move-result-object v2

    .line 105
    iput-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 107
    if-eqz v2, :cond_4

    .line 109
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 121
    invoke-virtual {v1, v11, v2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 124
    move-result v1

    .line 125
    iput-boolean v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 127
    goto :goto_1

    .line 128
    :cond_2
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 130
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    invoke-static {v10, v3, v9, p0, v8}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    .line 140
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 143
    throw v0

    .line 144
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 146
    if-eqz v1, :cond_4

    .line 148
    iput-boolean v6, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 150
    const-wide/16 v1, 0x0

    .line 152
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 154
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 156
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 158
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 160
    iput v6, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 162
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Landroid/hardware/SensorManager;

    .line 170
    invoke-virtual {v1, v11}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 173
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 175
    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 177
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 180
    move-result-object v3

    .line 181
    const v4, 0x10e0057

    .line 184
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 187
    move-result v3

    .line 188
    if-eq v3, v7, :cond_5

    .line 190
    move v3, v5

    .line 191
    goto :goto_2

    .line 192
    :cond_5
    move v3, v6

    .line 193
    :goto_2
    iget-object v11, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    .line 195
    if-eqz v3, :cond_8

    .line 197
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 200
    move-result-object v1

    .line 201
    const-string/jumbo v3, "camera_lift_trigger_enabled"

    .line 204
    invoke-static {v1, v3, v5, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_8

    .line 210
    iget-boolean v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 212
    if-eqz v1, :cond_6

    .line 214
    goto :goto_3

    .line 215
    :cond_6
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Landroid/hardware/SensorManager;

    .line 223
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 226
    move-result v2

    .line 227
    if-eq v2, v7, :cond_9

    .line 229
    iput-boolean v6, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 231
    const v3, 0x10402f0

    .line 234
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v1, v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 241
    move-result-object v2

    .line 242
    iput-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 244
    if-eqz v2, :cond_9

    .line 246
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_7

    .line 256
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 258
    invoke-virtual {v1, v11, v0}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 261
    move-result v0

    .line 262
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 264
    goto :goto_3

    .line 265
    :cond_7
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 267
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    .line 270
    move-result-object p0

    .line 271
    invoke-static {v10, v0, v9, p0, v8}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    move-result-object p0

    .line 275
    new-instance v0, Ljava/lang/RuntimeException;

    .line 277
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 280
    throw v0

    .line 281
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 283
    if-eqz v0, :cond_9

    .line 285
    iput-boolean v6, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 287
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 289
    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Landroid/hardware/SensorManager;

    .line 295
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 297
    invoke-virtual {v0, v11, p0}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 300
    :cond_9
    :goto_3
    return-void
.end method

.method public updateEmergencyGestureEnabled()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 3
    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v2

    .line 9
    const v3, 0x1110163

    .line 12
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v0

    .line 26
    const v3, 0x1110130

    .line 29
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 32
    move-result v0

    .line 33
    const-string/jumbo v3, "emergency_gesture_enabled"

    .line 36
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 39
    move-result v0

    .line 40
    :cond_0
    monitor-enter p0

    .line 41
    :try_start_0
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v0
.end method

.method public updateEmergencyGesturePowerButtonCooldownPeriodMs()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 3
    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 5
    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->getEmergencyGesturePowerButtonCooldownPeriodMs(Landroid/content/Context;I)I

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v0
.end method
