.class public final Lcom/android/server/am/mars/filter/filter/TopPackageFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mTopPkg:Landroid/util/ArrayMap;


# virtual methods
.method public final deInit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 8
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->getScreenOnState()Z

    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_0

    .line 14
    sget-object p2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 16
    sget-object p2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 18
    const/4 v1, 0x5

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p2, v1, p4, v2, v2}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 26
    return v0

    .line 27
    :cond_0
    const/4 p2, 0x4

    .line 28
    if-eq p3, p2, :cond_1

    .line 30
    const/16 p2, 0xf

    .line 32
    if-ne p3, p2, :cond_2

    .line 34
    :cond_1
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->getScreenOnState()Z

    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_2

    .line 40
    return v0

    .line 41
    :cond_2
    const/4 p2, 0x7

    .line 42
    if-eq p3, p2, :cond_3

    .line 44
    const/4 p2, 0x3

    .line 45
    if-ne p3, p2, :cond_4

    .line 47
    :cond_3
    sget-boolean p2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 49
    sget-object p2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 51
    invoke-virtual {p2}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_4

    .line 57
    return v0

    .line 58
    :cond_4
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    .line 60
    monitor-enter p2

    .line 61
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Ljava/util/ArrayList;

    .line 73
    if-eqz p0, :cond_5

    .line 75
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_5

    .line 81
    monitor-exit p2

    .line 82
    const/16 p0, 0xc

    .line 84
    return p0

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_0

    .line 87
    :cond_5
    monitor-exit p2

    .line 88
    return v0

    .line 89
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateTopPkgList(Ljava/util/ArrayList;I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 11
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    monitor-exit v0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0

    .line 25
    :cond_0
    :goto_0
    return-void
.end method
