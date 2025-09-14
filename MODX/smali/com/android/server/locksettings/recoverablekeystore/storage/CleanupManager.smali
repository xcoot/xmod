.class public final Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

.field public final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field public mSerialNumbers:Ljava/util/Map;

.field public final mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Landroid/os/UserManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 6
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 8
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mUserManager:Landroid/os/UserManager;

    .line 10
    iput-object p4, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 12
    return-void
.end method


# virtual methods
.method public final declared-synchronized registerRecoveryAgent(I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    .line 4
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->verifyKnownUsers()V

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 18
    check-cast v0, Landroid/util/ArrayMap;

    .line 20
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Long;

    .line 26
    const-wide/16 v1, -0x1

    .line 28
    if-nez v0, :cond_1

    .line 30
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    move-result-object v0

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 37
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    cmp-long v0, v3, v1

    .line 40
    if-eqz v0, :cond_2

    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mUserManager:Landroid/os/UserManager;

    .line 46
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    .line 53
    move-result-wide v3

    .line 54
    cmp-long v0, v3, v1

    .line 56
    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->storeUserSerialNumber(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_3
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :goto_1
    monitor-exit p0

    .line 64
    throw p1
.end method

.method public final removeDataForUser(I)V
    .locals 7

    .line 1
    const-string v0, "CleanupManager"

    .line 3
    const-string v1, "Removing data for user "

    .line 5
    const-string v2, "."

    .line 7
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryAgents(I)Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Integer;

    .line 34
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v3

    .line 40
    monitor-enter v2

    .line 41
    :try_start_0
    iget-object v4, v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 46
    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getSnapshotFile(I)Ljava/io/File;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v2

    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v1

    .line 58
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 60
    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getPlatformKeyGenerationId(I)I

    .line 63
    move-result v3

    .line 64
    invoke-virtual {v2, p1, v1, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getAllKeys(III)Ljava/util/Map;

    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/util/HashMap;

    .line 70
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v2

    .line 78
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_0

    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Ljava/lang/String;

    .line 90
    :try_start_1
    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 92
    invoke-virtual {v4, p1, v1, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->deleteEntry(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception v4

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    const-string v6, "Error while removing recoverable key "

    .line 101
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v3, " : "

    .line 109
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 119
    const-string v4, "CleanupManager"

    .line 121
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    monitor-exit v2

    .line 127
    throw p0

    .line 128
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 130
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 132
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 135
    move-result-object v0

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    filled-new-array {v1}, [Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 144
    const-string/jumbo v2, "keys"

    .line 147
    const-string/jumbo v3, "user_id = ?"

    .line 150
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 156
    move-result-object v0

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    filled-new-array {v1}, [Ljava/lang/String;

    .line 164
    move-result-object v1

    .line 165
    const-string/jumbo v2, "user_metadata"

    .line 168
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 174
    move-result-object v0

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 178
    move-result-object v1

    .line 179
    filled-new-array {v1}, [Ljava/lang/String;

    .line 182
    move-result-object v1

    .line 183
    const-string/jumbo v2, "recovery_service_metadata"

    .line 186
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 192
    move-result-object p0

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    filled-new-array {p1}, [Ljava/lang/String;

    .line 200
    move-result-object p1

    .line 201
    const-string/jumbo v0, "root_of_trust"

    .line 204
    invoke-virtual {p0, v0, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public final storeUserSerialNumber(IJ)V
    .locals 4

    .line 1
    const-string v0, "Storing serial number for user "

    .line 3
    const-string v1, "."

    .line 5
    const-string v2, "CleanupManager"

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 25
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 27
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Landroid/content/ContentValues;

    .line 33
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v2

    .line 40
    const-string/jumbo v3, "user_id"

    .line 43
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    move-result-object p2

    .line 50
    const-string/jumbo p3, "user_serial_number"

    .line 53
    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    filled-new-array {p2}, [Ljava/lang/String;

    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureUserMetadataEntryExists(I)V

    .line 67
    const-string/jumbo p0, "user_metadata"

    .line 70
    const-string/jumbo p1, "user_id = ?"

    .line 73
    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public final declared-synchronized verifyKnownUsers()V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 4
    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getUserSerialNumbers()Ljava/util/Map;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    .line 10
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager$1;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;)V

    .line 15
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    .line 17
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_4

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/Integer;

    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/Long;

    .line 49
    const-wide/16 v4, -0x1

    .line 51
    if-nez v2, :cond_1

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    move-result-object v2

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_3

    .line 60
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mUserManager:Landroid/os/UserManager;

    .line 62
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result v7

    .line 66
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    .line 73
    move-result-wide v6

    .line 74
    cmp-long v8, v6, v4

    .line 76
    if-nez v8, :cond_2

    .line 78
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 84
    move-result v2

    .line 85
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->removeDataForUser(I)V

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 92
    move-result-wide v8

    .line 93
    cmp-long v4, v8, v4

    .line 95
    if-nez v4, :cond_3

    .line 97
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 100
    move-result v2

    .line 101
    invoke-virtual {p0, v2, v6, v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->storeUserSerialNumber(IJ)V

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 108
    move-result-wide v4

    .line 109
    cmp-long v2, v4, v6

    .line 111
    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 119
    move-result v2

    .line 120
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->removeDataForUser(I)V

    .line 123
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 126
    move-result v2

    .line 127
    invoke-virtual {p0, v2, v6, v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->storeUserSerialNumber(IJ)V

    .line 130
    goto :goto_0

    .line 131
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object v0

    .line 135
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_5

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Ljava/lang/Integer;

    .line 147
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->mSerialNumbers:Ljava/util/Map;

    .line 149
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    goto :goto_2

    .line 153
    :cond_5
    monitor-exit p0

    .line 154
    return-void

    .line 155
    :goto_3
    monitor-exit p0

    .line 156
    throw v0
.end method
