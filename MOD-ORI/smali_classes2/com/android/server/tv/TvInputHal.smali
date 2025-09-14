.class final Lcom/android/server/tv/TvInputHal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final DEBUG:Z = false

.field public static final ERROR_NO_INIT:I = -0x1

.field public static final ERROR_STALE_CONFIG:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x3

.field public static final EVENT_DEVICE_AVAILABLE:I = 0x1

.field public static final EVENT_DEVICE_UNAVAILABLE:I = 0x2

.field public static final EVENT_FIRST_FRAME_CAPTURED:I = 0x4

.field public static final EVENT_STREAM_CONFIGURATION_CHANGED:I = 0x3

.field public static final EVENT_TV_MESSAGE:I = 0x5

.field public static final SUCCESS:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mCallback:Lcom/android/server/tv/TvInputHal$Callback;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mPtr:J

.field public final mStreamConfigGenerations:Landroid/util/SparseIntArray;

.field public final mStreamConfigs:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/tv/TvInputHal;

    .line 2
    .line 3
    const-string v0, "TvInputHal"

    .line 4
    .line 5
    sput-object v0, Lcom/android/server/tv/TvInputHal;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHal$Callback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    .line 14
    .line 15
    new-instance v0, Landroid/util/SparseIntArray;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    .line 21
    .line 22
    new-instance v0, Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    .line 30
    .line 31
    new-instance p1, Landroid/os/Handler;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    .line 37
    .line 38
    return-void
.end method

.method private static native nativeAddOrUpdateStream(JIILandroid/view/Surface;)I
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGetStreamConfigs(JII)[Landroid/media/tv/TvStreamConfig;
.end method

.method private native nativeOpen(Landroid/os/MessageQueue;)J
.end method

.method private static native nativeRemoveStream(JII)I
.end method

.method private static native nativeSetTvMessageEnabled(JIIIZ)I
.end method


# virtual methods
.method public final addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long v1, v1, v3

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    const/4 p0, -0x1

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p3}, Landroid/media/tv/TvStreamConfig;->getGeneration()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eq v1, v3, :cond_1

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    const/4 p0, -0x2

    .line 32
    return p0

    .line 33
    :cond_1
    iget-wide v3, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/media/tv/TvStreamConfig;->getStreamId()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-static {v3, v4, p1, p0, p2}, Lcom/android/server/tv/TvInputHal;->nativeAddOrUpdateStream(JIILandroid/view/Surface;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return v2

    .line 47
    :cond_2
    monitor-exit v0

    .line 48
    const/4 p0, -0x3

    .line 49
    return p0

    .line 50
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long p0, v1, v3

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputHal;->nativeClose(J)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final deviceAvailableFromNative(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final deviceUnavailableFromNative(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final firstFrameCapturedFromNative(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_7

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_6

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq v0, v2, :cond_5

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    if-eq v0, v2, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eq v0, v2, :cond_0

    .line 18
    .line 19
    sget-object p0, Lcom/android/server/tv/TvInputHal;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Unknown event: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return v3

    .line 39
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 40
    .line 41
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 42
    .line 43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Landroid/os/Bundle;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    .line 48
    .line 49
    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v4

    .line 54
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Ljava/lang/String;

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    monitor-exit v4

    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object p1, v5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    .line 84
    .line 85
    const/16 p1, 0x8

    .line 86
    .line 87
    invoke-virtual {p0, p1, v2, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 92
    .line 93
    .line 94
    monitor-exit v4

    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0

    .line 99
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    .line 102
    .line 103
    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager;

    .line 104
    .line 105
    const-string v0, "FirstFrameCaptured: Cannot find a connection with "

    .line 106
    .line 107
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 108
    .line 109
    monitor-enter v2

    .line 110
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 117
    .line 118
    if-nez p0, :cond_3

    .line 119
    .line 120
    const-string p0, "TvInputHardwareManager"

    .line 121
    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    monitor-exit v2

    .line 138
    goto :goto_2

    .line 139
    :catchall_1
    move-exception p0

    .line 140
    goto :goto_1

    .line 141
    :cond_3
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    .line 142
    .line 143
    if-eqz p1, :cond_4

    .line 144
    .line 145
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 146
    .line 147
    .line 148
    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    .line 150
    .line 151
    :cond_4
    monitor-exit v2

    .line 152
    goto :goto_2

    .line 153
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    throw p0

    .line 155
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 156
    .line 157
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 158
    .line 159
    iget-object v2, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    .line 160
    .line 161
    monitor-enter v2

    .line 162
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputHal;->retrieveStreamConfigsLocked(I)V

    .line 163
    .line 164
    .line 165
    iget-object v3, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    .line 166
    .line 167
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, [Landroid/media/tv/TvStreamConfig;

    .line 172
    .line 173
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 174
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    .line 175
    .line 176
    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager;

    .line 177
    .line 178
    invoke-virtual {p0, v0, v3, p1}, Lcom/android/server/tv/TvInputHardwareManager;->onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;I)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :catchall_2
    move-exception p0

    .line 183
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 184
    throw p0

    .line 185
    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    .line 188
    .line 189
    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager;

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->onDeviceUnavailable(I)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p1, Landroid/media/tv/TvInputHardwareInfo;

    .line 198
    .line 199
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    .line 200
    .line 201
    monitor-enter v0

    .line 202
    :try_start_4
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputHal;->retrieveStreamConfigsLocked(I)V

    .line 207
    .line 208
    .line 209
    iget-object v2, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, [Landroid/media/tv/TvStreamConfig;

    .line 220
    .line 221
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 222
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    .line 223
    .line 224
    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager;

    .line 225
    .line 226
    invoke-virtual {p0, p1, v2}, Lcom/android/server/tv/TvInputHardwareManager;->onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V

    .line 227
    .line 228
    .line 229
    :goto_2
    return v1

    .line 230
    :catchall_3
    move-exception p0

    .line 231
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 232
    throw p0
.end method

.method public final init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputHal;->nativeOpen(Landroid/os/MessageQueue;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final removeStream(ILandroid/media/tv/TvStreamConfig;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long v1, v1, v3

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    const/4 p0, -0x1

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getGeneration()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eq v1, v3, :cond_1

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    const/4 p0, -0x2

    .line 32
    return p0

    .line 33
    :cond_1
    iget-wide v3, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getStreamId()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-static {v3, v4, p1, p0}, Lcom/android/server/tv/TvInputHal;->nativeRemoveStream(JII)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return v2

    .line 47
    :cond_2
    monitor-exit v0

    .line 48
    const/4 p0, -0x3

    .line 49
    return p0

    .line 50
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final retrieveStreamConfigsLocked(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    .line 13
    .line 14
    invoke-static {v2, v3, p1, v0}, Lcom/android/server/tv/TvInputHal;->nativeGetStreamConfigs(JII)[Landroid/media/tv/TvStreamConfig;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setTvMessageEnabled(ILandroid/media/tv/TvStreamConfig;IZ)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long v1, v1, v3

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    const/4 p0, -0x1

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getGeneration()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eq v1, v3, :cond_1

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    const/4 p0, -0x2

    .line 32
    return p0

    .line 33
    :cond_1
    iget-wide v3, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getStreamId()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    move v5, p1

    .line 40
    move v7, p3

    .line 41
    move v8, p4

    .line 42
    invoke-static/range {v3 .. v8}, Lcom/android/server/tv/TvInputHal;->nativeSetTvMessageEnabled(JIIIZ)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_2

    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return v2

    .line 50
    :cond_2
    monitor-exit v0

    .line 51
    const/4 p0, -0x3

    .line 52
    return p0

    .line 53
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final streamConfigsChangedFromNative(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final tvMessageReceivedFromNative(IILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
