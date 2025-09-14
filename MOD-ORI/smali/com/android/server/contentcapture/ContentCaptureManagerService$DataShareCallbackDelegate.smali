.class public final Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;
.super Landroid/service/contentcapture/IDataShareCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

.field public final mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

.field public final mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method public constructor <init>(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/service/contentcapture/IDataShareCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 17
    .line 18
    return-void
.end method

.method public static varargs bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p0, v1

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :catch_0
    move-exception v2

    .line 12
    const-string v3, "ContentCaptureManagerService"

    .line 13
    .line 14
    const-string v4, "Failed to close a file descriptor"

    .line 15
    .line 16
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public static createPipe()Landroid/util/Pair;
    .locals 6

    .line 1
    const-string v0, "ContentCaptureManagerService"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    array-length v3, v2

    .line 9
    const/4 v4, 0x2

    .line 10
    if-eq v3, v4, :cond_0

    .line 11
    .line 12
    const-string v2, "Failed to create a content capture data-sharing pipe, unexpected number of file descriptors"

    .line 13
    .line 14
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    aget-object v4, v2, v3

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    aget-object v5, v2, v4

    .line 33
    .line 34
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5}, Ljava/io/FileDescriptor;->valid()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    aget-object v0, v2, v3

    .line 46
    .line 47
    aget-object v1, v2, v4

    .line 48
    .line 49
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_0
    const-string v2, "Failed to create a content capture data-sharing pipe, didn\'t receive a pair of valid file descriptors."

    .line 55
    .line 56
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :catch_0
    move-exception v2

    .line 61
    const-string v3, "Failed to create a content capture data-sharing pipe"

    .line 62
    .line 63
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    return-object v1
.end method

.method public static sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V
    .locals 2

    .line 1
    const-string v0, "ContentCaptureManagerService"

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0, p2}, Landroid/view/contentcapture/IDataShareWriteAdapter;->error(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v1, "Failed to call error() the client operation"

    .line 9
    .line 10
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    :goto_0
    :try_start_1
    invoke-interface {p1, p2}, Landroid/service/contentcapture/IDataShareReadAdapter;->error(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catch_1
    move-exception p0

    .line 18
    const-string p1, "Failed to call error() the service operation"

    .line 19
    .line 20
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :goto_1
    return-void
.end method


# virtual methods
.method public final accept(Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .locals 12

    .line 1
    const-string v0, "ContentCaptureManagerService"

    .line 2
    .line 3
    const-string v1, "Data share request accepted by Content Capture service"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x7

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->createPipe()Landroid/util/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/16 v1, 0xc

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 25
    .line 26
    invoke-static {p0, p1, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 31
    .line 32
    move-object v6, v3

    .line 33
    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 34
    .line 35
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 36
    .line 37
    move-object v7, v0

    .line 38
    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 39
    .line 40
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->createPipe()Landroid/util/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/16 v3, 0xd

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x2

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 51
    .line 52
    .line 53
    new-array v0, v5, [Landroid/os/ParcelFileDescriptor;

    .line 54
    .line 55
    aput-object v6, v0, v4

    .line 56
    .line 57
    aput-object v7, v0, v2

    .line 58
    .line 59
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 63
    .line 64
    invoke-static {p0, p1, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 71
    .line 72
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 73
    .line 74
    move-object v9, v0

    .line 75
    check-cast v9, Landroid/os/ParcelFileDescriptor;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v10, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 83
    .line 84
    iget-object v10, v10, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mPackagesWithShareRequests:Ljava/util/Set;

    .line 85
    .line 86
    iget-object v11, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 87
    .line 88
    invoke-virtual {v11}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    check-cast v10, Ljava/util/HashSet;

    .line 93
    .line 94
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 99
    .line 100
    const-string v10, "ContentCaptureManagerService"

    .line 101
    .line 102
    :try_start_1
    invoke-interface {v0, v6}, Landroid/view/contentcapture/IDataShareWriteAdapter;->write(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    .line 104
    .line 105
    :try_start_2
    invoke-interface {p1, v9}, Landroid/service/contentcapture/IDataShareReadAdapter;->start(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    .line 107
    .line 108
    new-array v0, v5, [Landroid/os/ParcelFileDescriptor;

    .line 109
    .line 110
    aput-object v6, v0, v4

    .line 111
    .line 112
    aput-object v9, v0, v2

    .line 113
    .line 114
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDataShareExecutor:Ljava/util/concurrent/Executor;

    .line 120
    .line 121
    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0;

    .line 122
    .line 123
    invoke-direct {v1, p0, v7, v8, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mHandler:Landroid/os/Handler;

    .line 132
    .line 133
    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;

    .line 134
    .line 135
    move-object v4, v1

    .line 136
    move-object v5, p0

    .line 137
    move-object v10, p1

    .line 138
    invoke-direct/range {v4 .. v10}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V

    .line 139
    .line 140
    .line 141
    const-wide/32 p0, 0x493e0

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v1, "Failed to call start() the service operation"

    .line 150
    .line 151
    invoke-static {v10, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :catch_1
    move-exception v0

    .line 159
    const-string v3, "Failed to call write() the client operation"

    .line 160
    .line 161
    invoke-static {v10, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 165
    .line 166
    .line 167
    :goto_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 168
    .line 169
    invoke-static {v0, p1, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 170
    .line 171
    .line 172
    const/4 p1, 0x4

    .line 173
    new-array p1, p1, [Landroid/os/ParcelFileDescriptor;

    .line 174
    .line 175
    aput-object v6, p1, v4

    .line 176
    .line 177
    aput-object v7, p1, v2

    .line 178
    .line 179
    aput-object v8, p1, v5

    .line 180
    .line 181
    const/4 v0, 0x3

    .line 182
    aput-object v9, p1, v0

    .line 183
    .line 184
    invoke-static {p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 188
    .line 189
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 190
    .line 191
    monitor-enter p1

    .line 192
    :try_start_3
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 193
    .line 194
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mPackagesWithShareRequests:Ljava/util/Set;

    .line 195
    .line 196
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    check-cast v0, Ljava/util/HashSet;

    .line 203
    .line 204
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    monitor-exit p1

    .line 208
    return-void

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    throw p0

    .line 212
    :catchall_1
    move-exception p0

    .line 213
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 214
    throw p0
.end method

.method public final logServiceEvent(I)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/16 v1, 0xcf

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    move v2, p1

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final reject()V
    .locals 3

    .line 1
    const-string v0, "Data share request rejected by Content Capture service"

    .line 2
    .line 3
    const-string v1, "ContentCaptureManagerService"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 14
    .line 15
    invoke-interface {v0}, Landroid/view/contentcapture/IDataShareWriteAdapter;->rejected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    const-string v2, "Failed to call rejected() the client operation"

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :try_start_1
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-interface {p0, v0}, Landroid/view/contentcapture/IDataShareWriteAdapter;->error(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception p0

    .line 33
    const-string v0, "Failed to call error() the client operation"

    .line 34
    .line 35
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method
