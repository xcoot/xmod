.class public final Lcom/android/server/audio/AudioService$RoleObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mRm:Landroid/app/role/RoleManager;

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    const-string p2, "android.app.role.ASSISTANT"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService;->updateAssistantUIdLocked(Z)V

    .line 18
    .line 19
    .line 20
    monitor-exit p1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0

    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method public final register()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string/jumbo v1, "role"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/role/RoleManager;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 21
    .line 22
    invoke-virtual {v0, v1, p0, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->updateAssistantUIdLocked(Z)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0

    .line 41
    :cond_0
    :goto_0
    return-void
.end method
