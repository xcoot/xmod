.class public final Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mUidState:Ljava/util/HashMap;


# virtual methods
.method public final onUidActive(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUidCachedChanged(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUidGone(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->mUidState:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onUidIdle(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUidProcAdjChanged(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUidStateChanged(IIJI)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->mUidState:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    check-cast p3, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    new-instance p3, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;

    .line 16
    .line 17
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput p2, p3, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->state:I

    .line 21
    .line 22
    iput p5, p3, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->capability:I

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->mUidState:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iput p2, p3, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->state:I

    .line 35
    .line 36
    iput p5, p3, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->capability:I

    .line 37
    .line 38
    :goto_0
    return-void
.end method
