.class public final Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper$AppLaunchTimeDBErrorHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string p0, "ActivityManagerPerformance"

    .line 2
    .line 3
    const-string v0, "app launch time db is deleted by AppLaunchTimeDBErrorHandler"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance p1, Ljava/io/File;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
