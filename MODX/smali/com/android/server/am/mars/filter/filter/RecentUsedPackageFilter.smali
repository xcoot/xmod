.class public final Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public RogueApp:Ljava/util/ArrayList;


# virtual methods
.method public final deInit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 2

    .line 1
    const/4 p2, 0x4

    .line 2
    if-ne p3, p2, :cond_0

    .line 4
    const-wide/32 p2, 0xea60

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_1

    .line 14
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->RogueApp:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 22
    const-wide/32 p2, 0x493e0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-wide/32 p2, 0xdbba0

    .line 29
    :goto_0
    sget-boolean p0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 31
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 33
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 40
    monitor-enter v0

    .line 41
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 43
    invoke-static {p0, p4, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 46
    move-result-object p0

    .line 47
    if-eqz p0, :cond_2

    .line 49
    iget-wide p0, p0, Lcom/android/server/am/MARsPackageInfo;->lastUsedTime:J

    .line 51
    monitor-exit v0

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const-wide/32 p0, -0xdbba0

    .line 59
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    move-result-wide v0

    .line 63
    sub-long/2addr v0, p2

    .line 64
    cmp-long p0, v0, p0

    .line 66
    if-lez p0, :cond_3

    .line 68
    const/4 p0, 0x0

    .line 69
    return p0

    .line 70
    :cond_3
    const/4 p0, 0x1

    .line 71
    return p0

    .line 72
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method
