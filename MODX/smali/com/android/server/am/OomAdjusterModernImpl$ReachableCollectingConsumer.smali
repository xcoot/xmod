.class public final Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public mReachables:Ljava/util/ArrayList;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/am/OomAdjusterModernImpl$Connection;

    .line 3
    check-cast p2, Lcom/android/server/am/ProcessRecord;

    .line 5
    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 7
    iget-boolean v0, p1, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p1, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 15
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;->mReachables:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :goto_0
    return-void
.end method
