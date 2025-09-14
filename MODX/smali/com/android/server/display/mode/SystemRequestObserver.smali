.class public final Lcom/android/server/display/mode/SystemRequestObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeathRecipient:Lcom/android/server/display/mode/SystemRequestObserver$1;

.field public final mDisplaysRestrictions:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/VotesStorage;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/display/mode/SystemRequestObserver$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/display/mode/SystemRequestObserver$1;-><init>(Lcom/android/server/display/mode/SystemRequestObserver;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDeathRecipient:Lcom/android/server/display/mode/SystemRequestObserver$1;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mLock:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDisplaysRestrictions:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 27
    return-void
.end method


# virtual methods
.method public final removeSystemRequestedVotes(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDisplaysRestrictions:Ljava/util/Map;

    .line 6
    check-cast v1, Ljava/util/HashMap;

    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/util/SparseArray;

    .line 14
    if-eqz p1, :cond_0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_0

    .line 23
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 26
    move-result v2

    .line 27
    invoke-virtual {p0, v2}, Lcom/android/server/display/mode/SystemRequestObserver;->updateStorageLocked(I)V

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final updateStorageLocked(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Z

    .line 9
    iget-object v2, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDisplaysRestrictions:Ljava/util/Map;

    .line 11
    new-instance v3, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {v3, p1, v1, v0}, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;-><init>(I[ZLjava/util/List;)V

    .line 16
    check-cast v2, Ljava/util/HashMap;

    .line 18
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 21
    const/4 v2, 0x0

    .line 22
    aget-boolean v1, v1, v2

    .line 24
    if-eqz v1, :cond_0

    .line 26
    new-instance v1, Lcom/android/server/display/mode/SupportedModesVote;

    .line 28
    invoke-direct {v1, v0}, Lcom/android/server/display/mode/SupportedModesVote;-><init>(Ljava/util/List;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 35
    const/16 v0, 0x12

    .line 37
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 40
    return-void
.end method
