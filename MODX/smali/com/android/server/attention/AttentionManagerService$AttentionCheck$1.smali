.class public final Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;
.super Landroid/service/attention/IAttentionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

.field public final synthetic val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

.field public final synthetic val$service:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 3
    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 5
    iput-object p3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$service:Lcom/android/server/attention/AttentionManagerService;

    .line 7
    invoke-direct {p0}, Landroid/service/attention/IAttentionCallback$Stub;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 3
    iget-boolean v1, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    .line 11
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 13
    invoke-virtual {p0, p1}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    .line 16
    const/16 p0, 0x8f

    .line 18
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 21
    return-void
.end method

.method public final onSuccess(IJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->this$0:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 3
    iget-boolean v1, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    .line 11
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 13
    invoke-virtual {v0, p1, p2, p3}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onSuccess(IJ)V

    .line 16
    const/16 v0, 0x8f

    .line 18
    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 21
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;->val$service:Lcom/android/server/attention/AttentionManagerService;

    .line 23
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 28
    move-result-wide v3

    .line 29
    move-object v2, v0

    .line 30
    move v5, p1

    .line 31
    move-wide v6, p2

    .line 32
    invoke-direct/range {v2 .. v7}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;-><init>(JIJ)V

    .line 35
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 37
    monitor-enter p1

    .line 38
    :try_start_0
    iget-object p2, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    .line 40
    if-nez p2, :cond_1

    .line 42
    new-instance p2, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    .line 44
    invoke-direct {p2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    .line 54
    iget p2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    .line 56
    iget p3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    .line 58
    add-int v2, p2, p3

    .line 60
    const/4 v3, 0x5

    .line 61
    rem-int/2addr v2, v3

    .line 62
    iget-object v4, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 64
    aput-object v0, v4, v2

    .line 66
    if-ne p3, v3, :cond_2

    .line 68
    add-int/2addr p2, v1

    .line 69
    iput p2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    add-int/2addr p3, v1

    .line 73
    iput p3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    .line 75
    :goto_1
    monitor-exit p1

    .line 76
    return-void

    .line 77
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method
