.class public final Lcom/android/server/adb/AdbService$AdbConnectionPortListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onPortReceived(I)V
    .locals 4

    .line 1
    const-string v0, "AdbService"

    .line 3
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    .line 5
    if-lez p1, :cond_0

    .line 7
    const v1, 0xffff

    .line 10
    if-gt p1, v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 24
    :try_start_0
    iget-object p1, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    .line 26
    const-string v1, "adb_wifi_enabled"

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    const-string p1, "ADB_ENABLED is restricted."

    .line 35
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    iget-object p1, p0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 43
    move-result p1

    .line 44
    new-instance v1, Landroid/content/Intent;

    .line 46
    const-string/jumbo v2, "com.android.server.adb.WIRELESS_DEBUG_STATUS"

    .line 49
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    if-ltz p1, :cond_1

    .line 54
    const/4 v2, 0x4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v2, 0x5

    .line 57
    :goto_1
    const-string/jumbo v3, "status"

    .line 60
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v2, "adb_port"

    .line 65
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 70
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 72
    invoke-static {p0, v1, v2}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v1, "sent port broadcast port="

    .line 80
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method
