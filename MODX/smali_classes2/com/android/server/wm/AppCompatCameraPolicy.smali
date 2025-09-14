.class public final Lcom/android/server/wm/AppCompatCameraPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

.field public final mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

.field final mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

.field public final mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 7
    .line 8
    const-string v1, "enable_compat_camera_treatment"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->isBuildTimeFlagEnabled(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {}, Lcom/android/window/flags/Flags;->cameraCompatForFreeform()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    sget-boolean v2, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->ENFORCE_DEVICE_RESTRICTIONS:Z

    .line 23
    .line 24
    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingMode()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->enforceDeviceRestrictions()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-static {v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isDesktopModeSupported(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    :cond_0
    const/4 v1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v1, 0x0

    .line 45
    :goto_0
    const/4 v2, 0x0

    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 52
    .line 53
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    .line 54
    .line 55
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 56
    .line 57
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    :goto_1
    new-instance v3, Lcom/android/server/wm/CameraStateMonitor;

    .line 61
    .line 62
    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 63
    .line 64
    invoke-direct {v3, p2, v4}, Lcom/android/server/wm/CameraStateMonitor;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/os/Handler;)V

    .line 65
    .line 66
    .line 67
    iput-object v3, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 68
    .line 69
    new-instance v4, Lcom/android/server/wm/ActivityRefresher;

    .line 70
    .line 71
    iget-object v5, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 72
    .line 73
    invoke-direct {v4, p1, v5}, Lcom/android/server/wm/ActivityRefresher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V

    .line 74
    .line 75
    .line 76
    iput-object v4, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    new-instance p1, Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 81
    .line 82
    invoke-direct {p1, p2, v3, v4}, Lcom/android/server/wm/DisplayRotationCompatPolicy;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/ActivityRefresher;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move-object p1, v2

    .line 87
    :goto_2
    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    new-instance v2, Lcom/android/server/wm/CameraCompatFreeformPolicy;

    .line 92
    .line 93
    invoke-direct {v2, p2, v3, v4}, Lcom/android/server/wm/CameraCompatFreeformPolicy;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/ActivityRefresher;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    .line 97
    .line 98
    :goto_3
    return-void
.end method
