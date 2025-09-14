.class public final Lcom/android/server/usb/UsbService$PackageUninstallMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUidRemoved(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/util/ArraySet;

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    .line 56
    .line 57
    new-instance v4, Landroid/hardware/usb/IUsbOperationInternal$Default;

    .line 58
    .line 59
    invoke-direct {v4}, Landroid/hardware/usb/IUsbOperationInternal$Default;-><init>()V

    .line 60
    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    invoke-virtual {v3, v2, v5, v5, v4}, Lcom/android/server/usb/UsbService;->enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method
