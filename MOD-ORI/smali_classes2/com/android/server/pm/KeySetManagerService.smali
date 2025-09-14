.class public final Lcom/android/server/pm/KeySetManagerService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public lastIssuedKeyId:J

.field public lastIssuedKeySetId:J

.field public final mKeySetMapping:Landroid/util/LongSparseArray;

.field public final mKeySets:Landroid/util/LongSparseArray;

.field public final mPackages:Lcom/android/server/utils/WatchedArrayMap;

.field public final mPublicKeys:Landroid/util/LongSparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/utils/WatchedArrayMap;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 10
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 11
    iget-object v0, p1, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 12
    iget-object v0, p1, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 13
    iget-object p1, p1, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 14
    iput-object p2, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedArrayMap;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 3
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 4
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 5
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 6
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 7
    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-void
.end method


# virtual methods
.method public final addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;
    .locals 13

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    new-instance v0, Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    :goto_0
    const-wide/16 v4, 0x1

    .line 25
    .line 26
    const-wide/16 v6, -0x1

    .line 27
    .line 28
    if-ge v3, v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    check-cast v8, Ljava/security/PublicKey;

    .line 35
    .line 36
    const-string v9, "Cannot add null public key!"

    .line 37
    .line 38
    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    new-instance v9, Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v8}, Ljava/security/PublicKey;->getEncoded()[B

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 48
    .line 49
    .line 50
    move v10, v2

    .line 51
    :goto_1
    iget-object v11, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 52
    .line 53
    invoke-virtual {v11}, Landroid/util/LongSparseArray;->size()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    if-ge v10, v11, :cond_1

    .line 58
    .line 59
    iget-object v11, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 60
    .line 61
    invoke-virtual {v11, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    check-cast v11, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 66
    .line 67
    iget-object v11, v11, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    .line 68
    .line 69
    new-instance v12, Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v11}, Ljava/security/PublicKey;->getEncoded()[B

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    invoke-direct {v12, v11}, Ljava/lang/String;-><init>([B)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    if-eqz v11, :cond_0

    .line 83
    .line 84
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 85
    .line 86
    invoke-virtual {v9, v10}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 87
    .line 88
    .line 89
    move-result-wide v9

    .line 90
    goto :goto_2

    .line 91
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    move-wide v9, v6

    .line 95
    :goto_2
    cmp-long v6, v9, v6

    .line 96
    .line 97
    if-eqz v6, :cond_2

    .line 98
    .line 99
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 100
    .line 101
    invoke-virtual {v4, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 106
    .line 107
    iget v5, v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 108
    .line 109
    add-int/lit8 v5, v5, 0x1

    .line 110
    .line 111
    iput v5, v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_2
    iget-wide v6, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 115
    .line 116
    add-long v9, v6, v4

    .line 117
    .line 118
    iput-wide v9, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 119
    .line 120
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 121
    .line 122
    new-instance v5, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 123
    .line 124
    invoke-direct {v5, v8}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Ljava/security/PublicKey;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v9, v10, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :goto_3
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    add-int/lit8 v3, v3, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_3
    move p1, v2

    .line 141
    :goto_4
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 142
    .line 143
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-ge p1, v3, :cond_5

    .line 148
    .line 149
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 150
    .line 151
    invoke-virtual {v3, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Landroid/util/ArraySet;

    .line 156
    .line 157
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_4

    .line 162
    .line 163
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 164
    .line 165
    invoke-virtual {v3, p1}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 166
    .line 167
    .line 168
    move-result-wide v8

    .line 169
    goto :goto_5

    .line 170
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_5
    move-wide v8, v6

    .line 174
    :goto_5
    cmp-long p1, v8, v6

    .line 175
    .line 176
    if-eqz p1, :cond_7

    .line 177
    .line 178
    :goto_6
    if-ge v2, v1, :cond_6

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Ljava/lang/Long;

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 187
    .line 188
    .line 189
    move-result-wide v3

    .line 190
    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/KeySetManagerService;->decrementPublicKeyLPw(J)V

    .line 191
    .line 192
    .line 193
    add-int/lit8 v2, v2, 0x1

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 197
    .line 198
    invoke-virtual {p0, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    check-cast p0, Lcom/android/server/pm/KeySetHandle;

    .line 203
    .line 204
    iget p1, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    .line 205
    .line 206
    add-int/lit8 p1, p1, 0x1

    .line 207
    .line 208
    iput p1, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    .line 209
    .line 210
    return-object p0

    .line 211
    :cond_7
    iget-wide v1, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 212
    .line 213
    add-long/2addr v1, v4

    .line 214
    iput-wide v1, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 215
    .line 216
    new-instance p1, Lcom/android/server/pm/KeySetHandle;

    .line 217
    .line 218
    invoke-direct {p1, v1, v2}, Lcom/android/server/pm/KeySetHandle;-><init>(J)V

    .line 219
    .line 220
    .line 221
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 222
    .line 223
    invoke-virtual {v3, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 227
    .line 228
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    return-object p1

    .line 232
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 233
    .line 234
    const-string p1, "Cannot add an empty set of keys!"

    .line 235
    .line 236
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p0
.end method

.method public final addScannedPackageLPw(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 8

    .line 1
    const-string v0, "Attempted to add null pkg to ksms."

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v2, "pkg: "

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "does not have a corresponding entry in mPackages."

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 63
    .line 64
    iget-wide v2, v2, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    .line 65
    .line 66
    const-wide/16 v4, -0x1

    .line 67
    .line 68
    cmp-long v4, v2, v4

    .line 69
    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/KeySetManagerService;->getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-eqz v4, :cond_0

    .line 77
    .line 78
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-wide v1, v1, Lcom/android/server/pm/KeySetHandle;->mId:J

    .line 93
    .line 94
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 95
    .line 96
    iput-wide v1, v3, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    .line 97
    .line 98
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getKeySetMapping()Ljava/util/Map;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_7

    .line 103
    .line 104
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getKeySetMapping()Ljava/util/Map;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 109
    .line 110
    iget-object v2, v2, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    .line 111
    .line 112
    new-instance v3, Landroid/util/ArrayMap;

    .line 113
    .line 114
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_3

    .line 130
    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Ljava/util/Map$Entry;

    .line 136
    .line 137
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Ljava/lang/String;

    .line 142
    .line 143
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Landroid/util/ArraySet;

    .line 148
    .line 149
    if-eqz v5, :cond_2

    .line 150
    .line 151
    if-eqz v4, :cond_2

    .line 152
    .line 153
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-lez v6, :cond_2

    .line 158
    .line 159
    invoke-virtual {p0, v4}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    iget-wide v6, v4, Lcom/android/server/pm/KeySetHandle;->mId:J

    .line 164
    .line 165
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v3, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_3
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    const/4 v4, 0x0

    .line 178
    :goto_2
    if-ge v4, v1, :cond_4

    .line 179
    .line 180
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Ljava/lang/Long;

    .line 185
    .line 186
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 187
    .line 188
    .line 189
    move-result-wide v5

    .line 190
    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 191
    .line 192
    .line 193
    add-int/lit8 v4, v4, 0x1

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_4
    iget-object p0, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 197
    .line 198
    const/4 v1, 0x0

    .line 199
    iput-object v1, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    .line 200
    .line 201
    iget-object v1, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    .line 202
    .line 203
    invoke-virtual {v1}, Landroid/util/ArrayMap;->erase()V

    .line 204
    .line 205
    .line 206
    iget-object p0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    .line 207
    .line 208
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 209
    .line 210
    .line 211
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUpgradeKeySets()Ljava/util/Set;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    if-eqz p0, :cond_7

    .line 216
    .line 217
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUpgradeKeySets()Ljava/util/Set;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-eqz p1, :cond_7

    .line 230
    .line 231
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Ljava/lang/String;

    .line 236
    .line 237
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 238
    .line 239
    if-nez p1, :cond_5

    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_5
    iget-object v2, v1, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    .line 246
    .line 247
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    check-cast v2, Ljava/lang/Long;

    .line 252
    .line 253
    if-eqz v2, :cond_6

    .line 254
    .line 255
    iget-object p1, v1, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 258
    .line 259
    .line 260
    move-result-wide v2

    .line 261
    invoke-static {p1, v2, v3}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    iput-object p1, v1, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 269
    .line 270
    const-string v0, "Upgrade keyset alias "

    .line 271
    .line 272
    const-string v1, "does not refer to a defined keyset alias!"

    .line 273
    .line 274
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw p0

    .line 282
    :cond_7
    return-void
.end method

.method public final checkUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    array-length v2, p1

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    aget-wide v2, p1, v1

    .line 11
    .line 12
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/KeySetManagerService;->getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return v0
.end method

.method public final decrementKeySetLPw(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/pm/KeySetHandle;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v1, v0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    iput v1, v0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    .line 17
    .line 18
    if-gtz v1, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    if-ge v2, v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/Long;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/KeySetManagerService;->decrementPublicKeyLPw(J)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 52
    .line 53
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 57
    .line 58
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public final decrementPublicKeyLPw(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v1, v0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    iput v1, v0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 17
    .line 18
    int-to-long v0, v1

    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-gtz v0, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    return-wide p0

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-wide/16 p0, -0x1

    .line 35
    .line 36
    return-wide p0
.end method

.method public final getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/util/ArraySet;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p2, Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    .line 44
    .line 45
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object p2
.end method

.method public final readKeySetsLPw(Landroid/util/ArrayMap;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 13

    .line 1
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string/jumbo v2, "version"

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x3

    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v2, :cond_3

    .line 16
    .line 17
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eq p1, v4, :cond_1

    .line 22
    .line 23
    if-ne p1, v3, :cond_0

    .line 24
    .line 25
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-le p1, v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 53
    .line 54
    iget-object p2, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 55
    .line 56
    const-wide/16 v2, -0x1

    .line 57
    .line 58
    iput-wide v2, p2, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    .line 59
    .line 60
    iget-object p2, p2, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/util/ArrayMap;->erase()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 66
    .line 67
    iput-object v1, p1, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    return-void

    .line 71
    :cond_3
    :goto_2
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v5, 0x0

    .line 76
    if-eq v2, v4, :cond_10

    .line 77
    .line 78
    if-ne v2, v3, :cond_4

    .line 79
    .line 80
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-le v6, v0, :cond_10

    .line 85
    .line 86
    :cond_4
    if-eq v2, v3, :cond_3

    .line 87
    .line 88
    const/4 v6, 0x4

    .line 89
    if-ne v2, v6, :cond_5

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const-string v7, "keys"

    .line 97
    .line 98
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    const-string v8, "identifier"

    .line 103
    .line 104
    const-string/jumbo v9, "value"

    .line 105
    .line 106
    .line 107
    if-eqz v7, :cond_9

    .line 108
    .line 109
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    :cond_6
    :goto_3
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eq v7, v4, :cond_3

    .line 118
    .line 119
    if-ne v7, v3, :cond_7

    .line 120
    .line 121
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    if-le v10, v2, :cond_3

    .line 126
    .line 127
    :cond_7
    if-eq v7, v3, :cond_6

    .line 128
    .line 129
    if-ne v7, v6, :cond_8

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_8
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    const-string/jumbo v10, "public-key"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-eqz v7, :cond_6

    .line 144
    .line 145
    invoke-interface {p2, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 146
    .line 147
    .line 148
    move-result-wide v10

    .line 149
    invoke-interface {p2, v1, v9, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)[B

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-static {v7}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->parsePublicKey([B)Ljava/security/PublicKey;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    if-eqz v7, :cond_6

    .line 158
    .line 159
    new-instance v12, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 160
    .line 161
    invoke-direct {v12, v7, v5}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Ljava/security/PublicKey;I)V

    .line 162
    .line 163
    .line 164
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 165
    .line 166
    invoke-virtual {v7, v10, v11, v12}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_9
    const-string v7, "keysets"

    .line 171
    .line 172
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-eqz v7, :cond_e

    .line 177
    .line 178
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    const-wide/16 v9, 0x0

    .line 183
    .line 184
    :cond_a
    :goto_4
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eq v7, v4, :cond_3

    .line 189
    .line 190
    if-ne v7, v3, :cond_b

    .line 191
    .line 192
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    if-le v11, v2, :cond_3

    .line 197
    .line 198
    :cond_b
    if-eq v7, v3, :cond_a

    .line 199
    .line 200
    if-ne v7, v6, :cond_c

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_c
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    const-string v11, "keyset"

    .line 208
    .line 209
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    if-eqz v11, :cond_d

    .line 214
    .line 215
    invoke-interface {p2, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 216
    .line 217
    .line 218
    move-result-wide v9

    .line 219
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 220
    .line 221
    new-instance v11, Lcom/android/server/pm/KeySetHandle;

    .line 222
    .line 223
    invoke-direct {v11, v9, v10, v5}, Lcom/android/server/pm/KeySetHandle;-><init>(JI)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 230
    .line 231
    new-instance v11, Landroid/util/ArraySet;

    .line 232
    .line 233
    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_d
    const-string v11, "key-id"

    .line 241
    .line 242
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    if-eqz v7, :cond_a

    .line 247
    .line 248
    invoke-interface {p2, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 249
    .line 250
    .line 251
    move-result-wide v11

    .line 252
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 253
    .line 254
    invoke-virtual {v7, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    check-cast v7, Landroid/util/ArraySet;

    .line 259
    .line 260
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    invoke-virtual {v7, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_e
    const-string v5, "lastIssuedKeyId"

    .line 269
    .line 270
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-eqz v5, :cond_f

    .line 275
    .line 276
    invoke-interface {p2, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 277
    .line 278
    .line 279
    move-result-wide v5

    .line 280
    iput-wide v5, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 281
    .line 282
    goto/16 :goto_2

    .line 283
    .line 284
    :cond_f
    const-string v5, "lastIssuedKeySetId"

    .line 285
    .line 286
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_3

    .line 291
    .line 292
    invoke-interface {p2, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 293
    .line 294
    .line 295
    move-result-wide v5

    .line 296
    iput-wide v5, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 297
    .line 298
    goto/16 :goto_2

    .line 299
    .line 300
    :cond_10
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    move v0, v5

    .line 305
    :goto_5
    const-string v1, "KeySetManagerService"

    .line 306
    .line 307
    if-ge v0, p2, :cond_12

    .line 308
    .line 309
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 310
    .line 311
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    check-cast v3, Ljava/lang/Long;

    .line 316
    .line 317
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 318
    .line 319
    .line 320
    move-result-wide v6

    .line 321
    invoke-virtual {v2, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    check-cast v2, Lcom/android/server/pm/KeySetHandle;

    .line 326
    .line 327
    if-nez v2, :cond_11

    .line 328
    .line 329
    const-string v2, "Encountered non-existent key-set reference when reading settings"

    .line 330
    .line 331
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_11
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    check-cast v1, Ljava/lang/Integer;

    .line 340
    .line 341
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    iput v1, v2, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    .line 346
    .line 347
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_12
    new-instance p1, Landroid/util/ArraySet;

    .line 351
    .line 352
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 353
    .line 354
    .line 355
    iget-object p2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 356
    .line 357
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    .line 358
    .line 359
    .line 360
    move-result p2

    .line 361
    move v0, v5

    .line 362
    :goto_7
    if-ge v0, p2, :cond_15

    .line 363
    .line 364
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 365
    .line 366
    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    check-cast v2, Lcom/android/server/pm/KeySetHandle;

    .line 371
    .line 372
    iget v2, v2, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    .line 373
    .line 374
    if-nez v2, :cond_13

    .line 375
    .line 376
    const-string v2, "Encountered key-set w/out package references when reading settings"

    .line 377
    .line 378
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 382
    .line 383
    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 384
    .line 385
    .line 386
    move-result-wide v2

    .line 387
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    :cond_13
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 395
    .line 396
    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    check-cast v2, Landroid/util/ArraySet;

    .line 401
    .line 402
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    move v6, v5

    .line 407
    :goto_8
    if-ge v6, v3, :cond_14

    .line 408
    .line 409
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 410
    .line 411
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v8

    .line 415
    check-cast v8, Ljava/lang/Long;

    .line 416
    .line 417
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 418
    .line 419
    .line 420
    move-result-wide v8

    .line 421
    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    check-cast v7, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 426
    .line 427
    iget v8, v7, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 428
    .line 429
    add-int/2addr v8, v4

    .line 430
    iput v8, v7, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 431
    .line 432
    add-int/lit8 v6, v6, 0x1

    .line 433
    .line 434
    goto :goto_8

    .line 435
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 436
    .line 437
    goto :goto_7

    .line 438
    :cond_15
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 439
    .line 440
    .line 441
    move-result p2

    .line 442
    :goto_9
    if-ge v5, p2, :cond_16

    .line 443
    .line 444
    invoke-virtual {p1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    check-cast v0, Ljava/lang/Long;

    .line 449
    .line 450
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 451
    .line 452
    .line 453
    move-result-wide v0

    .line 454
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 455
    .line 456
    .line 457
    add-int/lit8 v5, v5, 0x1

    .line 458
    .line 459
    goto :goto_9

    .line 460
    :cond_16
    return-void
.end method

.method public final removeAppKeySetDataLPw(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v2, "pkg name: "

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, "does not have a corresponding entry in mPackages."

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 35
    .line 36
    iget-wide v1, p1, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    .line 37
    .line 38
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 39
    .line 40
    .line 41
    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ge v1, v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Long;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object p0, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 69
    .line 70
    const-wide/16 v1, -0x1

    .line 71
    .line 72
    iput-wide v1, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/util/ArrayMap;->erase()V

    .line 77
    .line 78
    .line 79
    iget-object p0, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    .line 83
    .line 84
    return-void
.end method

.method public final shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    and-int/lit16 p3, p3, 0x200

    .line 5
    .line 6
    if-nez p3, :cond_3

    .line 7
    .line 8
    if-nez p2, :cond_3

    .line 9
    .line 10
    iget-object p2, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 11
    .line 12
    iget-object p2, p2, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    .line 13
    .line 14
    if-eqz p2, :cond_3

    .line 15
    .line 16
    array-length p3, p2

    .line 17
    if-lez p3, :cond_3

    .line 18
    .line 19
    move p3, v0

    .line 20
    :goto_0
    array-length v1, p2

    .line 21
    if-ge p3, v1, :cond_2

    .line 22
    .line 23
    aget-wide v1, p2, p3

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 26
    .line 27
    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    add-int/lit8 p3, p3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "Package "

    .line 39
    .line 40
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string p1, "<null>"

    .line 49
    .line 50
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " contains upgrade-key-set reference to unknown key-set: "

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    aget-wide p1, p2, p3

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, " reverting to signatures check."

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string p1, "KeySetManagerService"

    .line 73
    .line 74
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    return v0

    .line 78
    :cond_2
    const/4 p0, 0x1

    .line 79
    return p0

    .line 80
    :cond_3
    return v0
.end method

.method public final writeKeySetManagerServiceLPr(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "keyset-settings"

    .line 3
    .line 4
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "version"

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    .line 13
    .line 14
    const-string v2, "keys"

    .line 15
    .line 16
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 22
    .line 23
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const-string v6, "identifier"

    .line 28
    .line 29
    const-string/jumbo v7, "value"

    .line 30
    .line 31
    .line 32
    if-ge v4, v5, :cond_0

    .line 33
    .line 34
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 35
    .line 36
    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 41
    .line 42
    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 47
    .line 48
    const-string/jumbo v10, "public-key"

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v0, v6, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    .line 56
    .line 57
    iget-object v5, v5, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    .line 58
    .line 59
    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-interface {p1, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v0, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    .line 74
    .line 75
    const-string v2, "keysets"

    .line 76
    .line 77
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    .line 79
    .line 80
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-ge v3, v4, :cond_2

    .line 87
    .line 88
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 89
    .line 90
    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    iget-object v8, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 95
    .line 96
    invoke-virtual {v8, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    check-cast v8, Landroid/util/ArraySet;

    .line 101
    .line 102
    const-string v9, "keyset"

    .line 103
    .line 104
    invoke-interface {p1, v0, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v0, v6, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_1

    .line 119
    .line 120
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    check-cast v5, Ljava/lang/Long;

    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 127
    .line 128
    .line 129
    move-result-wide v10

    .line 130
    const-string v5, "key-id"

    .line 131
    .line 132
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, v0, v6, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    .line 137
    .line 138
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_1
    invoke-interface {p1, v0, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    .line 144
    .line 145
    add-int/lit8 v3, v3, 0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    .line 150
    .line 151
    const-string v2, "lastIssuedKeyId"

    .line 152
    .line 153
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    .line 155
    .line 156
    iget-wide v3, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 157
    .line 158
    invoke-interface {p1, v0, v7, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    .line 160
    .line 161
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    .line 163
    .line 164
    const-string v2, "lastIssuedKeySetId"

    .line 165
    .line 166
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    .line 168
    .line 169
    iget-wide v3, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 170
    .line 171
    invoke-interface {p1, v0, v7, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    .line 173
    .line 174
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    .line 176
    .line 177
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    .line 179
    .line 180
    return-void
.end method
