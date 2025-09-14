.class public final Lcom/android/server/permission/access/appop/PackageAppOpPolicy;
.super Lcom/android/server/permission/access/appop/BaseAppOpPolicy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final migration:Lcom/android/server/permission/access/appop/PackageAppOpMigration;

.field public volatile onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

.field public final onAppOpModeChangedListenersLock:Ljava/lang/Object;

.field public final upgrade:Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/permission/access/appop/PackageAppOpPersistence;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/appop/BaseAppOpPolicy;-><init>(Lcom/android/server/permission/access/appop/BaseAppOpPersistence;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/server/permission/access/appop/PackageAppOpMigration;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->migration:Lcom/android/server/permission/access/appop/PackageAppOpMigration;

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;-><init>(Lcom/android/server/permission/access/appop/PackageAppOpPolicy;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->upgrade:Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;

    .line 22
    .line 23
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/Object;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListenersLock:Ljava/lang/Object;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final getSubjectScheme()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "package"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->migration:Lcom/android/server/permission/access/appop/PackageAppOpMigration;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-class p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->getLegacyAppOpVersion()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-le v0, v1, :cond_3

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mPackageAppOpModes:Landroid/util/SparseArray;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->readLegacyAppOpState()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object p0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mPackageAppOpModes:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Ljava/util/Map;

    .line 50
    .line 51
    invoke-static {p2}, Lcom/android/server/permission/access/util/PackageVersionMigration;->getVersion$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-virtual {p1, p2, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p2, Lcom/android/server/permission/access/MutableUserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Ljava/util/Map$Entry;

    .line 90
    .line 91
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Ljava/lang/String;

    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Ljava/util/Map;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    iget-object v4, v4, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 108
    .line 109
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_1

    .line 114
    .line 115
    const-string v2, "PackageAppOpMigration"

    .line 116
    .line 117
    const-string v4, "Dropping unknown package "

    .line 118
    .line 119
    const-string v5, " when migrating app op state"

    .line 120
    .line 121
    invoke-static {v4, v3, v5, v2}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    new-instance v4, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 126
    .line 127
    invoke-direct {v4}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v3, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->put(Ljava/lang/Object;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_2

    .line 146
    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    check-cast v5, Ljava/util/Map$Entry;

    .line 152
    .line 153
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    check-cast v6, Ljava/lang/String;

    .line 158
    .line 159
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Ljava/lang/Integer;

    .line 164
    .line 165
    invoke-virtual {v4, v6, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v2, v3, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    throw p0

    .line 183
    :cond_3
    return-void
.end method

.method public final onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object p0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p3, p1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-ge v0, p3, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->keyAt(I)I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/permission/access/MutableUserState;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableUserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v1, v1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ltz v1, :cond_0

    .line 36
    .line 37
    invoke-static {p0, v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;I)Lcom/android/server/permission/access/MutableUserState;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v2, v2, Lcom/android/server/permission/access/MutableUserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 58
    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method public final onStateMutated()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_2

    .line 13
    .line 14
    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;

    .line 21
    .line 22
    iget-object v5, v4, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    .line 23
    .line 24
    iget-object v5, v5, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;

    .line 25
    .line 26
    iget-object v6, v4, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    const/4 v8, 0x0

    .line 33
    :goto_1
    if-ge v8, v7, :cond_1

    .line 34
    .line 35
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    check-cast v10, Ljava/lang/Number;

    .line 44
    .line 45
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    check-cast v9, Lcom/android/server/permission/jarjar/kotlin/Triple;

    .line 50
    .line 51
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    const/4 v12, 0x0

    .line 56
    :goto_2
    if-ge v12, v11, :cond_0

    .line 57
    .line 58
    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    check-cast v13, Lcom/android/server/appop/AppOpsService$2;

    .line 63
    .line 64
    invoke-virtual {v9}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getFirst()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v14

    .line 68
    move-object/from16 v17, v14

    .line 69
    .line 70
    check-cast v17, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v9}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v14

    .line 76
    check-cast v14, Ljava/lang/Number;

    .line 77
    .line 78
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    invoke-virtual {v9}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getThird()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v15

    .line 86
    check-cast v15, Ljava/lang/Number;

    .line 87
    .line 88
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v15

    .line 92
    iget-object v13, v13, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 93
    .line 94
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 95
    .line 96
    move-object/from16 v21, v0

    .line 97
    .line 98
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;

    .line 99
    .line 100
    move/from16 v22, v1

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    invoke-direct {v0, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v18

    .line 110
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v19

    .line 114
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v20

    .line 118
    move-object v15, v0

    .line 119
    move-object/from16 v16, v13

    .line 120
    .line 121
    invoke-static/range {v15 .. v20}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    .line 127
    .line 128
    add-int/lit8 v12, v12, 0x1

    .line 129
    .line 130
    move-object/from16 v0, v21

    .line 131
    .line 132
    move/from16 v1, v22

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_0
    move-object/from16 v21, v0

    .line 136
    .line 137
    move/from16 v22, v1

    .line 138
    .line 139
    add-int/lit8 v8, v8, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_1
    move-object/from16 v21, v0

    .line 143
    .line 144
    move/from16 v22, v1

    .line 145
    .line 146
    iget-object v0, v4, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 149
    .line 150
    .line 151
    add-int/lit8 v3, v3, 0x1

    .line 152
    .line 153
    move-object/from16 v0, v21

    .line 154
    .line 155
    move/from16 v1, v22

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_2
    return-void
.end method

.method public final setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->contains(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string p0, "Unable to set app op mode for missing user "

    .line 16
    .line 17
    const-string p1, "PackageAppOpPolicy"

    .line 18
    .line 19
    invoke-static {p3, p0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {p4}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    check-cast v1, Lcom/android/server/permission/access/MutableUserState;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableUserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v1, p4, v2}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/Number;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-ne v1, p5, :cond_1

    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    iget-object p1, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-virtual {p1, p3, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/server/permission/access/MutableUserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 86
    .line 87
    iget-object v1, p1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const/4 v1, 0x0

    .line 103
    :goto_0
    if-eqz v1, :cond_3

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    new-instance v1, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 107
    .line 108
    invoke-direct {v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->put(Ljava/lang/Object;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V

    .line 112
    .line 113
    .line 114
    :goto_1
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 115
    .line 116
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v1, p4, v2, v0}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->putWithDefault(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->remove$1(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    iget-object p0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 139
    .line 140
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    const/4 v0, 0x0

    .line 147
    :goto_2
    if-ge v0, p1, :cond_5

    .line 148
    .line 149
    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-static {p4}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    new-instance v3, Lcom/android/server/permission/jarjar/kotlin/Triple;

    .line 165
    .line 166
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-direct {v3, p2, v4, v2}, Lcom/android/server/permission/jarjar/kotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iget-object v1, v1, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    .line 178
    .line 179
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_5
    return-void
.end method

.method public final upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->upgrade:Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-gt p4, v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    iget-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p0, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0, p4}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p0, 0x0

    .line 46
    :goto_0
    const-string p4, "android:run_in_background"

    .line 47
    .line 48
    invoke-static {p4}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {p0, p4, v1}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Ljava/lang/Number;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v4, "android:run_any_in_background"

    .line 71
    .line 72
    move-object v1, p1

    .line 73
    move v3, p3

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;ILjava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method
