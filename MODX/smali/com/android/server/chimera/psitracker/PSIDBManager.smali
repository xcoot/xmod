.class public final Lcom/android/server/chimera/psitracker/PSIDBManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final LOCK_DATABASE:Ljava/lang/Object;

.field public static volatile mContext:Ljava/lang/ref/WeakReference;

.field public static mInstance:Lcom/android/server/chimera/psitracker/PSIDBManager;


# instance fields
.field public final mDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/chimera/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mContext:Ljava/lang/ref/WeakReference;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mContext:Ljava/lang/ref/WeakReference;

    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/content/Context;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    new-instance v1, Lcom/android/server/chimera/psitracker/PSIDBHelper;

    .line 20
    const-string v2, "PSITracker.db"

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x3

    .line 24
    invoke-direct {v1, v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    const-string/jumbo v2, "create table if not exists psi_Available_Mem(id integer primary key autoincrement,availMem integer, cached integer, running integer,checkTime integer)"

    .line 30
    iput-object v2, v1, Lcom/android/server/chimera/psitracker/PSIDBHelper;->CREATE_AVAIL_MEM_TABLE:Ljava/lang/String;

    .line 32
    const-string v2, "ALTER TABLE psi_Available_Mem ADD COLUMN running integer"

    .line 34
    iput-object v2, v1, Lcom/android/server/chimera/psitracker/PSIDBHelper;->DATABASE_UPDATE_TEAM_1:Ljava/lang/String;

    .line 36
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 38
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/chimera/psitracker/PSIDBManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/chimera/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mInstance:Lcom/android/server/chimera/psitracker/PSIDBManager;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/chimera/psitracker/PSIDBManager;

    .line 10
    invoke-direct {v1}, Lcom/android/server/chimera/psitracker/PSIDBManager;-><init>()V

    .line 13
    sput-object v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mInstance:Lcom/android/server/chimera/psitracker/PSIDBManager;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mInstance:Lcom/android/server/chimera/psitracker/PSIDBManager;

    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public final endTransaction()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 8
    :cond_0
    return-void
.end method

.method public final isDBClosed()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/chimera/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 12
    move-result p0

    .line 13
    xor-int/2addr p0, v1

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    return v1

    .line 20
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final rawQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    sget-object v0, Lcom/android/server/chimera/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 15
    move-result-object p0

    .line 16
    monitor-exit v0

    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method
