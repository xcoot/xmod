.class public final Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mOutstandingOps:Ljava/util/ArrayList;

.field public mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

.field public mServiceConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;

.field public final synthetic this$0:Lcom/android/server/storage/StorageUserConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/storage/StorageUserConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .line 1
    const-string v0, "Closing connection for user "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string v2, "StorageUserConnection"

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 14
    .line 15
    iget v0, v0, Lcom/android/server/storage/StorageUserConnection;->mUserId:I

    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iput-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_3

    .line 45
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/util/concurrent/CompletableFuture;

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 70
    .line 71
    .line 72
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    :try_start_1
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catch_0
    move-exception p0

    .line 84
    const-string v0, "StorageUserConnection"

    .line 85
    .line 86
    const-string v1, "Failed to unbind service"

    .line 87
    .line 88
    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_2
    return-void

    .line 92
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    throw p0
.end method

.method public final freeCache(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->waitForAsyncVoid(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "Failed to free "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, " bytes for volumeUuid : "

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final notifyAnrDelayStarted(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "StorageUserConnection"

    .line 9
    .line 10
    const-string p1, "Dropping async request service is not bound"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->getNow(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/service/storage/IExternalStorageService;

    .line 25
    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    const-string p0, "StorageUserConnection"

    .line 29
    .line 30
    const-string p1, "Dropping async request service is not connected"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x1

    .line 39
    :try_start_1
    invoke-interface {p0, p2, p1, v1, v2}, Landroid/service/storage/IExternalStorageService;->notifyAnrDelayStarted(Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    :try_start_2
    const-string p1, "StorageUserConnection"

    .line 45
    .line 46
    const-string p2, "Failed to notify ANR delay started"

    .line 47
    .line 48
    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    :goto_0
    monitor-exit v0

    .line 52
    :goto_1
    return-void

    .line 53
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw p0
.end method

.method public final waitForAsyncVoid(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/os/RemoteCallback;

    .line 9
    .line 10
    new-instance v3, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda3;

    .line 11
    .line 12
    invoke-direct {v3, v1, v2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CompletableFuture;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    .line 19
    .line 20
    const-string v4, "Failed to bind to the ExternalStorageService for user "

    .line 21
    .line 22
    const-string v5, "Bound to the ExternalStorageService for user "

    .line 23
    .line 24
    const-string v6, "Binding to the ExternalStorageService for user "

    .line 25
    .line 26
    iget-object v7, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 27
    .line 28
    iget-object v7, v7, Lcom/android/server/storage/StorageUserConnection;->mSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 29
    .line 30
    iget-object v7, v7, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServiceComponent:Landroid/content/ComponentName;

    .line 31
    .line 32
    if-eqz v7, :cond_2

    .line 33
    .line 34
    iget-object v8, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v8

    .line 37
    :try_start_0
    iget-object v9, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    .line 38
    .line 39
    if-eqz v9, :cond_0

    .line 40
    .line 41
    monitor-exit v8

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_0
    new-instance v9, Ljava/util/concurrent/CompletableFuture;

    .line 47
    .line 48
    invoke-direct {v9}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v10, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;

    .line 52
    .line 53
    invoke-direct {v10, v1, v9}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;-><init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CompletableFuture;)V

    .line 54
    .line 55
    .line 56
    iput-object v10, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;

    .line 57
    .line 58
    const-string v10, "StorageUserConnection"

    .line 59
    .line 60
    new-instance v11, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v6, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 66
    .line 67
    iget v6, v6, Lcom/android/server/storage/StorageUserConnection;->mUserId:I

    .line 68
    .line 69
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-static {v10, v6}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object v6, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 80
    .line 81
    iget-object v10, v6, Lcom/android/server/storage/StorageUserConnection;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    new-instance v6, Landroid/content/Intent;

    .line 84
    .line 85
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    iget-object v12, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;

    .line 93
    .line 94
    iget-object v6, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 95
    .line 96
    iget-object v6, v6, Lcom/android/server/storage/StorageUserConnection;->mHandlerThread:Landroid/os/HandlerThread;

    .line 97
    .line 98
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    iget-object v6, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 103
    .line 104
    iget v6, v6, Lcom/android/server/storage/StorageUserConnection;->mUserId:I

    .line 105
    .line 106
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 107
    .line 108
    .line 109
    move-result-object v15

    .line 110
    const/16 v13, 0x41

    .line 111
    .line 112
    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_1

    .line 117
    .line 118
    const-string v4, "StorageUserConnection"

    .line 119
    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v5, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 126
    .line 127
    iget v5, v5, Lcom/android/server/storage/StorageUserConnection;->mUserId:I

    .line 128
    .line 129
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    iput-object v9, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    .line 140
    .line 141
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :goto_0
    :try_start_1
    iget-object v4, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    .line 143
    .line 144
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 145
    :try_start_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 149
    :try_start_3
    new-instance v4, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda5;

    .line 150
    .line 151
    move-object/from16 v5, p1

    .line 152
    .line 153
    invoke-direct {v4, v5, v0, v2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;Landroid/os/RemoteCallback;Ljava/util/concurrent/CompletableFuture;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9, v4}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 161
    .line 162
    const-wide/16 v5, 0x14

    .line 163
    .line 164
    invoke-virtual {v0, v5, v6, v4}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 165
    .line 166
    .line 167
    iget-object v4, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    .line 168
    .line 169
    monitor-enter v4

    .line 170
    :try_start_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    monitor-exit v4

    .line 174
    return-void

    .line 175
    :catchall_1
    move-exception v0

    .line 176
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 177
    throw v0

    .line 178
    :catchall_2
    move-exception v0

    .line 179
    goto :goto_1

    .line 180
    :catchall_3
    move-exception v0

    .line 181
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 182
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 183
    :goto_1
    iget-object v1, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    .line 184
    .line 185
    monitor-enter v1

    .line 186
    :try_start_7
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 190
    throw v0

    .line 191
    :catchall_4
    move-exception v0

    .line 192
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 193
    throw v0

    .line 194
    :cond_1
    :try_start_9
    new-instance v0, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    .line 195
    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 202
    .line 203
    iget v1, v1, Lcom/android/server/storage/StorageUserConnection;->mUserId:I

    .line 204
    .line 205
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-direct {v0, v1}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v0

    .line 216
    :goto_2
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 217
    throw v0

    .line 218
    :cond_2
    new-instance v0, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    .line 219
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v3, "Not ready to bind to the ExternalStorageService for user "

    .line 223
    .line 224
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v1, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 228
    .line 229
    iget v1, v1, Lcom/android/server/storage/StorageUserConnection;->mUserId:I

    .line 230
    .line 231
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-direct {v0, v1}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw v0
.end method
