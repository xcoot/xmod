.class public final Lcom/android/server/am/mars/filter/filter/AllowListFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mCarrierAllowList:Ljava/util/List;

.field public mContext:Landroid/content/Context;

.field public mDefaultAllowList:Ljava/util/ArrayList;


# virtual methods
.method public final deInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    .line 12
    monitor-enter v1

    .line 13
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    .line 15
    check-cast p0, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 20
    monitor-exit v1

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0

    .line 25
    :catchall_1
    move-exception p0

    .line 26
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    throw p0
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->setCarrierAllowList()V

    .line 6
    return-void
.end method

.method public final isInDefaultAllowList(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    monitor-exit v0

    .line 16
    return v2

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    .line 22
    monitor-enter v1

    .line 23
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 31
    monitor-exit v1

    .line 32
    return v2

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    monitor-exit v1

    .line 36
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    throw p0

    .line 40
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw p0
.end method

.method public final setCarrierAllowList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mContext:Landroid/content/Context;

    .line 3
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCarrierPrivilegedPackagesForAllActiveSubscriptions()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    .line 22
    check-cast v2, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 27
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    .line 29
    check-cast p0, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    monitor-exit v1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0

    .line 39
    :cond_0
    :goto_0
    return-void
.end method
