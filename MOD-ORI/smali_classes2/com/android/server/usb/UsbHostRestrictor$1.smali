.class public final Lcom/android/server/usb/UsbHostRestrictor$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    sget-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "block_usb_lock"

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sput v0, Lcom/android/server/usb/UsbHostRestrictor;->mSettingBlockUsbLock:I

    .line 20
    .line 21
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->mSecureKeyguardShowing:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget v0, Lcom/android/server/usb/UsbHostRestrictor;->mSettingBlockUsbLock:I

    .line 26
    .line 27
    if-ne v0, v2, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isAdbOnlyMode()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    const-string p0, "UsbHostRestrictor"

    .line 41
    .line 42
    const-string v0, "changed setting LOCK_SCREEN_BLOCK : OFF -> ON"

    .line 43
    .line 44
    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    sput p0, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->mSecureKeyguardShowing:Z

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    sget v0, Lcom/android/server/usb/UsbHostRestrictor;->mSettingBlockUsbLock:I

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    const-string v0, "UsbHostRestrictor"

    .line 62
    .line 63
    const-string v1, "changed setting LOCK_SCREEN_BLOCK : ON -> OFF"

    .line 64
    .line 65
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 69
    .line 70
    const-string v1, "1"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbHostRestrictor;->writeScrLckBlkSysNodetoFile(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x3

    .line 76
    sput v0, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const-string p0, "UsbHostRestrictor"

    .line 88
    .line 89
    const-string v0, "can\'t change block status (none-lock or adb-only or unknown setting value)"

    .line 90
    .line 91
    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :goto_0
    monitor-exit p1

    .line 95
    return-void

    .line 96
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p0
.end method
