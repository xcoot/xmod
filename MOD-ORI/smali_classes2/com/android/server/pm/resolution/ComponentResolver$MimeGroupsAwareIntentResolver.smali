.class public abstract Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIsUpdatingMimeGroup:Z

.field public final mMimeGroupToFilter:Landroid/util/ArrayMap;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 4
    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 8
    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->copyFrom(Lcom/android/server/IntentResolver;)V

    .line 10
    iget-object p2, p1, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 11
    iget-boolean p1, p1, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    iput-boolean p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    return-void
.end method


# virtual methods
.method public final addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast p1, Lcom/android/server/pm/Computer;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countMimeGroups()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    .line 17
    :goto_0
    if-ltz v2, :cond_2

    .line 18
    .line 19
    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    .line 22
    .line 23
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {p1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getMimeGroups()Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->getMimeGroup(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/util/Collection;

    .line 51
    .line 52
    :goto_1
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :catch_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/lang/String;

    .line 67
    .line 68
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDynamicDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-super {p0, p2}, Lcom/android/server/IntentResolver;->addFilter(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-boolean p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 79
    .line 80
    if-nez p1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/content/IntentFilter;->mimeGroupsIterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    .line 87
    .line 88
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;)I

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void
.end method

.method public final isFilterStopped(Lcom/android/server/pm/Computer;Ljava/lang/Object;I)Z
    .locals 1

    .line 1
    check-cast p2, Landroid/util/Pair;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 6
    .line 7
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x1

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    .line 18
    .line 19
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 p1, 0x0

    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    iget-object p2, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 31
    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    const/16 p2, 0x8

    .line 42
    .line 43
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    :goto_0
    move v0, p1

    .line 70
    :goto_1
    return v0
.end method

.method public final removeFilterInternal(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/IntentFilter;->mimeGroupsIterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/IntentFilter;->clearDynamicDataTypes()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, [Landroid/util/Pair;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    array-length v1, p3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v0

    .line 15
    :goto_0
    const/4 v2, 0x1

    .line 16
    iput-boolean v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 17
    .line 18
    move v3, v0

    .line 19
    move v4, v3

    .line 20
    :goto_1
    if-ge v3, v1, :cond_6

    .line 21
    .line 22
    aget-object v5, p3, v3

    .line 23
    .line 24
    if-eqz v5, :cond_6

    .line 25
    .line 26
    invoke-virtual {p0, p2, v5}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_5

    .line 31
    .line 32
    invoke-virtual {p0, v5}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v6}, Landroid/content/IntentFilter;->dataTypes()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {p0, v5}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v5}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Landroid/content/IntentFilter;->dataTypes()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    if-nez v7, :cond_1

    .line 51
    .line 52
    if-nez v5, :cond_2

    .line 53
    .line 54
    move v5, v2

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    if-nez v5, :cond_3

    .line 57
    .line 58
    :cond_2
    :goto_2
    move v5, v0

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-eq v6, v8, :cond_4

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v7, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    :goto_3
    xor-int/2addr v5, v2

    .line 82
    or-int/2addr v4, v5

    .line 83
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_6
    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 87
    .line 88
    return v4
.end method
