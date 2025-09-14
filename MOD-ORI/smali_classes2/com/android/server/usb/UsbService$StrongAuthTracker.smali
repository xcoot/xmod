.class public final Lcom/android/server/usb/UsbService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLockdownModeStatus:Z

.field public final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbService;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->this$0:Lcom/android/server/usb/UsbService;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final declared-synchronized onStrongAuthRequiredChanged(I)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    and-int/lit8 p1, p1, 0x20

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    move p1, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v0

    .line 15
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->mLockdownModeStatus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    if-ne v2, p1, :cond_1

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->mLockdownModeStatus:Z

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->this$0:Lcom/android/server/usb/UsbService;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    array-length v3, v2

    .line 32
    :goto_1
    if-ge v0, v3, :cond_2

    .line 33
    .line 34
    aget-object v4, v2, v0

    .line 35
    .line 36
    iget-object v5, p0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->this$0:Lcom/android/server/usb/UsbService;

    .line 37
    .line 38
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    xor-int/lit8 v6, p1, 0x1

    .line 43
    .line 44
    new-instance v7, Landroid/hardware/usb/IUsbOperationInternal$Default;

    .line 45
    .line 46
    invoke-direct {v7}, Landroid/hardware/usb/IUsbOperationInternal$Default;-><init>()V

    .line 47
    .line 48
    .line 49
    const/4 v8, 0x2

    .line 50
    invoke-virtual {v5, v4, v6, v8, v7}, Lcom/android/server/usb/UsbService;->enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :goto_2
    monitor-exit p0

    .line 61
    throw p1
.end method
