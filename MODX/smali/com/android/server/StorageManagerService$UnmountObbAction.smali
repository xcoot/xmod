.class public final Lcom/android/server/StorageManagerService$UnmountObbAction;
.super Lcom/android/server/StorageManagerService$ObbAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mForceUnmount:Z

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    invoke-direct {p0, p2}, Lcom/android/server/StorageManagerService$ObbAction;-><init>(Lcom/android/server/StorageManagerService$ObbState;)V

    .line 6
    iput-boolean p3, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mForceUnmount:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final handleExecute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    sget-object v1, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 8
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 10
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 15
    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 17
    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 19
    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 21
    check-cast v1, Ljava/util/HashMap;

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    if-eqz v1, :cond_1

    .line 32
    iget v0, v1, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    .line 34
    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 36
    iget v2, v2, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    .line 38
    if-eq v0, v2, :cond_0

    .line 40
    new-instance v0, Lcom/android/server/StorageManagerService$ObbException;

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    const-string v3, "Permission denied to unmount OBB "

    .line 46
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v3, v1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v3, " (owned by GID "

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v1, v1, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    .line 61
    const-string v3, ")"

    .line 63
    invoke-static {v1, v2, v3}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    const/16 v2, 0x19

    .line 69
    invoke-direct {v0, v2, v1}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    .line 72
    const-string v1, "StorageManagerService"

    .line 74
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    iget v0, v0, Lcom/android/server/StorageManagerService$ObbException;->status:I

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(I)V

    .line 82
    return-void

    .line 83
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 85
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 87
    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 89
    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    .line 91
    invoke-interface {v0, v2}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 96
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 98
    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 100
    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    .line 102
    invoke-interface {v0, v2}, Landroid/os/IVold;->destroyObb(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 107
    const/4 v2, 0x0

    .line 108
    iput-object v2, v0, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 112
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 114
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    :try_start_2
    iget-object v2, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 117
    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService;->-$$Nest$mremoveObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 120
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    const/4 v0, 0x2

    .line 122
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 125
    return-void

    .line 126
    :catch_0
    move-exception p0

    .line 127
    goto :goto_0

    .line 128
    :catchall_0
    move-exception p0

    .line 129
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 131
    :goto_0
    new-instance v0, Lcom/android/server/StorageManagerService$ObbException;

    .line 133
    const/16 v1, 0x16

    .line 135
    invoke-direct {v0, v1, p0}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/Throwable;)V

    .line 138
    throw v0

    .line 139
    :cond_1
    new-instance p0, Lcom/android/server/StorageManagerService$ObbException;

    .line 141
    const/16 v0, 0x17

    .line 143
    const-string v1, "Missing existingState"

    .line 145
    invoke-direct {p0, v0, v1}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    .line 148
    throw p0

    .line 149
    :catchall_1
    move-exception p0

    .line 150
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 151
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "UnmountObbAction{"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ",force="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-boolean p0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mForceUnmount:Z

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    const/16 p0, 0x7d

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
