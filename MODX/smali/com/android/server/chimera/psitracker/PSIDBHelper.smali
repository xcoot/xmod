.class public final Lcom/android/server/chimera/psitracker/PSIDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public CREATE_AVAIL_MEM_TABLE:Ljava/lang/String;

.field public DATABASE_UPDATE_TEAM_1:Ljava/lang/String;


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSIDBHelper;->CREATE_AVAIL_MEM_TABLE:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    const-string v0, "Exception caught  : "

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    const-string p1, "PSITracker-DBHelper"

    .line 24
    invoke-static {p1, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_0
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    :try_start_0
    const-string p2, "DROP TABLE IF EXISTS psi_Sample"

    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    const-string p2, "DROP TABLE IF EXISTS psi_Entry_App"

    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 11
    const-string p2, "DROP TABLE IF EXISTS psi_Available_Mem"

    .line 13
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/psitracker/PSIDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    const-string p2, "Exception caught  : "

    .line 25
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    const-string p1, "PSITracker-DBHelper"

    .line 37
    invoke-static {p1, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const/4 p3, 0x2

    .line 2
    if-ge p2, p3, :cond_0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSIDBHelper;->DATABASE_UPDATE_TEAM_1:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    const/4 p0, 0x3

    .line 13
    if-ge p2, p0, :cond_1

    .line 15
    const-string p0, "DROP TABLE IF EXISTS psi_Sample"

    .line 17
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 20
    const-string p0, "DROP TABLE IF EXISTS psi_Entry_App"

    .line 22
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_2

    .line 26
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    const-string p2, "Exception caught  : "

    .line 30
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    const-string p1, "PSITracker-DBHelper"

    .line 42
    invoke-static {p1, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    :goto_2
    return-void
.end method
