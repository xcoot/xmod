.class public final Lcom/android/server/chimera/SystemRepository$1;
.super Landroid/app/IUidObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/SystemRepository$1;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


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
    iget-object p1, p0, Lcom/android/server/chimera/SystemRepository$1;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mChimeraUidObservers:Ljava/util/List;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository$1;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mChimeraUidObservers:Ljava/util/List;

    .line 9
    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    monitor-exit p1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    throw p0

    .line 35
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
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
    return-void
.end method
