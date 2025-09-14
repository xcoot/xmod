.class public final Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mActiveQuickTilePackages:Ljava/util/ArrayList;

.field public mContext:Landroid/content/Context;

.field public mQuickTileContentObserver:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;

.field public mRegisteredQuickTileContentObserver:Z


# virtual methods
.method public final deInit()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mRegisteredQuickTileContentObserver:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mQuickTileContentObserver:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mRegisteredQuickTileContentObserver:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const-string p0, "MARs:QuickTilePackageFilter"

    .line 22
    const-string v0, "IllegalArgumentException occurred in unregisterContentObserver()"

    .line 24
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    :goto_0
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    .line 3
    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    .line 8
    move-result p2

    .line 9
    if-ne p1, p2, :cond_1

    .line 11
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    .line 13
    monitor-enter p1

    .line 14
    if-eqz p4, :cond_0

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 24
    monitor-exit p1

    .line 25
    const/16 p0, 0x15

    .line 27
    return p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    monitor-exit p1

    .line 31
    goto :goto_1

    .line 32
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_1
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final getActiveQuickTilePackages()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object v0

    .line 16
    const-string/jumbo v1, "sysui_qs_tiles"

    .line 19
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 25
    const-string v1, ","

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 33
    const-string v1, ","

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    array-length v1, v0

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-ge v2, v1, :cond_2

    .line 43
    aget-object v3, v0, v2

    .line 45
    if-eqz v3, :cond_1

    .line 47
    const-string/jumbo v4, "custom"

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 56
    :try_start_1
    const-string v4, "("

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 61
    move-result v4

    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 64
    const-string v5, "/"

    .line 66
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 69
    move-result v5

    .line 70
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 73
    move-result-object v3

    .line 74
    iget-object v4, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    .line 76
    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 82
    move-result v5

    .line 83
    if-nez v5, :cond_0

    .line 85
    iget-object v5, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    .line 92
    if-eqz v5, :cond_0

    .line 94
    const-string v5, "MARs:QuickTilePackageFilter"

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const-string/jumbo v7, "getActiveQuickTilePackages: add mActiveQuickTilePackages "

    .line 104
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v3

    .line 114
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception v3

    .line 119
    goto :goto_2

    .line 120
    :cond_0
    :goto_1
    monitor-exit v4

    .line 121
    goto :goto_3

    .line 122
    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 124
    :catch_0
    move-exception v3

    .line 125
    const-string v4, "MARs:QuickTilePackageFilter"

    .line 127
    const-string/jumbo v5, "error occurred getActiveQuickTilePackages() ! "

    .line 130
    invoke-static {v3, v5, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    return-void

    .line 137
    :catchall_1
    move-exception p0

    .line 138
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 139
    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->getActiveQuickTilePackages()V

    .line 6
    iget-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mRegisteredQuickTileContentObserver:Z

    .line 8
    if-nez p1, :cond_0

    .line 10
    new-instance p1, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;

    .line 12
    new-instance v0, Landroid/os/Handler;

    .line 14
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 17
    invoke-direct {p1, p0, v0}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;Landroid/os/Handler;)V

    .line 20
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mQuickTileContentObserver:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;

    .line 22
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    move-result-object p1

    .line 28
    const-string/jumbo v0, "sysui_qs_tiles"

    .line 31
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mQuickTileContentObserver:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;

    .line 37
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 47
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mRegisteredQuickTileContentObserver:Z

    .line 50
    :cond_0
    return-void
.end method
