.class public final Lcom/android/server/power/PowerManagerService$Constants;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public NO_CACHED_WAKE_LOCKS:Z

.field public final mParser:Landroid/util/KeyValueListParser;

.field public mResolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$Constants;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    .line 8
    .line 9
    new-instance p1, Landroid/util/KeyValueListParser;

    .line 10
    .line 11
    const/16 p2, 0x2c

    .line 12
    .line 13
    invoke-direct {p1, p2}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "  Settings power_manager_constants:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "    "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "no_cached_wake_locks"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "="

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$Constants;->updateConstants()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updateConstants()V
    .locals 5

    .line 1
    const-string v0, "[api] updateConstants: NO_CACHED_WAKE_LOCKS: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$Constants;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 11
    .line 12
    const-string/jumbo v4, "power_manager_constants"

    .line 13
    .line 14
    .line 15
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :catch_0
    move-exception v2

    .line 26
    :try_start_1
    const-string v3, "PowerManagerService"

    .line 27
    .line 28
    const-string v4, "Bad alarm manager settings"

    .line 29
    .line 30
    invoke-static {v3, v4, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 34
    .line 35
    const-string/jumbo v3, "no_cached_wake_locks"

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    .line 44
    .line 45
    const-string v2, "PowerManagerService"

    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    .line 53
    .line 54
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 66
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p0
.end method
