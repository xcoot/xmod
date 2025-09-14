.class public final Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLoudnessCodecHelper:Lcom/android/server/audio/LoudnessCodecHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/LoudnessCodecHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;->mLoudnessCodecHelper:Lcom/android/server/audio/LoudnessCodecHelper;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Landroid/media/ILoudnessCodecUpdatesDispatcher;

    .line 3
    instance-of v0, p2, Ljava/lang/Integer;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    move-object v0, p2

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_3

    .line 14
    sget-object v1, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v2

    .line 20
    new-instance v3, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;

    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;-><init>(III)V

    .line 27
    invoke-virtual {v1, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 30
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;->mLoudnessCodecHelper:Lcom/android/server/audio/LoudnessCodecHelper;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result v0

    .line 36
    iget-object v2, v1, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    .line 38
    monitor-enter v2

    .line 39
    :goto_1
    :try_start_0
    iget-object v3, v1, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    .line 41
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 44
    move-result v3

    .line 45
    if-ge v5, v3, :cond_2

    .line 47
    iget-object v3, v1, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    .line 49
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 52
    move-result v3

    .line 53
    iget-object v4, v1, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    .line 55
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 58
    move-result v4

    .line 59
    if-ne v4, v0, :cond_1

    .line 61
    iget-object v4, v1, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToDeviceIdCache:Landroid/util/SparseIntArray;

    .line 63
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 66
    goto :goto_2

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_3

    .line 69
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v3, v1, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    .line 74
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 77
    move-result-object v3

    .line 78
    new-instance v4, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda5;

    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-direct {v4, v0, v5}, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda5;-><init>(II)V

    .line 84
    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 87
    iget-object v1, v1, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    .line 89
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 92
    move-result-object v1

    .line 93
    new-instance v3, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda5;

    .line 95
    const/4 v4, 0x1

    .line 96
    invoke-direct {v3, v0, v4}, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda5;-><init>(II)V

    .line 99
    invoke-interface {v1, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 102
    monitor-exit v2

    .line 103
    goto :goto_4

    .line 104
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    throw p0

    .line 106
    :cond_3
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 109
    return-void
.end method
