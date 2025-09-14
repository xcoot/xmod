.class public final Lcom/android/server/pm/CrossProfileIntentResolverEngine;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/DefaultAppProvider;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 21
    .line 22
    return-void
.end method

.method public static canReachToInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IILjava/util/Set;)Z
    .locals 12

    .line 1
    move/from16 v6, p4

    .line 2
    .line 3
    const/4 v7, 0x1

    .line 4
    move v0, p3

    .line 5
    if-ne v0, v6, :cond_0

    .line 6
    .line 7
    return v7

    .line 8
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    move-object/from16 v8, p5

    .line 13
    .line 14
    check-cast v8, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    const/4 v10, 0x0

    .line 24
    if-eqz v9, :cond_4

    .line 25
    .line 26
    move v11, v10

    .line 27
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ge v11, v0, :cond_4

    .line 32
    .line 33
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 38
    .line 39
    iget v1, v0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 40
    .line 41
    if-ne v1, v6, :cond_1

    .line 42
    .line 43
    return v7

    .line 44
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget v1, v0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 56
    .line 57
    and-int/lit8 v1, v1, 0x10

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    iget v1, v0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    iget v3, v0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 71
    .line 72
    move-object v0, p0

    .line 73
    move-object v1, p1

    .line 74
    move-object v2, p2

    .line 75
    move/from16 v4, p4

    .line 76
    .line 77
    move-object/from16 v5, p5

    .line 78
    .line 79
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->canReachToInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IILjava/util/Set;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    return v7

    .line 86
    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    return v10
.end method

.method public static resolveInfoFromCrossProfileDomainInfo(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object v0
.end method

.method public static shouldSkipCurrentProfile(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    move p2, p1

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-ge p2, p3, :cond_1

    .line 14
    .line 15
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    check-cast p3, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 20
    .line 21
    iget p3, p3, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 22
    .line 23
    and-int/lit8 p3, p3, 0x2

    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return p1
.end method


# virtual methods
.method public final chooseCrossProfileResolver(Lcom/android/server/pm/Computer;IIZJ)Lcom/android/server/pm/CrossProfileResolver;
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->isNoFilteringPropertyConfiguredForUser(I)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 6
    .line 7
    if-nez p2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p3}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->isNoFilteringPropertyConfiguredForUser(I)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p2, Lcom/android/server/pm/DefaultCrossProfileResolver;

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 23
    .line 24
    invoke-direct {p2, p1, v0, p0}, Lcom/android/server/pm/DefaultCrossProfileResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;)V

    .line 25
    .line 26
    .line 27
    return-object p2

    .line 28
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    .line 29
    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    iget-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {p2}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    .line 39
    .line 40
    :cond_2
    iget-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    .line 43
    .line 44
    const-wide/32 v1, 0x20000000

    .line 45
    .line 46
    .line 47
    and-long/2addr v1, p5

    .line 48
    const-wide/16 v3, 0x0

    .line 49
    .line 50
    cmp-long p3, v1, v3

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    const/4 v2, 0x0

    .line 54
    if-nez p3, :cond_4

    .line 55
    .line 56
    const-wide v5, 0x400000000L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    and-long/2addr p5, v5

    .line 62
    cmp-long p3, p5, v3

    .line 63
    .line 64
    if-eqz p3, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move p3, v2

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    :goto_1
    move p3, v1

    .line 70
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 71
    .line 72
    .line 73
    move-result-wide p5

    .line 74
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const v4, 0x1110165

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->getEnableAppCloningBuildingBlocks()Z

    .line 88
    .line 89
    .line 90
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-eqz p0, :cond_5

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_4

    .line 96
    :cond_5
    move v1, v2

    .line 97
    :goto_3
    invoke-static {p5, p6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    if-eqz v1, :cond_7

    .line 101
    .line 102
    if-nez p4, :cond_6

    .line 103
    .line 104
    if-eqz p3, :cond_7

    .line 105
    .line 106
    const-string p0, "android.permission.QUERY_CLONED_APPS"

    .line 107
    .line 108
    invoke-virtual {p2, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-nez p0, :cond_7

    .line 113
    .line 114
    :cond_6
    new-instance p0, Lcom/android/server/pm/NoFilteringResolver;

    .line 115
    .line 116
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;)V

    .line 121
    .line 122
    .line 123
    return-object p0

    .line 124
    :cond_7
    const/4 p0, 0x0

    .line 125
    return-object p0

    .line 126
    :goto_4
    invoke-static {p5, p6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    .line 128
    .line 129
    throw p0
.end method

.method public final filterCrossProfileCandidatesWithDomainPreferredActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLandroid/util/SparseArray;IIZ)Ljava/util/List;
    .locals 11

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ge v2, v3, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, -0x2

    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/util/Collection;

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    move/from16 v5, p7

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    move-object v4, p0

    .line 39
    move-object v5, p1

    .line 40
    move/from16 v6, p6

    .line 41
    .line 42
    move/from16 v8, p8

    .line 43
    .line 44
    move-wide v9, p3

    .line 45
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->chooseCrossProfileResolver(Lcom/android/server/pm/Computer;IIZJ)Lcom/android/server/pm/CrossProfileResolver;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/util/List;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 58
    .line 59
    .line 60
    move/from16 v5, p7

    .line 61
    .line 62
    invoke-virtual {v3, v5, v4}, Lcom/android/server/pm/CrossProfileResolver;->filterResolveInfoWithDomainPreferredActivity(ILjava/util/List;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move/from16 v5, p7

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Ljava/util/Collection;

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    .line 81
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-static {v1}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveInfoFromCrossProfileDomainInfo(Ljava/util/List;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0
.end method

.method public final isNoFilteringPropertyConfiguredForUser(I)Z
    .locals 2

    .line 1
    const-string v0, "isProfile"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->isProfileUnchecked(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentResolutionStrategy()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const/4 p1, 0x1

    .line 30
    if-ne p0, p1, :cond_2

    .line 31
    .line 32
    move v1, p1

    .line 33
    :cond_2
    return v1
.end method

.method public final resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;ZZLjava/util/function/Function;Ljava/util/Set;)Ljava/util/List;
    .locals 19

    .line 1
    move-object/from16 v13, p1

    .line 2
    .line 3
    move/from16 v14, p5

    .line 4
    .line 5
    move-object/from16 v0, p12

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v15, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    move-object/from16 v12, p2

    .line 22
    .line 23
    move-object/from16 v11, p3

    .line 24
    .line 25
    invoke-interface {v13, v12, v11, v14}, Lcom/android/server/pm/Computer;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_b

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    move/from16 v0, p4

    .line 38
    .line 39
    move v5, v14

    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_1
    new-instance v10, Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    move v2, v9

    .line 49
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ge v2, v3, :cond_3

    .line 54
    .line 55
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 60
    .line 61
    iget v4, v3, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 62
    .line 63
    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->contains(I)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    iget v5, v3, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 68
    .line 69
    if-nez v4, :cond_2

    .line 70
    .line 71
    new-instance v4, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v10, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    if-nez v0, :cond_4

    .line 92
    .line 93
    new-instance v0, Ljava/util/HashSet;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_4
    move-object v8, v0

    .line 106
    move v7, v9

    .line 107
    :goto_1
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-ge v7, v0, :cond_a

    .line 112
    .line 113
    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 114
    .line 115
    .line 116
    move-result v16

    .line 117
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    :cond_5
    move v13, v7

    .line 128
    move-object v14, v8

    .line 129
    move/from16 v18, v9

    .line 130
    .line 131
    move-object/from16 v17, v10

    .line 132
    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :cond_6
    move-object/from16 v0, p0

    .line 136
    .line 137
    move-object/from16 v1, p1

    .line 138
    .line 139
    move/from16 v2, p5

    .line 140
    .line 141
    move/from16 v3, v16

    .line 142
    .line 143
    move/from16 v4, p10

    .line 144
    .line 145
    move-wide/from16 v5, p6

    .line 146
    .line 147
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->chooseCrossProfileResolver(Lcom/android/server/pm/Computer;IIZJ)Lcom/android/server/pm/CrossProfileResolver;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eqz v0, :cond_5

    .line 152
    .line 153
    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    move-object/from16 v17, v1

    .line 158
    .line 159
    check-cast v17, Ljava/util/List;

    .line 160
    .line 161
    move-object/from16 v1, p1

    .line 162
    .line 163
    move-object/from16 v2, p2

    .line 164
    .line 165
    move-object/from16 v3, p3

    .line 166
    .line 167
    move/from16 v4, p5

    .line 168
    .line 169
    move/from16 v5, v16

    .line 170
    .line 171
    move v13, v7

    .line 172
    move-wide/from16 v6, p6

    .line 173
    .line 174
    move-object v14, v8

    .line 175
    move-object/from16 v8, p8

    .line 176
    .line 177
    move v12, v9

    .line 178
    move-object/from16 v9, v17

    .line 179
    .line 180
    move-object v12, v10

    .line 181
    move/from16 v10, p9

    .line 182
    .line 183
    move-object/from16 v11, p11

    .line 184
    .line 185
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/CrossProfileResolver;->resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;Ljava/util/List;ZLjava/util/function/Function;)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 190
    .line 191
    .line 192
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    const/4 v9, 0x0

    .line 200
    :goto_2
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    check-cast v1, Ljava/util/List;

    .line 205
    .line 206
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-ge v9, v1, :cond_9

    .line 211
    .line 212
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    check-cast v1, Ljava/util/List;

    .line 217
    .line 218
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    check-cast v1, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 223
    .line 224
    iget v1, v1, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 225
    .line 226
    and-int/lit8 v1, v1, 0x10

    .line 227
    .line 228
    if-eqz v1, :cond_8

    .line 229
    .line 230
    check-cast v0, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    const/4 v11, 0x0

    .line 237
    if-lez v1, :cond_7

    .line 238
    .line 239
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 244
    .line 245
    iget-object v1, v1, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 246
    .line 247
    if-eqz v1, :cond_7

    .line 248
    .line 249
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 254
    .line 255
    iget-object v0, v0, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 256
    .line 257
    iget v0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 258
    .line 259
    if-ltz v0, :cond_7

    .line 260
    .line 261
    const/4 v0, 0x1

    .line 262
    move v9, v0

    .line 263
    goto :goto_3

    .line 264
    :cond_7
    move v9, v11

    .line 265
    :goto_3
    move-object/from16 v0, p0

    .line 266
    .line 267
    move-object/from16 v1, p1

    .line 268
    .line 269
    move-object/from16 v2, p2

    .line 270
    .line 271
    move-object/from16 v3, p3

    .line 272
    .line 273
    move/from16 v4, p4

    .line 274
    .line 275
    move/from16 v5, v16

    .line 276
    .line 277
    move-wide/from16 v6, p6

    .line 278
    .line 279
    move-object/from16 v8, p8

    .line 280
    .line 281
    move/from16 v10, p10

    .line 282
    .line 283
    move/from16 v16, v11

    .line 284
    .line 285
    move-object/from16 v11, p11

    .line 286
    .line 287
    move-object/from16 v17, v12

    .line 288
    .line 289
    move/from16 v18, v16

    .line 290
    .line 291
    move-object v12, v14

    .line 292
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;ZZLjava/util/function/Function;Ljava/util/Set;)Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 297
    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_8
    move-object/from16 v17, v12

    .line 301
    .line 302
    const/16 v18, 0x0

    .line 303
    .line 304
    add-int/lit8 v9, v9, 0x1

    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_9
    move-object/from16 v17, v12

    .line 308
    .line 309
    const/16 v18, 0x0

    .line 310
    .line 311
    :goto_4
    add-int/lit8 v7, v13, 0x1

    .line 312
    .line 313
    move-object/from16 v13, p1

    .line 314
    .line 315
    move-object/from16 v12, p2

    .line 316
    .line 317
    move-object/from16 v11, p3

    .line 318
    .line 319
    move-object v8, v14

    .line 320
    move-object/from16 v10, v17

    .line 321
    .line 322
    move/from16 v9, v18

    .line 323
    .line 324
    move/from16 v14, p5

    .line 325
    .line 326
    goto/16 :goto_1

    .line 327
    .line 328
    :cond_a
    return-object v15

    .line 329
    :cond_b
    move/from16 v0, p4

    .line 330
    .line 331
    move/from16 v5, p5

    .line 332
    .line 333
    :goto_5
    if-ne v0, v5, :cond_c

    .line 334
    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasWebURI()Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_c

    .line 340
    .line 341
    move-object/from16 v0, p1

    .line 342
    .line 343
    invoke-interface {v0, v5}, Lcom/android/server/pm/Computer;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    if-eqz v1, :cond_c

    .line 348
    .line 349
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    .line 350
    .line 351
    move-object/from16 v0, p1

    .line 352
    .line 353
    move-object/from16 v1, p2

    .line 354
    .line 355
    move-object/from16 v2, p3

    .line 356
    .line 357
    move-wide/from16 v3, p6

    .line 358
    .line 359
    move/from16 v5, p5

    .line 360
    .line 361
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    if-eqz v0, :cond_c

    .line 366
    .line 367
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    :cond_c
    return-object v15
.end method
