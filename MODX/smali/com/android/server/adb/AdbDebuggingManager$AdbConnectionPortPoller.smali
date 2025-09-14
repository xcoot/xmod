.class public final Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    .line 14
    return-void
.end method


# virtual methods
.method public final cancelAndWait()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 3
    const-string v0, "Starting adb port property poller"

    .line 5
    const-string v1, "AdbDebuggingManager"

    .line 7
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    const/16 v2, 0xa

    .line 13
    const/4 v3, -0x1

    .line 14
    if-ge v0, v2, :cond_3

    .line 16
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 24
    return-void

    .line 25
    :cond_0
    const-string/jumbo v2, "service.adb.tls.port"

    .line 28
    const v4, 0x7fffffff

    .line 31
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 34
    move-result v2

    .line 35
    if-eq v2, v3, :cond_2

    .line 37
    if-lez v2, :cond_1

    .line 39
    const v3, 0xffff

    .line 42
    if-gt v2, v3, :cond_1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-wide/16 v2, 0x3e8

    .line 47
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    .line 55
    invoke-interface {p0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;->onPortReceived(I)V

    .line 58
    return-void

    .line 59
    :cond_3
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 61
    const-string v0, "Failed to receive adb connection port"

    .line 63
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->mListener:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;

    .line 68
    invoke-interface {p0, v3}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;->onPortReceived(I)V

    .line 71
    return-void
.end method
