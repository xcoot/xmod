.class public final Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile mCeAttached:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 6
    iput p3, p0, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mUserId:I

    .line 8
    return-void
.end method


# virtual methods
.method public final getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mCeAttached:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "getReadableDatabaseUserIsUnlocked called while user "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget v1, p0, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mUserId:I

    .line 15
    const-string v2, " is still locked. CE database is not yet available."

    .line 17
    invoke-static {v1, v0, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/Throwable;

    .line 23
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 26
    const-string v2, "AccountsDb"

    .line 28
    invoke-static {v2, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mCeAttached:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "getWritableDatabaseUserIsUnlocked called while user "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget v1, p0, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mUserId:I

    .line 15
    const-string v2, " is still locked. CE database is not yet available."

    .line 17
    invoke-static {v1, v0, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/Throwable;

    .line 23
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 26
    const-string v2, "AccountsDb"

    .line 28
    invoke-static {v2, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Creating DE database for user "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget p0, p0, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mUserId:I

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    const-string v0, "AccountsDb"

    .line 19
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const-string p0, "CREATE TABLE accounts ( _id INTEGER PRIMARY KEY, name TEXT NOT NULL, type TEXT NOT NULL, previous_name TEXT, last_password_entry_time_millis_epoch INTEGER DEFAULT 0, UNIQUE(name,type))"

    .line 24
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    const-string p0, "CREATE TABLE meta ( key TEXT PRIMARY KEY NOT NULL, value TEXT)"

    .line 29
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    const-string p0, "CREATE TABLE grants (  accounts_id INTEGER NOT NULL, auth_token_type STRING NOT NULL,  uid INTEGER NOT NULL,  UNIQUE (accounts_id,auth_token_type,uid))"

    .line 34
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    const-string p0, "CREATE TABLE shared_accounts ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, UNIQUE(name,type))"

    .line 39
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    const-string p0, " CREATE TRIGGER accountsDelete DELETE ON accounts BEGIN   DELETE FROM grants     WHERE accounts_id=OLD._id ; END"

    .line 44
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    const-string p0, "CREATE TABLE debug_table ( _id INTEGER,action_type TEXT NOT NULL, time DATETIME,caller_uid INTEGER NOT NULL,table_name TEXT NOT NULL,primary_key INTEGER PRIMARY KEY)"

    .line 49
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const-string p0, "CREATE INDEX timestamp_index ON debug_table (time)"

    .line 54
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string p0, "CREATE TABLE visibility ( accounts_id INTEGER NOT NULL, _package TEXT NOT NULL, value INTEGER, PRIMARY KEY(accounts_id,_package))"

    .line 59
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    const-string p0, " CREATE TRIGGER accountsDeleteVisibility DELETE ON accounts BEGIN   DELETE FROM visibility     WHERE accounts_id=OLD._id ; END"

    .line 64
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const-string p2, "AccountsDb"

    .line 3
    const-string/jumbo p3, "onDowngrade: recreate accounts DE table"

    .line 6
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {p1}, Lcom/android/server/accounts/AccountsDb;->-$$Nest$smresetDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 15
    return-void
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
    const-string/jumbo p0, "opened database accounts_de.db"

    .line 13
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .line 1
    const-string/jumbo p0, "upgrade from version "

    .line 4
    const-string v0, " to version "

    .line 6
    const-string v1, "AccountsDb"

    .line 8
    invoke-static {p2, p3, p0, v0, v1}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string p0, "CREATE TABLE visibility ( accounts_id INTEGER NOT NULL, _package TEXT NOT NULL, value INTEGER, PRIMARY KEY(accounts_id,_package))"

    .line 13
    const/4 v2, 0x1

    .line 14
    const-string v3, " CREATE TRIGGER accountsDeleteVisibility DELETE ON accounts BEGIN   DELETE FROM visibility     WHERE accounts_id=OLD._id ; END"

    .line 16
    if-ne p2, v2, :cond_0

    .line 18
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    const/4 p2, 0x3

    .line 25
    :cond_0
    const/4 v2, 0x2

    .line 26
    if-ne p2, v2, :cond_1

    .line 28
    const-string v2, "DROP TRIGGER IF EXISTS accountsDeleteVisibility"

    .line 30
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    const-string v2, "DROP TABLE IF EXISTS visibility"

    .line 35
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    add-int/lit8 p2, p2, 0x1

    .line 46
    :cond_1
    if-eq p2, p3, :cond_2

    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo p1, "failed to upgrade version "

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_2
    return-void
.end method
