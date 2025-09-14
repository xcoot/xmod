.class public final Lcom/android/server/StorageManagerService$MountObbAction;
.super Lcom/android/server/StorageManagerService$ObbAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallingUid:I

.field public final mObbInfo:Landroid/content/res/ObbInfo;

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;ILandroid/content/res/ObbInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    invoke-direct {p0, p2}, Lcom/android/server/StorageManagerService$ObbAction;-><init>(Lcom/android/server/StorageManagerService$ObbState;)V

    .line 6
    iput p3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mCallingUid:I

    .line 8
    iput-object p4, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

    .line 10
    return-void
.end method


# virtual methods
.method public final handleExecute()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 6
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 8
    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

    .line 10
    iget-object v7, v1, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    .line 12
    iget v3, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mCallingUid:I

    .line 14
    const/16 v1, 0x3e8

    .line 16
    const/4 v8, 0x1

    .line 17
    if-ne v3, v1, :cond_0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    move v0, v8

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 26
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 29
    move-result v4

    .line 30
    move-object v2, v0

    .line 31
    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 33
    const-wide/16 v5, 0x0

    .line 35
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->isSameApp(IIJLjava/lang/String;)Z

    .line 38
    move-result v0

    .line 39
    :goto_0
    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 43
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 45
    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 48
    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 50
    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 52
    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 54
    check-cast v1, Ljava/util/HashMap;

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    move-result v1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    if-nez v1, :cond_1

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 65
    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 67
    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 69
    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 71
    iget-object v3, v2, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    .line 73
    iget v2, v2, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    .line 75
    invoke-interface {v1, v3, v2}, Landroid/os/IVold;->createObb(Ljava/lang/String;I)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    iput-object v1, v0, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 83
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 85
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 87
    iget-object v1, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    .line 89
    const/4 v2, 0x0

    .line 90
    const/4 v3, 0x0

    .line 91
    const/4 v4, -0x1

    .line 92
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IVold;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 95
    iget-object v0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 97
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 99
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    :try_start_2
    iget-object v1, p0, Lcom/android/server/StorageManagerService$MountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 102
    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 104
    invoke-static {v1, v2}, Lcom/android/server/StorageManagerService;->-$$Nest$maddObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 107
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    invoke-virtual {p0, v8}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 111
    return-void

    .line 112
    :catch_0
    move-exception p0

    .line 113
    goto :goto_1

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 117
    :goto_1
    new-instance v0, Lcom/android/server/StorageManagerService$ObbException;

    .line 119
    const/16 v1, 0x15

    .line 121
    invoke-direct {v0, v1, p0}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/Throwable;)V

    .line 124
    throw v0

    .line 125
    :cond_1
    new-instance v0, Lcom/android/server/StorageManagerService$ObbException;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    const-string v2, "Attempt to mount OBB which is already mounted: "

    .line 131
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

    .line 136
    iget-object p0, p0, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    .line 138
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object p0

    .line 145
    const/16 v1, 0x18

    .line 147
    invoke-direct {v0, v1, p0}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    .line 150
    throw v0

    .line 151
    :catchall_1
    move-exception p0

    .line 152
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 153
    throw p0

    .line 154
    :cond_2
    new-instance v0, Lcom/android/server/StorageManagerService$ObbException;

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    const-string v2, "Denied attempt to mount OBB "

    .line 160
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

    .line 165
    iget-object v2, v2, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v2, " which is owned by "

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object p0, p0, Lcom/android/server/StorageManagerService$MountObbAction;->mObbInfo:Landroid/content/res/ObbInfo;

    .line 177
    iget-object p0, p0, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    .line 179
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object p0

    .line 186
    const/16 v1, 0x19

    .line 188
    invoke-direct {v0, v1, p0}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    .line 191
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "MountObbAction{"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const/16 p0, 0x7d

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
