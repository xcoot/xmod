.class public final Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mRunningBroadcastList:Ljava/util/ArrayList;


# virtual methods
.method public final deInit()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter p2

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    monitor-exit p2

    .line 17
    const/16 p0, 0x21

    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    monitor-exit p2

    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method
