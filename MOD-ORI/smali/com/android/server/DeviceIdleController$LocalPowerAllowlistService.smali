.class public final Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/PowerAllowlistInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public final unregisterTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method
