.class public final Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# instance fields
.field public final mListeners:Ljava/util/List;


# direct methods
.method public static -$$Nest$mnotifyFlightComplete(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->mListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;

    .line 25
    .line 26
    const-string/jumbo v1, "onFlightComplete()"

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;->val$timeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 30
    .line 31
    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->enableTelephonyTimeZoneFallback(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->mListeners:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;

    .line 16
    .line 17
    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;-><init>(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 18
    .line 19
    .line 20
    const-string p0, "airplane_mode_on"

    .line 21
    .line 22
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
