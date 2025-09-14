.class public final Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DIGEST_DOMAIN_PROJECTION:[Ljava/lang/String;

.field public static sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "app_digest"

    .line 3
    const-string/jumbo v1, "cnc_domain"

    .line 6
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->DIGEST_DOMAIN_PROJECTION:[Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final cleanup(J)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    const-string/jumbo v0, "timestamp< "

    .line 8
    invoke-static {p1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    const-string/jumbo p2, "records"

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-string p1, "WatchlistReportDbHelper"

    .line 23
    const-string p2, "Error opening the database to cleanup"

    .line 25
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    return-void
.end method

.method public final getAggregatedRecords(J)Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    const-string/jumbo v3, "records"

    .line 9
    sget-object v4, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->DIGEST_DOMAIN_PROJECTION:[Ljava/lang/String;

    .line 11
    const-string/jumbo v5, "timestamp < ?"

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    filled-new-array {p0}, [Ljava/lang/String;

    .line 21
    move-result-object v6

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v10, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    if-nez p0, :cond_1

    .line 33
    if-eqz p0, :cond_0

    .line 35
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 38
    :cond_0
    return-object v0

    .line 39
    :cond_1
    :try_start_2
    new-instance p1, Ljava/util/HashSet;

    .line 41
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 44
    new-instance p2, Ljava/util/HashMap;

    .line 46
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 49
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    if-eqz v0, :cond_2

    .line 74
    move-object v0, v2

    .line 75
    :cond_2
    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    move-object v0, p0

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;

    .line 84
    invoke-direct {v0, p1, p2}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;-><init>(Ljava/util/Set;Ljava/util/HashMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 90
    return-object v0

    .line 91
    :catchall_1
    move-exception p1

    .line 92
    :goto_1
    if-eqz v0, :cond_4

    .line 94
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_4
    throw p1

    .line 98
    :catch_0
    move-exception p0

    .line 99
    const-string p1, "WatchlistReportDbHelper"

    .line 101
    const-string p2, "Error opening the database"

    .line 103
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    return-object v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    const-string p0, "CREATE TABLE records(app_digest BLOB,cnc_domain TEXT,timestamp INTEGER DEFAULT 0 )"

    .line 3
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const-string p0, "DROP TABLE IF EXISTS records"

    .line 3
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    const-string p0, "CREATE TABLE records(app_digest BLOB,cnc_domain TEXT,timestamp INTEGER DEFAULT 0 )"

    .line 8
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 11
    return-void
.end method
