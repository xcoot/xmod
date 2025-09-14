.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceConfigProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 9
    .line 10
    const-string v1, "display_manager"

    .line 11
    .line 12
    const-string v2, "disable_screen_wake_locks_while_cached"

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-interface {v0, v1, v2, v3}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisableScreenWakeLocksWhileCached:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 22
    .line 23
    .line 24
    monitor-exit p1

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method
