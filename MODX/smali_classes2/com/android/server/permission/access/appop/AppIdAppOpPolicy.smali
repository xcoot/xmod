.class public final Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;
.super Lcom/android/server/permission/access/appop/BaseAppOpPolicy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final migration:Lcom/android/server/permission/access/appop/AppIdAppOpMigration;

.field public volatile onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

.field public final onAppOpModeChangedListenersLock:Ljava/lang/Object;

.field public final upgrade:Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/permission/access/appop/AppIdAppOpPersistence;

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
    new-instance v0, Lcom/android/server/permission/access/appop/AppIdAppOpMigration;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->migration:Lcom/android/server/permission/access/appop/AppIdAppOpMigration;

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;-><init>(Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->upgrade:Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;

    .line 22
    .line 23
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/Object;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListenersLock:Ljava/lang/Object;

    .line 36
    .line 37
    return-void
.end method

.method public static getAppOpMode(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0, p3, p1}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ljava/lang/Number;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method


# virtual methods
.method public final getSubjectScheme()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "uid"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->migration:Lcom/android/server/permission/access/appop/AppIdAppOpMigration;

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
    if-le v0, v1, :cond_4

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mAppIdAppOpModes:Landroid/util/SparseArray;

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
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object p0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mAppIdAppOpModes:Landroid/util/SparseArray;

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
    iget-object v1, p2, Lcom/android/server/permission/access/MutableUserState;->appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

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
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_4

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
    check-cast v3, Ljava/lang/Integer;

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
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 120
    .line 121
    if-nez v4, :cond_2

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    const/16 v6, 0x2710

    .line 128
    .line 129
    if-lt v5, v6, :cond_2

    .line 130
    .line 131
    const-string v2, "AppIdAppOpMigration"

    .line 132
    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v5, "Dropping unknown app ID "

    .line 136
    .line 137
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v3, " when migrating app op state"

    .line 144
    .line 145
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_2
    new-instance v5, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 157
    .line 158
    invoke-direct {v5}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    invoke-static {v1, v3, v5}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_3

    .line 181
    .line 182
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v3, Ljava/util/Map$Entry;

    .line 187
    .line 188
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    check-cast v6, Ljava/lang/String;

    .line 193
    .line 194
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    check-cast v3, Ljava/lang/Integer;

    .line 199
    .line 200
    invoke-virtual {v5, v6, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_3
    if-eqz v4, :cond_1

    .line 205
    .line 206
    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    const/4 v5, 0x0

    .line 217
    :goto_3
    if-ge v5, v3, :cond_1

    .line 218
    .line 219
    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    check-cast v6, Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    invoke-virtual {v2, v6, v7}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    add-int/lit8 v5, v5, 0x1

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    throw p0

    .line 239
    :cond_4
    return-void
.end method

.method public final onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 4

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
    iget-object v0, p1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->keyAt(I)I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/permission/access/MutableUserState;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableUserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v2, v2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ltz v2, :cond_0

    .line 36
    .line 37
    invoke-static {p0, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;I)Lcom/android/server/permission/access/MutableUserState;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v3, v3, Lcom/android/server/permission/access/MutableUserState;->appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->removeAt$1(I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public final onStateMutated()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

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
    check-cast v4, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;

    .line 21
    .line 22
    iget-object v5, v4, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    .line 23
    .line 24
    iget-object v5, v5, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;

    .line 25
    .line 26
    iget-object v6, v4, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;->pendingChanges:Landroid/util/LongSparseArray;

    .line 27
    .line 28
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

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
    invoke-virtual {v6, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v9

    .line 39
    invoke-virtual {v6, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v11

    .line 43
    check-cast v11, Ljava/lang/Number;

    .line 44
    .line 45
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    const/4 v12, 0x0

    .line 53
    :goto_2
    if-ge v12, v11, :cond_0

    .line 54
    .line 55
    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    check-cast v13, Lcom/android/server/appop/AppOpsService$2;

    .line 60
    .line 61
    invoke-static {v9, v10}, Lcom/android/internal/util/IntPair;->first(J)I

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    invoke-static {v9, v10}, Lcom/android/internal/util/IntPair;->second(J)I

    .line 66
    .line 67
    .line 68
    move-result v15

    .line 69
    const-string v2, "default:0"

    .line 70
    .line 71
    invoke-virtual {v13, v14, v15, v2}, Lcom/android/server/appop/AppOpsService$2;->onUidModeChanged(IILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v12, v12, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-object v2, v4, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;->pendingChanges:Landroid/util/LongSparseArray;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    return-void
.end method

.method public final setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z
    .locals 6

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
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "Unable to set app op mode for missing user "

    .line 17
    .line 18
    const-string p1, "AppIdAppOpPolicy"

    .line 19
    .line 20
    invoke-static {p3, p0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    invoke-static {p4}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast v2, Lcom/android/server/permission/access/MutableUserState;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableUserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v2, p4, v3}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/Number;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-ne v2, p5, :cond_1

    .line 68
    .line 69
    return v1

    .line 70
    :cond_1
    iget-object p1, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-virtual {p1, p3, v2}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p1, Lcom/android/server/permission/access/MutableUserState;->appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-eqz v3, :cond_2

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    new-instance v3, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 96
    .line 97
    invoke-direct {v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2, v3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 101
    .line 102
    .line 103
    :goto_0
    check-cast v3, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 104
    .line 105
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v3, p4, v4, v0}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->putWithDefault(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    invoke-static {p1, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    .line 125
    .line 126
    .line 127
    :cond_3
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    :goto_1
    if-ge v1, p1, :cond_4

    .line 136
    .line 137
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-static {p4}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 157
    .line 158
    .line 159
    move-result-wide v3

    .line 160
    iget-object v0, v0, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;->pendingChanges:Landroid/util/LongSparseArray;

    .line 161
    .line 162
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    return v2
.end method

.method public final upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->upgrade:Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-gt p4, v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v1, "android:run_in_background"

    .line 16
    .line 17
    invoke-static {p1, v0, p3, v1}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-string v4, "android:run_any_in_background"

    .line 26
    .line 27
    move-object v0, p0

    .line 28
    move-object v1, p1

    .line 29
    move v3, p3

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    const/16 v0, 0xd

    .line 34
    .line 35
    if-gt p4, v0, :cond_1

    .line 36
    .line 37
    const/16 p4, 0x6b

    .line 38
    .line 39
    invoke-static {p4}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const-string v1, "android:schedule_exact_alarm"

    .line 68
    .line 69
    invoke-static {p1, v0, p3, v1}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {p4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 74
    .line 75
    .line 76
    move-result p4

    .line 77
    if-ne v0, p4, :cond_1

    .line 78
    .line 79
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const-string v4, "android:schedule_exact_alarm"

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    move-object v0, p0

    .line 87
    move-object v1, p1

    .line 88
    move v3, p3

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    .line 90
    .line 91
    .line 92
    :cond_1
    return-void
.end method
