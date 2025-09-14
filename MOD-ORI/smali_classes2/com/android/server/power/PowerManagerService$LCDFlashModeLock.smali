.class public final Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final binder:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->binder:Landroid/os/IBinder;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->binderDied()V

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    const-string v1, "PowerManagerService"

    .line 7
    .line 8
    const-string v2, "LCDFlashModeLock : binderDied"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->binder:Landroid/os/IBinder;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->setLCDFlashModeInternal(Landroid/os/IBinder;Z)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashModeLock:Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;

    .line 25
    .line 26
    const-string p0, "PowerManagerService"

    .line 27
    .line 28
    const-string v1, "mLCDFlashModeLock set to null"

    .line 29
    .line 30
    invoke-static {p0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method
