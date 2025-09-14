.class public final Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;
.super Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAuthenticationPossible:Landroid/util/SparseBooleanArray;

.field public final mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 3
    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;-><init>()V

    .line 6
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 8
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    .line 13
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 15
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mAuthenticationPossible:Landroid/util/SparseBooleanArray;

    .line 20
    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "  UdfpsObserver"

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    const-string v0, "    mUdfpsRefreshRateEnabled: "

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    .line 15
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    .line 18
    move-result v2

    .line 19
    const-string v3, ": "

    .line 21
    const-string v4, "      Display "

    .line 23
    if-ge v1, v2, :cond_1

    .line 25
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    .line 27
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 30
    move-result v2

    .line 31
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    .line 33
    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 39
    const-string/jumbo v5, "enabled"

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const-string/jumbo v5, "disabled"

    .line 46
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string v1, "    mAuthenticationPossible: "

    .line 72
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    :goto_2
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mAuthenticationPossible:Landroid/util/SparseBooleanArray;

    .line 77
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 80
    move-result v1

    .line 81
    if-ge v0, v1, :cond_3

    .line 83
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mAuthenticationPossible:Landroid/util/SparseBooleanArray;

    .line 85
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 88
    move-result v1

    .line 89
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mAuthenticationPossible:Landroid/util/SparseBooleanArray;

    .line 91
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_2

    .line 97
    const-string/jumbo v2, "possible"

    .line 100
    goto :goto_3

    .line 101
    :cond_2
    const-string/jumbo v2, "impossible"

    .line 104
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    return-void
.end method

.method public final onAuthenticationPossible(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mAuthenticationPossible:Landroid/util/SparseBooleanArray;

    .line 8
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 11
    const/16 v1, 0x10

    .line 13
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->updateVoteLocked(IIZ)V

    .line 16
    monitor-exit v0

    .line 17
    return-void

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

.method public final onRequestDisabled(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 12
    const/16 v1, 0x18

    .line 14
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->updateVoteLocked(IIZ)V

    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final onRequestEnabled(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->mUdfpsRefreshRateEnabled:Landroid/util/SparseBooleanArray;

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 12
    const/16 v1, 0x18

    .line 14
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->updateVoteLocked(IIZ)V

    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final updateVoteLocked(IIZ)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 3
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 5
    invoke-static {p3, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$mgetMaxRefreshRateLocked(Lcom/android/server/display/mode/DisplayModeDirector;I)F

    .line 8
    move-result p3

    .line 9
    invoke-static {p3, p3}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    .line 12
    move-result-object p3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p3, 0x0

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 17
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 22
    return-void
.end method
