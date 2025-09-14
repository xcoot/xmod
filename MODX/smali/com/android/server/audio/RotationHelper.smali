.class public abstract Lcom/android/server/audio/RotationHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sContext:Landroid/content/Context;

.field public static sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

.field public static sFoldState:Ljava/lang/Boolean;

.field public static sFoldStateCallback:Ljava/util/function/Consumer;

.field public static sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field public static final sFoldStateLock:Ljava/lang/Object;

.field public static sHandler:Landroid/os/Handler;

.field public static sRotation:Ljava/lang/Integer;

.field public static sRotationCallback:Ljava/util/function/Consumer;

.field public static final sRotationLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    sput-object v0, Lcom/android/server/audio/RotationHelper;->sFoldStateLock:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public static disable()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v1, "display"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 12
    sget-object v1, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    .line 14
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 17
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    .line 19
    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 27
    sget-object v1, Lcom/android/server/audio/RotationHelper;->sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 29
    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 32
    return-void
.end method

.method public static enable()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v1, "display"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 12
    sget-object v1, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    .line 14
    sget-object v2, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 19
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 22
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    .line 24
    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 32
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 34
    sget-object v2, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    .line 36
    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 39
    sget-object v2, Lcom/android/server/audio/RotationHelper;->sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 44
    return-void
.end method

.method public static forceUpdate()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Lcom/android/server/audio/RotationHelper;->sRotation:Ljava/lang/Integer;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 11
    sget-object v1, Lcom/android/server/audio/RotationHelper;->sFoldStateLock:Ljava/lang/Object;

    .line 13
    monitor-enter v1

    .line 14
    :try_start_1
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sFoldState:Ljava/lang/Boolean;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    sget-object v2, Lcom/android/server/audio/RotationHelper;->sFoldStateCallback:Ljava/util/function/Consumer;

    .line 20
    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v1

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0

    .line 30
    :catchall_1
    move-exception v1

    .line 31
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    throw v1
.end method

.method public static updateOrientation()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 9
    move-result-object v0

    .line 10
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 12
    sget-object v2, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    sget-object v3, Lcom/android/server/audio/RotationHelper;->sRotation:Ljava/lang/Integer;

    .line 17
    if-eqz v3, :cond_0

    .line 19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v3

    .line 23
    if-eq v3, v0, :cond_5

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/android/server/audio/RotationHelper;->sRotation:Ljava/lang/Integer;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result v0

    .line 38
    const/4 v3, -0x1

    .line 39
    if-eqz v0, :cond_4

    .line 41
    const/4 v1, 0x1

    .line 42
    if-eq v0, v1, :cond_3

    .line 44
    const/4 v1, 0x2

    .line 45
    if-eq v0, v1, :cond_2

    .line 47
    const/4 v1, 0x3

    .line 48
    if-eq v0, v1, :cond_1

    .line 50
    const-string v0, "AudioService.RotationHelper"

    .line 52
    const-string v1, "Unknown device rotation"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    move v1, v3

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/16 v1, 0x10e

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/16 v1, 0xb4

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/16 v1, 0x5a

    .line 67
    :cond_4
    :goto_1
    if-eq v1, v3, :cond_5

    .line 69
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sRotationCallback:Ljava/util/function/Consumer;

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 78
    :cond_5
    monitor-exit v2

    .line 79
    return-void

    .line 80
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw v0
.end method
