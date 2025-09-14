.class public final Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x9

    .line 4
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 7
    iput-object p1, p0, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->mContext:Landroid/content/Context;

    .line 9
    iput p3, p0, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->mUserId:I

    .line 11
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 3
    const-string p1, "Legacy database cannot be created - only upgraded!"

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p0
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    const-string p1, "AccountsDb"

    .line 4
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 10
    const-string/jumbo p0, "opened database accounts.db"

    .line 13
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "upgrade from version "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " to version "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v2, "AccountsDb"

    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x1

    .line 30
    if-ne p2, v0, :cond_0

    .line 32
    add-int/2addr p2, v0

    .line 33
    :cond_0
    const/4 v3, 0x2

    .line 34
    if-ne p2, v3, :cond_1

    .line 36
    const-string v3, "CREATE TABLE grants (  accounts_id INTEGER NOT NULL, auth_token_type STRING NOT NULL,  uid INTEGER NOT NULL,  UNIQUE (accounts_id,auth_token_type,uid))"

    .line 38
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    const-string v3, "DROP TRIGGER accountsDelete"

    .line 43
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    const-string v3, " CREATE TRIGGER accountsDelete DELETE ON accounts BEGIN   DELETE FROM authtokens     WHERE accounts_id=OLD._id ;   DELETE FROM extras     WHERE accounts_id=OLD._id ;   DELETE FROM grants     WHERE accounts_id=OLD._id ; END"

    .line 48
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    add-int/2addr p2, v0

    .line 52
    :cond_1
    const/4 v3, 0x3

    .line 53
    if-ne p2, v3, :cond_2

    .line 55
    const-string v3, "UPDATE accounts SET type = \'com.google\' WHERE type == \'com.google.GAIA\'"

    .line 57
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    add-int/2addr p2, v0

    .line 61
    :cond_2
    const/4 v3, 0x4

    .line 62
    if-ne p2, v3, :cond_3

    .line 64
    const-string v3, "CREATE TABLE shared_accounts ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, UNIQUE(name,type))"

    .line 66
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    add-int/2addr p2, v0

    .line 70
    :cond_3
    const/4 v3, 0x5

    .line 71
    if-ne p2, v3, :cond_4

    .line 73
    const-string v3, "ALTER TABLE accounts ADD COLUMN previous_name"

    .line 75
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    add-int/2addr p2, v0

    .line 79
    :cond_4
    const/4 v3, 0x6

    .line 80
    if-ne p2, v3, :cond_5

    .line 82
    const-string v3, "ALTER TABLE accounts ADD COLUMN last_password_entry_time_millis_epoch DEFAULT 0"

    .line 84
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    add-int/2addr p2, v0

    .line 88
    :cond_5
    const/4 v3, 0x7

    .line 89
    if-ne p2, v3, :cond_6

    .line 91
    const-string v3, "CREATE TABLE debug_table ( _id INTEGER,action_type TEXT NOT NULL, time DATETIME,caller_uid INTEGER NOT NULL,table_name TEXT NOT NULL,primary_key INTEGER PRIMARY KEY)"

    .line 93
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string v3, "CREATE INDEX timestamp_index ON debug_table (time)"

    .line 98
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    add-int/2addr p2, v0

    .line 102
    :cond_6
    const/16 v3, 0x8

    .line 104
    if-ne p2, v3, :cond_8

    .line 106
    iget-object v3, p0, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->mContext:Landroid/content/Context;

    .line 108
    iget p0, p0, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->mUserId:I

    .line 110
    sget-object v4, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 112
    new-instance v4, Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 114
    invoke-direct {v4, v3}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-static {v4, p0}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 123
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 126
    move-result-object p0

    .line 127
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 130
    move-result-object p0

    .line 131
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_7

    .line 137
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Ljava/lang/String;

    .line 149
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Ljava/lang/Integer;

    .line 155
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    new-instance v5, Landroid/content/ContentValues;

    .line 160
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    .line 165
    const-string v7, "auth_uid_for_type:"

    .line 167
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object v4

    .line 177
    const-string/jumbo v6, "key"

    .line 180
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v4, "value"

    .line 186
    invoke-virtual {v5, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string/jumbo v3, "meta"

    .line 192
    const/4 v4, 0x0

    .line 193
    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 196
    goto :goto_0

    .line 197
    :cond_7
    add-int/2addr p2, v0

    .line 198
    :cond_8
    if-eq p2, p3, :cond_9

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    .line 202
    const-string/jumbo p1, "failed to upgrade version "

    .line 205
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object p0

    .line 221
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_9
    return-void
.end method
