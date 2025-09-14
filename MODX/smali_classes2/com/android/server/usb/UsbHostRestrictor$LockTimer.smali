.class public final Lcom/android/server/usb/UsbHostRestrictor$LockTimer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$LockTimer;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :goto_0
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->misRunScreenLockTimer:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v1, "UsbHostRestrictor"

    .line 14
    .line 15
    const-string v2, "LockTimer run FinishLockTimer"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$LockTimer;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/usb/UsbHostRestrictor;->isFinishLockTimer()Z

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const-wide/32 v0, 0xea60

    .line 30
    .line 31
    .line 32
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw p0
.end method
