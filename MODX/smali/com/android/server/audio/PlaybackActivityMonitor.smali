.class public final Lcom/android/server/audio/PlaybackActivityMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;
.implements Lcom/android/server/audio/PlayerFocusEnforcer;


# static fields
.field public static final ACTIVE_CHECK_PLAYER_TYPES:Ljava/util/Set;

.field public static final DUCK_ID:Landroid/media/VolumeShaper$Configuration;

.field public static final DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

.field public static final MUTE_AWAIT_CONNECTION_VSHAPE:Landroid/media/VolumeShaper$Configuration;

.field public static final PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

.field public static final PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

.field public static final STRONG_DUCK_ID:Landroid/media/VolumeShaper$Configuration;

.field public static final STRONG_DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

.field public static final TAGS_TO_NOT_MUTE_IN_CALL:Ljava/util/Set;

.field public static final UNDUCKABLE_PLAYER_TYPES:[I

.field public static final mGoodCatchSkipStream:Ljava/util/Set;

.field public static final mGoodCatchSystemUiStream:Ljava/util/Set;

.field public static final sEventLogger:Lcom/android/server/utils/EventLogger;


# instance fields
.field public final mAllowedCapturePolicies:Ljava/util/HashMap;

.field public mAudioHandler:Landroid/os/Handler;

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public final mBannedUids:Ljava/util/ArrayList;

.field public final mClients:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final mContext:Landroid/content/Context;

.field public final mDoNotLogPiidList:Ljava/util/ArrayList;

.field public final mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

.field public final mEventHandler:Lcom/android/server/audio/PlaybackActivityMonitor$1;

.field public final mEventThread:Landroid/os/HandlerThread;

.field public final mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

.field public mLastUpdateTime:J

.field public final mMaxAlarmVolume:I

.field public final mMuteAwaitConnectionTimeoutCb:Ljava/util/function/Consumer;

.field public final mMutedPlayers:Ljava/util/ArrayList;

.field public final mMutedPlayersAwaitingConnection:Ljava/util/ArrayList;

.field public mMutedUsagesAwaitingConnection:[I

.field public final mNotifierSoundAliveForDVFS:Lcom/android/server/audio/PlaybackActivityMonitor$2;

.field public final mPackageTimeMap:Ljava/util/HashMap;

.field public final mPlayerLock:Ljava/lang/Object;

.field public final mPlayers:Ljava/util/HashMap;

.field public final mPortIdToPiid:Landroid/util/SparseIntArray;

.field public mPrivilegedAlarmActiveCount:I

.field public mSavedAlarmVolume:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    .line 3
    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 14
    move-result-object v0

    .line 15
    const/high16 v3, 0x3f800000    # 1.0f

    .line 17
    const/4 v4, 0x2

    .line 18
    new-array v5, v4, [F

    .line 20
    fill-array-data v5, :array_0

    .line 23
    new-array v6, v4, [F

    .line 25
    fill-array-data v6, :array_1

    .line 28
    invoke-virtual {v0, v5, v6}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 35
    move-result-object v0

    .line 36
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    .line 38
    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 41
    const/4 v6, 0x5

    .line 42
    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 49
    move-result-object v5

    .line 50
    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl;->getFocusRampTimeMs(Landroid/media/AudioAttributes;)I

    .line 53
    move-result v5

    .line 54
    int-to-long v7, v5

    .line 55
    invoke-virtual {v0, v7, v8}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 65
    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    .line 67
    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    .line 70
    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_ID:Landroid/media/VolumeShaper$Configuration;

    .line 72
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    .line 74
    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 77
    const/4 v1, 0x4

    .line 78
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 81
    move-result-object v0

    .line 82
    new-array v5, v4, [F

    .line 84
    fill-array-data v5, :array_2

    .line 87
    new-array v7, v4, [F

    .line 89
    fill-array-data v7, :array_3

    .line 92
    invoke-virtual {v0, v5, v7}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 99
    move-result-object v0

    .line 100
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    .line 102
    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 105
    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 112
    move-result-object v5

    .line 113
    invoke-static {v5}, Lcom/android/server/audio/MediaFocusControl;->getFocusRampTimeMs(Landroid/media/AudioAttributes;)I

    .line 116
    move-result v5

    .line 117
    int-to-long v7, v5

    .line 118
    invoke-virtual {v0, v7, v8}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    .line 125
    move-result-object v0

    .line 126
    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->STRONG_DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 128
    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    .line 130
    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    .line 133
    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->STRONG_DUCK_ID:Landroid/media/VolumeShaper$Configuration;

    .line 135
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    .line 137
    sget-object v1, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    .line 139
    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 142
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->createIfNeeded()Landroid/media/VolumeShaper$Operation$Builder;

    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    .line 149
    move-result-object v0

    .line 150
    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    .line 152
    new-instance v1, Landroid/media/VolumeShaper$Configuration$Builder;

    .line 154
    invoke-direct {v1}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 157
    const/4 v5, 0x3

    .line 158
    invoke-virtual {v1, v5}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 161
    move-result-object v1

    .line 162
    new-array v7, v4, [F

    .line 164
    fill-array-data v7, :array_4

    .line 167
    new-array v8, v4, [F

    .line 169
    fill-array-data v8, :array_5

    .line 172
    invoke-virtual {v1, v7, v8}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 179
    move-result-object v1

    .line 180
    const-wide/16 v7, 0x64

    .line 182
    invoke-virtual {v1, v7, v8}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    .line 189
    move-result-object v1

    .line 190
    sput-object v1, Lcom/android/server/audio/PlaybackActivityMonitor;->MUTE_AWAIT_CONNECTION_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 192
    const/16 v1, 0xd

    .line 194
    filled-new-array {v1, v5}, [I

    .line 197
    move-result-object v1

    .line 198
    sput-object v1, Lcom/android/server/audio/PlaybackActivityMonitor;->UNDUCKABLE_PLAYER_TYPES:[I

    .line 200
    new-instance v1, Landroid/media/VolumeShaper$Operation$Builder;

    .line 202
    invoke-direct {v1, v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 205
    invoke-virtual {v1, v3}, Landroid/media/VolumeShaper$Operation$Builder;->setXOffset(F)Landroid/media/VolumeShaper$Operation$Builder;

    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    .line 212
    move-result-object v0

    .line 213
    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    .line 215
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 217
    const/16 v1, 0x64

    .line 219
    const-string/jumbo v3, "playback activity as reported through PlayerBase"

    .line 222
    invoke-direct {v0, v1, v3}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 225
    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 227
    new-instance v0, Ljava/util/ArrayDeque;

    .line 229
    const/16 v1, 0x32

    .line 231
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 234
    new-instance v0, Ljava/util/HashSet;

    .line 236
    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 239
    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->TAGS_TO_NOT_MUTE_IN_CALL:Ljava/util/Set;

    .line 241
    const-string v1, "AUDIO_STREAM_RING"

    .line 243
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v1, "NO_MUTE_IN_CALL"

    .line 248
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v0, Ljava/util/HashSet;

    .line 253
    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 256
    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->ACTIVE_CHECK_PLAYER_TYPES:Ljava/util/Set;

    .line 258
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v0, Ljava/util/HashSet;

    .line 270
    filled-new-array {v2}, [Ljava/lang/Integer;

    .line 273
    move-result-object v1

    .line 274
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 277
    move-result-object v1

    .line 278
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 281
    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->mGoodCatchSkipStream:Ljava/util/Set;

    .line 283
    new-instance v0, Ljava/util/HashSet;

    .line 285
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    move-result-object v1

    .line 289
    filled-new-array {v1}, [Ljava/lang/Integer;

    .line 292
    move-result-object v1

    .line 293
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 296
    move-result-object v1

    .line 297
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 300
    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->mGoodCatchSystemUiStream:Ljava/util/Set;

    .line 302
    return-void

    .line 303
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 311
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 319
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 327
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3c91ada7    # 0.017783f
    .end array-data

    .line 335
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 343
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;Lcom/android/server/audio/AudioService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    .line 27
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseIntArray;

    .line 32
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPortIdToPiid:Landroid/util/SparseIntArray;

    .line 37
    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    .line 40
    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    .line 43
    new-instance v0, Lcom/android/server/audio/FadeOutManager;

    .line 45
    invoke-direct {v0}, Lcom/android/server/audio/FadeOutManager;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    .line 59
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDoNotLogPiidList:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    .line 66
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    .line 80
    invoke-direct {v0}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    .line 87
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayersAwaitingConnection:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedUsagesAwaitingConnection:[I

    .line 95
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/android/server/audio/PlaybackActivityMonitor$2;

    .line 99
    invoke-direct {v0, p0}, Lcom/android/server/audio/PlaybackActivityMonitor$2;-><init>(Lcom/android/server/audio/PlaybackActivityMonitor;)V

    .line 102
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mNotifierSoundAliveForDVFS:Lcom/android/server/audio/PlaybackActivityMonitor$2;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    .line 106
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPackageTimeMap:Ljava/util/HashMap;

    .line 111
    const-wide/16 v0, 0x0

    .line 113
    iput-wide v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mLastUpdateTime:J

    .line 115
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mContext:Landroid/content/Context;

    .line 117
    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    .line 119
    sput-object p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->sListenerDeathMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 121
    sput-object p0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    .line 123
    iput-object p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMuteAwaitConnectionTimeoutCb:Ljava/util/function/Consumer;

    .line 125
    new-instance p1, Landroid/os/HandlerThread;

    .line 127
    const-string p2, "AS.PlaybackActivityMon"

    .line 129
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mEventThread:Landroid/os/HandlerThread;

    .line 134
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 137
    new-instance p1, Lcom/android/server/audio/PlaybackActivityMonitor$1;

    .line 139
    iget-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mEventThread:Landroid/os/HandlerThread;

    .line 141
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 144
    move-result-object p2

    .line 145
    invoke-direct {p1, p0, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$1;-><init>(Lcom/android/server/audio/PlaybackActivityMonitor;Landroid/os/Looper;)V

    .line 148
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mEventHandler:Lcom/android/server/audio/PlaybackActivityMonitor$1;

    .line 150
    iput-object p4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 152
    return-void
.end method

.method public static anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 22
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 28
    invoke-static {v1}, Landroid/media/AudioPlaybackConfiguration;->anonymizedCopy(Landroid/media/AudioPlaybackConfiguration;)Landroid/media/AudioPlaybackConfiguration;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v0
.end method

.method public static checkBanPlayer(Landroid/media/AudioPlaybackConfiguration;I)Z
    .locals 6

    .line 1
    const-string v0, " uid:"

    .line 3
    const-string v1, "AS.PlaybackActivityMon"

    .line 5
    const-string v2, "banning player "

    .line 7
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 10
    move-result v3

    .line 11
    if-ne v3, p1, :cond_0

    .line 13
    const/4 v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-eqz v3, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 21
    move-result v4

    .line 22
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/media/PlayerProxy;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p0

    .line 52
    const-string/jumbo v2, "error banning player "

    .line 55
    invoke-static {v4, p1, v2, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :cond_1
    :goto_1
    return v3
.end method

.method public static checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 10
    move-result p1

    .line 11
    if-eq p1, p2, :cond_1

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "Forbidden operation from uid "

    .line 17
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string p2, " for player "

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    const-string p1, "AS.PlaybackActivityMon"

    .line 37
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return v0

    .line 41
    :cond_1
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public static checkMuteStrategy(Landroid/media/AudioPlaybackConfiguration;Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 26
    sget-object v3, Lcom/android/server/audio/PlaybackActivityMonitor;->TAGS_TO_NOT_MUTE_IN_CALL:Ljava/util/Set;

    .line 28
    check-cast v3, Ljava/util/HashSet;

    .line 30
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 36
    return v2

    .line 37
    :cond_1
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->ACTIVE_CHECK_PLAYER_TYPES:Ljava/util/Set;

    .line 39
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v1

    .line 47
    check-cast v0, Ljava/util/HashSet;

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_2

    .line 61
    return v2

    .line 62
    :cond_2
    return p1
.end method


# virtual methods
.method public final cancelMuteAwaitConnection(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "cancelMuteAwaitConnection() from:"

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x0

    .line 19
    const-string v2, "AS.PlaybackActivityMon"

    .line 21
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 26
    monitor-enter p1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mEventHandler:Lcom/android/server/audio/PlaybackActivityMonitor$1;

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/server/audio/PlaybackActivityMonitor;->unmutePlayersExpectingDevice()V

    .line 36
    monitor-exit p1

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne p2, v0, :cond_0

    .line 4
    return-void

    .line 5
    :cond_0
    const/4 v0, 0x2

    .line 6
    if-eq p2, v0, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    .line 11
    move-result v1

    .line 12
    if-ne v1, v0, :cond_3

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getAllFlags()I

    .line 21
    move-result v1

    .line 22
    const/16 v2, 0xc0

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_3

    .line 27
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x4

    .line 36
    if-ne v1, v2, :cond_3

    .line 38
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    .line 43
    move-result v3

    .line 44
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 47
    move-result v4

    .line 48
    const-string v5, "android.permission.MODIFY_PHONE_STATE"

    .line 50
    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_3

    .line 56
    if-ne p2, v0, :cond_2

    .line 58
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    .line 61
    move-result v1

    .line 62
    if-eq v1, v0, :cond_2

    .line 64
    iget p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    .line 66
    add-int/lit8 p2, p1, 0x1

    .line 68
    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    .line 70
    if-nez p1, :cond_3

    .line 72
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getStreamVolumeIndex(II)I

    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    .line 78
    iget p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    .line 80
    invoke-static {v2, p0, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    if-eq p2, v0, :cond_3

    .line 86
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    .line 89
    move-result p1

    .line 90
    if-ne p1, v0, :cond_3

    .line 92
    iget p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    .line 94
    add-int/lit8 p1, p1, -0x1

    .line 96
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    .line 98
    if-nez p1, :cond_3

    .line 100
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getStreamVolumeIndex(II)I

    .line 103
    move-result p1

    .line 104
    iget p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    .line 106
    if-ne p1, p2, :cond_3

    .line 108
    iget p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    .line 110
    invoke-static {v2, p0, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    .line 113
    :cond_3
    :goto_0
    return-void
.end method

.method public final clearTransientFadeManagerConfiguration()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    .line 3
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/media/audiopolicy/Flags;->enableFadeManagerConfiguration()Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/4 v2, 0x0

    .line 22
    :try_start_1
    iput-object v2, p0, Lcom/android/server/audio/FadeConfigurations;->mTransientFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 24
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;

    .line 27
    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 30
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :catchall_1
    move-exception p0

    .line 36
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 37
    :try_start_4
    throw p0

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 39
    throw p0
.end method

.method public final disableAudioForUid(IZ)V
    .locals 5

    .line 1
    const-string/jumbo v0, "unbanning uid:"

    .line 4
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    .line 9
    new-instance v3, Ljava/lang/Integer;

    .line 11
    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 14
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 17
    move-result v2

    .line 18
    if-ltz v2, :cond_0

    .line 20
    if-nez p2, :cond_2

    .line 22
    sget-object p2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 24
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v3, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 44
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    if-eqz p2, :cond_2

    .line 54
    iget-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 56
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 59
    move-result-object p2

    .line 60
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object p2

    .line 64
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 70
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    .line 76
    invoke-static {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkBanPlayer(Landroid/media/AudioPlaybackConfiguration;I)Z

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    sget-object p2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 82
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string v3, "banning uid:"

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 101
    invoke-direct {v0, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 107
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    .line 109
    new-instance p2, Ljava/lang/Integer;

    .line 111
    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 114
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    :goto_1
    monitor-exit v1

    .line 118
    return-void

    .line 119
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    throw p0
.end method

.method public final dispatchPlaybackChange(Z)V
    .locals 6

    .line 1
    const-string v0, "AS.PlaybackActivityMon"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "dispatchPlaybackChange to "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, " clients"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 37
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 49
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 56
    move-result-object v1

    .line 57
    new-instance v2, Lcom/android/server/audio/PlaybackActivityMonitor$$ExternalSyntheticLambda0;

    .line 59
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 77
    move-result-object v1

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 81
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object p0

    .line 85
    const/4 v0, 0x0

    .line 86
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_5

    .line 92
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    .line 98
    monitor-enter v2

    .line 99
    :try_start_1
    iget v3, v2, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 101
    const/4 v4, 0x5

    .line 102
    const/4 v5, 0x0

    .line 103
    if-lt v3, v4, :cond_2

    .line 105
    const/4 v3, 0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    move v3, v5

    .line 108
    :goto_1
    monitor-exit v2

    .line 109
    if-nez v3, :cond_1

    .line 111
    monitor-enter v2

    .line 112
    :try_start_2
    iget-boolean v3, v2, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    monitor-exit v2

    .line 115
    if-eqz v3, :cond_3

    .line 117
    invoke-virtual {v2, v1, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->dispatchPlaybackConfigChange(Ljava/util/List;Z)V

    .line 120
    goto :goto_0

    .line 121
    :cond_3
    if-nez v0, :cond_4

    .line 123
    invoke-static {v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    .line 126
    move-result-object v0

    .line 127
    :cond_4
    invoke-virtual {v2, v0, v5}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->dispatchPlaybackConfigChange(Ljava/util/List;Z)V

    .line 130
    goto :goto_0

    .line 131
    :catchall_1
    move-exception p0

    .line 132
    monitor-exit v2

    .line 133
    throw p0

    .line 134
    :catchall_2
    move-exception p0

    .line 135
    monitor-exit v2

    .line 136
    throw p0

    .line 137
    :cond_5
    return-void

    .line 138
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    throw p0
.end method

.method public final duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z
    .locals 9

    .line 1
    const-string v0, "AS.PlaybackActivityMon"

    .line 3
    const-string/jumbo v1, "duckPlayers: uids winner=%d loser=%d"

    .line 6
    iget v2, p1, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    iget v3, p2, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v3

    .line 18
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 34
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x1

    .line 39
    if-eqz v1, :cond_0

    .line 41
    monitor-exit v0

    .line 42
    return v2

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto/16 :goto_2

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 48
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v1

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v4

    .line 65
    const/4 v5, 0x0

    .line 66
    if-eqz v4, :cond_7

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 74
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 77
    move-result v6

    .line 78
    invoke-virtual {p1, v6}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    .line 81
    move-result v6

    .line 82
    if-nez v6, :cond_1

    .line 84
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 87
    move-result v6

    .line 88
    invoke-virtual {p2, v6}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_1

    .line 94
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    .line 97
    move-result v6

    .line 98
    const/4 v7, 0x2

    .line 99
    if-ne v6, v7, :cond_1

    .line 101
    if-nez p3, :cond_2

    .line 103
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6}, Landroid/media/AudioAttributes;->getContentType()I

    .line 110
    move-result v6

    .line 111
    if-ne v6, v2, :cond_2

    .line 113
    const-string p0, "AS.PlaybackActivityMon"

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    const-string/jumbo p2, "not ducking player "

    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 129
    move-result p2

    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string p2, " uid:"

    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 141
    move-result p2

    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string p2, " pid:"

    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    .line 153
    move-result p2

    .line 154
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string p2, " - SPEECH"

    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 166
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    monitor-exit v0

    .line 170
    return v5

    .line 171
    :cond_2
    sget-object v6, Lcom/android/server/audio/PlaybackActivityMonitor;->UNDUCKABLE_PLAYER_TYPES:[I

    .line 173
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    .line 176
    move-result v7

    .line 177
    invoke-static {v6, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 180
    move-result v6

    .line 181
    if-eqz v6, :cond_3

    .line 183
    const-string p0, "AS.PlaybackActivityMon"

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    .line 187
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    const-string/jumbo p2, "not ducking player "

    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 199
    move-result p2

    .line 200
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    const-string p2, " uid:"

    .line 205
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 211
    move-result p2

    .line 212
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    const-string p2, " pid:"

    .line 217
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    .line 223
    move-result p2

    .line 224
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const-string p2, " due to type:"

    .line 229
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    .line 235
    move-result p2

    .line 236
    invoke-static {p2}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    .line 239
    move-result-object p2

    .line 240
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object p1

    .line 247
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    monitor-exit v0

    .line 251
    return v5

    .line 252
    :cond_3
    iget-object v6, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    .line 256
    const-string v8, "Ignore Ducking By AllApps = "

    .line 258
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    iget-boolean v8, v6, Lcom/android/server/audio/AudioService;->mIgnoreDuckingByAllApps:Z

    .line 263
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object v7

    .line 270
    const-string v8, "AS.AudioService"

    .line 272
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-boolean v6, v6, Lcom/android/server/audio/AudioService;->mIgnoreDuckingByAllApps:Z

    .line 277
    if-eqz v6, :cond_4

    .line 279
    const-string p0, "AS.PlaybackActivityMon"

    .line 281
    const-string/jumbo p1, "not duckPlayers - IgnoreDuckingBy ALL Apps "

    .line 284
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    monitor-exit v0

    .line 288
    return v5

    .line 289
    :cond_4
    iget-object v6, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    .line 293
    const-string v8, " Ignore Ducking By Navigation = "

    .line 295
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    iget-boolean v8, v6, Lcom/android/server/audio/AudioService;->mIgnoreDuckingByNavigation:Z

    .line 300
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    move-result-object v7

    .line 307
    const-string v8, "AS.AudioService"

    .line 309
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-boolean v6, v6, Lcom/android/server/audio/AudioService;->mIgnoreDuckingByNavigation:Z

    .line 314
    if-eqz v6, :cond_6

    .line 316
    iget-object v6, p1, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 318
    invoke-virtual {v6}, Landroid/media/AudioAttributes;->getUsage()I

    .line 321
    move-result v6

    .line 322
    const/16 v7, 0xc

    .line 324
    if-eq v6, v7, :cond_5

    .line 326
    iget-object v6, p1, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 328
    invoke-virtual {v6}, Landroid/media/AudioAttributes;->getUsage()I

    .line 331
    move-result v6

    .line 332
    if-ne v6, v2, :cond_6

    .line 334
    iget-object v6, p1, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 336
    invoke-virtual {v6}, Landroid/media/AudioAttributes;->getContentType()I

    .line 339
    move-result v6

    .line 340
    if-ne v6, v2, :cond_6

    .line 342
    :cond_5
    const-string p0, "AS.PlaybackActivityMon"

    .line 344
    const-string/jumbo p1, "not duckPlayers - IgnoreDucking By Navigation "

    .line 347
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    monitor-exit v0

    .line 351
    return v5

    .line 352
    :cond_6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    goto/16 :goto_0

    .line 357
    :cond_7
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    .line 359
    iget p2, p2, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 361
    iget p3, p1, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 363
    const/4 v1, 0x3

    .line 364
    if-eq p3, v1, :cond_8

    .line 366
    goto :goto_1

    .line 367
    :cond_8
    iget-object p1, p1, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 369
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    .line 372
    move-result p1

    .line 373
    const/16 p3, 0x10

    .line 375
    if-ne p1, p3, :cond_9

    .line 377
    move v5, v2

    .line 378
    :cond_9
    :goto_1
    invoke-virtual {p0, p2, v3, v5}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->duckUid(ILjava/util/ArrayList;Z)V

    .line 381
    monitor-exit v0

    .line 382
    return v2

    .line 383
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "\nPlaybackActivityMonitor dump time: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/util/Date;

    .line 14
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 17
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    const-string v1, "\n  playback listeners:"

    .line 36
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v1

    .line 45
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string v4, " "

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto/16 :goto_b

    .line 81
    :cond_0
    const-string v1, "\n"

    .line 83
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v1, "\n  players:"

    .line 88
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    .line 93
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 95
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 98
    move-result-object v2

    .line 99
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object v1

    .line 109
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_3

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Ljava/lang/Integer;

    .line 121
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 123
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 129
    if-eqz v2, :cond_1

    .line 131
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDoNotLogPiidList:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 136
    move-result v4

    .line 137
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_2

    .line 147
    const-string v3, "(not logged)"

    .line 149
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    :cond_2
    invoke-virtual {v2, p1}, Landroid/media/AudioPlaybackConfiguration;->dump(Ljava/io/PrintWriter;)V

    .line 155
    goto :goto_1

    .line 156
    :cond_3
    const-string v1, "\n  ducked players piids:"

    .line 158
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    .line 163
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :try_start_1
    iget-object v2, v1, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    .line 166
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 169
    move-result-object v2

    .line 170
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 173
    move-result-object v2

    .line 174
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_4

    .line 180
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    move-result-object v3

    .line 184
    check-cast v3, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;

    .line 186
    invoke-virtual {v3, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->dump(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    goto :goto_2

    .line 190
    :catchall_1
    move-exception p0

    .line 191
    goto/16 :goto_a

    .line 193
    :cond_4
    :try_start_2
    monitor-exit v1

    .line 194
    const-string v1, "\n  faded out players piids:"

    .line 196
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    .line 201
    iget-object v2, v1, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    .line 203
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    const/4 v3, 0x0

    .line 205
    :goto_3
    :try_start_3
    iget-object v4, v1, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    .line 207
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 210
    move-result v4

    .line 211
    if-ge v3, v4, :cond_5

    .line 213
    iget-object v4, v1, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    .line 215
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 218
    move-result-object v4

    .line 219
    check-cast v4, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    .line 221
    invoke-virtual {v4, p1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->dump(Ljava/io/PrintWriter;)V

    .line 224
    add-int/lit8 v3, v3, 0x1

    .line 226
    goto :goto_3

    .line 227
    :catchall_2
    move-exception p0

    .line 228
    goto/16 :goto_9

    .line 230
    :cond_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 231
    :try_start_4
    const-string v1, "\n  muted player piids due to call/ring:"

    .line 233
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 241
    move-result-object v1

    .line 242
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_6

    .line 248
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    move-result-object v2

    .line 252
    check-cast v2, Ljava/lang/Integer;

    .line 254
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 257
    move-result v2

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    .line 260
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    const-string v4, " "

    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    goto :goto_4

    .line 279
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 282
    const-string v1, "\n  banned uids:"

    .line 284
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 292
    move-result-object v1

    .line 293
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_7

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    move-result-object v2

    .line 303
    check-cast v2, Ljava/lang/Integer;

    .line 305
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 308
    move-result v2

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    .line 311
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    const-string v4, " "

    .line 316
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object v2

    .line 326
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    goto :goto_5

    .line 330
    :cond_7
    const-string v1, "\n"

    .line 332
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    const-string v1, "\n  muted players (piids) awaiting device connection:"

    .line 337
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayersAwaitingConnection:Ljava/util/ArrayList;

    .line 342
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 345
    move-result-object v1

    .line 346
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 349
    move-result v2

    .line 350
    if-eqz v2, :cond_8

    .line 352
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 355
    move-result-object v2

    .line 356
    check-cast v2, Ljava/lang/Integer;

    .line 358
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 361
    move-result v2

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    .line 364
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    const-string v4, " "

    .line 369
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    goto :goto_6

    .line 383
    :cond_8
    const-string v1, "\n"

    .line 385
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    sget-object v1, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 390
    invoke-virtual {v1, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 393
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 394
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    .line 396
    monitor-enter v1

    .line 397
    :try_start_5
    const-string v0, "\n  allowed capture policies:"

    .line 399
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    .line 404
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 407
    move-result-object p0

    .line 408
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 411
    move-result-object p0

    .line 412
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 415
    move-result v0

    .line 416
    if-eqz v0, :cond_9

    .line 418
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 421
    move-result-object v0

    .line 422
    check-cast v0, Ljava/util/Map$Entry;

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    .line 426
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    const-string v3, "  uid: "

    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 437
    move-result-object v3

    .line 438
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 441
    const-string v3, " policy: "

    .line 443
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    goto :goto_7

    .line 461
    :catchall_3
    move-exception p0

    .line 462
    goto :goto_8

    .line 463
    :cond_9
    monitor-exit v1

    .line 464
    return-void

    .line 465
    :goto_8
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 466
    throw p0

    .line 467
    :goto_9
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 468
    :try_start_7
    throw p0

    .line 469
    :goto_a
    monitor-exit v1

    .line 470
    throw p0

    .line 471
    :goto_b
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 472
    throw p0
.end method

.method public final fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z
    .locals 12

    .line 1
    const-string v0, "AS.PlaybackActivityMon"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "fadeOutPlayers: winner="

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v2, p1, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, " loser="

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v2, p2, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 38
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v1, :cond_0

    .line 45
    const-string p0, "AS.PlaybackActivityMon"

    .line 47
    const-string/jumbo p1, "no players to fade out"

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    monitor-exit v0

    .line 54
    return v2

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto/16 :goto_2

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iget-object v1, p1, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 65
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getContentType()I

    .line 68
    move-result v1

    .line 69
    const-string v3, "AS.FadeOutManager"

    .line 71
    const/4 v4, 0x1

    .line 72
    if-ne v1, v4, :cond_1

    .line 74
    const-string/jumbo p0, "not fading out: new focus is for speech"

    .line 77
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget v1, p2, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 83
    const/4 v5, 0x2

    .line 84
    and-int/2addr v1, v5

    .line 85
    if-eqz v1, :cond_2

    .line 87
    const-string/jumbo p0, "not fading out: loser has PAUSES_ON_DUCKABLE_LOSS"

    .line 90
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    monitor-exit v0

    .line 94
    return v2

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 97
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 100
    move-result-object v1

    .line 101
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object v1

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    .line 107
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    move v6, v2

    .line 111
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    move-result v7

    .line 115
    if-eqz v7, :cond_5

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v7

    .line 121
    check-cast v7, Landroid/media/AudioPlaybackConfiguration;

    .line 123
    invoke-virtual {v7}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 126
    move-result v8

    .line 127
    invoke-virtual {p1, v8}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    .line 130
    move-result v8

    .line 131
    if-nez v8, :cond_3

    .line 133
    invoke-virtual {v7}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 136
    move-result v8

    .line 137
    invoke-virtual {p2, v8}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    .line 140
    move-result v8

    .line 141
    if-eqz v8, :cond_3

    .line 143
    invoke-virtual {v7}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    .line 146
    move-result v8

    .line 147
    if-ne v8, v5, :cond_3

    .line 149
    iget-object v6, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    .line 151
    iget-object v8, v6, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    .line 153
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :try_start_1
    iget-object v6, v6, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    .line 156
    invoke-virtual {v7}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 159
    move-result-object v9

    .line 160
    invoke-virtual {v7}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 163
    move-result v10

    .line 164
    invoke-virtual {v7}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    .line 167
    move-result v11

    .line 168
    invoke-virtual {v6, v9, v10, v11}, Lcom/android/server/audio/FadeConfigurations;->isFadeable(Landroid/media/AudioAttributes;II)Z

    .line 171
    move-result v6

    .line 172
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    if-nez v6, :cond_4

    .line 175
    :try_start_2
    const-string p0, "AS.PlaybackActivityMon"

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    const-string/jumbo p2, "not fading out player "

    .line 185
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v7}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 191
    move-result p2

    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string p2, " uid:"

    .line 197
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v7}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 203
    move-result p2

    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string p2, " pid:"

    .line 209
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v7}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    .line 215
    move-result p2

    .line 216
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    const-string p2, " type:"

    .line 221
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v7}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    .line 227
    move-result p2

    .line 228
    invoke-static {p2}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    .line 231
    move-result-object p2

    .line 232
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string p2, " attr:"

    .line 237
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v7}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 243
    move-result-object p2

    .line 244
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object p1

    .line 251
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    monitor-exit v0

    .line 255
    return v2

    .line 256
    :cond_4
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    move v6, v4

    .line 260
    goto/16 :goto_1

    .line 262
    :catchall_1
    move-exception p0

    .line 263
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 264
    :try_start_4
    throw p0

    .line 265
    :cond_5
    if-eqz v6, :cond_6

    .line 267
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    .line 269
    iget p1, p2, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 271
    invoke-virtual {p0, p1, v3}, Lcom/android/server/audio/FadeOutManager;->fadeOutUid(ILjava/util/List;)V

    .line 274
    :cond_6
    monitor-exit v0

    .line 275
    return v6

    .line 276
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 277
    throw p0
.end method

.method public final forgetUid(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/HashMap;

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/FadeOutManager;->unfadeOutUid(ILjava/util/Map;)V

    .line 18
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    .line 20
    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->unduckUid(ILjava/util/HashMap;)V

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public final getActivePlaybackConfigurations(Z)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 10
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 13
    move-result-object p0

    .line 14
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    monitor-exit v0

    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 25
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 28
    move-result-object p0

    .line 29
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    invoke-static {p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    .line 35
    move-result-object p0

    .line 36
    monitor-exit v0

    .line 37
    return-object p0

    .line 38
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final getAllAllowedCapturePolicies()Ljava/util/HashMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    .line 6
    invoke-virtual {p0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/HashMap;

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final getFadeInDelayForOffendersMillis(Landroid/media/AudioAttributes;)J
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    .line 3
    iget-object p1, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/media/audiopolicy/Flags;->enableFadeManagerConfiguration()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    const-wide/16 v0, 0x7d0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    .line 22
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->getFadeInDelayForOffenders()J

    .line 30
    move-result-wide v1

    .line 31
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    move-wide v0, v1

    .line 33
    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    return-wide v0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    :try_start_4
    throw p0

    .line 40
    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 41
    throw p0
.end method

.method public final getFadeOutDurationMillis(Landroid/media/AudioAttributes;)J
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    .line 3
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/server/audio/FadeConfigurations;->isFadeable(Landroid/media/AudioAttributes;II)Z

    .line 12
    move-result v1

    .line 13
    const-wide/16 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Landroid/media/audiopolicy/Flags;->enableFadeManagerConfiguration()Z

    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 24
    const-wide/16 v2, 0x7d0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    .line 29
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->getFadeOutDurationForAudioAttributes(Landroid/media/AudioAttributes;)J

    .line 37
    move-result-wide v4

    .line 38
    cmp-long v2, v4, v2

    .line 40
    if-eqz v2, :cond_2

    .line 42
    monitor-exit v1

    .line 43
    move-wide v2, v4

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    .line 50
    move-result p1

    .line 51
    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->getFadeOutDurationForUsage(I)J

    .line 54
    move-result-wide p0

    .line 55
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    move-wide v2, p0

    .line 57
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    return-wide v2

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0

    .line 63
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 64
    throw p0
.end method

.method public final getPackageNameForPid(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "activity"

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/ActivityManager;

    .line 11
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 37
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 39
    if-ne v1, p1, :cond_0

    .line 41
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 43
    return-object p0

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public final ignorePlayerIId(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDoNotLogPiidList:Ljava/util/ArrayList;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final maybeMutePlayerAwaitingConnection(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 9

    .line 1
    const-string v0, "AS.PlaybackActivityMon"

    .line 3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedUsagesAwaitingConnection:[I

    .line 5
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    if-ge v4, v2, :cond_2

    .line 13
    aget v5, v1, v4

    .line 15
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 18
    move-result-object v6

    .line 19
    invoke-virtual {v6}, Landroid/media/AudioAttributes;->getUsage()I

    .line 22
    move-result v6

    .line 23
    if-ne v5, v6, :cond_1

    .line 25
    :try_start_0
    sget-object v5, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 27
    new-instance v6, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 29
    new-instance v7, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v8, "awaiting connection: muting piid:"

    .line 36
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 42
    move-result v8

    .line 43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v8, " uid:"

    .line 48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 54
    move-result v8

    .line 55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v7

    .line 62
    invoke-direct {v6, v7}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v6, v3, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 68
    invoke-virtual {v5, v6}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 71
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    .line 74
    move-result-object v5

    .line 75
    sget-object v6, Lcom/android/server/audio/PlaybackActivityMonitor;->MUTE_AWAIT_CONNECTION_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 77
    sget-object v7, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    .line 79
    invoke-virtual {v5, v6, v7}, Landroid/media/PlayerProxy;->applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V

    .line 82
    iget-object v5, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayersAwaitingConnection:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 87
    move-result v6

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception v5

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    .line 99
    const-string v7, "awaiting connection: error muting player "

    .line 101
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 107
    move-result v7

    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v6

    .line 115
    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 120
    goto :goto_0

    .line 121
    :cond_2
    return-void
.end method

.method public final muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;J)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "muteAwaitConnection() dev:"

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, " timeOutMs:"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    const-string v3, "AS.PlaybackActivityMon"

    .line 29
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->mutePlayersExpectingDevice([I)V

    .line 38
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mEventHandler:Lcom/android/server/audio/PlaybackActivityMonitor$1;

    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mEventHandler:Lcom/android/server/audio/PlaybackActivityMonitor$1;

    .line 46
    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public final mutePlayersExpectingDevice([I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 3
    new-instance v1, Lcom/android/server/audio/PlaybackActivityMonitor$MuteAwaitConnectionEvent;

    .line 5
    invoke-direct {v1, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$MuteAwaitConnectionEvent;-><init>([I)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 11
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedUsagesAwaitingConnection:[I

    .line 13
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 15
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Integer;

    .line 35
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 37
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    .line 43
    if-nez v0, :cond_0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->maybeMutePlayerAwaitingConnection(Landroid/media/AudioPlaybackConfiguration;)V

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method public final mutePlayersForCall([I)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    const-string/jumbo v1, "mutePlayersForCall: usages="

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_0

    .line 14
    aget v4, p1, v3

    .line 16
    const-string v5, " "

    .line 18
    invoke-static {v4, v0, v5}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v1, "AS.PlaybackActivityMon"

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 35
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v1

    .line 43
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_5

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/Integer;

    .line 55
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 57
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 63
    if-nez v4, :cond_2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getUsage()I

    .line 73
    move-result v5

    .line 74
    array-length v6, p1

    .line 75
    move v7, v2

    .line 76
    :goto_2
    if-ge v7, v6, :cond_4

    .line 78
    aget v8, p1, v7

    .line 80
    if-ne v5, v8, :cond_3

    .line 82
    const/4 v5, 0x1

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_4

    .line 89
    :cond_4
    move v5, v2

    .line 90
    :goto_3
    invoke-static {v4, v5}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkMuteStrategy(Landroid/media/AudioPlaybackConfiguration;Z)Z

    .line 93
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    if-eqz v5, :cond_1

    .line 96
    :try_start_1
    sget-object v5, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 98
    new-instance v6, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    const-string/jumbo v8, "call: muting piid:"

    .line 108
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    const-string v8, " uid:"

    .line 116
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 122
    move-result v8

    .line 123
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v7

    .line 130
    invoke-direct {v6, v7}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 133
    const-string v7, "AS.PlaybackActivityMon"

    .line 135
    invoke-virtual {v6, v2, v7}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 138
    invoke-virtual {v5, v6}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 141
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    .line 144
    move-result-object v4

    .line 145
    const/4 v5, 0x0

    .line 146
    invoke-virtual {v4, v5}, Landroid/media/PlayerProxy;->setVolume(F)V

    .line 149
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    .line 151
    new-instance v5, Ljava/lang/Integer;

    .line 153
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 156
    move-result v6

    .line 157
    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 160
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    goto :goto_1

    .line 164
    :catch_0
    move-exception v4

    .line 165
    :try_start_2
    const-string v5, "AS.PlaybackActivityMon"

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    const-string/jumbo v7, "call: error muting player "

    .line 175
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v3

    .line 185
    invoke-static {v5, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    goto/16 :goto_1

    .line 190
    :cond_5
    monitor-exit v0

    .line 191
    return-void

    .line 192
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    throw p0
.end method

.method public final playerDeath(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->releasePlayer(II)V

    .line 5
    return-void
.end method

.method public final registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v1

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 13
    move-result v2

    .line 14
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;-><init>(Landroid/media/IPlaybackConfigDispatcher;ZII)V

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-boolean p2, v0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz p2, :cond_1

    .line 22
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/media/IPlaybackConfigDispatcher;->asBinder()Landroid/os/IBinder;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-interface {p1, v0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit v0

    .line 33
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 35
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p0

    .line 42
    :try_start_2
    const-string p1, "AS.PlaybackActivityMon"

    .line 44
    const-string p2, "Could not link to client death"

    .line 46
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    monitor-exit v0

    .line 50
    :goto_0
    return-void

    .line 51
    :goto_1
    monitor-exit v0

    .line 52
    throw p0
.end method

.method public final releasePlayer(II)V
    .locals 7

    .line 1
    const-string/jumbo v0, "releasing player piid:"

    .line 4
    const-string v1, "AS.PlaybackActivityMon"

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v3, "releasePlayer() for piid="

    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v1, -0x1

    .line 25
    if-ne p1, v1, :cond_0

    .line 27
    const-string p0, "AS.PlaybackActivityMon"

    .line 29
    const-string v0, "Received releasePlayer with invalid piid: "

    .line 31
    invoke-static {p1, v0, p0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object p0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 36
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 38
    const-string/jumbo v1, "releasePlayer with invalid piid:"

    .line 41
    const-string v2, ", uid:"

    .line 43
    invoke-static {p1, p2, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 53
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 56
    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 59
    new-instance v3, Ljava/lang/Integer;

    .line 61
    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 64
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 70
    invoke-static {p1, v2, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    .line 73
    move-result v3

    .line 74
    const/4 v4, 0x0

    .line 75
    if-eqz v3, :cond_3

    .line 77
    sget-object v3, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 79
    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string v0, ", uid:"

    .line 91
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p2

    .line 101
    invoke-direct {v5, p2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v3, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 107
    iget-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/lang/Integer;

    .line 111
    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 114
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    .line 119
    invoke-virtual {p2, v2}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V

    .line 122
    iget-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    .line 124
    invoke-virtual {p2, v2}, Lcom/android/server/audio/FadeOutManager;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V

    .line 127
    iget-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayersAwaitingConnection:Ljava/util/ArrayList;

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0, v2, v4}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 139
    invoke-virtual {v2, v4, v4}, Landroid/media/AudioPlaybackConfiguration;->handleStateEvent(II)Z

    .line 142
    move-result p2

    .line 143
    invoke-static {}, Lcom/android/media/audio/Flags;->portToPiidSimplification()Z

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPortIdToPiid:Landroid/util/SparseIntArray;

    .line 148
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    .line 151
    move-result v0

    .line 152
    if-ltz v0, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPortIdToPiid:Landroid/util/SparseIntArray;

    .line 156
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 159
    goto :goto_0

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    goto :goto_2

    .line 162
    :cond_1
    if-eqz p2, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDoNotLogPiidList:Ljava/util/ArrayList;

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_2

    .line 176
    goto :goto_1

    .line 177
    :cond_2
    move v4, p2

    .line 178
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    if-eqz v4, :cond_4

    .line 181
    const/4 p1, 0x1

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    .line 185
    :cond_4
    return-void

    .line 186
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    throw p0
.end method

.method public final restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V
    .locals 4

    .line 1
    const-string v0, "AS.PlaybackActivityMon"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "unduckPlayers: uids winner="

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget v2, p1, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    .line 28
    iget v2, p1, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 30
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 32
    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->unduckUid(ILjava/util/HashMap;)V

    .line 35
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    .line 37
    iget p1, p1, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 39
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 41
    invoke-virtual {v1, p1, p0}, Lcom/android/server/audio/FadeOutManager;->unfadeOutUid(ILjava/util/Map;)V

    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final setAllowedCapturePolicy(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne p2, v1, :cond_0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 36
    monitor-enter v1

    .line 37
    :try_start_1
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 39
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object p0

    .line 47
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    .line 59
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 62
    move-result v2

    .line 63
    if-ne v2, p1, :cond_1

    .line 65
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getAllowedCapturePolicy()I

    .line 72
    move-result v2

    .line 73
    if-lt v2, p2, :cond_2

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    .line 78
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 81
    move-result-object v3

    .line 82
    invoke-direct {v2, v3}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 85
    invoke-virtual {v2, p2}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Landroid/media/AudioPlaybackConfiguration;->handleAudioAttributesEvent(Landroid/media/AudioAttributes;)Z

    .line 96
    goto :goto_0

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    monitor-exit v1

    .line 100
    return-void

    .line 101
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    throw p0

    .line 103
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    throw p0
.end method

.method public final setTransientFadeManagerConfiguration(Landroid/media/FadeManagerConfiguration;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    .line 3
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/media/audiopolicy/Flags;->enableFadeManagerConfiguration()Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :try_start_1
    const-string v2, "Transient FadeManagerConfiguration cannot be null"

    .line 23
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/android/server/audio/FadeConfigurations;->mTransientFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 28
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;

    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 34
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catchall_1
    move-exception p0

    .line 40
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    :try_start_4
    throw p0

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    throw p0
.end method

.method public final shouldEnforceFade()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Landroid/media/audiopolicy/Flags;->enableFadeManagerConfiguration()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    .line 26
    move-result p0

    .line 27
    monitor-exit v0

    .line 28
    :goto_0
    return p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final unmutePlayersExpectingDevice()V
    .locals 8

    .line 1
    const-string v0, "AS.PlaybackActivityMon"

    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedUsagesAwaitingConnection:[I

    .line 6
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayersAwaitingConnection:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v3

    .line 28
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 30
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 36
    if-nez v2, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 41
    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string/jumbo v7, "unmuting piid:"

    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v6

    .line 61
    invoke-direct {v5, v6}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 64
    const/4 v6, 0x0

    .line 65
    invoke-virtual {v5, v6, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 68
    invoke-virtual {v4, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 71
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    .line 74
    move-result-object v4

    .line 75
    sget-object v5, Lcom/android/server/audio/PlaybackActivityMonitor;->MUTE_AWAIT_CONNECTION_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 77
    sget-object v6, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    .line 79
    invoke-virtual {v4, v5, v6}, Landroid/media/PlayerProxy;->applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v4

    .line 84
    const-string v5, "Error unmuting player "

    .line 86
    const-string v6, " uid:"

    .line 88
    invoke-static {v3, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 95
    move-result v2

    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    invoke-static {v0, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayersAwaitingConnection:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 112
    return-void
.end method

.method public final unmutePlayersForCall()V
    .locals 8

    .line 1
    const-string v0, "AS.PlaybackActivityMon"

    .line 3
    const-string/jumbo v1, "unmutePlayersForCall()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v1

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v3

    .line 46
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 48
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/media/AudioPlaybackConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v2, :cond_1

    .line 56
    :try_start_1
    sget-object v4, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 58
    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string/jumbo v7, "call: unmuting piid:"

    .line 68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v6

    .line 78
    invoke-direct {v5, v6}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v6, "AS.PlaybackActivityMon"

    .line 83
    const/4 v7, 0x0

    .line 84
    invoke-virtual {v5, v7, v6}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 87
    invoke-virtual {v4, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 90
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    .line 93
    move-result-object v4

    .line 94
    const/high16 v5, 0x3f800000    # 1.0f

    .line 96
    invoke-virtual {v4, v5}, Landroid/media/PlayerProxy;->setVolume(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v4

    .line 101
    :try_start_2
    const-string v5, "AS.PlaybackActivityMon"

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const-string/jumbo v7, "call: error unmuting player "

    .line 111
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v3, " uid:"

    .line 119
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 125
    move-result v2

    .line 126
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v2

    .line 133
    invoke-static {v5, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 144
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    throw p0
.end method

.method public final unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    invoke-interface {p1}, Landroid/media/IPlaybackConfigDispatcher;->asBinder()Landroid/os/IBinder;

    .line 26
    move-result-object v1

    .line 27
    iget-object v2, v0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    .line 29
    invoke-interface {v2}, Landroid/media/IPlaybackConfigDispatcher;->asBinder()Landroid/os/IBinder;

    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v1, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    monitor-exit v0

    .line 38
    if-eqz v1, :cond_1

    .line 40
    monitor-enter v0

    .line 41
    :try_start_1
    iget-object v1, v0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    .line 43
    invoke-interface {v1}, Landroid/media/IPlaybackConfigDispatcher;->asBinder()Landroid/os/IBinder;

    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 51
    const/4 v1, 0x1

    .line 52
    iput-boolean v1, v0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    monitor-exit v0

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v0

    .line 61
    throw p0

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    monitor-exit v0

    .line 64
    throw p0

    .line 65
    :cond_2
    return-void
.end method

.method public final updateGoodCatch(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    .line 8
    move-result v4

    .line 9
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->mGoodCatchSkipStream:Ljava/util/Set;

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    check-cast v0, Ljava/util/HashSet;

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_a

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    move-result-wide v0

    .line 27
    iget-wide v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mLastUpdateTime:J

    .line 29
    sub-long v2, v0, v2

    .line 31
    const-wide/16 v5, 0x2710

    .line 33
    cmp-long v2, v2, v5

    .line 35
    if-lez v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPackageTimeMap:Ljava/util/HashMap;

    .line 39
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 44
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    .line 47
    move-result v2

    .line 48
    const/4 v3, 0x1

    .line 49
    const/4 v7, 0x2

    .line 50
    const/4 v8, 0x0

    .line 51
    if-ne v2, v7, :cond_1

    .line 53
    move v2, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v2, v8

    .line 56
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 59
    move-result v7

    .line 60
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    .line 63
    move-result p1

    .line 64
    const/16 v9, 0x3e8

    .line 66
    const-string/jumbo v10, "com.android.systemui"

    .line 69
    if-ne v7, v9, :cond_2

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->getPackageNameForPid(I)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    iget-object v9, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 81
    move-result-object v9

    .line 82
    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 85
    move-result-object v7

    .line 86
    if-eqz v7, :cond_6

    .line 88
    array-length v9, v7

    .line 89
    if-lez v9, :cond_6

    .line 91
    array-length v9, v7

    .line 92
    if-ne v9, v3, :cond_3

    .line 94
    aget-object p1, v7, v8

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    array-length v3, v7

    .line 98
    :goto_1
    if-ge v8, v3, :cond_5

    .line 100
    aget-object v9, v7, v8

    .line 102
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v11

    .line 106
    if-eqz v11, :cond_4

    .line 108
    move-object v3, v9

    .line 109
    goto :goto_3

    .line 110
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 112
    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->getPackageNameForPid(I)Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    goto :goto_2

    .line 118
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->getPackageNameForPid(I)Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    :goto_2
    move-object v3, p1

    .line 123
    :goto_3
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPackageTimeMap:Ljava/util/HashMap;

    .line 125
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_7

    .line 131
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPackageTimeMap:Ljava/util/HashMap;

    .line 133
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Ljava/lang/Long;

    .line 139
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 142
    move-result-wide v7

    .line 143
    sub-long v7, v0, v7

    .line 145
    cmp-long p1, v7, v5

    .line 147
    if-lez p1, :cond_a

    .line 149
    :cond_7
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result p1

    .line 153
    const-string v5, "AS.PlaybackActivityMon"

    .line 155
    if-eqz p1, :cond_8

    .line 157
    sget-object p1, Lcom/android/server/audio/PlaybackActivityMonitor;->mGoodCatchSystemUiStream:Ljava/util/Set;

    .line 159
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    move-result-object v6

    .line 163
    check-cast p1, Ljava/util/HashSet;

    .line 165
    invoke-virtual {p1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_8

    .line 171
    const-string/jumbo p0, "updateGoodCatch systemui sound, so skip updateSoundPlayed"

    .line 174
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    goto :goto_4

    .line 178
    :cond_8
    if-nez v2, :cond_9

    .line 180
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 182
    invoke-virtual {p1, v4}, Lcom/android/server/audio/AudioService;->isStreamAffectedByRingerMode(I)Z

    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_9

    .line 188
    const-string/jumbo p0, "updateGoodCatch no ringerModeNormal, so skip updateSoundPlayed"

    .line 191
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    goto :goto_4

    .line 195
    :cond_9
    iput-wide v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mLastUpdateTime:J

    .line 197
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPackageTimeMap:Ljava/util/HashMap;

    .line 199
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 208
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 210
    if-eqz p0, :cond_a

    .line 212
    iget-object v1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 214
    sget-object p0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    .line 216
    const/4 p1, 0x3

    .line 217
    aget-object v2, p0, p1

    .line 219
    const-string v5, ""

    .line 221
    const-string v6, ""

    .line 223
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_a
    :goto_4
    return-void
.end method
