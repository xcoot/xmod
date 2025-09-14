.class public final Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Adding column "

    .line 2
    .line 3
    const-string v1, " to "

    .line 4
    .line 5
    const-string v2, "."

    .line 6
    .line 7
    invoke-static {v0, p2, v1, p1, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "RecoverableKeyStoreDbHp"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "ALTER TABLE "

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " ADD COLUMN "

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " "

    .line 32
    .line 33
    invoke-static {v0, p2, p1, p3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, ";"

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static dropAllKnownTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "DROP TABLE IF EXISTS keys"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DROP TABLE IF EXISTS user_metadata"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "DROP TABLE IF EXISTS recovery_service_metadata"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "DROP TABLE IF EXISTS root_of_trust"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    const-string p0, "CREATE TABLE keys( _id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,alias TEXT,nonce BLOB,wrapped_key BLOB,platform_key_generation_id INTEGER,last_synced_at INTEGER,recovery_status INTEGER,key_metadata BLOB,UNIQUE(uid,alias))"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "CREATE TABLE user_metadata( _id INTEGER PRIMARY KEY,user_id INTEGER UNIQUE,platform_key_generation_id INTEGER,user_serial_number INTEGER DEFAULT -1,bad_remote_guess_counter INTEGER DEFAULT 0)"

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "CREATE TABLE recovery_service_metadata (_id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,snapshot_version INTEGER,should_create_snapshot INTEGER,active_root_of_trust TEXT,public_key BLOB,cert_path BLOB,cert_serial INTEGER,secret_types TEXT,counter_id INTEGER,server_params BLOB,UNIQUE(user_id,uid))"

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p0, "CREATE TABLE root_of_trust (_id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,root_alias TEXT,cert_path BLOB,cert_serial INTEGER,UNIQUE(user_id,uid,root_alias))"

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const-string p2, "RecoverableKeyStoreDbHp"

    .line 2
    .line 3
    const-string p3, "Recreating recoverablekeystore after unexpected version downgrade."

    .line 4
    .line 5
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->dropAllKnownTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "RecoverableKeyStoreDbHp"

    .line 3
    .line 4
    if-ge p2, v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->dropAllKnownTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p2

    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    const-string v0, "BLOB"

    .line 17
    .line 18
    const-string/jumbo v2, "recovery_service_metadata"

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    if-ge p2, v3, :cond_1

    .line 23
    .line 24
    if-lt p3, v3, :cond_1

    .line 25
    .line 26
    :try_start_1
    const-string/jumbo p2, "cert_path"

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v2, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo p2, "cert_serial"

    .line 33
    .line 34
    .line 35
    const-string v4, "INTEGER"

    .line 36
    .line 37
    invoke-static {p1, v2, p2, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move p2, v3

    .line 41
    :cond_1
    const/4 v3, 0x4

    .line 42
    if-ge p2, v3, :cond_2

    .line 43
    .line 44
    if-lt p3, v3, :cond_2

    .line 45
    .line 46
    const-string p2, "Updating recoverable keystore database to version 4"

    .line 47
    .line 48
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const-string p2, "CREATE TABLE root_of_trust (_id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,root_alias TEXT,cert_path BLOB,cert_serial INTEGER,UNIQUE(user_id,uid,root_alias))"

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string p2, "TEXT"

    .line 57
    .line 58
    const-string v4, "active_root_of_trust"

    .line 59
    .line 60
    invoke-static {p1, v2, v4, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    move p2, v3

    .line 64
    :cond_2
    const/4 v2, 0x5

    .line 65
    if-ge p2, v2, :cond_3

    .line 66
    .line 67
    if-lt p3, v2, :cond_3

    .line 68
    .line 69
    const-string p2, "Updating recoverable keystore database to version 5"

    .line 70
    .line 71
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    const-string/jumbo p2, "keys"

    .line 75
    .line 76
    .line 77
    const-string/jumbo v3, "key_metadata"

    .line 78
    .line 79
    .line 80
    invoke-static {p1, p2, v3, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    .line 82
    .line 83
    move p2, v2

    .line 84
    :cond_3
    const-string/jumbo v0, "user_metadata"

    .line 85
    .line 86
    .line 87
    const/4 v2, 0x6

    .line 88
    if-ge p2, v2, :cond_4

    .line 89
    .line 90
    if-lt p3, v2, :cond_4

    .line 91
    .line 92
    :try_start_2
    const-string p2, "Updating recoverable keystore database to version 6"

    .line 93
    .line 94
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    const-string p2, "INTEGER DEFAULT -1"

    .line 98
    .line 99
    const-string/jumbo v3, "user_serial_number"

    .line 100
    .line 101
    .line 102
    invoke-static {p1, v0, v3, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    .line 104
    .line 105
    move p2, v2

    .line 106
    :cond_4
    const/4 v2, 0x7

    .line 107
    if-ge p2, v2, :cond_5

    .line 108
    .line 109
    if-lt p3, v2, :cond_5

    .line 110
    .line 111
    :try_start_3
    const-string p2, "Updating recoverable keystore database to version 7"

    .line 112
    .line 113
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    const-string p2, "INTEGER DEFAULT 0"

    .line 117
    .line 118
    const-string v3, "bad_remote_guess_counter"

    .line 119
    .line 120
    invoke-static {p1, v0, v3, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catch_1
    move-exception p2

    .line 125
    :try_start_4
    const-string v0, "Column was added without version update - ignore error"

    .line 126
    .line 127
    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 128
    .line 129
    .line 130
    :goto_0
    move p2, v2

    .line 131
    goto :goto_2

    .line 132
    :goto_1
    const-string p3, "Recreating recoverablekeystore after unexpected upgrade error."

    .line 133
    .line 134
    invoke-static {v1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->dropAllKnownTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_5
    :goto_2
    if-eq p2, p3, :cond_6

    .line 145
    .line 146
    const-string p0, "Failed to update recoverablekeystore database to the most recent version"

    .line 147
    .line 148
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :cond_6
    return-void
.end method
