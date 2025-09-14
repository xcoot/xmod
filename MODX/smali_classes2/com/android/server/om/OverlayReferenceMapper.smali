.class public final Lcom/android/server/om/OverlayReferenceMapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActorPkgToPkgs:Landroid/util/ArrayMap;

.field public final mActorToTargetToOverlays:Landroid/util/ArrayMap;

.field public mDeferRebuild:Z

.field public final mLock:Ljava/lang/Object;

.field public final mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayReferenceMapper$Provider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Landroid/util/ArrayMap;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Lcom/android/server/om/OverlayReferenceMapper$1;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    :goto_0
    iput-object p1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final addOverlay(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Collection;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p0, v1, p3}, Lcom/android/server/om/OverlayReferenceMapper;->removeOverlay(Ljava/lang/String;Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 12
    .line 13
    check-cast v2, Lcom/android/server/om/OverlayReferenceMapper$1;

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Lcom/android/server/om/OverlayReferenceMapper$1;->getTargetToOverlayables(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/util/Set;

    .line 50
    .line 51
    move-object v4, p2

    .line 52
    check-cast v4, Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 59
    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayables()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_0

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Ljava/lang/String;

    .line 86
    .line 87
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {p0, v5, v4, v1, p3}, Lcom/android/server/om/OverlayReferenceMapper;->addOverlayToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    monitor-exit v0

    .line 107
    return-void

    .line 108
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw p0
.end method

.method public final addOverlayToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/util/ArrayMap;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/util/ArraySet;

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    new-instance v2, Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object p0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 48
    .line 49
    check-cast p0, Lcom/android/server/om/OverlayReferenceMapper$1;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayReferenceMapper$1;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p4, Landroid/util/ArraySet;

    .line 56
    .line 57
    invoke-virtual {p4, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p0
.end method

.method public final addPkg(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;)Landroid/util/ArraySet;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayables()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/om/OverlayReferenceMapper;->addTarget(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 26
    .line 27
    check-cast v2, Lcom/android/server/om/OverlayReferenceMapper$1;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Lcom/android/server/om/OverlayReferenceMapper$1;->getTargetToOverlayables(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/om/OverlayReferenceMapper;->addOverlay(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuild()V

    .line 47
    .line 48
    .line 49
    :cond_2
    monitor-exit v0

    .line 50
    return-object v1

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final addTarget(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Collection;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p0, v1, p3}, Lcom/android/server/om/OverlayReferenceMapper;->removeTarget(Ljava/lang/String;Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayables()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0, v4, v1, p3}, Lcom/android/server/om/OverlayReferenceMapper;->addTargetToMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 42
    .line 43
    .line 44
    move-object v5, p2

    .line 45
    check-cast v5, Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 66
    .line 67
    iget-object v7, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 68
    .line 69
    check-cast v7, Lcom/android/server/om/OverlayReferenceMapper$1;

    .line 70
    .line 71
    invoke-virtual {v7, v6}, Lcom/android/server/om/OverlayReferenceMapper$1;->getTargetToOverlayables(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    check-cast v7, Ljava/util/Set;

    .line 80
    .line 81
    invoke-static {v7}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-eqz v8, :cond_2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_1

    .line 93
    .line 94
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {p0, v4, v1, v6, p3}, Lcom/android/server/om/OverlayReferenceMapper;->addOverlayToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p0
.end method

.method public final addTargetToMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/util/ArraySet;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    new-instance v1, Landroid/util/ArraySet;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 38
    .line 39
    check-cast p0, Lcom/android/server/om/OverlayReferenceMapper$1;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayReferenceMapper$1;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p3, Landroid/util/ArraySet;

    .line 46
    .line 47
    invoke-virtual {p3, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public getActorPkgToPkgs()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Landroid/util/ArrayMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isValidActor(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuild()V

    .line 17
    .line 18
    .line 19
    iput-boolean v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    const-string v1, "OverlayReferenceMapper"

    .line 26
    .line 27
    const-string v3, "The actor map was queried before the system was ready, which mayresult in decreased performance."

    .line 28
    .line 29
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    :try_start_4
    throw p0

    .line 35
    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ljava/util/Set;

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    goto :goto_3

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    goto :goto_4

    .line 55
    :cond_2
    :goto_3
    monitor-exit v0

    .line 56
    return v2

    .line 57
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    throw p0
.end method

.method public final rebuild()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 32
    .line 33
    check-cast v3, Lcom/android/server/om/OverlayReferenceMapper$1;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Lcom/android/server/om/OverlayReferenceMapper$1;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v4, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/util/ArrayMap;

    .line 53
    .line 54
    new-instance v4, Ljava/util/HashSet;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Ljava/util/Set;

    .line 84
    .line 85
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Landroid/util/ArrayMap;

    .line 95
    .line 96
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    monitor-exit v0

    .line 101
    return-void

    .line 102
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p0
.end method

.method public final removeOverlay(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_3

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    add-int/lit8 v3, v3, -0x1

    .line 27
    .line 28
    :goto_1
    if-ltz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/util/Set;

    .line 35
    .line 36
    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    iget-object v4, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Ljava/lang/String;

    .line 49
    .line 50
    iget-object v5, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 51
    .line 52
    check-cast v5, Lcom/android/server/om/OverlayReferenceMapper$1;

    .line 53
    .line 54
    invoke-virtual {v5, v4}, Lcom/android/server/om/OverlayReferenceMapper$1;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    move-object v5, p2

    .line 59
    check-cast v5, Landroid/util/ArraySet;

    .line 60
    .line 61
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_3

    .line 67
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method

.method public final removePkg(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/android/server/om/OverlayReferenceMapper;->removeTarget(Ljava/lang/String;Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/om/OverlayReferenceMapper;->removeOverlay(Ljava/lang/String;Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuild()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    return-object v1

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final removeTarget(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 40
    .line 41
    check-cast v4, Lcom/android/server/om/OverlayReferenceMapper$1;

    .line 42
    .line 43
    invoke-virtual {v4, v3}, Lcom/android/server/om/OverlayReferenceMapper$1;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    move-object v4, p2

    .line 48
    check-cast v4, Landroid/util/ArraySet;

    .line 49
    .line 50
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0
.end method
