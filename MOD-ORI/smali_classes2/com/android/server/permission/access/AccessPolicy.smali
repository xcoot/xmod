.class public final Lcom/android/server/permission/access/AccessPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 42
    .line 43
    return-void
.end method

.method public static final _init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/permission/access/SchemePolicy;->getSubjectScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/permission/access/SchemePolicy;->getObjectScheme()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v1, p0, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iput-object p2, v3, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 20
    .line 21
    iput-object p3, v3, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 22
    .line 23
    iget-object p2, v3, Lcom/android/server/permission/access/MutableExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    move p2, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p3, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 41
    .line 42
    invoke-direct {p3}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    :goto_0
    check-cast p3, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 50
    .line 51
    invoke-virtual {p3, p5}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iput-object p4, v3, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    .line 55
    .line 56
    iget-object p3, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 57
    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    iget-object p2, p3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    move p4, v4

    .line 67
    :goto_1
    if-ge p4, p2, :cond_2

    .line 68
    .line 69
    iget-object p5, p3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-virtual {p5, p4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p5

    .line 75
    iget-object v1, p3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 76
    .line 77
    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 82
    .line 83
    check-cast p5, Ljava/lang/String;

    .line 84
    .line 85
    iget-object p5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 86
    .line 87
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    .line 88
    .line 89
    .line 90
    move-result p5

    .line 91
    move v3, v4

    .line 92
    :goto_2
    if-ge v3, p5, :cond_1

    .line 93
    .line 94
    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 95
    .line 96
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    iget-object v6, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    .line 107
    .line 108
    check-cast v5, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_1
    add-int/lit8 p4, p4, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    iget-object p2, p3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    move p4, v4

    .line 126
    :goto_3
    if-ge p4, p2, :cond_4

    .line 127
    .line 128
    iget-object p5, p3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 129
    .line 130
    invoke-virtual {p5, p4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p5

    .line 134
    iget-object v1, p3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 135
    .line 136
    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 141
    .line 142
    check-cast p5, Ljava/lang/String;

    .line 143
    .line 144
    iget-object p5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 145
    .line 146
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    .line 147
    .line 148
    .line 149
    move-result p5

    .line 150
    move v3, v4

    .line 151
    :goto_4
    if-ge v3, p5, :cond_3

    .line 152
    .line 153
    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 154
    .line 155
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    iget-object v6, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 160
    .line 161
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    .line 166
    .line 167
    check-cast v5, Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v6, p1, v0}, Lcom/android/server/permission/access/SchemePolicy;->onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V

    .line 170
    .line 171
    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_3
    add-int/lit8 p4, p4, 0x1

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    iget-object p3, p2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 183
    .line 184
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 185
    .line 186
    .line 187
    move-result p3

    .line 188
    :goto_5
    if-ge v4, p3, :cond_5

    .line 189
    .line 190
    iget-object p4, p2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 191
    .line 192
    invoke-virtual {p4, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 193
    .line 194
    .line 195
    move-result p4

    .line 196
    invoke-virtual {p2, v4}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 197
    .line 198
    .line 199
    move-result-object p5

    .line 200
    check-cast p5, Lcom/android/server/permission/access/MutableUserState;

    .line 201
    .line 202
    invoke-virtual {p0, p1, v0, p4}, Lcom/android/server/permission/access/AccessPolicy;->upgradePackageVersion(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    .line 203
    .line 204
    .line 205
    add-int/lit8 v4, v4, 0x1

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_5
    return-void

    .line 209
    :cond_6
    const-string p0, "Added package "

    .line 210
    .line 211
    const-string p1, " isn\'t found in packageStates in onPackageAdded()"

    .line 212
    .line 213
    invoke-static {p0, p5, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 218
    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p1
.end method

.method public final onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object p2, v0, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 8
    .line 9
    iput-object p3, v0, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p4, v0, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    .line 12
    .line 13
    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lcom/android/server/pm/pkg/PackageState;

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 22
    .line 23
    iget-object p3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    const/4 p4, 0x0

    .line 30
    move p5, p4

    .line 31
    :goto_0
    if-ge p5, p3, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {v0, p5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v1, p5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 46
    .line 47
    check-cast v0, Ljava/lang/String;

    .line 48
    .line 49
    iget-object v0, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    move v2, p4

    .line 56
    :goto_1
    if-ge v2, v0, :cond_0

    .line 57
    .line 58
    iget-object v3, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Lcom/android/server/permission/access/SchemePolicy;

    .line 71
    .line 72
    check-cast v3, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v4, p1, p2, p6}, Lcom/android/server/permission/access/SchemePolicy;->onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    add-int/lit8 p5, p5, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    return-void

    .line 84
    :cond_2
    const-string p0, "Installed package "

    .line 85
    .line 86
    const-string p1, " isn\'t found in packageStates in onPackageInstalled()"

    .line 87
    .line 88
    invoke-static {p0, p5, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1
.end method

.method public final onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;I)V
    .locals 7

    .line 1
    invoke-interface {p2, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iput-object p2, v2, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 16
    .line 17
    iput-object p3, v2, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 18
    .line 19
    iget-object p2, v2, Lcom/android/server/permission/access/MutableExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    check-cast p3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 26
    .line 27
    invoke-virtual {p3, p6}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    check-cast p3, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz p3, :cond_0

    .line 35
    .line 36
    iget-object v4, p3, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v4, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget-object p3, p3, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-eqz p3, :cond_0

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 54
    .line 55
    invoke-static {p2, p6}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v1, v3

    .line 60
    :goto_0
    iput-object p4, v2, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 63
    .line 64
    iget-object p2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    move p3, v3

    .line 71
    :goto_1
    if-ge p3, p2, :cond_2

    .line 72
    .line 73
    iget-object p4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-virtual {p4, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 86
    .line 87
    check-cast p4, Ljava/lang/String;

    .line 88
    .line 89
    iget-object p4, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    .line 92
    .line 93
    .line 94
    move-result p4

    .line 95
    move v4, v3

    .line 96
    :goto_2
    if-ge v4, p4, :cond_1

    .line 97
    .line 98
    iget-object v5, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 99
    .line 100
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    iget-object v6, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 105
    .line 106
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    .line 111
    .line 112
    check-cast v5, Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v6, p1, p5, p6}, Lcom/android/server/permission/access/SchemePolicy;->onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    add-int/lit8 v4, v4, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    if-eqz v1, :cond_4

    .line 124
    .line 125
    iget-object p2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 126
    .line 127
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    move p3, v3

    .line 132
    :goto_3
    if-ge p3, p2, :cond_4

    .line 133
    .line 134
    iget-object p4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 135
    .line 136
    invoke-virtual {p4, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p4

    .line 140
    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 141
    .line 142
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 147
    .line 148
    check-cast p4, Ljava/lang/String;

    .line 149
    .line 150
    iget-object p4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 151
    .line 152
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    .line 153
    .line 154
    .line 155
    move-result p4

    .line 156
    move v2, v3

    .line 157
    :goto_4
    if-ge v2, p4, :cond_3

    .line 158
    .line 159
    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 160
    .line 161
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 166
    .line 167
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    check-cast v5, Lcom/android/server/permission/access/SchemePolicy;

    .line 172
    .line 173
    check-cast v4, Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v5, p1, p6}, Lcom/android/server/permission/access/SchemePolicy;->onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 176
    .line 177
    .line 178
    add-int/lit8 v2, v2, 0x1

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    :goto_5
    if-ge v3, p1, :cond_6

    .line 195
    .line 196
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->keyAt(I)I

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    check-cast p2, Lcom/android/server/permission/access/MutableUserState;

    .line 204
    .line 205
    iget-object p2, p2, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 206
    .line 207
    iget-object p2, p2, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 208
    .line 209
    check-cast p2, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 210
    .line 211
    iget-object p2, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 212
    .line 213
    invoke-virtual {p2, p5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    if-eqz p2, :cond_5

    .line 218
    .line 219
    invoke-static {v0, v3}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;I)Lcom/android/server/permission/access/MutableUserState;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    iget-object p2, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 228
    .line 229
    invoke-virtual {p2, p5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_6
    return-void

    .line 236
    :cond_7
    const-string p0, "Removed package "

    .line 237
    .line 238
    const-string p1, " is still in packageStates in onPackageRemoved()"

    .line 239
    .line 240
    invoke-static {p0, p5, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 245
    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p1
.end method

.method public final onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;II)V
    .locals 4

    .line 1
    iget-object p6, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {p6}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 4
    .line 5
    .line 6
    move-result-object p6

    .line 7
    iput-object p2, p6, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 8
    .line 9
    iput-object p3, p6, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p4, p6, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/4 p3, 0x0

    .line 22
    move p4, p3

    .line 23
    :goto_0
    if-ge p4, p2, :cond_1

    .line 24
    .line 25
    iget-object p6, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {p6, p4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p6

    .line 31
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 38
    .line 39
    check-cast p6, Ljava/lang/String;

    .line 40
    .line 41
    iget-object p6, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {p6}, Landroid/util/ArrayMap;->size()I

    .line 44
    .line 45
    .line 46
    move-result p6

    .line 47
    move v1, p3

    .line 48
    :goto_1
    if-ge v1, p6, :cond_0

    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v3, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 57
    .line 58
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcom/android/server/permission/access/SchemePolicy;

    .line 63
    .line 64
    check-cast v2, Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v3, p1, p5, p7}, Lcom/android/server/permission/access/SchemePolicy;->onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method public final onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    move-object/from16 v3, p6

    .line 8
    .line 9
    new-instance v4, Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v5, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 15
    .line 16
    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    move-object/from16 v7, p2

    .line 21
    .line 22
    iput-object v7, v6, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 23
    .line 24
    move-object/from16 v8, p3

    .line 25
    .line 26
    iput-object v8, v6, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    if-eqz v9, :cond_5

    .line 41
    .line 42
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    check-cast v9, Ljava/util/Map$Entry;

    .line 47
    .line 48
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    check-cast v10, Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    .line 59
    .line 60
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    if-eqz v11, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    invoke-static {v11, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    if-eqz v11, :cond_0

    .line 76
    .line 77
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    if-eqz v11, :cond_3

    .line 82
    .line 83
    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    if-eqz v11, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    const-string v0, "Package "

    .line 91
    .line 92
    const-string v1, " on storage volume "

    .line 93
    .line 94
    const-string v3, " didn\'t receive onPackageAdded() before onStorageVolumeMounted()"

    .line 95
    .line 96
    invoke-static {v0, v10, v1, v2, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v1

    .line 110
    :cond_3
    :goto_1
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    iget-object v11, v6, Lcom/android/server/permission/access/MutableExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 115
    .line 116
    invoke-virtual {v11}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    check-cast v11, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 121
    .line 122
    invoke-virtual {v11, v9}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    if-eqz v12, :cond_4

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    const/4 v12, 0x1

    .line 130
    invoke-virtual {v4, v9, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 131
    .line 132
    .line 133
    new-instance v12, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 134
    .line 135
    invoke-direct {v12}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11, v9, v12}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 139
    .line 140
    .line 141
    :goto_2
    check-cast v12, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 142
    .line 143
    invoke-virtual {v12, v10}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    move-object/from16 v9, p4

    .line 148
    .line 149
    iput-object v9, v6, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    .line 150
    .line 151
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    const/4 v9, 0x0

    .line 156
    :goto_3
    iget-object v10, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 157
    .line 158
    if-ge v9, v6, :cond_8

    .line 159
    .line 160
    invoke-virtual {v4, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 161
    .line 162
    .line 163
    iget-object v11, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 164
    .line 165
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    const/4 v12, 0x0

    .line 170
    :goto_4
    if-ge v12, v11, :cond_7

    .line 171
    .line 172
    iget-object v13, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 173
    .line 174
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    iget-object v14, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 179
    .line 180
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    check-cast v14, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 185
    .line 186
    check-cast v13, Ljava/lang/String;

    .line 187
    .line 188
    iget-object v13, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 189
    .line 190
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    .line 191
    .line 192
    .line 193
    move-result v13

    .line 194
    const/4 v15, 0x0

    .line 195
    :goto_5
    if-ge v15, v13, :cond_6

    .line 196
    .line 197
    iget-object v8, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 198
    .line 199
    invoke-virtual {v8, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    move-object/from16 v16, v4

    .line 204
    .line 205
    iget-object v4, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 206
    .line 207
    invoke-virtual {v4, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    check-cast v4, Lcom/android/server/permission/access/SchemePolicy;

    .line 212
    .line 213
    check-cast v8, Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    add-int/lit8 v15, v15, 0x1

    .line 219
    .line 220
    move-object/from16 v4, v16

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_6
    move-object/from16 v16, v4

    .line 224
    .line 225
    add-int/lit8 v12, v12, 0x1

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_7
    move-object/from16 v16, v4

    .line 229
    .line 230
    add-int/lit8 v9, v9, 0x1

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_8
    iget-object v4, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 234
    .line 235
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    const/4 v6, 0x0

    .line 240
    :goto_6
    if-ge v6, v4, :cond_a

    .line 241
    .line 242
    iget-object v8, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 243
    .line 244
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 249
    .line 250
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    check-cast v9, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 255
    .line 256
    check-cast v8, Ljava/lang/String;

    .line 257
    .line 258
    iget-object v8, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 259
    .line 260
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    const/4 v11, 0x0

    .line 265
    :goto_7
    if-ge v11, v8, :cond_9

    .line 266
    .line 267
    iget-object v12, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 268
    .line 269
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    iget-object v13, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 274
    .line 275
    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v13

    .line 279
    check-cast v13, Lcom/android/server/permission/access/SchemePolicy;

    .line 280
    .line 281
    check-cast v12, Ljava/lang/String;

    .line 282
    .line 283
    move/from16 v12, p7

    .line 284
    .line 285
    invoke-virtual {v13, v1, v3, v12}, Lcom/android/server/permission/access/SchemePolicy;->onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/List;Z)V

    .line 286
    .line 287
    .line 288
    add-int/lit8 v11, v11, 0x1

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_9
    move/from16 v12, p7

    .line 292
    .line 293
    add-int/lit8 v6, v6, 0x1

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_a
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    :cond_b
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-eqz v4, :cond_d

    .line 309
    .line 310
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    check-cast v4, Ljava/util/Map$Entry;

    .line 315
    .line 316
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 321
    .line 322
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    if-eqz v6, :cond_c

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_c
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-static {v6, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    if-eqz v6, :cond_b

    .line 338
    .line 339
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    iget-object v7, v6, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 344
    .line 345
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    const/4 v8, 0x0

    .line 350
    :goto_9
    if-ge v8, v7, :cond_b

    .line 351
    .line 352
    iget-object v9, v6, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 353
    .line 354
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 355
    .line 356
    .line 357
    move-result v9

    .line 358
    invoke-virtual {v6, v8}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 359
    .line 360
    .line 361
    move-result-object v10

    .line 362
    check-cast v10, Lcom/android/server/permission/access/MutableUserState;

    .line 363
    .line 364
    invoke-virtual {v0, v1, v4, v9}, Lcom/android/server/permission/access/AccessPolicy;->upgradePackageVersion(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    .line 365
    .line 366
    .line 367
    add-int/lit8 v8, v8, 0x1

    .line 368
    .line 369
    goto :goto_9

    .line 370
    :cond_d
    return-void
.end method

.method public final onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/permission/access/AccessState;->userStatesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 28
    .line 29
    new-instance v2, Lcom/android/server/permission/access/MutableUserState;

    .line 30
    .line 31
    invoke-direct {v2}, Lcom/android/server/permission/access/MutableUserState;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, p2, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 38
    .line 39
    iget-object v2, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x0

    .line 46
    move v4, v3

    .line 47
    :goto_0
    if-ge v4, v2, :cond_1

    .line 48
    .line 49
    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    iget-object v6, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 62
    .line 63
    check-cast v5, Ljava/lang/String;

    .line 64
    .line 65
    iget-object v5, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    move v7, v3

    .line 72
    :goto_1
    if-ge v7, v5, :cond_0

    .line 73
    .line 74
    iget-object v8, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    iget-object v9, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    check-cast v9, Lcom/android/server/permission/access/SchemePolicy;

    .line 87
    .line 88
    check-cast v8, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v9, p1, p2}, Lcom/android/server/permission/access/SchemePolicy;->onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v7, v7, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v0, v0, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_3

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Ljava/util/Map$Entry;

    .line 124
    .line 125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 130
    .line 131
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_2

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_2
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/permission/access/AccessPolicy;->upgradePackageVersion(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    return-void
.end method

.method public final onUserRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 6

    .line 1
    iget-object p1, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/server/permission/access/MutableExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/permission/access/AccessState;->userStatesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 p2, 0x0

    .line 40
    move v0, p2

    .line 41
    :goto_0
    if-ge v0, p1, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 56
    .line 57
    check-cast v1, Ljava/lang/String;

    .line 58
    .line 59
    iget-object v1, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    move v3, p2

    .line 66
    :goto_1
    if-ge v3, v1, :cond_0

    .line 67
    .line 68
    iget-object v4, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iget-object v5, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Lcom/android/server/permission/access/SchemePolicy;

    .line 81
    .line 82
    check-cast v4, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    return-void
.end method

.method public final parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 16

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Unexpected event type "

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v2

    .line 23
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v3, 0x1

    .line 28
    const/4 v4, 0x3

    .line 29
    if-eq v0, v3, :cond_2

    .line 30
    .line 31
    if-eq v0, v2, :cond_2

    .line 32
    .line 33
    if-eq v0, v4, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eq v0, v3, :cond_1b

    .line 41
    .line 42
    if-eq v0, v2, :cond_4

    .line 43
    .line 44
    if-ne v0, v4, :cond_3

    .line 45
    .line 46
    goto/16 :goto_e

    .line 47
    .line 48
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v2

    .line 58
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const-string v6, "access"

    .line 67
    .line 68
    invoke-static {v5, v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const-string v6, ", expected "

    .line 73
    .line 74
    const-string v7, "Unexpected post-block depth "

    .line 75
    .line 76
    if-eqz v5, :cond_13

    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_6

    .line 83
    .line 84
    if-ne v5, v2, :cond_5

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 88
    .line 89
    invoke-static {v5, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eq v5, v3, :cond_7

    .line 102
    .line 103
    if-eq v5, v2, :cond_7

    .line 104
    .line 105
    if-eq v5, v4, :cond_7

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eq v5, v3, :cond_8

    .line 113
    .line 114
    if-eq v5, v2, :cond_a

    .line 115
    .line 116
    if-ne v5, v4, :cond_9

    .line 117
    .line 118
    :cond_8
    move-object/from16 v8, p0

    .line 119
    .line 120
    move-object/from16 v11, p1

    .line 121
    .line 122
    move-object/from16 v4, p2

    .line 123
    .line 124
    goto/16 :goto_9

    .line 125
    .line 126
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 127
    .line 128
    invoke-static {v5, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    move-object/from16 v8, p0

    .line 141
    .line 142
    iget-object v9, v8, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 143
    .line 144
    iget-object v10, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 145
    .line 146
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    const/4 v12, 0x0

    .line 151
    :goto_4
    if-ge v12, v10, :cond_c

    .line 152
    .line 153
    iget-object v13, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 154
    .line 155
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    iget-object v14, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 160
    .line 161
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v14

    .line 165
    check-cast v14, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 166
    .line 167
    check-cast v13, Ljava/lang/String;

    .line 168
    .line 169
    iget-object v13, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 170
    .line 171
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    .line 172
    .line 173
    .line 174
    move-result v13

    .line 175
    const/4 v15, 0x0

    .line 176
    :goto_5
    if-ge v15, v13, :cond_b

    .line 177
    .line 178
    iget-object v11, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 179
    .line 180
    invoke-virtual {v11, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    iget-object v3, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 185
    .line 186
    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    check-cast v3, Lcom/android/server/permission/access/SchemePolicy;

    .line 191
    .line 192
    check-cast v11, Ljava/lang/String;

    .line 193
    .line 194
    move-object/from16 v11, p1

    .line 195
    .line 196
    move-object/from16 v4, p2

    .line 197
    .line 198
    invoke-virtual {v3, v11, v4}, Lcom/android/server/permission/access/SchemePolicy;->parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 199
    .line 200
    .line 201
    add-int/lit8 v15, v15, 0x1

    .line 202
    .line 203
    const/4 v3, 0x1

    .line 204
    const/4 v4, 0x3

    .line 205
    goto :goto_5

    .line 206
    :cond_b
    move-object/from16 v11, p1

    .line 207
    .line 208
    move-object/from16 v4, p2

    .line 209
    .line 210
    add-int/lit8 v12, v12, 0x1

    .line 211
    .line 212
    const/4 v3, 0x1

    .line 213
    const/4 v4, 0x3

    .line 214
    goto :goto_4

    .line 215
    :cond_c
    move-object/from16 v11, p1

    .line 216
    .line 217
    move-object/from16 v4, p2

    .line 218
    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-ne v3, v5, :cond_12

    .line 224
    .line 225
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eq v3, v2, :cond_11

    .line 230
    .line 231
    const/4 v9, 0x3

    .line 232
    if-ne v3, v9, :cond_10

    .line 233
    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-le v3, v5, :cond_e

    .line 239
    .line 240
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    const/4 v10, 0x1

    .line 245
    if-eq v3, v10, :cond_d

    .line 246
    .line 247
    if-eq v3, v2, :cond_d

    .line 248
    .line 249
    if-eq v3, v9, :cond_d

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_e
    :goto_7
    const/4 v10, 0x1

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-eq v3, v10, :cond_f

    .line 258
    .line 259
    if-eq v3, v2, :cond_f

    .line 260
    .line 261
    if-eq v3, v9, :cond_f

    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_f
    const/4 v3, 0x1

    .line 265
    const/4 v4, 0x3

    .line 266
    goto/16 :goto_3

    .line 267
    .line 268
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 269
    .line 270
    invoke-static {v3, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v0

    .line 278
    :cond_11
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    const/4 v9, 0x1

    .line 283
    if-eq v3, v9, :cond_d

    .line 284
    .line 285
    if-eq v3, v2, :cond_d

    .line 286
    .line 287
    const/4 v9, 0x3

    .line 288
    if-eq v3, v9, :cond_d

    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 292
    .line 293
    invoke-static {v3, v5, v7, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw v0

    .line 301
    :cond_13
    move-object/from16 v8, p0

    .line 302
    .line 303
    move-object/from16 v11, p1

    .line 304
    .line 305
    move-object/from16 v4, p2

    .line 306
    .line 307
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    const-string v5, "Ignoring unknown tag "

    .line 312
    .line 313
    const-string v9, " when parsing system state"

    .line 314
    .line 315
    const-string v10, "AccessPolicy"

    .line 316
    .line 317
    invoke-static {v5, v3, v9, v10}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    if-ne v3, v0, :cond_1a

    .line 325
    .line 326
    :cond_14
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    if-eq v3, v2, :cond_18

    .line 331
    .line 332
    const/4 v5, 0x3

    .line 333
    if-ne v3, v5, :cond_17

    .line 334
    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    if-le v3, v0, :cond_15

    .line 340
    .line 341
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    const/4 v6, 0x1

    .line 346
    if-eq v3, v6, :cond_14

    .line 347
    .line 348
    if-eq v3, v2, :cond_14

    .line 349
    .line 350
    if-eq v3, v5, :cond_14

    .line 351
    .line 352
    goto :goto_b

    .line 353
    :cond_15
    :goto_c
    const/4 v6, 0x1

    .line 354
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eq v0, v6, :cond_16

    .line 359
    .line 360
    if-eq v0, v2, :cond_16

    .line 361
    .line 362
    if-eq v0, v5, :cond_16

    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_16
    const/4 v3, 0x1

    .line 366
    const/4 v4, 0x3

    .line 367
    goto/16 :goto_1

    .line 368
    .line 369
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 370
    .line 371
    invoke-static {v3, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw v0

    .line 379
    :cond_18
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    const/4 v5, 0x1

    .line 384
    if-eq v3, v5, :cond_19

    .line 385
    .line 386
    if-eq v3, v2, :cond_19

    .line 387
    .line 388
    const/4 v9, 0x3

    .line 389
    if-eq v3, v9, :cond_14

    .line 390
    .line 391
    goto :goto_d

    .line 392
    :cond_19
    const/4 v9, 0x3

    .line 393
    goto :goto_a

    .line 394
    :cond_1a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 395
    .line 396
    invoke-static {v3, v0, v7, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    throw v1

    .line 404
    :cond_1b
    :goto_e
    return-void
.end method

.method public final parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const-string v4, "Unexpected event type "

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    if-ne v3, v5, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 20
    .line 21
    invoke-static {v3, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v6, 0x1

    .line 34
    const/4 v7, 0x3

    .line 35
    if-eq v3, v6, :cond_2

    .line 36
    .line 37
    if-eq v3, v5, :cond_2

    .line 38
    .line 39
    if-eq v3, v7, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eq v3, v6, :cond_2c

    .line 47
    .line 48
    if-eq v3, v5, :cond_4

    .line 49
    .line 50
    if-ne v3, v7, :cond_3

    .line 51
    .line 52
    goto/16 :goto_17

    .line 53
    .line 54
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 55
    .line 56
    invoke-static {v3, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    const-string v9, "access"

    .line 73
    .line 74
    invoke-static {v8, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    const-string v9, "Ignoring unknown tag "

    .line 79
    .line 80
    const-string v10, "AccessPolicy"

    .line 81
    .line 82
    const-string v11, ", expected "

    .line 83
    .line 84
    const-string v12, "Unexpected post-block depth "

    .line 85
    .line 86
    if-eqz v8, :cond_25

    .line 87
    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-eqz v8, :cond_6

    .line 93
    .line 94
    if-ne v8, v5, :cond_5

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 98
    .line 99
    invoke-static {v8, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eq v8, v6, :cond_7

    .line 112
    .line 113
    if-eq v8, v5, :cond_7

    .line 114
    .line 115
    if-eq v8, v7, :cond_7

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eq v8, v6, :cond_8

    .line 123
    .line 124
    if-eq v8, v5, :cond_a

    .line 125
    .line 126
    if-ne v8, v7, :cond_9

    .line 127
    .line 128
    :cond_8
    move/from16 v16, v3

    .line 129
    .line 130
    goto/16 :goto_13

    .line 131
    .line 132
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 133
    .line 134
    invoke-static {v8, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v13

    .line 150
    const-string/jumbo v14, "package-versions"

    .line 151
    .line 152
    .line 153
    invoke-static {v13, v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    const-string v15, "intern(...)"

    .line 158
    .line 159
    const/4 v7, 0x0

    .line 160
    if-eqz v14, :cond_1b

    .line 161
    .line 162
    invoke-virtual {v1, v2, v7}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    if-eqz v14, :cond_c

    .line 178
    .line 179
    if-ne v14, v5, :cond_b

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 183
    .line 184
    invoke-static {v14, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_c
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    if-eq v14, v6, :cond_d

    .line 197
    .line 198
    if-eq v14, v5, :cond_d

    .line 199
    .line 200
    const/4 v5, 0x3

    .line 201
    if-eq v14, v5, :cond_e

    .line 202
    .line 203
    const/4 v5, 0x2

    .line 204
    goto :goto_4

    .line 205
    :cond_d
    const/4 v5, 0x3

    .line 206
    :cond_e
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    const-string v5, " when parsing package versions"

    .line 211
    .line 212
    if-eq v14, v6, :cond_f

    .line 213
    .line 214
    const/4 v6, 0x2

    .line 215
    if-eq v14, v6, :cond_11

    .line 216
    .line 217
    const/4 v6, 0x3

    .line 218
    if-ne v14, v6, :cond_10

    .line 219
    .line 220
    :cond_f
    move/from16 v16, v3

    .line 221
    .line 222
    goto/16 :goto_b

    .line 223
    .line 224
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 225
    .line 226
    invoke-static {v14, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v0

    .line 234
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v14

    .line 242
    move/from16 v16, v3

    .line 243
    .line 244
    const-string/jumbo v3, "package"

    .line 245
    .line 246
    .line 247
    invoke-static {v14, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-eqz v3, :cond_12

    .line 252
    .line 253
    const-string/jumbo v3, "name"

    .line 254
    .line 255
    .line 256
    const/4 v5, 0x0

    .line 257
    invoke-virtual {v0, v5, v3}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    invoke-virtual {v0, v3}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-static {v15, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    const-string/jumbo v14, "version"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v5, v14}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    move-result v14

    .line 279
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-virtual {v13, v3, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-static {v9, v3, v5, v10}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-ne v3, v6, :cond_19

    .line 299
    .line 300
    :cond_13
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    const/4 v5, 0x2

    .line 305
    if-eq v3, v5, :cond_18

    .line 306
    .line 307
    const/4 v14, 0x3

    .line 308
    if-ne v3, v14, :cond_17

    .line 309
    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-le v3, v6, :cond_15

    .line 315
    .line 316
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    const/4 v14, 0x1

    .line 321
    if-eq v3, v14, :cond_14

    .line 322
    .line 323
    if-eq v3, v5, :cond_14

    .line 324
    .line 325
    const/4 v5, 0x3

    .line 326
    if-eq v3, v5, :cond_13

    .line 327
    .line 328
    move v14, v5

    .line 329
    const/4 v5, 0x2

    .line 330
    goto :goto_8

    .line 331
    :cond_14
    const/4 v5, 0x3

    .line 332
    goto :goto_7

    .line 333
    :cond_15
    move v5, v14

    .line 334
    :goto_9
    const/4 v14, 0x1

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    if-eq v3, v14, :cond_16

    .line 340
    .line 341
    const/4 v6, 0x2

    .line 342
    if-eq v3, v6, :cond_16

    .line 343
    .line 344
    if-eq v3, v5, :cond_16

    .line 345
    .line 346
    goto :goto_9

    .line 347
    :cond_16
    move/from16 v3, v16

    .line 348
    .line 349
    const/4 v5, 0x3

    .line 350
    const/4 v6, 0x1

    .line 351
    goto/16 :goto_5

    .line 352
    .line 353
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 354
    .line 355
    invoke-static {v3, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw v0

    .line 363
    :cond_18
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    const/4 v5, 0x1

    .line 368
    if-eq v3, v5, :cond_13

    .line 369
    .line 370
    const/4 v5, 0x2

    .line 371
    if-eq v3, v5, :cond_13

    .line 372
    .line 373
    const/4 v5, 0x3

    .line 374
    if-eq v3, v5, :cond_13

    .line 375
    .line 376
    goto :goto_a

    .line 377
    :cond_19
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 378
    .line 379
    invoke-static {v3, v6, v12, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw v0

    .line 387
    :goto_b
    iget-object v3, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 388
    .line 389
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    const/4 v6, 0x1

    .line 394
    sub-int/2addr v3, v6

    .line 395
    :goto_c
    const/4 v6, -0x1

    .line 396
    if-ge v6, v3, :cond_1e

    .line 397
    .line 398
    iget-object v6, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 399
    .line 400
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    iget-object v14, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 405
    .line 406
    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v14

    .line 410
    check-cast v14, Ljava/lang/Number;

    .line 411
    .line 412
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    .line 413
    .line 414
    .line 415
    check-cast v6, Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 418
    .line 419
    .line 420
    move-result-object v14

    .line 421
    iget-object v14, v14, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 422
    .line 423
    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v14

    .line 427
    if-nez v14, :cond_1a

    .line 428
    .line 429
    const-string v14, "Dropping unknown "

    .line 430
    .line 431
    invoke-static {v14, v6, v5, v10}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iget-object v6, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 435
    .line 436
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    const/4 v6, 0x1

    .line 440
    invoke-virtual {v7, v6}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    .line 441
    .line 442
    .line 443
    :cond_1a
    add-int/lit8 v3, v3, -0x1

    .line 444
    .line 445
    goto :goto_c

    .line 446
    :cond_1b
    move/from16 v16, v3

    .line 447
    .line 448
    const-string v3, "default-permission-grant"

    .line 449
    .line 450
    invoke-static {v13, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    if-eqz v3, :cond_1c

    .line 455
    .line 456
    invoke-virtual {v1, v2, v7}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    const-string v5, "fingerprint"

    .line 464
    .line 465
    const/4 v6, 0x0

    .line 466
    invoke-virtual {v0, v6, v5}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    invoke-virtual {v0, v5}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    invoke-static {v15, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    iput-object v5, v3, Lcom/android/server/permission/access/MutableUserState;->defaultPermissionGrantFingerprint:Ljava/lang/String;

    .line 482
    .line 483
    goto :goto_f

    .line 484
    :cond_1c
    move-object/from16 v3, p0

    .line 485
    .line 486
    iget-object v5, v3, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 487
    .line 488
    iget-object v6, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 489
    .line 490
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 491
    .line 492
    .line 493
    move-result v6

    .line 494
    move v13, v7

    .line 495
    :goto_d
    if-ge v13, v6, :cond_1e

    .line 496
    .line 497
    iget-object v14, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 498
    .line 499
    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v14

    .line 503
    iget-object v15, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 504
    .line 505
    invoke-virtual {v15, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v15

    .line 509
    check-cast v15, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 510
    .line 511
    check-cast v14, Ljava/lang/String;

    .line 512
    .line 513
    iget-object v14, v15, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 514
    .line 515
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    .line 516
    .line 517
    .line 518
    move-result v14

    .line 519
    :goto_e
    if-ge v7, v14, :cond_1d

    .line 520
    .line 521
    iget-object v3, v15, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 522
    .line 523
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    move-object/from16 v17, v5

    .line 528
    .line 529
    iget-object v5, v15, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 530
    .line 531
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    check-cast v5, Lcom/android/server/permission/access/SchemePolicy;

    .line 536
    .line 537
    check-cast v3, Ljava/lang/String;

    .line 538
    .line 539
    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/permission/access/SchemePolicy;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    .line 540
    .line 541
    .line 542
    add-int/lit8 v7, v7, 0x1

    .line 543
    .line 544
    move-object/from16 v3, p0

    .line 545
    .line 546
    move-object/from16 v5, v17

    .line 547
    .line 548
    goto :goto_e

    .line 549
    :cond_1d
    move-object/from16 v17, v5

    .line 550
    .line 551
    add-int/lit8 v13, v13, 0x1

    .line 552
    .line 553
    const/4 v7, 0x0

    .line 554
    move-object/from16 v3, p0

    .line 555
    .line 556
    goto :goto_d

    .line 557
    :cond_1e
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    if-ne v3, v8, :cond_24

    .line 562
    .line 563
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    const/4 v5, 0x2

    .line 568
    if-eq v3, v5, :cond_23

    .line 569
    .line 570
    const/4 v6, 0x3

    .line 571
    if-ne v3, v6, :cond_22

    .line 572
    .line 573
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    if-le v3, v8, :cond_20

    .line 578
    .line 579
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 580
    .line 581
    .line 582
    move-result v3

    .line 583
    const/4 v7, 0x1

    .line 584
    if-eq v3, v7, :cond_1f

    .line 585
    .line 586
    if-eq v3, v5, :cond_1f

    .line 587
    .line 588
    if-eq v3, v6, :cond_1f

    .line 589
    .line 590
    goto :goto_10

    .line 591
    :cond_20
    :goto_11
    const/4 v7, 0x1

    .line 592
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    if-eq v3, v7, :cond_21

    .line 597
    .line 598
    if-eq v3, v5, :cond_21

    .line 599
    .line 600
    if-eq v3, v6, :cond_21

    .line 601
    .line 602
    const/4 v5, 0x2

    .line 603
    goto :goto_11

    .line 604
    :cond_21
    move/from16 v3, v16

    .line 605
    .line 606
    const/4 v5, 0x2

    .line 607
    const/4 v6, 0x1

    .line 608
    const/4 v7, 0x3

    .line 609
    goto/16 :goto_3

    .line 610
    .line 611
    :cond_22
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 612
    .line 613
    invoke-static {v3, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    throw v0

    .line 621
    :cond_23
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 622
    .line 623
    .line 624
    move-result v3

    .line 625
    const/4 v5, 0x1

    .line 626
    if-eq v3, v5, :cond_1f

    .line 627
    .line 628
    const/4 v5, 0x2

    .line 629
    if-eq v3, v5, :cond_1f

    .line 630
    .line 631
    const/4 v5, 0x3

    .line 632
    if-eq v3, v5, :cond_1f

    .line 633
    .line 634
    goto :goto_12

    .line 635
    :cond_24
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 636
    .line 637
    invoke-static {v3, v8, v12, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    throw v0

    .line 645
    :cond_25
    move/from16 v16, v3

    .line 646
    .line 647
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    new-instance v5, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    const-string v3, " when parsing user state for user "

    .line 660
    .line 661
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .line 673
    .line 674
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 675
    .line 676
    .line 677
    move-result v3

    .line 678
    move/from16 v5, v16

    .line 679
    .line 680
    if-ne v3, v5, :cond_2b

    .line 681
    .line 682
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 683
    .line 684
    .line 685
    move-result v3

    .line 686
    const/4 v6, 0x2

    .line 687
    if-eq v3, v6, :cond_2a

    .line 688
    .line 689
    const/4 v7, 0x3

    .line 690
    if-ne v3, v7, :cond_29

    .line 691
    .line 692
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    if-le v3, v5, :cond_27

    .line 697
    .line 698
    :goto_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 699
    .line 700
    .line 701
    move-result v3

    .line 702
    const/4 v8, 0x1

    .line 703
    if-eq v3, v8, :cond_26

    .line 704
    .line 705
    if-eq v3, v6, :cond_26

    .line 706
    .line 707
    if-eq v3, v7, :cond_26

    .line 708
    .line 709
    goto :goto_14

    .line 710
    :cond_27
    :goto_15
    const/4 v8, 0x1

    .line 711
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 712
    .line 713
    .line 714
    move-result v3

    .line 715
    if-eq v3, v8, :cond_28

    .line 716
    .line 717
    if-eq v3, v6, :cond_28

    .line 718
    .line 719
    if-eq v3, v7, :cond_28

    .line 720
    .line 721
    const/4 v6, 0x2

    .line 722
    goto :goto_15

    .line 723
    :cond_28
    const/4 v5, 0x2

    .line 724
    const/4 v6, 0x1

    .line 725
    const/4 v7, 0x3

    .line 726
    goto/16 :goto_1

    .line 727
    .line 728
    :cond_29
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 729
    .line 730
    invoke-static {v3, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    throw v0

    .line 738
    :cond_2a
    :goto_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 739
    .line 740
    .line 741
    move-result v3

    .line 742
    const/4 v6, 0x1

    .line 743
    const/4 v7, 0x2

    .line 744
    const/4 v8, 0x3

    .line 745
    if-eq v3, v6, :cond_26

    .line 746
    .line 747
    if-eq v3, v7, :cond_26

    .line 748
    .line 749
    if-eq v3, v8, :cond_26

    .line 750
    .line 751
    goto :goto_16

    .line 752
    :cond_2b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 753
    .line 754
    invoke-static {v3, v5, v12, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    throw v0

    .line 762
    :cond_2c
    :goto_17
    return-void
.end method

.method public final serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "access"

    .line 3
    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v4, v2, :cond_1

    .line 18
    .line 19
    iget-object v5, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-object v6, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 32
    .line 33
    check-cast v5, Ljava/lang/String;

    .line 34
    .line 35
    iget-object v5, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    move v7, v3

    .line 42
    :goto_1
    if-ge v7, v5, :cond_0

    .line 43
    .line 44
    iget-object v8, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    iget-object v9, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    check-cast v9, Lcom/android/server/permission/access/SchemePolicy;

    .line 57
    .line 58
    check-cast v8, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v9, p1, p2}, Lcom/android/server/permission/access/SchemePolicy;->serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v7, v7, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "access"

    .line 3
    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    check-cast v2, Lcom/android/server/permission/access/MutableUserState;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 23
    .line 24
    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 25
    .line 26
    const-string/jumbo v3, "package-versions"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 30
    .line 31
    .line 32
    iget-object v4, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x0

    .line 39
    move v6, v5

    .line 40
    :goto_0
    if-ge v6, v4, :cond_0

    .line 41
    .line 42
    iget-object v7, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    iget-object v8, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    check-cast v8, Ljava/lang/Number;

    .line 55
    .line 56
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    check-cast v7, Ljava/lang/String;

    .line 61
    .line 62
    const-string/jumbo v9, "package"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0, v9}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    .line 67
    .line 68
    const-string/jumbo v10, "name"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0, v10, v7}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    .line 73
    .line 74
    const-string/jumbo v7, "version"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0, v7, v8}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0, v9}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    .line 82
    .line 83
    add-int/lit8 v6, v6, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1, v0, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    check-cast v2, Lcom/android/server/permission/access/MutableUserState;

    .line 101
    .line 102
    iget-object v2, v2, Lcom/android/server/permission/access/MutableUserState;->defaultPermissionGrantFingerprint:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v2, :cond_1

    .line 105
    .line 106
    const-string v3, "default-permission-grant"

    .line 107
    .line 108
    invoke-virtual {p1, v0, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    .line 110
    .line 111
    const-string v4, "fingerprint"

    .line 112
    .line 113
    invoke-virtual {p1, v0, v4, v2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    .line 118
    .line 119
    :cond_1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 120
    .line 121
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    move v3, v5

    .line 128
    :goto_1
    if-ge v3, v2, :cond_3

    .line 129
    .line 130
    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 131
    .line 132
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    iget-object v6, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 137
    .line 138
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 143
    .line 144
    check-cast v4, Ljava/lang/String;

    .line 145
    .line 146
    iget-object v4, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 147
    .line 148
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    move v7, v5

    .line 153
    :goto_2
    if-ge v7, v4, :cond_2

    .line 154
    .line 155
    iget-object v8, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 156
    .line 157
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    iget-object v9, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 162
    .line 163
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    check-cast v9, Lcom/android/server/permission/access/SchemePolicy;

    .line 168
    .line 169
    check-cast v8, Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v9, p1, p2, p3}, Lcom/android/server/permission/access/SchemePolicy;->serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V

    .line 172
    .line 173
    .line 174
    add-int/lit8 v7, v7, 0x1

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_3
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public final upgradePackageVersion(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, v0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    check-cast v4, Lcom/android/server/permission/access/MutableUserState;

    .line 30
    .line 31
    iget-object v4, v4, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 32
    .line 33
    iget-object v4, v4, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 34
    .line 35
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 36
    .line 37
    iget-object v4, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/lang/Integer;

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    const/16 v6, 0xf

    .line 47
    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3, v1, v5}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-ge v7, v6, :cond_4

    .line 75
    .line 76
    move-object/from16 v7, p0

    .line 77
    .line 78
    iget-object v7, v7, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 79
    .line 80
    iget-object v8, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    const/4 v10, 0x0

    .line 87
    :goto_0
    if-ge v10, v8, :cond_3

    .line 88
    .line 89
    iget-object v11, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    iget-object v12, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 96
    .line 97
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    check-cast v12, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 102
    .line 103
    check-cast v11, Ljava/lang/String;

    .line 104
    .line 105
    iget-object v11, v12, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 106
    .line 107
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    const/4 v13, 0x0

    .line 112
    :goto_1
    if-ge v13, v11, :cond_2

    .line 113
    .line 114
    iget-object v14, v12, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 115
    .line 116
    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    iget-object v15, v12, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 121
    .line 122
    invoke-virtual {v15, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v15

    .line 126
    check-cast v15, Lcom/android/server/permission/access/SchemePolicy;

    .line 127
    .line 128
    check-cast v14, Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v14

    .line 134
    move-object/from16 v9, p2

    .line 135
    .line 136
    invoke-virtual {v15, v0, v9, v1, v14}, Lcom/android/server/permission/access/SchemePolicy;->upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v13, v13, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    move-object/from16 v9, p2

    .line 143
    .line 144
    add-int/lit8 v10, v10, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {v3, v1, v5}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eq v0, v6, :cond_5

    .line 171
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v1, "Unexpected version "

    .line 175
    .line 176
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v1, " for package "

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, ",latest version is 15"

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const-string v1, "AccessPolicy"

    .line 200
    .line 201
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    :cond_5
    :goto_2
    return-void
.end method
