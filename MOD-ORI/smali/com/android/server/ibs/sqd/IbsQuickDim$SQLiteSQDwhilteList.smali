.class public final Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAllowDataOperator:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

.field public mBlockDataOperator:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

.field public mDb:Landroid/database/sqlite/SQLiteDatabase;


# virtual methods
.method public final getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mBlockDataOperator:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mAllowDataOperator:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 7
    .line 8
    return-object p0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    const-string p0, "CREATE TABLE IF NOT EXISTS  whilteList(_id INTEGER PRIMARY KEY AUTOINCREMENT,PackageName TEXT,Uid INT)"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "CREATE TABLE IF NOT EXISTS  allowList(_id INTEGER PRIMARY KEY AUTOINCREMENT,PackageName TEXT,Uid INT)"

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 1
    const-string v0, "Upgrading database from version "

    .line 2
    .line 3
    const-string v1, " to "

    .line 4
    .line 5
    const-string v2, ", which will destroy all old data"

    .line 6
    .line 7
    invoke-static {p2, p3, v0, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string p3, "IbsQuickDim"

    .line 12
    .line 13
    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const-string p2, "DROP TABLE IF EXISTS suggestions"

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
