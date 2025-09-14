.class public final Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AnrController;


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;->this$0:Lcom/android/server/StorageManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final getAnrDelayMillis(Ljava/lang/String;I)J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/StorageManagerService;->isAppIoBlocked(I)Z

    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 9
    const-wide/16 p0, 0x0

    .line 11
    return-wide p0

    .line 12
    :cond_0
    const-string p0, "anr_delay_millis"

    .line 14
    const/16 p2, 0x1388

    .line 16
    const-string/jumbo v0, "storage_native_boot"

    .line 19
    invoke-static {v0, p0, p2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 22
    move-result p0

    .line 23
    const-string/jumbo p2, "getAnrDelayMillis for "

    .line 26
    const-string v0, ". "

    .line 28
    const-string/jumbo v1, "ms"

    .line 31
    invoke-static {p0, p2, p1, v0, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    const-string p2, "StorageManagerService"

    .line 37
    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    int-to-long p0, p0

    .line 41
    return-wide p0
.end method

.method public final onAnrDelayCompleted(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/StorageManagerService;->isAppIoBlocked(I)Z

    .line 6
    move-result p0

    .line 7
    const-string/jumbo p2, "onAnrDelayCompleted for "

    .line 10
    const-string v0, "StorageManagerService"

    .line 12
    if-eqz p0, :cond_0

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string p1, ". Showing ANR dialog..."

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string p1, ". Skipping ANR dialog..."

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 p0, 0x0

    .line 57
    return p0
.end method

.method public final onAnrDelayStarted(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    invoke-virtual {v0, p2}, Lcom/android/server/StorageManagerService;->isAppIoBlocked(I)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "anr_delay_notify_external_storage_service"

    .line 12
    const/4 v1, 0x1

    .line 13
    const-string/jumbo v2, "storage_native_boot"

    .line 16
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v1, "onAnrDelayStarted for "

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ". Notifying external storage service"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    const-string v1, "StorageManagerService"

    .line 44
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;->this$0:Lcom/android/server/StorageManagerService;

    .line 49
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 51
    invoke-virtual {p0, p2, p1}, Lcom/android/server/storage/StorageSessionController;->notifyAnrDelayStarted(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    const-string v0, "Failed to notify ANR delay started for "

    .line 60
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-static {v1, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :cond_1
    :goto_0
    return-void
.end method
