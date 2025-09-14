.class public final Lcom/android/server/wm/AnimatingActivityRegistry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAnimatingActivities:Landroid/util/ArraySet;

.field public mEndingDeferredFinish:Z

.field public mFinishedTokens:Landroid/util/ArrayMap;

.field public mTmpRunnableList:Ljava/util/ArrayList;


# virtual methods
.method public final endDeferringFinished()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mEndingDeferredFinish:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mEndingDeferredFinish:Z

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    sub-int/2addr v2, v1

    .line 17
    :goto_0
    if-ltz v2, :cond_1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    sub-int/2addr v2, v1

    .line 49
    :goto_1
    if-ltz v2, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/Runnable;

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v2, v2, -0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    iput-boolean v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mEndingDeferredFinish:Z

    .line 71
    .line 72
    return-void

    .line 73
    :goto_2
    iput-boolean v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mEndingDeferredFinish:Z

    .line 74
    .line 75
    throw v1
.end method
