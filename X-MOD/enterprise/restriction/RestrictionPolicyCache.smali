.class public final Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MASK_AND_COLUMN_NAME:Ljava/util/Map;


# instance fields
.field public final mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

.field public final mCache:Ljava/util/HashMap;

.field public final mCameraDisabledAdmin:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$1;

    .line 3
    invoke-direct {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$1;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmStorageProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    .line 18
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;)V

    .line 23
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    .line 32
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 42
    return-void
.end method


# virtual methods
.method public final extract(IJZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->getCachedPolicies(I)Ljava/lang/Long;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 10
    move-result-wide p0

    .line 11
    and-long/2addr p0, p2

    .line 12
    cmp-long p0, p0, p2

    .line 14
    if-nez p0, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0

    .line 20
    :cond_1
    return p4
.end method

.method public final getCachedPolicies(I)Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 24
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    return-object p1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 35
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 42
    throw p1
.end method

.method public final init(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    const-wide v2, 0x5ffffffc3b9fffefL    # 2.6815567691305012E154

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    .line 30
    iget-object v1, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Ljava/util/HashMap;

    .line 38
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 41
    check-cast v1, Ljava/util/HashMap;

    .line 43
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->adminInfoMap:Ljava/util/Map;

    .line 48
    check-cast v0, Ljava/util/HashMap;

    .line 50
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins$$ExternalSyntheticLambda0;

    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-direct {v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins$$ExternalSyntheticLambda0;-><init>(II)V

    .line 60
    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 63
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object p1

    .line 69
    const-wide/16 v1, 0x0

    .line 71
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 80
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 87
    return-void

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 91
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 98
    throw p1
.end method

.method public final load(I)V
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 3
    move/from16 v0, p1

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 8
    iget-object v2, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mUserManager:Landroid/os/UserManager;

    .line 10
    if-nez v2, :cond_0

    .line 12
    iget-object v2, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mContext:Landroid/content/Context;

    .line 14
    const-string/jumbo v3, "user"

    .line 17
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/os/UserManager;

    .line 23
    iput-object v2, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mUserManager:Landroid/os/UserManager;

    .line 25
    :cond_0
    iget-object v2, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mUserManager:Landroid/os/UserManager;

    .line 27
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v2

    .line 35
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 47
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 54
    move-result v3

    .line 55
    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->init(I)V

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->init(I)V

    .line 62
    :cond_2
    const/4 v9, 0x0

    .line 63
    if-ne v0, v1, :cond_3

    .line 65
    const/4 v1, 0x0

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    .line 69
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 72
    invoke-static {v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    const-string v2, "#SelectClause#"

    .line 78
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_1
    sget-object v0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    .line 83
    check-cast v0, Ljava/util/HashMap;

    .line 85
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 92
    move-result v2

    .line 93
    const/4 v10, 0x1

    .line 94
    add-int/2addr v2, v10

    .line 95
    new-array v2, v2, [Ljava/lang/String;

    .line 97
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 100
    move-result-object v0

    .line 101
    check-cast v0, [Ljava/lang/String;

    .line 103
    array-length v2, v0

    .line 104
    sub-int/2addr v2, v10

    .line 105
    const-string v11, "adminUid"

    .line 107
    aput-object v11, v0, v2

    .line 109
    const-string v2, "RESTRICTION"

    .line 111
    iget-object v12, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 113
    invoke-virtual {v12, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 116
    move-result-object v13

    .line 117
    if-eqz v13, :cond_11

    .line 119
    iget-object v0, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 121
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 128
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_10

    .line 137
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 140
    move-result v0

    .line 141
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 144
    move-result-wide v14

    .line 145
    long-to-int v0, v14

    .line 146
    int-to-long v1, v0

    .line 147
    cmp-long v1, v14, v1

    .line 149
    if-nez v1, :cond_f

    .line 151
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 154
    move-result v5

    .line 155
    iget-object v1, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    .line 157
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    move-result-object v1

    .line 165
    const-wide v16, 0x5ffffffc3b9fffefL    # 2.6815567691305012E154

    .line 170
    if-eqz v1, :cond_4

    .line 172
    iget-object v1, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    .line 174
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Ljava/lang/Long;

    .line 184
    goto :goto_3

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    goto/16 :goto_e

    .line 188
    :catch_0
    move-exception v0

    .line 189
    goto/16 :goto_d

    .line 191
    :cond_4
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 194
    move-result-object v1

    .line 195
    :goto_3
    sget-object v2, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    .line 197
    check-cast v2, Ljava/util/HashMap;

    .line 199
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 202
    move-result-object v2

    .line 203
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 206
    move-result-object v18

    .line 207
    move-object v6, v1

    .line 208
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    move-result v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object v4, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    .line 214
    if-eqz v1, :cond_9

    .line 216
    :try_start_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    move-result-object v1

    .line 220
    check-cast v1, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 225
    move-result-object v2

    .line 226
    check-cast v2, Ljava/lang/String;

    .line 228
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 231
    move-result v2

    .line 232
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 235
    move-result v3

    .line 236
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 239
    move-result-object v1

    .line 240
    move-object v2, v1

    .line 241
    check-cast v2, Ljava/lang/Long;

    .line 243
    move-object/from16 v1, p0

    .line 245
    move-object/from16 p1, v2

    .line 247
    move v2, v3

    .line 248
    move v8, v3

    .line 249
    move v3, v5

    .line 250
    move-object v9, v4

    .line 251
    move-object/from16 v4, p1

    .line 253
    move/from16 v19, v5

    .line 255
    move-object/from16 v20, v6

    .line 257
    move-wide v5, v14

    .line 258
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->updateCameraDisabledAdmin(IILjava/lang/Long;J)V

    .line 261
    if-ne v8, v10, :cond_5

    .line 263
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    .line 266
    move-result-wide v1

    .line 267
    and-long v1, v1, v16

    .line 269
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    .line 272
    move-result-wide v3

    .line 273
    cmp-long v1, v1, v3

    .line 275
    if-eqz v1, :cond_5

    .line 277
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    .line 280
    move-result-wide v1

    .line 281
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    .line 284
    move-result-wide v3

    .line 285
    or-long/2addr v1, v3

    .line 286
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 289
    move-result-object v1

    .line 290
    :goto_5
    move-object v6, v1

    .line 291
    goto :goto_6

    .line 292
    :cond_5
    if-nez v8, :cond_6

    .line 294
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    .line 297
    move-result-wide v1

    .line 298
    and-long v1, v1, v16

    .line 300
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    .line 303
    move-result-wide v3

    .line 304
    cmp-long v1, v1, v3

    .line 306
    if-nez v1, :cond_6

    .line 308
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    .line 311
    move-result-wide v1

    .line 312
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    .line 315
    move-result-wide v3

    .line 316
    not-long v3, v3

    .line 317
    and-long/2addr v1, v3

    .line 318
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 321
    move-result-object v1

    .line 322
    goto :goto_5

    .line 323
    :cond_6
    move-object/from16 v6, v20

    .line 325
    :goto_6
    iget-object v1, v9, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 327
    if-ne v8, v10, :cond_7

    .line 329
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    .line 335
    move-result-wide v2

    .line 336
    and-long v2, v2, v16

    .line 338
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    .line 341
    move-result-wide v4

    .line 342
    cmp-long v2, v2, v4

    .line 344
    if-eqz v2, :cond_7

    .line 346
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    move-result-object v1

    .line 350
    move-object/from16 v3, p1

    .line 352
    move/from16 v2, v19

    .line 354
    invoke-virtual {v9, v2, v3, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->put(ILjava/lang/Long;Ljava/lang/Integer;)V

    .line 357
    goto :goto_7

    .line 358
    :cond_7
    move-object/from16 v3, p1

    .line 360
    move/from16 v2, v19

    .line 362
    if-nez v8, :cond_8

    .line 364
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 370
    move-result-wide v4

    .line 371
    and-long v4, v4, v16

    .line 373
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 376
    move-result-wide v19

    .line 377
    cmp-long v1, v4, v19

    .line 379
    if-nez v1, :cond_8

    .line 381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    move-result-object v1

    .line 385
    invoke-virtual {v9, v2, v3, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->put(ILjava/lang/Long;Ljava/lang/Integer;)V

    .line 388
    :cond_8
    :goto_7
    move v5, v2

    .line 389
    const/4 v9, 0x0

    .line 390
    goto/16 :goto_4

    .line 392
    :cond_9
    move-object v9, v4

    .line 393
    move v2, v5

    .line 394
    move-object/from16 v20, v6

    .line 396
    iget-object v1, v9, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->adminInfoMap:Ljava/util/Map;

    .line 398
    if-eqz v1, :cond_a

    .line 400
    check-cast v1, Ljava/util/HashMap;

    .line 402
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 405
    move-result v1

    .line 406
    if-nez v1, :cond_a

    .line 408
    iget-object v1, v9, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->adminInfoMap:Ljava/util/Map;

    .line 410
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    move-result-object v3

    .line 414
    check-cast v1, Ljava/util/HashMap;

    .line 416
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 419
    move-result v1

    .line 420
    goto :goto_8

    .line 421
    :cond_a
    const/4 v1, 0x0

    .line 422
    :goto_8
    if-nez v1, :cond_e

    .line 424
    const/16 v1, 0x3e8

    .line 426
    if-ne v0, v1, :cond_b

    .line 428
    const/4 v1, 0x0

    .line 429
    const/4 v4, 0x0

    .line 430
    goto :goto_9

    .line 431
    :cond_b
    const-string v1, "ADMIN_INFO"

    .line 433
    const-string v3, "adminName"

    .line 435
    const/4 v4, 0x0

    .line 436
    invoke-virtual {v12, v0, v4, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    move-result-object v1

    .line 440
    if-nez v1, :cond_c

    .line 442
    const/4 v1, 0x0

    .line 443
    goto :goto_9

    .line 444
    :cond_c
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 447
    move-result-object v3

    .line 448
    if-nez v3, :cond_d

    .line 450
    goto :goto_9

    .line 451
    :cond_d
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 454
    move-result-object v1

    .line 455
    :goto_9
    invoke-virtual {v9, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->loadAdminInfo(ILjava/lang/String;)V

    .line 458
    goto :goto_a

    .line 459
    :cond_e
    const/4 v4, 0x0

    .line 460
    :goto_a
    iget-object v0, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    .line 462
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 465
    move-result-object v1

    .line 466
    move-object/from16 v6, v20

    .line 468
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    goto :goto_b

    .line 472
    :cond_f
    move v4, v9

    .line 473
    :goto_b
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    move v9, v4

    .line 477
    goto/16 :goto_2

    .line 479
    :cond_10
    :goto_c
    iget-object v0, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 481
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 484
    move-result-object v0

    .line 485
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 488
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 491
    goto :goto_f

    .line 492
    :goto_d
    :try_start_2
    const-string v1, "RestrictionPolicy"

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    .line 496
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    const-string v3, "Exception occurred accessing Enterprise db "

    .line 501
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 507
    move-result-object v0

    .line 508
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    move-result-object v0

    .line 515
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 518
    goto :goto_c

    .line 519
    :goto_e
    iget-object v1, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 521
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 524
    move-result-object v1

    .line 525
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 528
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 531
    throw v0

    .line 532
    :cond_11
    :goto_f
    return-void
.end method

.method public final update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 13

    .line 1
    move-object v1, p0

    .line 2
    move-wide v6, p2

    .line 3
    move/from16 v0, p4

    .line 5
    move/from16 v3, p5

    .line 7
    move-object/from16 v8, p6

    .line 9
    iget-object v9, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    .line 11
    iget-object v10, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 13
    const-string v2, "RESTRICTION"

    .line 15
    move-object v4, p1

    .line 16
    invoke-virtual {v10, v3, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v2

    .line 24
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_1

    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/Boolean;

    .line 36
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    move-result v4

    .line 40
    if-eq v4, v0, :cond_0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v4, v0

    .line 44
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->getCachedPolicies(I)Ljava/lang/Long;

    .line 47
    move-result-object v2

    .line 48
    if-nez v2, :cond_3

    .line 50
    iget-object v5, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mUserManager:Landroid/os/UserManager;

    .line 52
    if-nez v5, :cond_2

    .line 54
    iget-object v5, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mContext:Landroid/content/Context;

    .line 56
    const-string/jumbo v11, "user"

    .line 59
    invoke-virtual {v5, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Landroid/os/UserManager;

    .line 65
    iput-object v5, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mUserManager:Landroid/os/UserManager;

    .line 67
    :cond_2
    iget-object v5, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mUserManager:Landroid/os/UserManager;

    .line 69
    invoke-virtual {v5, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 72
    move-result-object v5

    .line 73
    if-eqz v5, :cond_3

    .line 75
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->init(I)V

    .line 78
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->getCachedPolicies(I)Ljava/lang/Long;

    .line 81
    move-result-object v2

    .line 82
    :cond_3
    iget-object v5, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 84
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 91
    if-eqz v2, :cond_a

    .line 93
    if-eqz v4, :cond_4

    .line 95
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 98
    move-result-wide v4

    .line 99
    or-long/2addr v4, v6

    .line 100
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    move-result-object v2

    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    goto/16 :goto_5

    .line 108
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 111
    move-result-wide v4

    .line 112
    not-long v11, v6

    .line 113
    and-long/2addr v4, v11

    .line 114
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    move-result-object v2

    .line 118
    :goto_1
    iget-object v4, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    .line 120
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    if-eqz p7, :cond_a

    .line 129
    if-eqz v8, :cond_a

    .line 131
    iget-object v2, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    .line 133
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 136
    move-result v4

    .line 137
    const/4 v11, 0x0

    .line 138
    if-eq v4, v0, :cond_5

    .line 140
    const/4 v0, 0x1

    .line 141
    move v5, v0

    .line 142
    goto :goto_2

    .line 143
    :cond_5
    move v5, v11

    .line 144
    :goto_2
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    .line 147
    move-result v4

    .line 148
    move/from16 v3, p5

    .line 150
    move-wide v6, p2

    .line 151
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->update(IIZJ)V

    .line 154
    iget-object v0, v9, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->adminInfoMap:Ljava/util/Map;

    .line 156
    if-eqz v0, :cond_6

    .line 158
    check-cast v0, Ljava/util/HashMap;

    .line 160
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_6

    .line 166
    iget-object v0, v9, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->adminInfoMap:Ljava/util/Map;

    .line 168
    check-cast v0, Ljava/util/HashMap;

    .line 170
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 173
    move-result v0

    .line 174
    goto :goto_3

    .line 175
    :cond_6
    move v0, v11

    .line 176
    :goto_3
    if-nez v0, :cond_a

    .line 178
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    .line 181
    move-result v0

    .line 182
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    .line 185
    move-result v2

    .line 186
    const/16 v3, 0x3e8

    .line 188
    const/4 v4, 0x0

    .line 189
    if-ne v2, v3, :cond_7

    .line 191
    goto :goto_4

    .line 192
    :cond_7
    const-string v3, "ADMIN_INFO"

    .line 194
    const-string v5, "adminName"

    .line 196
    invoke-virtual {v10, v2, v11, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    move-result-object v2

    .line 200
    if-nez v2, :cond_8

    .line 202
    goto :goto_4

    .line 203
    :cond_8
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 206
    move-result-object v3

    .line 207
    if-nez v3, :cond_9

    .line 209
    move-object v4, v2

    .line 210
    goto :goto_4

    .line 211
    :cond_9
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 214
    move-result-object v4

    .line 215
    :goto_4
    invoke-virtual {v9, v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->loadAdminInfo(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    goto :goto_6

    .line 219
    :goto_5
    iget-object v1, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 221
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 228
    throw v0

    .line 229
    :cond_a
    :goto_6
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 231
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 238
    return-void
.end method

.method public final updateCameraDisabledAdmin(I)V
    .locals 9

    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string/jumbo v0, "cameraEnabled"

    const-string v1, "adminUid"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const/4 v7, 0x0

    invoke-virtual {v5, v7, p1, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 9
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 10
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    if-eqz v5, :cond_0

    .line 11
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 12
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    move v6, v7

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :goto_1
    if-eq v6, v7, :cond_0

    .line 14
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_2

    .line 15
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 16
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 17
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-lez v5, :cond_0

    .line 19
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final updateCameraDisabledAdmin(IILjava/lang/Long;J)V
    .locals 5

    const/4 v0, 0x1

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide v3, 0x1000000000L

    cmp-long p3, v1, v3

    if-nez p3, :cond_2

    if-eq p1, v0, :cond_2

    .line 2
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    cmp-long p1, p3, v2

    if-lez p1, :cond_2

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/16 p2, -0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
