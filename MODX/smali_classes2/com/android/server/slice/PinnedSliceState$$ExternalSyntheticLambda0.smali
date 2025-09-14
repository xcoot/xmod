.class public final synthetic Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/slice/PinnedSliceState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/slice/PinnedSliceState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/slice/PinnedSliceState;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/slice/PinnedSliceState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->hasPinOrListener()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    .line 21
    :goto_0
    if-ltz v1, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->token:Landroid/os/IBinder;

    .line 32
    .line 33
    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_3

    .line 47
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->hasPinOrListener()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    .line 59
    .line 60
    invoke-virtual {v1, p0}, Lcom/android/server/slice/SliceManagerService;->removePinnedSlice(Landroid/net/Uri;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    monitor-exit v0

    .line 64
    :goto_2
    return-void

    .line 65
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method
