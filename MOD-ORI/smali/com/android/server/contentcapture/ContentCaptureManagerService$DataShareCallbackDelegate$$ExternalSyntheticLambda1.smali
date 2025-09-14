.class public final synthetic Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

.field public final synthetic f$1:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$2:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$3:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$4:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$5:Landroid/service/contentcapture/IDataShareReadAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;->f$1:Landroid/os/ParcelFileDescriptor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;->f$2:Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;->f$3:Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;->f$4:Landroid/os/ParcelFileDescriptor;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;->f$5:Landroid/service/contentcapture/IDataShareReadAdapter;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;->f$1:Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;->f$2:Landroid/os/ParcelFileDescriptor;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;->f$3:Landroid/os/ParcelFileDescriptor;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;->f$4:Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;->f$5:Landroid/service/contentcapture/IDataShareReadAdapter;

    .line 12
    .line 13
    const-string v5, "Reached the timeout of Content Capture data sharing session for package \'"

    .line 14
    .line 15
    const-string v6, "Content capture data sharing session terminated successfully for package \'"

    .line 16
    .line 17
    iget-object v7, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 18
    .line 19
    iget-object v7, v7, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v7

    .line 22
    :try_start_0
    iget-object v8, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 23
    .line 24
    iget-object v8, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mPackagesWithShareRequests:Ljava/util/Set;

    .line 25
    .line 26
    iget-object v9, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 27
    .line 28
    invoke-virtual {v9}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    check-cast v8, Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->valid()Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v10, 0x1

    .line 47
    if-nez v8, :cond_0

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->valid()Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-nez v8, :cond_0

    .line 58
    .line 59
    move v8, v10

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :cond_0
    move v8, v9

    .line 64
    :goto_0
    if-eqz v8, :cond_2

    .line 65
    .line 66
    iget-object v5, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_1

    .line 73
    .line 74
    const/16 v5, 0x9

    .line 75
    .line 76
    invoke-virtual {v0, v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 77
    .line 78
    .line 79
    iget-object v5, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    invoke-virtual {v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    .line 83
    .line 84
    :cond_1
    const-string v5, "ContentCaptureManagerService"

    .line 85
    .line 86
    new-instance v11, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v6, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 92
    .line 93
    invoke-virtual {v6}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v6, "\'"

    .line 101
    .line 102
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    const/16 v6, 0xf

    .line 114
    .line 115
    invoke-virtual {v0, v6}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 116
    .line 117
    .line 118
    const-string v6, "ContentCaptureManagerService"

    .line 119
    .line 120
    new-instance v11, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v5, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 126
    .line 127
    invoke-virtual {v5}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v5, "\', terminating the pipe."

    .line 135
    .line 136
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :goto_1
    const/4 v5, 0x4

    .line 147
    new-array v5, v5, [Landroid/os/ParcelFileDescriptor;

    .line 148
    .line 149
    aput-object v1, v5, v9

    .line 150
    .line 151
    aput-object v2, v5, v10

    .line 152
    .line 153
    const/4 v1, 0x2

    .line 154
    aput-object v3, v5, v1

    .line 155
    .line 156
    const/4 v1, 0x3

    .line 157
    aput-object v4, v5, v1

    .line 158
    .line 159
    invoke-static {v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V

    .line 160
    .line 161
    .line 162
    if-nez v8, :cond_3

    .line 163
    .line 164
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 165
    .line 166
    invoke-static {v0, p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 167
    .line 168
    .line 169
    :cond_3
    monitor-exit v7

    .line 170
    return-void

    .line 171
    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    throw p0
.end method
