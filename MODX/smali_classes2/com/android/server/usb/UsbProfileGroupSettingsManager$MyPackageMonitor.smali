.class public final Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1, v0, v2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 23
    .line 24
    new-instance v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 25
    .line 26
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {v0, p1, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "handlePackageUpdate could not find package "

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v2

    .line 38
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const/16 v4, 0x81

    .line 45
    .line 46
    invoke-virtual {v3, p1, v4, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :try_start_1
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    monitor-exit v2

    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    const/4 p2, 0x0

    .line 59
    move v1, p2

    .line 60
    :goto_0
    array-length v3, p1

    .line 61
    if-ge p2, v3, :cond_4

    .line 62
    .line 63
    aget-object v3, p1, p2

    .line 64
    .line 65
    const-string v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 66
    .line 67
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x1

    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    move v1, v4

    .line 75
    :cond_2
    aget-object v3, p1, p2

    .line 76
    .line 77
    const-string v5, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    .line 78
    .line 79
    invoke-virtual {p0, v0, v3, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    move v1, v4

    .line 86
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    if-eqz v1, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 92
    .line 93
    .line 94
    :cond_5
    monitor-exit v2

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception p0

    .line 97
    const-string p1, "UsbProfileGroupSettingsManager"

    .line 98
    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    monitor-exit v2

    .line 115
    :goto_1
    return-void

    .line 116
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    throw p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1, v0, v2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 23
    .line 24
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
