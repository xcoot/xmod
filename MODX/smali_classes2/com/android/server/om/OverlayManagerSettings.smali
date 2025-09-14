.class public final Lcom/android/server/om/OverlayManagerSettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mItems:Ljava/util/ArrayList;

.field public final mItemsLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
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
    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getAllBaseCodePaths()Ljava/util/Set;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

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
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v2, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v2, v3, v1}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda1;-><init>(ILjava/util/Set;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda1;-><init>(ILjava/util/Set;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final getEnabled(Landroid/content/om/OverlayIdentifier;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ltz v1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 17
    .line 18
    iget-boolean p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    .line 25
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-gez p1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 22
    .line 23
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ltz v1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    .line 27
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final getOverlaysForTarget(ILjava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance p1, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda4;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-direct {p1, v1, p2}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    move-object p2, p0

    .line 15
    check-cast p2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    new-instance p1, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda9;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-direct {p1, p2}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda9;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->map(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
.end method

.method public final getOverlaysForUser(I)Landroid/util/ArrayMap;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    .line 9
    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 24
    .line 25
    iget-object v3, v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v4, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda9;

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    invoke-direct {v4, v5}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda9;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3, v4}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/util/List;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-object p1
.end method

.method public final getState(Landroid/content/om/OverlayIdentifier;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ltz v1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    .line 25
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final getUsers()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final insert(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

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
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 21
    .line 22
    iget v2, v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    .line 23
    .line 24
    iget v3, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    .line 25
    .line 26
    if-gt v2, v3, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final remove(Landroid/content/om/OverlayIdentifier;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-gez p1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final removeIf(Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ltz v1, :cond_1

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    monitor-exit v0

    .line 53
    return-object p0

    .line 54
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final removeUser(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p1, v2}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;-><init>(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final select(Landroid/content/om/OverlayIdentifier;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 20
    .line 21
    iget v4, v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    .line 22
    .line 23
    if-ne v4, p2, :cond_0

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    .line 26
    .line 27
    invoke-virtual {v3, p1}, Landroid/content/om/OverlayIdentifier;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return v2

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    monitor-exit v0

    .line 41
    const/4 p0, -0x1

    .line 42
    return p0

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final selectWhereUser(I)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v2, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v2, p1, v3}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;-><init>(II)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/CollectionUtils;->addIf(Ljava/util/List;Ljava/util/Collection;Ljava/util/function/Predicate;)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final setBaseCodePath(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ltz v1, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    monitor-exit v0

    .line 35
    return p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    .line 39
    .line 40
    invoke-direct {p0, p2, p1}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ltz v1, :cond_2

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 25
    .line 26
    if-eq p1, p3, :cond_1

    .line 27
    .line 28
    iput-boolean p3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    :cond_1
    :goto_0
    monitor-exit v0

    .line 35
    return p2

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    .line 39
    .line 40
    invoke-direct {p0, p2, p1}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-ltz p1, :cond_1

    .line 9
    .line 10
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/4 v1, 0x1

    .line 17
    sub-int/2addr p2, v1

    .line 18
    if-ne p1, p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return v1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    monitor-exit v0

    .line 44
    const/4 p0, 0x0

    .line 45
    return p0

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final setPriority(Landroid/content/om/OverlayIdentifier;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 4
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5
    iput p3, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    const/4 p2, 0x0

    .line 6
    iput-object p2, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->insert(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    throw p0

    .line 10
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Z
    .locals 6

    .line 11
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/om/OverlayIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 13
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result p1

    if-gez p1, :cond_1

    .line 15
    monitor-exit v0

    return v2

    .line 16
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result v1

    if-gez v1, :cond_2

    .line 17
    monitor-exit v0

    return v2

    .line 18
    :cond_2
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 19
    iget-object v4, v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 20
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 22
    iget-object v1, v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 23
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 24
    monitor-exit v0

    return v2

    .line 25
    :cond_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    invoke-virtual {p0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result p2

    const/4 p3, 0x1

    add-int/2addr p2, p3

    .line 27
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eq p1, p2, :cond_4

    move v2, p3

    .line 28
    :cond_4
    monitor-exit v0

    return v2

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setState(Landroid/content/om/OverlayIdentifier;II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ltz v1, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 17
    .line 18
    iget p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 19
    .line 20
    if-eq p1, p3, :cond_0

    .line 21
    .line 22
    iput p3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    monitor-exit v0

    .line 31
    return p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    .line 35
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method
