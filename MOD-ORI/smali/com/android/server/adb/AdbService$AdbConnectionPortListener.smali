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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPortReceived(I)V
    .locals 4

    .line 1
    const-string v0, "AdbService"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    .line 4
    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    const v1, 0xffff

    .line 8
    .line 9
    .line 10
    if-gt p1, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object p1, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    .line 25
    .line 26
    const-string v1, "adb_wifi_enabled"

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    const-string p1, "ADB_ENABLED is restricted."

    .line 34
    .line 35
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object p1, p0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    new-instance v1, Landroid/content/Intent;

    .line 45
    .line 46
    const-string/jumbo v2, "com.android.server.adb.WIRELESS_DEBUG_STATUS"

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    if-ltz p1, :cond_1

    .line 53
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

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    const-string v2, "adb_port"

    .line 64
    .line 65
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 71
    .line 72
    invoke-static {p0, v1, v2}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 73
    .line 74
    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string/jumbo v1, "sent port broadcast port="

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    return-void
.end method
