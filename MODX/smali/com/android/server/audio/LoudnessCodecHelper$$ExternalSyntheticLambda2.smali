.class public final synthetic Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/LoudnessCodecHelper;

.field public final synthetic f$1:Ljava/util/HashSet;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/LoudnessCodecHelper;Ljava/util/HashSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/audio/LoudnessCodecHelper;

    .line 6
    iput-object p2, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/HashSet;

    .line 8
    iput p3, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/audio/LoudnessCodecHelper;

    .line 3
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/HashSet;

    .line 5
    iget p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda2;->f$2:I

    .line 7
    check-cast p1, Landroid/media/AudioPlaybackConfiguration;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 15
    move-result p1

    .line 16
    iget-object v2, v0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, v0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    .line 28
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    .line 33
    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-direct {v1, v3, p1, p0}, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;-><init>(III)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 42
    monitor-exit v2

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method
