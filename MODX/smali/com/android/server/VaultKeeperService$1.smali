.class public final Lcom/android/server/VaultKeeperService$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/VaultKeeperService;


# direct methods
.method public constructor <init>(Lcom/android/server/VaultKeeperService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v1, "VaultKeeperService"

    .line 6
    const/4 v2, 0x2

    .line 7
    iget-object p0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    .line 9
    if-eq p1, v0, :cond_1

    .line 11
    if-eq p1, v2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 16
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_4

    .line 22
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 24
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 27
    const-string/jumbo p0, "wakelock is released!!"

    .line 30
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 36
    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_2

    .line 42
    iget-object p1, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 44
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 49
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_3

    .line 55
    iget-object p1, p0, Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 57
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 60
    const-string/jumbo p1, "wakelock is acquired!!"

    .line 63
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_3
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 68
    const-wide/16 v0, 0x1388

    .line 70
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 73
    :cond_4
    :goto_0
    return-void
.end method
