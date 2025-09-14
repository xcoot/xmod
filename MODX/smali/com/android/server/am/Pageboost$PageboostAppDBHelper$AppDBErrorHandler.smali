.class public final Lcom/android/server/am/Pageboost$PageboostAppDBHelper$AppDBErrorHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/Pageboost$PageboostAppDBHelper$AppDBErrorHandler;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "Pageboost"

    .line 3
    iget p0, p0, Lcom/android/server/am/Pageboost$PageboostAppDBHelper$AppDBErrorHandler;->$r8$classId:I

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 10
    const-string/jumbo p0, "fileDB is deleted by FileDBErrorHandler"

    .line 13
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    new-instance p1, Ljava/io/File;

    .line 22
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 28
    const-string p0, "appDB is deleted by FileDBErrorHandler"

    .line 30
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string p0, "/data/misc/pageboost/pageboost_app_db.db"

    .line 35
    invoke-static {p0}, Lcom/android/server/am/Pageboost;->deleteDB(Ljava/lang/String;)V

    .line 38
    return-void

    .line 39
    :pswitch_0
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 41
    const-string p0, "appDB is deleted by AppDBErrorHandler"

    .line 43
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    new-instance p1, Ljava/io/File;

    .line 52
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 58
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
