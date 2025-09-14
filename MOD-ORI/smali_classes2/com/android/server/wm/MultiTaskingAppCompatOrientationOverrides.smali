.class public final Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDefaultDisabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public mDefaultEnabled:Z

.field public mDefaultEnabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mDumpInterface:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$$ExternalSyntheticLambda0;

.field public mTabletRotationCompatList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v4, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 10
    .line 11
    sget-object v2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

    .line 12
    .line 13
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    .line 14
    .line 15
    const/16 v1, 0x40

    .line 16
    .line 17
    const-string v3, "OrientationControlPackageMap"

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v0, v7

    .line 21
    move v5, v8

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;ZLcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda0;)V

    .line 23
    .line 24
    .line 25
    iput-object v7, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 26
    .line 27
    if-eqz v8, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->setDefaultEnabled(Z)V

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$1;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lcom/android/server/wm/PackagesChange;->sUserChangeCallbacks:Ljava/util/List;

    .line 39
    .line 40
    check-cast p0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final existsEnabledUserOverride()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mChangeValuesAsUser:Ljava/util/Map;

    .line 5
    .line 6
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    const/16 v3, 0x20

    .line 65
    .line 66
    if-ne v2, v3, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    monitor-exit p0

    .line 70
    const/4 p0, 0x1

    .line 71
    return p0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    monitor-exit p0

    .line 75
    const/4 p0, 0x0

    .line 76
    return p0

    .line 77
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw v0
.end method

.method public final getRespectOrientationRequest(ILjava/lang/String;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-static {p1, v1, v0}, Lcom/android/server/wm/MultiTaskingAppCompatUtils;->getAdjustedUserId(IILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x1

    .line 8
    if-eqz p2, :cond_b

    .line 9
    .line 10
    sget-object v1, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    .line 11
    .line 12
    new-instance v2, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, p2, v3}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_7

    .line 25
    .line 26
    :cond_0
    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 28
    .line 29
    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/Integer;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :cond_1
    move v2, v0

    .line 46
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const/4 v3, 0x0

    .line 48
    const/16 v4, 0x1f

    .line 49
    .line 50
    if-eq v2, v0, :cond_2

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_2
    monitor-enter p0

    .line 54
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabled:Z

    .line 55
    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultDisabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    invoke-virtual {v2, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    monitor-exit p0

    .line 69
    move v2, v3

    .line 70
    goto :goto_2

    .line 71
    :catchall_1
    move-exception p1

    .line 72
    goto :goto_5

    .line 73
    :cond_3
    new-instance v2, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    const/4 v5, 0x1

    .line 76
    invoke-direct {v2, p2, v5}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    new-instance v2, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    const/4 v5, 0x3

    .line 88
    invoke-direct {v2, p2, v5}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_4

    .line 96
    .line 97
    monitor-exit p0

    .line 98
    :goto_1
    move v2, v4

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 101
    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    monitor-exit p0

    .line 111
    goto :goto_1

    .line 112
    :cond_5
    monitor-exit p0

    .line 113
    move v2, v0

    .line 114
    :goto_2
    if-eq v2, v0, :cond_6

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    move v2, v0

    .line 118
    :goto_3
    if-ne v2, v0, :cond_7

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_7
    and-int/lit16 v0, v2, -0xc1

    .line 122
    .line 123
    if-eqz v0, :cond_a

    .line 124
    .line 125
    const/4 p0, 0x7

    .line 126
    if-eq v0, p0, :cond_a

    .line 127
    .line 128
    if-eq v0, v4, :cond_a

    .line 129
    .line 130
    const/16 p1, 0x20

    .line 131
    .line 132
    if-eq v0, p1, :cond_a

    .line 133
    .line 134
    and-int/lit8 p1, v2, 0x7

    .line 135
    .line 136
    if-eqz p1, :cond_9

    .line 137
    .line 138
    and-int/lit8 p1, v2, 0x18

    .line 139
    .line 140
    if-eqz p1, :cond_8

    .line 141
    .line 142
    move v0, v4

    .line 143
    goto :goto_4

    .line 144
    :cond_8
    move v0, p0

    .line 145
    goto :goto_4

    .line 146
    :cond_9
    move v0, v3

    .line 147
    :cond_a
    :goto_4
    return v0

    .line 148
    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    throw p1

    .line 150
    :goto_6
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    throw p1

    .line 152
    :cond_b
    :goto_7
    return v0
.end method

.method public final setDefaultEnabled(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setDefaultEnabled: "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    const-string v1, "MultiTaskingAppCompat"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabled:Z

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " to "

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabled:Z

    .line 33
    .line 34
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    new-instance p1, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 41
    .line 42
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION_DISABLED:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 43
    .line 44
    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultDisabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    new-instance p1, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 53
    .line 54
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 55
    .line 56
    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 60
    .line 61
    :goto_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    new-instance p1, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 66
    .line 67
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->TABLET_APP_ROTATION_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 68
    .line 69
    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mTabletRotationCompatList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 73
    .line 74
    :cond_1
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p1
.end method
