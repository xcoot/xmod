.class public final Lcom/android/server/Watchdog$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mUri:Landroid/net/Uri;

.field public final mWatchdog:Lcom/android/server/Watchdog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/Watchdog;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "system_server_watchdog_timeout_ms"

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/Watchdog$SettingsObserver;->mUri:Landroid/net/Uri;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/Watchdog$SettingsObserver;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/server/Watchdog$SettingsObserver;->mWatchdog:Lcom/android/server/Watchdog;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/Watchdog$SettingsObserver;->onChange()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final onChange()V
    .locals 6

    .line 3
    const-string v0, "Watchdog"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/Watchdog$SettingsObserver;->mWatchdog:Lcom/android/server/Watchdog;

    iget-object p0, p0, Lcom/android/server/Watchdog$SettingsObserver;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "system_server_watchdog_timeout_ms"

    const-wide/32 v3, 0xea60

    .line 5
    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-boolean p0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez p0, :cond_0

    const-wide/16 v4, 0x4e20

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    const-wide/16 v2, 0x4e21

    .line 7
    :cond_0
    iput-wide v2, v1, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Watchdog timeout updated to "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v1, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " millis"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while reading settings "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/Watchdog$SettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/Watchdog$SettingsObserver;->onChange()V

    :cond_0
    return-void
.end method
