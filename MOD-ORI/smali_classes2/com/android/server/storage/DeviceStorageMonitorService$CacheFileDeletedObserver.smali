.class public final Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;
.super Landroid/os/FileObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 0

    .line 1
    const/16 p0, 0xabc

    .line 2
    .line 3
    invoke-static {p0, p2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method
