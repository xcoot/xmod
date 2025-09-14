.class public final Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final mBoundedWidgetPkgs:Landroid/util/ArrayMap;

.field public mContext:Landroid/content/Context;

.field public mContextUserId:I

.field public final mRunningWidgets:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    .line 17
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    .line 24
    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 3

    .line 1
    iget p2, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eq p1, p2, :cond_3

    .line 6
    if-eqz p2, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 p2, 0x96

    .line 11
    if-lt p1, p2, :cond_1

    .line 13
    const/16 p2, 0xa0

    .line 15
    if-gt p1, p2, :cond_1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_2

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    return v0

    .line 26
    :cond_3
    :goto_1
    const/4 p2, 0x3

    .line 27
    const/4 v1, 0x4

    .line 28
    if-eq p3, p2, :cond_4

    .line 30
    const/16 p2, 0x10

    .line 32
    if-ne p3, p2, :cond_6

    .line 34
    :cond_4
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    .line 36
    monitor-enter p2

    .line 37
    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    .line 39
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    .line 42
    move-result p3

    .line 43
    if-lez p3, :cond_5

    .line 45
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object p3

    .line 55
    check-cast p3, Ljava/util/ArrayList;

    .line 57
    if-eqz p3, :cond_5

    .line 59
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 62
    move-result p3

    .line 63
    if-eqz p3, :cond_5

    .line 65
    monitor-exit p2

    .line 66
    return v1

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_3

    .line 69
    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_6
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    .line 72
    monitor-enter p3

    .line 73
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    .line 85
    if-eqz p0, :cond_7

    .line 87
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    .line 89
    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object p0

    .line 93
    if-eqz p0, :cond_7

    .line 95
    monitor-exit p3

    .line 96
    return v1

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    goto :goto_2

    .line 99
    :cond_7
    monitor-exit p3

    .line 100
    return v0

    .line 101
    :goto_2
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    throw p0

    .line 103
    :goto_3
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    throw p0
.end method

.method public final getBoundAppWidgetPackages()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    .line 9
    const-class v2, Landroid/os/UserManager;

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/os/UserManager;

    .line 17
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_7

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/os/UserHandle;

    .line 37
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 40
    move-result v3

    .line 41
    iget v4, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    .line 43
    if-eq v3, v4, :cond_3

    .line 45
    if-eqz v4, :cond_1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/16 v4, 0x96

    .line 50
    if-lt v3, v4, :cond_2

    .line 52
    const/16 v4, 0xa0

    .line 54
    if-gt v3, v4, :cond_2

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_0

    .line 63
    :cond_3
    :goto_1
    const/4 v4, 0x3

    .line 64
    invoke-virtual {v0, v4, v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;)Ljava/util/List;

    .line 67
    move-result-object v2

    .line 68
    const/4 v4, 0x0

    .line 69
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 72
    move-result v5

    .line 73
    if-ge v4, v5, :cond_0

    .line 75
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    .line 81
    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 83
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v0, v5, v3}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_6

    .line 93
    iget-object v6, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    .line 95
    monitor-enter v6

    .line 96
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Ljava/util/ArrayList;

    .line 108
    if-nez v7, :cond_4

    .line 110
    new-instance v7, Ljava/util/ArrayList;

    .line 112
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 115
    goto :goto_3

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    :goto_3
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 121
    move-result v8

    .line 122
    if-nez v8, :cond_5

    .line 124
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v8, "FILTER 4 add to bound"

    .line 129
    invoke-static {v8, v5}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    move-result-object v8

    .line 138
    invoke-virtual {v5, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    monitor-exit v6

    .line 142
    goto :goto_5

    .line 143
    :goto_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    throw p0

    .line 145
    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 147
    goto :goto_2

    .line 148
    :cond_7
    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    .line 9
    return-void
.end method

.method public final onAppWidgetDisabled(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    .line 16
    if-eqz v1, :cond_2

    .line 18
    iget-object v2, v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    .line 20
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_2

    .line 26
    iget-object v2, v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    .line 28
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Integer;

    .line 34
    if-nez v2, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result v2

    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v3

    .line 47
    if-gtz v2, :cond_1

    .line 49
    iget-object v2, v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    .line 51
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    .line 57
    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :goto_0
    const-string v2, "FILTER 4 remove from running"

    .line 62
    invoke-static {v2, p2}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_4

    .line 77
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    .line 80
    monitor-enter v1

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/util/ArrayList;

    .line 93
    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_3

    .line 101
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    const-string v2, "FILTER 4 remove from bound"

    .line 106
    invoke-static {v2, p2}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    goto :goto_2

    .line 119
    :catchall_1
    move-exception p0

    .line 120
    goto :goto_3

    .line 121
    :cond_3
    :goto_2
    monitor-exit v1

    .line 122
    return-void

    .line 123
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    throw p0

    .line 125
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    throw p0
.end method

.method public final onAppWidgetEnabled(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    .line 16
    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    .line 20
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v2, Landroid/util/ArrayMap;

    .line 25
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    iput-object v2, v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    .line 35
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/Integer;

    .line 41
    if-nez v2, :cond_1

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v2

    .line 48
    :cond_1
    iget-object v3, v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v2

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v2, "FILTER 4 add to running"

    .line 65
    invoke-static {v2, p2}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0
.end method
