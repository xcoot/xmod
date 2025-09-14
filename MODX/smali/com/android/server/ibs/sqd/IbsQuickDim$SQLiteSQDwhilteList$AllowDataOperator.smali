.class public final Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->this$1:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final delete([Ljava/lang/String;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->this$1:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 8
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    const-string/jumbo v0, "whilteList"

    .line 13
    const-string v1, "PackageName = ? AND Uid = ?"

    .line 15
    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->this$1:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 22
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    const-string v0, "allowList"

    .line 26
    const-string v1, "PackageName = ? AND Uid = ?"

    .line 28
    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 31
    move-result p0

    .line 32
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final insert(Landroid/content/ContentValues;)J
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    sget-boolean v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string v0, "IbsQuickDim"

    .line 12
    const-string v1, "SQLiteSQDwhilteList: ready to add whiteList!"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->this$1:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 19
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    const-string/jumbo v0, "whilteList"

    .line 24
    const-string v1, ""

    .line 26
    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 29
    move-result-wide p0

    .line 30
    return-wide p0

    .line 31
    :pswitch_0
    sget-boolean v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    .line 33
    if-eqz v0, :cond_1

    .line 35
    const-string v0, "IbsQuickDim"

    .line 37
    const-string v1, "SQLiteSQDwhilteList: ready to add whiteList!"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->this$1:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 44
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    const-string v0, "allowList"

    .line 48
    const-string v1, ""

    .line 50
    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 53
    move-result-wide p0

    .line 54
    return-wide p0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final query(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8

    .line 1
    iget p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    .line 8
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 11
    const-string/jumbo p0, "whilteList"

    .line 14
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    move-object v1, p1

    .line 24
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    .line 31
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 34
    const-string p0, "allowList"

    .line 36
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    move-object v1, p1

    .line 46
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
