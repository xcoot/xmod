.class public final Lcom/android/server/usb/UsbSerialReader;
.super Landroid/hardware/usb/IUsbSerialReader$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDevice:Ljava/lang/Object;

.field public final mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field public final mSerialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbPermissionManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/usb/IUsbSerialReader$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/usb/UsbSerialReader;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/usb/UsbSerialReader;->mSerialNumber:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getSerial(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string/jumbo v0, "package "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v3, 0x3e8

    .line 13
    .line 14
    if-eq v2, v3, :cond_3

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    :try_start_0
    iget-object v6, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-virtual {v6, p1, v7, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 56
    .line 57
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 58
    .line 59
    const/16 v3, 0x1d

    .line 60
    .line 61
    if-lt v0, v3, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    const-string v3, "android.permission.MANAGE_USB"

    .line 66
    .line 67
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v3, -0x1

    .line 72
    if-ne v0, v3, :cond_1

    .line 73
    .line 74
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget-object v3, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    .line 79
    .line 80
    instance-of v3, v3, Landroid/hardware/usb/UsbDevice;

    .line 81
    .line 82
    if-eqz v3, :cond_0

    .line 83
    .line 84
    iget-object v3, p0, Lcom/android/server/usb/UsbSerialReader;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v3, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 93
    .line 94
    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/android/server/usb/UsbUserPermissionManager;->checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_1

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/android/server/usb/UsbSerialReader;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 109
    .line 110
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/usb/UsbUserPermissionManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .line 112
    .line 113
    :cond_1
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catch_0
    :try_start_2
    new-instance p0, Landroid/os/RemoteException;

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string p1, " cannot be found"

    .line 128
    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    const-string v0, " does to belong to the "

    .line 147
    .line 148
    invoke-static {v2, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p0

    .line 156
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/usb/UsbSerialReader;->mSerialNumber:Ljava/lang/String;

    .line 157
    .line 158
    return-object p0
.end method
