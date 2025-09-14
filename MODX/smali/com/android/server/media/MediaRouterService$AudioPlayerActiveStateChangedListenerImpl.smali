.class public final Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;


# instance fields
.field public final mRestoreBluetoothA2dpRunnable:Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl$$ExternalSyntheticLambda0;

.field public final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 6
    new-instance v0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl$$ExternalSyntheticLambda0;

    .line 8
    invoke-direct {v0, p1}, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaRouterService;)V

    .line 11
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->mRestoreBluetoothA2dpRunnable:Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl$$ExternalSyntheticLambda0;

    .line 13
    return-void
.end method


# virtual methods
.method public final onAudioPlayerActiveStateChanged(Landroid/media/AudioPlaybackConfiguration;Z)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    .line 7
    move-result p2

    .line 8
    if-eqz p2, :cond_0

    .line 10
    move p2, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 19
    iget-object v2, v2, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    .line 21
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 24
    move-result v3

    .line 25
    invoke-virtual {v2, v3}, Landroid/util/IntArray;->indexOf(I)I

    .line 28
    move-result v2

    .line 29
    if-ltz v2, :cond_1

    .line 31
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 33
    iget-object v3, v3, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    .line 35
    invoke-virtual {v3, v2}, Landroid/util/IntArray;->remove(I)V

    .line 38
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 40
    iget-object v3, v3, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    .line 42
    invoke-virtual {v3, v2}, Landroid/util/IntArray;->remove(I)V

    .line 45
    :cond_1
    if-eqz p2, :cond_2

    .line 47
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 49
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    .line 51
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 54
    move-result p1

    .line 55
    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 58
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 60
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    .line 62
    invoke-virtual {p1, v1}, Landroid/util/IntArray;->add(I)V

    .line 65
    move p1, v1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 69
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    .line 71
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    .line 74
    move-result p1

    .line 75
    if-lez p1, :cond_3

    .line 77
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 79
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    .line 81
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    .line 84
    move-result v2

    .line 85
    sub-int/2addr v2, v0

    .line 86
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    .line 89
    move-result p1

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const/4 p1, -0x1

    .line 92
    :goto_1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 94
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    .line 96
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->mRestoreBluetoothA2dpRunnable:Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl$$ExternalSyntheticLambda0;

    .line 98
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    if-ltz p1, :cond_7

    .line 103
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 105
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 107
    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    .line 110
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 117
    move-result v3

    .line 118
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 124
    if-eqz v2, :cond_5

    .line 126
    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 128
    if-eqz v2, :cond_5

    .line 130
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 133
    move-result-object v2

    .line 134
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_5

    .line 140
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 146
    iget-object v4, v3, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

    .line 148
    invoke-virtual {p0, p1, v4}, Lcom/android/server/media/MediaRouterService;->validatePackageName$1(ILjava/lang/String;)Z

    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_4

    .line 154
    goto :goto_2

    .line 155
    :catchall_0
    move-exception p0

    .line 156
    goto :goto_4

    .line 157
    :cond_5
    const/4 v3, 0x0

    .line 158
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    if-eqz v3, :cond_6

    .line 161
    :try_start_1
    iget-object p0, v3, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    .line 163
    invoke-interface {p0}, Landroid/media/IMediaRouterClient;->onRestoreRoute()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    goto :goto_3

    .line 167
    :catch_0
    const-string p0, "MediaRouterService"

    .line 169
    const-string v0, "Failed to call onRestoreRoute. Client probably died."

    .line 171
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    goto :goto_3

    .line 175
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    .line 178
    :goto_3
    sget p0, Lcom/android/server/media/MediaRouterService;->$r8$clinit:I

    .line 180
    const-string p0, "MediaRouterService"

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v2, "onAudioPlayerActiveStateChanged: uid="

    .line 187
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, ", active="

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    const-string p2, ", restoreUid="

    .line 203
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {v0, p1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 209
    goto :goto_5

    .line 210
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    throw p0

    .line 212
    :cond_7
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 214
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    .line 216
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->mRestoreBluetoothA2dpRunnable:Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl$$ExternalSyntheticLambda0;

    .line 218
    const-wide/16 v2, 0x1f4

    .line 220
    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    sget p0, Lcom/android/server/media/MediaRouterService;->$r8$clinit:I

    .line 225
    const-string p0, "MediaRouterService"

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    .line 229
    const-string/jumbo v0, "onAudioPlayerActiveStateChanged: uid="

    .line 232
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const-string v0, ", active="

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 246
    const-string p2, ", delaying"

    .line 248
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object p1

    .line 255
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_5
    return-void
.end method
