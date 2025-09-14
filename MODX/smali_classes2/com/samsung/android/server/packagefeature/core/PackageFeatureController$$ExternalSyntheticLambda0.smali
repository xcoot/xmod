.class public final synthetic Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    const-string/jumbo v0, "updateGroupData, Queue="

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mUpdateRequestedGroupNames:Ljava/util/Set;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mTmpUpdateRequestedGroupNames:Ljava/util/Set;

    .line 21
    .line 22
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mTmpUpdateRequestedGroupNames:Ljava/util/Set;

    .line 26
    .line 27
    check-cast v2, Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mUpdateRequestedGroupNames:Ljava/util/Set;

    .line 33
    .line 34
    check-cast v2, Ljava/util/HashSet;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    monitor-exit v1

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mUpdateRequestedGroupNames:Ljava/util/Set;

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x4

    .line 64
    invoke-virtual {v2, v4, v0, v3}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 70
    .line 71
    .line 72
    monitor-exit v1

    .line 73
    :goto_0
    return-void

    .line 74
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p0

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
