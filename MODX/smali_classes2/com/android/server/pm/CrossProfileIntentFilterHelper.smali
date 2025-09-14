.class public final Lcom/android/server/pm/CrossProfileIntentFilterHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mSettings:Lcom/android/server/pm/Settings;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mUserManagerService:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/UserManagerInternal;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mSettings:Lcom/android/server/pm/Settings;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mUserManagerService:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final clearCrossProfileIntentFilters(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mSettings:Lcom/android/server/pm/Settings;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Landroid/util/ArraySet;

    .line 13
    .line 14
    iget-object v3, v1, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 38
    .line 39
    iget-object v4, v3, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    if-eqz p3, :cond_1

    .line 48
    .line 49
    iget v4, v3, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-ne v4, v5, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mUserManagerService:Lcom/android/server/pm/UserManagerService;

    .line 61
    .line 62
    iget v5, v3, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/pm/UserManagerService;->isCrossProfileIntentFilterAccessible(IIZ)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_0

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 77
    .line 78
    return-void

    .line 79
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 81
    .line 82
    throw p0
.end method

.method public final updateDefaultCrossProfileIntentFilter()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 25
    .line 26
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/content/pm/UserProperties;->getUpdateCrossProfileIntentFiltersOnOTA()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 47
    .line 48
    if-eq v3, v4, :cond_0

    .line 49
    .line 50
    iget-object v5, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->clearCrossProfileIntentFilters(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 61
    .line 62
    .line 63
    iget-object v4, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 70
    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->clearCrossProfileIntentFilters(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 76
    .line 77
    .line 78
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 79
    .line 80
    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/UserManagerInternal;->setDefaultCrossProfileIntentFilters(II)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method
