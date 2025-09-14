.class public final Lcom/android/server/media/AudioPlayerStateMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;

.field public static sInstance:Lcom/android/server/media/AudioPlayerStateMonitor;


# instance fields
.field public final mActiveAudioUids:Ljava/util/Set;

.field public final mListenerMap:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

.field public final mSortedAudioPlaybackClientUids:Ljava/util/List;


# direct methods
.method public static -$$Nest$msendAudioPlayerActiveStateChangedMessageLocked(Lcom/android/server/media/AudioPlayerStateMonitor;Landroid/media/AudioPlaybackConfiguration;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mListenerMap:Ljava/util/Map;

    .line 3
    check-cast p0, Landroid/util/ArrayMap;

    .line 5
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    .line 3
    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/android/server/media/AudioPlayerStateMonitor;->DEBUG:Z

    .line 6
    const-string v0, "AudioPlayerStateMonitor"

    .line 8
    sput-object v0, Lcom/android/server/media/AudioPlayerStateMonitor;->TAG:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mListenerMap:Ljava/util/Map;

    .line 18
    new-instance v0, Landroid/util/ArraySet;

    .line 20
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    .line 27
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 39
    const-string v0, "audio"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/media/AudioManager;

    .line 47
    new-instance v0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;

    .line 49
    invoke-direct {v0, p0}, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;-><init>(Lcom/android/server/media/AudioPlayerStateMonitor;)V

    .line 52
    const/4 p0, 0x0

    .line 53
    invoke-virtual {p1, v0, p0}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 56
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/media/AudioPlayerStateMonitor;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/media/AudioPlayerStateMonitor;->sInstance:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/media/AudioPlayerStateMonitor;-><init>(Landroid/content/Context;)V

    .line 13
    sput-object v1, Lcom/android/server/media/AudioPlayerStateMonitor;->sInstance:Lcom/android/server/media/AudioPlayerStateMonitor;

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
    sget-object p0, Lcom/android/server/media/AudioPlayerStateMonitor;->sInstance:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method


# virtual methods
.method public final dump(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Audio playback (lastly played comes first)"

    .line 6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    const-string v1, "  "

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    iget-object v4, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 15
    check-cast v4, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v4

    .line 21
    if-ge v3, v4, :cond_1

    .line 23
    iget-object v4, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 25
    check-cast v4, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Ljava/lang/Integer;

    .line 33
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v4

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v6, "uid="

    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v6, " packages="

    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    if-eqz v4, :cond_0

    .line 76
    array-length v5, v4

    .line 77
    if-lez v5, :cond_0

    .line 79
    move v5, v2

    .line 80
    :goto_1
    array-length v6, v4

    .line 81
    if-ge v5, v6, :cond_0

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    aget-object v7, v4, v5

    .line 90
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v7, " "

    .line 95
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    add-int/lit8 v5, v5, 0x1

    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    goto :goto_2

    .line 110
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 113
    add-int/lit8 v3, v3, 0x1

    .line 115
    goto :goto_0

    .line 116
    :cond_1
    monitor-exit v0

    .line 117
    return-void

    .line 118
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw p0
.end method

.method public final isPlaybackActive(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    check-cast p0, Landroid/util/ArraySet;

    .line 12
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 15
    move-result p0

    .line 16
    monitor-exit v0

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final registerListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;Landroid/os/Handler;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mListenerMap:Ljava/util/Map;

    .line 6
    new-instance v1, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;

    .line 8
    if-nez p2, :cond_0

    .line 10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    move-result-object p2

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 20
    move-result-object p2

    .line 21
    :goto_0
    invoke-direct {v1, p2, p1}, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;-><init>(Landroid/os/Looper;Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;)V

    .line 24
    check-cast p0, Landroid/util/ArrayMap;

    .line 26
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method
