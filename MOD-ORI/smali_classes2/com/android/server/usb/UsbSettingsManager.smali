.class public final Lcom/android/server/usb/UsbSettingsManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSettingsByProfileGroup:Landroid/util/SparseArray;

.field public final mSettingsByUser:Landroid/util/SparseArray;

.field public final mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

.field public final mUsbService:Lcom/android/server/usb/UsbService;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUsbService:Lcom/android/server/usb/UsbService;

    .line 21
    .line 22
    const-string/jumbo p2, "user"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/os/UserManager;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 32
    .line 33
    new-instance p2, Lcom/android/server/usb/UsbHandlerManager;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Lcom/android/server/usb/UsbHandlerManager;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "settings_manager"

    .line 2
    .line 3
    .line 4
    const-wide v1, 0x10b00000005L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x0

    .line 27
    move v6, v5

    .line 28
    :goto_0
    if-ge v6, v4, :cond_0

    .line 29
    .line 30
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Landroid/content/pm/UserInfo;

    .line 35
    .line 36
    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    .line 37
    .line 38
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {v7, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v6, v6, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_3

    .line 50
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 52
    .line 53
    monitor-enter v3

    .line 54
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    :goto_1
    if-ge v5, v2, :cond_1

    .line 61
    .line 62
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 69
    .line 70
    invoke-virtual {v4, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v5, v5, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    throw p0

    .line 85
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    throw p0
.end method

.method public final getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    new-instance v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    .line 39
    .line 40
    invoke-direct {v1, v2, p1, p0, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbHandlerManager;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    monitor-exit v0

    .line 56
    return-object v1

    .line 57
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/usb/UsbUserSettingsManager;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/usb/UsbUserSettingsManager;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v1, v2, v3}, Lcom/android/server/usb/UsbUserSettingsManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit v0

    .line 34
    return-object v1

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method
