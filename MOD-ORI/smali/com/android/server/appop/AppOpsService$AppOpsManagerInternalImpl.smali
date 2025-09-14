.class public final Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;
.super Landroid/app/AppOpsManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/AppOpsManagerInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getOpRestrictionCount(ILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    move v5, v4

    .line 16
    :goto_0
    if-ge v4, v2, :cond_1

    .line 17
    .line 18
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 19
    .line 20
    iget-object v6, v6, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    move-object v7, v6

    .line 27
    check-cast v7, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    const/4 v10, 0x0

    .line 34
    move-object/from16 v8, p3

    .line 35
    .line 36
    move v9, p1

    .line 37
    move-object/from16 v12, p4

    .line 38
    .line 39
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->hasRestriction(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_3

    .line 52
    :cond_1
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    move v4, v3

    .line 61
    :goto_1
    if-ge v4, v2, :cond_4

    .line 62
    .line 63
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 64
    .line 65
    iget-object v6, v6, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    .line 72
    .line 73
    iget-object v7, v6, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 74
    .line 75
    iget-object v7, v7, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    .line 76
    .line 77
    iget-object v6, v6, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    .line 78
    .line 79
    check-cast v7, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    .line 80
    .line 81
    iget-object v7, v7, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    .line 82
    .line 83
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 88
    .line 89
    if-nez v6, :cond_2

    .line 90
    .line 91
    move v7, p1

    .line 92
    move v6, v3

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move v7, p1

    .line 95
    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    :goto_2
    if-eqz v6, :cond_3

    .line 100
    .line 101
    add-int/lit8 v5, v5, 0x1

    .line 102
    .line 103
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    monitor-exit v1

    .line 107
    return v5

    .line 108
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw v0
.end method

.method public final setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final setGlobalRestriction(IZLandroid/os/IBinder;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "setGlobalRestriction: code "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ne v1, v2, :cond_3

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    :try_start_1
    new-instance v2, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 32
    .line 33
    invoke-direct {v2, v3, p3}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    :try_start_2
    const-string v3, "AppOps"

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string/jumbo v0, "by Pid: "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-virtual {v0, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :catch_0
    monitor-exit v1

    .line 77
    return-void

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {v2, p1, p2}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->setRestriction(IZ)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 85
    .line 86
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 87
    .line 88
    new-instance v4, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;

    .line 89
    .line 90
    const/4 v5, 0x2

    .line 91
    invoke-direct {v4, v5}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    const/4 v6, -0x2

    .line 99
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-static {v4, v0, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 111
    .line 112
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 113
    .line 114
    new-instance v4, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;

    .line 115
    .line 116
    const/4 v5, 0x1

    .line 117
    invoke-direct {v4, v5}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    const/4 v5, -0x1

    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-static {v4, v0, p1, p2, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    .line 139
    .line 140
    :cond_1
    iget-object p1, v2, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    .line 143
    .line 144
    iget-object p2, v2, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    .line 145
    .line 146
    check-cast p1, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    .line 147
    .line 148
    iget-object p1, p1, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    .line 149
    .line 150
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    xor-int/lit8 p1, p1, 0x1

    .line 155
    .line 156
    if-eqz p1, :cond_2

    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    .line 161
    .line 162
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    iget-object p0, v2, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    .line 166
    .line 167
    const/4 p1, 0x0

    .line 168
    invoke-interface {p0, v2, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 169
    .line 170
    .line 171
    :cond_2
    monitor-exit v1

    .line 172
    return-void

    .line 173
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    throw p0

    .line 175
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 176
    .line 177
    const-string p1, "Only the system can set global restrictions"

    .line 178
    .line 179
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p0
.end method

.method public final setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget-object v4, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 25
    .line 26
    invoke-virtual {v4, v3, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1
.end method
