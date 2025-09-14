.class public final Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# virtual methods
.method public final deInit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 2

    .line 1
    sget-boolean p0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 3
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 5
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 7
    iget-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p4

    .line 16
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 19
    move-result p3

    .line 20
    if-eqz p3, :cond_1

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide p3

    .line 26
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Long;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 41
    move-result-wide v0

    .line 42
    cmp-long p3, p3, v0

    .line 44
    if-ltz p3, :cond_0

    .line 46
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mBackupExpirationUptimeMap:Ljava/util/HashMap;

    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    monitor-exit p1

    .line 59
    const/16 p0, 0x1a

    .line 61
    return p0

    .line 62
    :cond_1
    :goto_0
    monitor-exit p1

    .line 63
    const/4 p0, 0x0

    .line 64
    return p0

    .line 65
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method
