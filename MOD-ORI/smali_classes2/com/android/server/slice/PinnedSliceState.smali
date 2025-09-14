.class public final Lcom/android/server/slice/PinnedSliceState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeathRecipient:Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda0;

.field public final mListeners:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final mPinnedPkgs:Landroid/util/ArraySet;

.field public final mPkg:Ljava/lang/String;

.field public final mService:Lcom/android/server/slice/SliceManagerService;

.field public mSlicePinned:Z

.field public mSupportedSpecs:[Landroid/app/slice/SliceSpec;

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/SliceManagerService;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mPinnedPkgs:Landroid/util/ArraySet;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/slice/PinnedSliceState;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mDeathRecipient:Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/android/server/slice/PinnedSliceState;->mPkg:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public hasPinOrListener()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mPinnedPkgs:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    return p0

    .line 28
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final mergeSpecs([Landroid/app/slice/SliceSpec;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;

    .line 22
    .line 23
    invoke-direct {v2, p0, p1}, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/slice/PinnedSliceState;[Landroid/app/slice/SliceSpec;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v1, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda4;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v1, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda5;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, [Landroid/app/slice/SliceSpec;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    .line 51
    .line 52
    :goto_0
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final setSlicePinned(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/slice/PinnedSliceState;->mSlicePinned:Z

    .line 5
    .line 6
    if-ne v1, p1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/slice/PinnedSliceState;->mSlicePinned:Z

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v1, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, p0, v2}, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/slice/PinnedSliceState;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    new-instance v1, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-direct {v1, p0, v2}, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/slice/PinnedSliceState;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    :goto_0
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method
