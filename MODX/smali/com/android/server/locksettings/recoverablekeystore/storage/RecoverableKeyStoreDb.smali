.class public final Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

.field public final mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 6
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 13
    return-void
.end method


# virtual methods
.method public final ensureRecoveryServiceMetadataEntryExists(II)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Landroid/content/ContentValues;

    .line 9
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 12
    const-string/jumbo v1, "user_id"

    .line 15
    const-string/jumbo v2, "uid"

    .line 18
    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    const/4 p1, 0x0

    .line 22
    const/4 p2, 0x4

    .line 23
    const-string/jumbo v1, "recovery_service_metadata"

    .line 26
    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 29
    return-void
.end method

.method public final ensureRootOfTrustEntryExists(IILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Landroid/content/ContentValues;

    .line 9
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 12
    const-string/jumbo v1, "user_id"

    .line 15
    const-string/jumbo v2, "uid"

    .line 18
    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    const-string/jumbo p1, "root_alias"

    .line 24
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 p1, 0x4

    .line 28
    const-string/jumbo p2, "root_of_trust"

    .line 31
    const/4 p3, 0x0

    .line 32
    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 35
    return-void
.end method

.method public final ensureUserMetadataEntryExists(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Landroid/content/ContentValues;

    .line 9
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p1

    .line 16
    const-string/jumbo v1, "user_id"

    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    const/4 p1, 0x0

    .line 23
    const/4 v1, 0x4

    .line 24
    const-string/jumbo v2, "user_metadata"

    .line 27
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 30
    return-void
.end method

.method public final getActiveRootOfTrust(II)Ljava/lang/String;
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    const-string p0, "_id"

    .line 9
    const-string/jumbo v1, "user_id"

    .line 12
    const-string/jumbo v2, "uid"

    .line 15
    const-string v8, "active_root_of_trust"

    .line 17
    filled-new-array {p0, v1, v2, v8}, [Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    filled-new-array {p0, v1}, [Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const-string/jumbo v1, "recovery_service_metadata"

    .line 38
    const-string/jumbo v3, "user_id = ? AND uid = ?"

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 45
    move-result-object p0

    .line 46
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 49
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    const/4 v1, 0x0

    .line 51
    if-nez v0, :cond_0

    .line 53
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 56
    return-object v1

    .line 57
    :cond_0
    const/4 v2, 0x1

    .line 58
    if-le v0, v2, :cond_1

    .line 60
    :try_start_1
    const-string v2, "RecoverableKeyStoreDb"

    .line 62
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v0, " deviceId entries found for userId="

    .line 74
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string p1, " uid="

    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string p1, ". Should only ever be 0 or 1."

    .line 90
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    invoke-static {v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 103
    return-object v1

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 109
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 112
    move-result p1

    .line 113
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    .line 116
    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    if-eqz p2, :cond_2

    .line 119
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 122
    return-object v1

    .line 123
    :cond_2
    :try_start_3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    if-eqz p2, :cond_3

    .line 133
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 136
    return-object v1

    .line 137
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 140
    return-object p1

    .line 141
    :goto_0
    if-eqz p0, :cond_4

    .line 143
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 146
    goto :goto_1

    .line 147
    :catchall_1
    move-exception p0

    .line 148
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 151
    :cond_4
    :goto_1
    throw p1
.end method

.method public final getAllKeys(III)Ljava/util/Map;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v5, "recovery_status"

    .line 10
    const-string/jumbo v6, "key_metadata"

    .line 13
    const-string v1, "_id"

    .line 15
    const-string/jumbo v2, "nonce"

    .line 18
    const-string/jumbo v3, "wrapped_key"

    .line 21
    const-string v4, "alias"

    .line 23
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    filled-new-array {p0, p1, p2}, [Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const-string/jumbo v1, "keys"

    .line 48
    const-string/jumbo v3, "user_id = ? AND uid = ? AND platform_key_generation_id = ?"

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 55
    move-result-object p0

    .line 56
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    .line 58
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 61
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_1

    .line 67
    const-string/jumbo p2, "nonce"

    .line 70
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 73
    move-result p2

    .line 74
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getBlob(I)[B

    .line 77
    move-result-object v1

    .line 78
    const-string/jumbo p2, "wrapped_key"

    .line 81
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 84
    move-result p2

    .line 85
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getBlob(I)[B

    .line 88
    move-result-object v2

    .line 89
    const-string p2, "alias"

    .line 91
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 94
    move-result p2

    .line 95
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 98
    move-result-object p2

    .line 99
    const-string/jumbo v0, "recovery_status"

    .line 102
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 105
    move-result v0

    .line 106
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 109
    move-result v5

    .line 110
    const-string/jumbo v0, "key_metadata"

    .line 113
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 116
    move-result v0

    .line 117
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 124
    :goto_1
    move-object v3, v0

    .line 125
    goto :goto_2

    .line 126
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 129
    move-result-object v0

    .line 130
    goto :goto_1

    .line 131
    :goto_2
    new-instance v6, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    .line 133
    move-object v0, v6

    .line 134
    move v4, p3

    .line 135
    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[B[BII)V

    .line 138
    invoke-virtual {p1, p2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    goto :goto_0

    .line 142
    :catchall_0
    move-exception p1

    .line 143
    goto :goto_3

    .line 144
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 147
    return-object p1

    .line 148
    :goto_3
    if-eqz p0, :cond_2

    .line 150
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    goto :goto_4

    .line 154
    :catchall_1
    move-exception p0

    .line 155
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 158
    :cond_2
    :goto_4
    throw p1
.end method

.method public final getBadRemoteGuessCounter(I)I
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    const-string p0, "bad_remote_guess_counter"

    .line 9
    filled-new-array {p0}, [Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    filled-new-array {p1}, [Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const-string/jumbo v1, "user_metadata"

    .line 26
    const-string/jumbo v3, "user_id = ?"

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 33
    move-result-object p1

    .line 34
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 37
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-nez v0, :cond_0

    .line 40
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 43
    const/4 p0, 0x0

    .line 44
    return p0

    .line 45
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 48
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 51
    move-result p0

    .line 52
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    .line 55
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 59
    return p0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    if-eqz p1, :cond_1

    .line 63
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    goto :goto_0

    .line 67
    :catchall_1
    move-exception p1

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 71
    :cond_1
    :goto_0
    throw p0
.end method

.method public final getBytes(IILjava/lang/String;)[B
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo p0, "uid"

    .line 10
    const-string v1, "_id"

    .line 12
    const-string/jumbo v2, "user_id"

    .line 15
    filled-new-array {v1, v2, p0, p3}, [Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    filled-new-array {p0, v1}, [Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    const-string/jumbo v3, "user_id = ? AND uid = ?"

    .line 34
    const/4 v5, 0x0

    .line 35
    const-string/jumbo v1, "recovery_service_metadata"

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 43
    move-result-object p0

    .line 44
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 47
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const/4 v1, 0x0

    .line 49
    if-nez v0, :cond_0

    .line 51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 54
    return-object v1

    .line 55
    :cond_0
    const/4 v2, 0x1

    .line 56
    if-le v0, v2, :cond_1

    .line 58
    :try_start_1
    const-string p3, "RecoverableKeyStoreDb"

    .line 60
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v0, " entries found for userId="

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string p1, " uid="

    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string p1, ". Should only ever be 0 or 1."

    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    invoke-static {p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 101
    return-object v1

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 107
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 110
    move-result p1

    .line 111
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    .line 114
    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    if-eqz p2, :cond_2

    .line 117
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 120
    return-object v1

    .line 121
    :cond_2
    :try_start_3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 124
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 128
    return-object p1

    .line 129
    :goto_0
    if-eqz p0, :cond_3

    .line 131
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    goto :goto_1

    .line 135
    :catchall_1
    move-exception p0

    .line 136
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 139
    :cond_3
    :goto_1
    throw p1
.end method

.method public final getLong(IILjava/lang/String;)Ljava/lang/Long;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo p0, "uid"

    .line 10
    const-string v1, "_id"

    .line 12
    const-string/jumbo v2, "user_id"

    .line 15
    filled-new-array {v1, v2, p0, p3}, [Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    filled-new-array {p0, v1}, [Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    const-string/jumbo v3, "user_id = ? AND uid = ?"

    .line 34
    const/4 v5, 0x0

    .line 35
    const-string/jumbo v1, "recovery_service_metadata"

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 43
    move-result-object p0

    .line 44
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 47
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const/4 v1, 0x0

    .line 49
    if-nez v0, :cond_0

    .line 51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 54
    return-object v1

    .line 55
    :cond_0
    const/4 v2, 0x1

    .line 56
    if-le v0, v2, :cond_1

    .line 58
    :try_start_1
    const-string p3, "RecoverableKeyStoreDb"

    .line 60
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v0, " entries found for userId="

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string p1, " uid="

    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string p1, ". Should only ever be 0 or 1."

    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    invoke-static {p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 101
    return-object v1

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 107
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 110
    move-result p1

    .line 111
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    .line 114
    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    if-eqz p2, :cond_2

    .line 117
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 120
    return-object v1

    .line 121
    :cond_2
    :try_start_3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 124
    move-result-wide p1

    .line 125
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 132
    return-object p1

    .line 133
    :goto_0
    if-eqz p0, :cond_3

    .line 135
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    goto :goto_1

    .line 139
    :catchall_1
    move-exception p0

    .line 140
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 143
    :cond_3
    :goto_1
    throw p1
.end method

.method public final getPlatformKeyGenerationId(I)I
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo p0, "platform_key_generation_id"

    .line 10
    filled-new-array {p0}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const-string/jumbo v1, "user_metadata"

    .line 27
    const-string/jumbo v3, "user_id = ?"

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    move-result-object p1

    .line 35
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 38
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-nez v0, :cond_0

    .line 41
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 44
    const/4 p0, -0x1

    .line 45
    return p0

    .line 46
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 52
    move-result p0

    .line 53
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    .line 56
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 60
    return p0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    if-eqz p1, :cond_1

    .line 64
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    goto :goto_0

    .line 68
    :catchall_1
    move-exception p1

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 72
    :cond_1
    :goto_0
    throw p0
.end method

.method public final getRecoveryAgents(I)Ljava/util/List;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo p0, "uid"

    .line 10
    filled-new-array {p0}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const-string/jumbo v1, "recovery_service_metadata"

    .line 27
    const-string/jumbo v3, "user_id = ?"

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    move-result-object p1

    .line 35
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 38
    move-result v0

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 50
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 53
    move-result v0

    .line 54
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 57
    move-result v0

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 71
    return-object v1

    .line 72
    :goto_1
    if-eqz p1, :cond_1

    .line 74
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    goto :goto_2

    .line 78
    :catchall_1
    move-exception p1

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 82
    :cond_1
    :goto_2
    throw p0
.end method

.method public final getRecoverySecretTypes(II)[I
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    const-string p0, "_id"

    .line 9
    const-string/jumbo v1, "user_id"

    .line 12
    const-string/jumbo v2, "uid"

    .line 15
    const-string/jumbo v8, "secret_types"

    .line 18
    filled-new-array {p0, v1, v2, v8}, [Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    filled-new-array {p0, v1}, [Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    const-string/jumbo v1, "recovery_service_metadata"

    .line 39
    const-string/jumbo v3, "user_id = ? AND uid = ?"

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 46
    move-result-object p0

    .line 47
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x0

    .line 52
    if-nez v0, :cond_0

    .line 54
    new-array p1, v1, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 59
    return-object p1

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto/16 :goto_2

    .line 63
    :cond_0
    const-string v2, "RecoverableKeyStoreDb"

    .line 65
    const/4 v3, 0x1

    .line 66
    if-le v0, v3, :cond_1

    .line 68
    :try_start_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v0, " deviceId entries found for userId="

    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string p1, " uid="

    .line 88
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string p1, ". Should only ever be 0 or 1."

    .line 96
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    invoke-static {v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-array p1, v1, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 111
    return-object p1

    .line 112
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 115
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 118
    move-result p1

    .line 119
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_2

    .line 125
    new-array p1, v1, [I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 130
    return-object p1

    .line 131
    :cond_2
    :try_start_3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    move-result p2

    .line 139
    if-eqz p2, :cond_3

    .line 141
    new-array p1, v1, [I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 146
    return-object p1

    .line 147
    :cond_3
    :try_start_4
    const-string p2, ","

    .line 149
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    array-length p2, p1

    .line 154
    new-array p2, p2, [I

    .line 156
    :goto_0
    array-length v0, p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    if-ge v1, v0, :cond_4

    .line 159
    :try_start_5
    aget-object v0, p1, v1

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 164
    move-result v0

    .line 165
    aput v0, p2, v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    goto :goto_1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    const-string v4, "String format error "

    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 186
    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 189
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 191
    goto :goto_0

    .line 192
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 195
    return-object p2

    .line 196
    :goto_2
    if-eqz p0, :cond_5

    .line 198
    :try_start_7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 201
    goto :goto_3

    .line 202
    :catchall_1
    move-exception p0

    .line 203
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 206
    :cond_5
    :goto_3
    throw p1
.end method

.method public final getUserSerialNumbers()Ljava/util/Map;
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo p0, "user_id"

    .line 10
    const-string/jumbo v8, "user_serial_number"

    .line 13
    filled-new-array {p0, v8}, [Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v4, v1, [Ljava/lang/String;

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const-string/jumbo v1, "user_metadata"

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    move-result-object v0

    .line 31
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    .line 33
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 36
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 42
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 45
    move-result v2

    .line 46
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 49
    move-result v2

    .line 50
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 53
    move-result v3

    .line 54
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 57
    move-result-wide v3

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v2

    .line 62
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 75
    return-object v1

    .line 76
    :goto_1
    if-eqz v0, :cond_1

    .line 78
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    goto :goto_2

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 86
    :cond_1
    :goto_2
    throw p0
.end method

.method public final insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Landroid/content/ContentValues;

    .line 9
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 12
    const-string/jumbo v1, "user_id"

    .line 15
    const-string/jumbo v2, "uid"

    .line 18
    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    const-string p1, "alias"

    .line 23
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo p1, "nonce"

    .line 29
    iget-object p2, p4, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mNonce:[B

    .line 31
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 34
    const-string/jumbo p1, "wrapped_key"

    .line 37
    iget-object p2, p4, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMaterial:[B

    .line 39
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 42
    const/4 p1, -0x1

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p1

    .line 47
    const-string/jumbo p2, "last_synced_at"

    .line 50
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    iget p1, p4, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mPlatformKeyGenerationId:I

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object p1

    .line 59
    const-string/jumbo p2, "platform_key_generation_id"

    .line 62
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    iget p1, p4, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mRecoveryStatus:I

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object p1

    .line 71
    const-string/jumbo p2, "recovery_status"

    .line 74
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string/jumbo p1, "key_metadata"

    .line 80
    iget-object p2, p4, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMetadata:[B

    .line 82
    if-nez p2, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 91
    :goto_0
    const-string/jumbo p1, "keys"

    .line 94
    const/4 p2, 0x0

    .line 95
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 98
    move-result-wide p0

    .line 99
    return-wide p0
.end method

.method public final setBadRemoteGuessCounter(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/content/ContentValues;

    .line 9
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 12
    const-string/jumbo v2, "user_id"

    .line 15
    const-string v3, "bad_remote_guess_counter"

    .line 17
    invoke-static {p1, v1, v2, p2, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    filled-new-array {p2}, [Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureUserMetadataEntryExists(I)V

    .line 31
    const-string/jumbo p0, "user_metadata"

    .line 34
    const-string/jumbo p1, "user_id = ?"

    .line 37
    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public final setLong(IIJLjava/lang/String;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/content/ContentValues;

    .line 9
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 12
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {v1, p5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 22
    move-result-object p3

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 26
    move-result-object p4

    .line 27
    filled-new-array {p3, p4}, [Ljava/lang/String;

    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 34
    const-string/jumbo p0, "recovery_service_metadata"

    .line 37
    const-string/jumbo p1, "user_id = ? AND uid = ?"

    .line 40
    invoke-virtual {v0, p0, v1, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 43
    move-result p0

    .line 44
    int-to-long p0, p0

    .line 45
    return-wide p0
.end method

.method public final setRecoveryServiceCertPath(IILjava/lang/String;Ljava/security/cert/CertPath;)J
    .locals 3

    .line 1
    invoke-virtual {p4}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string v0, "PkiPath"

    .line 13
    invoke-virtual {p4, v0}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    .line 16
    move-result-object p4

    .line 17
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {p3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p3

    .line 26
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 28
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Landroid/content/ContentValues;

    .line 34
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 37
    const-string/jumbo v2, "cert_path"

    .line 40
    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 46
    move-result-object p4

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    filled-new-array {p4, v2, p3}, [Ljava/lang/String;

    .line 54
    move-result-object p4

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRootOfTrustEntryExists(IILjava/lang/String;)V

    .line 58
    const-string/jumbo p0, "root_of_trust"

    .line 61
    const-string/jumbo p1, "user_id = ? AND uid = ? AND root_alias = ?"

    .line 64
    invoke-virtual {v0, p0, v1, p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    move-result p0

    .line 68
    int-to-long p0, p0

    .line 69
    return-wide p0

    .line 70
    :cond_0
    new-instance p0, Ljava/security/cert/CertificateEncodingException;

    .line 72
    const-string p1, "No certificate contained in the cert path."

    .line 74
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p0
.end method

.method public final setRecoveryServiceCertSerial(IIJLjava/lang/String;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p5}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p5

    .line 10
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Landroid/content/ContentValues;

    .line 18
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 21
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    move-result-object p3

    .line 25
    const-string/jumbo p4, "cert_serial"

    .line 28
    invoke-virtual {v1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 34
    move-result-object p3

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 38
    move-result-object p4

    .line 39
    filled-new-array {p3, p4, p5}, [Ljava/lang/String;

    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRootOfTrustEntryExists(IILjava/lang/String;)V

    .line 46
    const-string/jumbo p0, "root_of_trust"

    .line 49
    const-string/jumbo p1, "user_id = ? AND uid = ? AND root_alias = ?"

    .line 52
    invoke-virtual {v0, p0, v1, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 55
    move-result p0

    .line 56
    int-to-long p0, p0

    .line 57
    return-wide p0
.end method

.method public final setShouldCreateSnapshot(II)J
    .locals 6

    .line 1
    const-wide/16 v3, 0x1

    .line 3
    const-string/jumbo v5, "should_create_snapshot"

    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IIJLjava/lang/String;)J

    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method
