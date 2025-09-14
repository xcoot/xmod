.class public final Lcom/android/server/audio/LoudnessCodecHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final SPL_RANGE_LARGE:I = 0x3

.field static final SPL_RANGE_MEDIUM:I = 0x2

.field static final SPL_RANGE_SMALL:I = 0x1

.field static final SPL_RANGE_UNKNOWN:I

.field public static final sLogger:Lcom/android/server/utils/EventLogger;


# instance fields
.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public final mCachedProperties:Ljava/util/HashMap;

.field public final mLock:Ljava/lang/Object;

.field public final mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

.field public final mPiidToDeviceIdCache:Landroid/util/SparseIntArray;

.field public final mPiidToPidCache:Landroid/util/SparseIntArray;

.field public final mStartedConfigInfo:Ljava/util/HashMap;

.field public final mStartedConfigPiids:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 3
    const/16 v1, 0x1e

    .line 5
    const-string v2, "Loudness updates"

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 10
    sput-object v0, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;-><init>(Lcom/android/server/audio/LoudnessCodecHelper;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    .line 32
    new-instance v0, Landroid/util/SparseIntArray;

    .line 34
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToDeviceIdCache:Landroid/util/SparseIntArray;

    .line 39
    new-instance v0, Landroid/util/SparseIntArray;

    .line 41
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    .line 48
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-object v0, p1

    .line 57
    check-cast v0, Lcom/android/server/audio/AudioService;

    .line 59
    iput-object p1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 61
    return-void
.end method


# virtual methods
.method public final dispatchNewLoudnessParameters(ILandroid/os/PersistableBundle;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/media/ILoudnessCodecUpdatesDispatcher;

    .line 16
    invoke-interface {v2, p1, p2}, Landroid/media/ILoudnessCodecUpdatesDispatcher;->dispatchLoudnessCodecParameterChange(ILandroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    const-string v4, "Error dispatching for sessionId "

    .line 25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v4, " bundle: "

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    const-string v4, "AS.LoudnessCodecHelper"

    .line 45
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 54
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    const-string v0, "\nRegistered clients:\n"

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/util/Set;

    .line 37
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v3

    .line 41
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/Integer;

    .line 53
    iget-object v5, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    .line 55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v6

    .line 59
    const/4 v7, -0x1

    .line 60
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    .line 63
    move-result v5

    .line 64
    iget-object v6, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Ljava/util/Set;

    .line 76
    if-eqz v6, :cond_1

    .line 78
    const-string v7, "Player piid %d pid %d active codec types %s\n"

    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v5

    .line 84
    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 87
    move-result-object v6

    .line 88
    new-instance v8, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda0;

    .line 90
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 96
    move-result-object v6

    .line 97
    const-string v8, ", "

    .line 99
    invoke-static {v8}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 102
    move-result-object v8

    .line 103
    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 106
    move-result-object v6

    .line 107
    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    .line 110
    move-result-object v4

    .line 111
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    sget-object p0, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 130
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 133
    return-void

    .line 134
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    throw p0
.end method

.method public final getCodecBundle_l(ILjava/lang/String;Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 7
    move-result-object v3

    .line 8
    :try_start_0
    invoke-static {}, Landroid/media/audio/Flags;->automaticBtDeviceType()Z

    .line 11
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v5, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 14
    if-eqz v4, :cond_0

    .line 16
    :try_start_1
    invoke-virtual {v5, p2}, Lcom/android/server/audio/AudioService;->getBluetoothAudioDeviceCategory(Ljava/lang/String;)I

    .line 19
    move-result p2

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto/16 :goto_9

    .line 24
    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    .line 27
    move-result v4

    .line 28
    invoke-virtual {v5, p2, v4}, Lcom/android/server/audio/AudioService;->getBluetoothAudioDeviceCategory_legacy(Ljava/lang/String;Z)I

    .line 31
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_0
    if-eqz v3, :cond_1

    .line 34
    invoke-interface {v3}, Landroid/media/permission/SafeCloseable;->close()V

    .line 37
    :cond_1
    const/4 v3, 0x3

    .line 38
    const/4 v4, 0x6

    .line 39
    if-ne p1, v2, :cond_7

    .line 41
    const-string p1, "audio.loudness.builtin-speaker-spl-range-size"

    .line 43
    const-string/jumbo p2, "unknown"

    .line 46
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_5

    .line 56
    const/4 p2, -0x1

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 60
    move-result v5

    .line 61
    sparse-switch v5, :sswitch_data_0

    .line 64
    goto :goto_1

    .line 65
    :sswitch_0
    const-string/jumbo v5, "small"

    .line 68
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_2

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move p2, v2

    .line 76
    goto :goto_1

    .line 77
    :sswitch_1
    const-string/jumbo v5, "large"

    .line 80
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_3

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    move p2, v1

    .line 88
    goto :goto_1

    .line 89
    :sswitch_2
    const-string/jumbo v5, "medium"

    .line 92
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_4

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    move p2, v0

    .line 100
    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 103
    goto :goto_5

    .line 104
    :cond_5
    iget p1, v5, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 106
    if-ne p1, v3, :cond_6

    .line 108
    goto :goto_2

    .line 109
    :cond_6
    if-ne p1, v2, :cond_a

    .line 111
    :goto_2
    goto :goto_3

    .line 112
    :cond_7
    const/high16 v5, 0x4000000

    .line 114
    if-eq p1, v5, :cond_d

    .line 116
    const/16 v5, 0x8

    .line 118
    if-eq p1, v5, :cond_d

    .line 120
    const/4 v5, 0x4

    .line 121
    if-eq p1, v5, :cond_d

    .line 123
    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_8

    .line 129
    if-ne p2, v3, :cond_8

    .line 131
    goto :goto_6

    .line 132
    :cond_8
    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_c

    .line 138
    if-ne p2, v5, :cond_9

    .line 140
    :goto_3
    :pswitch_0
    move p1, v2

    .line 141
    goto :goto_7

    .line 142
    :cond_9
    const/4 p1, 0x5

    .line 143
    if-ne p2, p1, :cond_b

    .line 145
    :cond_a
    :goto_4
    :pswitch_1
    move p1, v1

    .line 146
    goto :goto_7

    .line 147
    :cond_b
    if-ne p2, v4, :cond_c

    .line 149
    goto :goto_4

    .line 150
    :cond_c
    :goto_5
    move p1, v0

    .line 151
    goto :goto_7

    .line 152
    :cond_d
    :goto_6
    :pswitch_2
    move p1, v3

    .line 153
    :goto_7
    iget-boolean p2, p3, Landroid/media/LoudnessCodecInfo;->isDownmixing:Z

    .line 155
    iget p3, p3, Landroid/media/LoudnessCodecInfo;->metadataType:I

    .line 157
    new-instance v5, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;

    .line 159
    invoke-direct {v5, p3, p1, p2}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;-><init>(IIZ)V

    .line 162
    iget-object v6, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    .line 164
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 167
    move-result v6

    .line 168
    if-eqz v6, :cond_e

    .line 170
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    .line 172
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    move-result-object p0

    .line 176
    check-cast p0, Landroid/os/PersistableBundle;

    .line 178
    return-object p0

    .line 179
    :cond_e
    new-instance v6, Landroid/os/PersistableBundle;

    .line 181
    invoke-direct {v6}, Landroid/os/PersistableBundle;-><init>()V

    .line 184
    const-string v7, "aac-drc-effect-type"

    .line 186
    const-string v8, "aac-drc-heavy-compression"

    .line 188
    const-string v9, "aac-target-ref-level"

    .line 190
    if-eq p1, v1, :cond_14

    .line 192
    const/16 v10, 0x60

    .line 194
    if-eq p1, v2, :cond_12

    .line 196
    if-eq p1, v3, :cond_10

    .line 198
    invoke-virtual {v6, v9, v10}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 201
    if-ne p3, v1, :cond_f

    .line 203
    invoke-virtual {v6, v8, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 206
    goto :goto_8

    .line 207
    :cond_f
    if-ne p3, v2, :cond_16

    .line 209
    invoke-virtual {v6, v7, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 212
    goto :goto_8

    .line 213
    :cond_10
    const/16 p1, 0x7c

    .line 215
    invoke-virtual {v6, v9, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 218
    if-ne p3, v1, :cond_11

    .line 220
    invoke-virtual {v6, v8, v0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 223
    goto :goto_8

    .line 224
    :cond_11
    if-ne p3, v2, :cond_16

    .line 226
    invoke-virtual {v6, v7, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 229
    goto :goto_8

    .line 230
    :cond_12
    invoke-virtual {v6, v9, v10}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 233
    if-ne p3, v1, :cond_13

    .line 235
    invoke-virtual {v6, v8, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 238
    goto :goto_8

    .line 239
    :cond_13
    if-ne p3, v2, :cond_16

    .line 241
    invoke-virtual {v6, v7, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 244
    goto :goto_8

    .line 245
    :cond_14
    const/16 p1, 0x40

    .line 247
    invoke-virtual {v6, v9, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 250
    if-ne p3, v1, :cond_15

    .line 252
    invoke-virtual {v6, v8, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 255
    goto :goto_8

    .line 256
    :cond_15
    if-ne p3, v2, :cond_16

    .line 258
    invoke-virtual {v6, v7, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 261
    :cond_16
    :goto_8
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    .line 263
    invoke-virtual {p0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-object v6

    .line 267
    :goto_9
    if-eqz v3, :cond_17

    .line 269
    :try_start_2
    invoke-interface {v3}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 272
    goto :goto_a

    .line 273
    :catchall_1
    move-exception p1

    .line 274
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 277
    :cond_17
    :goto_a
    throw p0

    .line 278
    nop

    .line 279
    :sswitch_data_0
    .sparse-switch
        -0x4041708b -> :sswitch_2
        0x61fbb3b -> :sswitch_1
        0x6879507 -> :sswitch_0
    .end sparse-switch

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getLoudnessParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 3
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 5
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioService;->getDevicesForAttributesInt(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 39
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    .line 41
    monitor-enter v1

    .line 42
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 45
    move-result v2

    .line 46
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/audio/LoudnessCodecHelper;->getCodecBundle_l(ILjava/lang/String;Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    .line 53
    move-result-object p0

    .line 54
    monitor-exit v1

    .line 55
    return-object p0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0

    .line 59
    :cond_0
    new-instance p0, Landroid/os/PersistableBundle;

    .line 61
    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    .line 64
    return-object p0
.end method
