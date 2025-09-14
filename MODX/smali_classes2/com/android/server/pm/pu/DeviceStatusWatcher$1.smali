.class public final Lcom/android/server/pm/pu/DeviceStatusWatcher$1;
.super Landroid/os/IThermalStatusListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$1;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IThermalStatusListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStatusChange(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$1;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$1;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 5
    .line 6
    iput p1, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalStatus:I

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/server/pm/pu/DeviceStatusWatcher;->isDexoptingAllowed()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$1;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/pm/pu/DexoptTrigger;->resumeOptimizing()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method
