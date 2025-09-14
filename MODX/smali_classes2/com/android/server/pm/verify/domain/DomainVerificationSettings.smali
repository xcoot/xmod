.class public final Lcom/android/server/pm/verify/domain/DomainVerificationSettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingPkgStates:Landroid/util/ArrayMap;

.field public final mRestoredPkgStates:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationCollector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public mergePkgState(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/Computer;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p3, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p3, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 12
    .line 13
    :goto_0
    const/4 v0, 0x1

    .line 14
    if-nez p3, :cond_1

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 22
    .line 23
    invoke-virtual {p0, p3, v0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_1
    iget-object p3, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 28
    .line 29
    iget-object v1, p2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    move v4, v3

    .line 37
    :goto_2
    if-ge v4, v2, :cond_6

    .line 38
    .line 39
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-interface {p0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-nez v7, :cond_2

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_2
    invoke-virtual {p3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    check-cast v7, Ljava/lang/Integer;

    .line 63
    .line 64
    if-eqz v7, :cond_3

    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-nez v7, :cond_5

    .line 71
    .line 72
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    const/4 v8, 0x5

    .line 77
    if-eq v7, v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-ne v6, v8, :cond_5

    .line 84
    .line 85
    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {p3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_6
    iget-object p0, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    .line 96
    .line 97
    iget-object p1, p2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    :goto_4
    if-ge v3, p2, :cond_9

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 114
    .line 115
    if-eqz v0, :cond_8

    .line 116
    .line 117
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 118
    .line 119
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 124
    .line 125
    iget-boolean v0, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 126
    .line 127
    if-nez v2, :cond_7

    .line 128
    .line 129
    new-instance v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 130
    .line 131
    invoke-direct {v2, p3, v1, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_7
    iget-object p3, v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 139
    .line 140
    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 141
    .line 142
    .line 143
    iput-boolean v0, v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 144
    .line 145
    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_9
    return-void
.end method

.method public final readSettings(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Lcom/android/server/pm/ComputerLocked;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->active:Landroid/util/ArrayMap;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->restored:Landroid/util/ArrayMap;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-ge v4, v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 25
    .line 26
    iget-object v6, v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v7, p2, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 35
    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    iget-object v6, v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mId:Ljava/util/UUID;

    .line 39
    .line 40
    iget-object v8, v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mId:Ljava/util/UUID;

    .line 41
    .line 42
    invoke-virtual {v6, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, v7, v5, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mergePkgState(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/Computer;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_3

    .line 54
    :cond_0
    iget-object v7, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v7, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    :goto_2
    if-ge v3, p2, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    check-cast p3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    .line 75
    .line 76
    iget-object v2, p3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    monitor-exit v1

    .line 85
    return-void

    .line 86
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method

.method public final removeUser(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_0

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 21
    .line 22
    invoke-virtual {v4, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_1
    if-ge v2, v1, :cond_1

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 45
    .line 46
    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final restoreSettings(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Lcom/android/server/pm/Computer;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->restored:Landroid/util/ArrayMap;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->active:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter p1

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_7

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 27
    .line 28
    iget-object v3, v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, p2, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 37
    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_6

    .line 51
    :cond_0
    :goto_1
    if-nez v4, :cond_1

    .line 52
    .line 53
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 60
    .line 61
    :cond_1
    if-eqz v4, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0, v4, v2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mergePkgState(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Lcom/android/server/pm/Computer;)V

    .line 64
    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_2
    iget-object v4, v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    const/4 v6, 0x1

    .line 74
    sub-int/2addr v5, v6

    .line 75
    :goto_2
    if-ltz v5, :cond_6

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Ljava/lang/Integer;

    .line 82
    .line 83
    if-eqz v7, :cond_5

    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    const/4 v8, 0x5

    .line 90
    if-eq v7, v6, :cond_4

    .line 91
    .line 92
    if-ne v7, v8, :cond_3

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-virtual {v4, v5, v7}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, -0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    .line 110
    .line 111
    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_7
    monitor-exit p1

    .line 118
    return-void

    .line 119
    :goto_6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    throw p0
.end method
