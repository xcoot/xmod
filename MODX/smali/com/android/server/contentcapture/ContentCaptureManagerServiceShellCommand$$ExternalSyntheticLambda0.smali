.class public final synthetic Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/internal/os/IResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;ILcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

    iput p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/os/IResultReceiver;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;ILcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

    iput p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/os/IResultReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

    .line 8
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$1:I

    .line 10
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/os/IResultReceiver;

    .line 12
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const-string v2, "ContentCaptureManagerService"

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v4, "destroySessions() for userId "

    .line 24
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    .line 40
    iget-object v2, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 42
    monitor-enter v2

    .line 43
    const/4 v3, -0x1

    .line 44
    const/4 v4, 0x0

    .line 45
    if-eq v1, v3, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 53
    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroySessionsLocked()V

    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_3

    .line 61
    :cond_0
    iget-object v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 63
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 66
    move-result v1

    .line 67
    move v3, v4

    .line 68
    :goto_0
    if-ge v3, v1, :cond_2

    .line 70
    iget-object v5, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 72
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Ljava/util/List;

    .line 78
    move v6, v4

    .line 79
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 82
    move-result v7

    .line 83
    if-ge v6, v7, :cond_1

    .line 85
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v7

    .line 89
    check-cast v7, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 91
    check-cast v7, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 93
    invoke-virtual {v7}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroySessionsLocked()V

    .line 96
    add-int/lit8 v6, v6, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    .line 105
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    invoke-interface {p0, v4, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :catch_0
    return-void

    .line 112
    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    throw p0

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

    .line 116
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$1:I

    .line 118
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/os/IResultReceiver;

    .line 120
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    const-string v2, "ContentCaptureManagerService"

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v4, "listSessions() for userId "

    .line 132
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v3

    .line 142
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    .line 148
    new-instance v2, Landroid/os/Bundle;

    .line 150
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    .line 155
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v4, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 160
    monitor-enter v4

    .line 161
    const/4 v5, -0x1

    .line 162
    const/4 v6, 0x0

    .line 163
    if-eq v1, v5, :cond_3

    .line 165
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 171
    if-eqz v0, :cond_5

    .line 173
    invoke-virtual {v0, v3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->listSessionsLocked(Ljava/util/ArrayList;)V

    .line 176
    goto :goto_6

    .line 177
    :catchall_1
    move-exception p0

    .line 178
    goto :goto_7

    .line 179
    :cond_3
    iget-object v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 181
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 184
    move-result v1

    .line 185
    move v5, v6

    .line 186
    :goto_4
    if-ge v5, v1, :cond_5

    .line 188
    iget-object v7, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 190
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 193
    move-result-object v7

    .line 194
    check-cast v7, Ljava/util/List;

    .line 196
    move v8, v6

    .line 197
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 200
    move-result v9

    .line 201
    if-ge v8, v9, :cond_4

    .line 203
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 206
    move-result-object v9

    .line 207
    check-cast v9, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 209
    check-cast v9, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 211
    invoke-virtual {v9, v3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->listSessionsLocked(Ljava/util/ArrayList;)V

    .line 214
    add-int/lit8 v8, v8, 0x1

    .line 216
    goto :goto_5

    .line 217
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 219
    goto :goto_4

    .line 220
    :cond_5
    :goto_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 221
    const-string/jumbo v0, "sessions"

    .line 224
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 227
    :try_start_4
    invoke-interface {p0, v6, v2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 230
    :catch_1
    return-void

    .line 231
    :goto_7
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 232
    throw p0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
