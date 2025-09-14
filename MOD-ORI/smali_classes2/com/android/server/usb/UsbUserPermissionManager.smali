.class public final Lcom/android/server/usb/UsbUserPermissionManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAccessoryPermissionMap:Landroid/util/ArrayMap;

.field public final mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mDevicePermissionMap:Landroid/util/ArrayMap;

.field public final mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

.field public final mDisablePermissionDialogs:Z

.field public mIsCopyPermissionsScheduled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPermissionsFile:Landroid/util/AtomicFile;

.field public final mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

.field public final mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbUserSettingsManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 24
    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    .line 48
    .line 49
    const-class p2, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 50
    .line 51
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const p2, 0x1110141

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput-boolean p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    .line 71
    .line 72
    new-instance p1, Landroid/util/AtomicFile;

    .line 73
    .line 74
    new-instance p2, Ljava/io/File;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string/jumbo v2, "usb_permissions.xml"

    .line 85
    .line 86
    .line 87
    invoke-direct {p2, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v1, "usb-permissions"

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, p2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    .line 97
    .line 98
    monitor-enter v0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermissionsLocked()V

    .line 100
    .line 101
    .line 102
    monitor-exit v0

    .line 103
    return-void

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p0
.end method


# virtual methods
.method public final checkPermission(Landroid/hardware/usb/UsbAccessory;II)V
    .locals 1

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "User has not given "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " permission to accessory "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V
    .locals 3

    .line 1
    const-string v0, "checkPermission: device="

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_1

    .line 2
    iget-object p3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_0

    .line 4
    const-string p0, "UsbUserPermissionManager"

    const-string v0, "checkPermission: uidList is null"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    const-string v1, "UsbUserPermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uidList="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", For uid("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance p0, Ljava/lang/SecurityException;

    const-string p3, "User has not given "

    const-string v0, "/"

    const-string v1, " permission to access device "

    .line 8
    invoke-static {p4, p3, v0, p2, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :goto_1
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string/jumbo v2, "user_permissions"

    .line 6
    .line 7
    .line 8
    const-wide v3, 0x20b00000001L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-object v4, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v4

    .line 20
    :try_start_0
    const-string/jumbo v5, "user_id"

    .line 21
    .line 22
    .line 23
    iget-object v6, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    .line 24
    .line 25
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const-wide v7, 0x10500000001L

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v5, v7, v8, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 35
    .line 36
    .line 37
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/4 v9, 0x0

    .line 44
    :goto_0
    const-wide v10, 0x20500000002L

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const-wide v12, 0x10900000001L

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const-wide v14, 0x20b00000002L

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    if-ge v9, v5, :cond_1

    .line 60
    .line 61
    iget-object v6, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Ljava/lang/String;

    .line 68
    .line 69
    const-string v7, "device_permissions"

    .line 70
    .line 71
    invoke-virtual {v1, v7, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 72
    .line 73
    .line 74
    move-result-wide v7

    .line 75
    const-string v14, "device_name"

    .line 76
    .line 77
    invoke-virtual {v1, v14, v12, v13, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v6, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 87
    .line 88
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    const/4 v13, 0x0

    .line 93
    :goto_1
    if-ge v13, v12, :cond_0

    .line 94
    .line 95
    const-string/jumbo v14, "uids"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    invoke-virtual {v1, v14, v10, v11, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v13, v13, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    goto/16 :goto_8

    .line 110
    .line 111
    :cond_0
    invoke-virtual {v1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v9, v9, 0x1

    .line 115
    .line 116
    const-wide v7, 0x10500000001L

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    .line 123
    .line 124
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    const/4 v6, 0x0

    .line 129
    :goto_2
    if-ge v6, v5, :cond_3

    .line 130
    .line 131
    iget-object v7, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    .line 132
    .line 133
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    check-cast v7, Landroid/hardware/usb/UsbAccessory;

    .line 138
    .line 139
    const-string v8, "accessory_permissions"

    .line 140
    .line 141
    const-wide v14, 0x20b00000003L

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v8, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 147
    .line 148
    .line 149
    move-result-wide v8

    .line 150
    const-string v14, "accessory_description"

    .line 151
    .line 152
    invoke-virtual {v7}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-virtual {v1, v14, v12, v13, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v7, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    .line 160
    .line 161
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 166
    .line 167
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    .line 168
    .line 169
    .line 170
    move-result v14

    .line 171
    const/4 v15, 0x0

    .line 172
    :goto_3
    if-ge v15, v14, :cond_2

    .line 173
    .line 174
    const-string/jumbo v12, "uids"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v15}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 178
    .line 179
    .line 180
    move-result v13

    .line 181
    invoke-virtual {v1, v12, v10, v11, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 182
    .line 183
    .line 184
    add-int/lit8 v15, v15, 0x1

    .line 185
    .line 186
    const-wide v12, 0x10900000001L

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_2
    invoke-virtual {v1, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 193
    .line 194
    .line 195
    add-int/lit8 v6, v6, 0x1

    .line 196
    .line 197
    const-wide v12, 0x10900000001L

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    const-wide v14, 0x20b00000002L

    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_3
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 209
    .line 210
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    const/4 v6, 0x0

    .line 215
    :goto_4
    const-wide v9, 0x10b00000001L

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    if-ge v6, v5, :cond_5

    .line 221
    .line 222
    iget-object v11, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 223
    .line 224
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    check-cast v11, Landroid/hardware/usb/DeviceFilter;

    .line 229
    .line 230
    const-string v12, "device_persistent_permissions"

    .line 231
    .line 232
    const-wide v13, 0x20b00000004L

    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v12, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 238
    .line 239
    .line 240
    move-result-wide v12

    .line 241
    const-string v14, "device"

    .line 242
    .line 243
    invoke-virtual {v11, v1, v14, v9, v10}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 244
    .line 245
    .line 246
    iget-object v9, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 247
    .line 248
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    check-cast v9, Landroid/util/SparseBooleanArray;

    .line 253
    .line 254
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    .line 255
    .line 256
    .line 257
    move-result v10

    .line 258
    const/4 v11, 0x0

    .line 259
    :goto_5
    if-ge v11, v10, :cond_4

    .line 260
    .line 261
    const-string/jumbo v14, "uid_permission"

    .line 262
    .line 263
    .line 264
    const-wide v7, 0x20b00000002L

    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v14, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 270
    .line 271
    .line 272
    move-result-wide v14

    .line 273
    const-string/jumbo v7, "uid"

    .line 274
    .line 275
    .line 276
    invoke-virtual {v9, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    move-wide/from16 v16, v2

    .line 281
    .line 282
    const-wide v2, 0x10500000001L

    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v7, v2, v3, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 288
    .line 289
    .line 290
    const-string v2, "is_granted"

    .line 291
    .line 292
    invoke-virtual {v9, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    const-wide v7, 0x10800000002L

    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v2, v7, v8, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 305
    .line 306
    .line 307
    add-int/lit8 v11, v11, 0x1

    .line 308
    .line 309
    move-wide/from16 v2, v16

    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_4
    move-wide/from16 v16, v2

    .line 313
    .line 314
    invoke-virtual {v1, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 315
    .line 316
    .line 317
    add-int/lit8 v6, v6, 0x1

    .line 318
    .line 319
    move-wide/from16 v2, v16

    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_5
    move-wide/from16 v16, v2

    .line 323
    .line 324
    iget-object v2, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 325
    .line 326
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    const/4 v3, 0x0

    .line 331
    :goto_6
    if-ge v3, v2, :cond_7

    .line 332
    .line 333
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 334
    .line 335
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    check-cast v5, Landroid/hardware/usb/AccessoryFilter;

    .line 340
    .line 341
    const-string v6, "accessory_persistent_permissions"

    .line 342
    .line 343
    const-wide v7, 0x20b00000005L

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 349
    .line 350
    .line 351
    move-result-wide v6

    .line 352
    const-string v8, "accessory"

    .line 353
    .line 354
    invoke-virtual {v5, v1, v8, v9, v10}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 355
    .line 356
    .line 357
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 358
    .line 359
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    check-cast v5, Landroid/util/SparseBooleanArray;

    .line 364
    .line 365
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    .line 366
    .line 367
    .line 368
    move-result v8

    .line 369
    const/4 v11, 0x0

    .line 370
    :goto_7
    if-ge v11, v8, :cond_6

    .line 371
    .line 372
    const-string/jumbo v12, "uid_permission"

    .line 373
    .line 374
    .line 375
    const-wide v13, 0x20b00000002L

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v12, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 381
    .line 382
    .line 383
    move-result-wide v9

    .line 384
    const-string/jumbo v12, "uid"

    .line 385
    .line 386
    .line 387
    invoke-virtual {v5, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 388
    .line 389
    .line 390
    move-result v15

    .line 391
    const-wide v13, 0x10500000001L

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    invoke-virtual {v1, v12, v13, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 397
    .line 398
    .line 399
    const-string v12, "is_granted"

    .line 400
    .line 401
    invoke-virtual {v5, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 402
    .line 403
    .line 404
    move-result v15

    .line 405
    const-wide v13, 0x10800000002L

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v12, v13, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 414
    .line 415
    .line 416
    add-int/lit8 v11, v11, 0x1

    .line 417
    .line 418
    const-wide v9, 0x10b00000001L

    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    goto :goto_7

    .line 424
    :cond_6
    const-wide v13, 0x10800000002L

    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 430
    .line 431
    .line 432
    add-int/lit8 v3, v3, 0x1

    .line 433
    .line 434
    const-wide v9, 0x10b00000001L

    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    goto :goto_6

    .line 440
    :cond_7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    move-wide/from16 v2, v16

    .line 442
    .line 443
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :goto_8
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    throw v0
.end method

.method public final grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 25
    .line 26
    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "UsbUserPermissionManager"

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "grantDevicePermission: device="

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " For uid="

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v0

    .line 44
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 60
    .line 61
    invoke-direct {v2, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-virtual {v4, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_0
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Landroid/util/SparseBooleanArray;

    .line 86
    .line 87
    if-nez p0, :cond_2

    .line 88
    .line 89
    const-string p0, "UsbUserPermissionManager"

    .line 90
    .line 91
    const-string p1, "grantDevicePermission: uidList is null"

    .line 92
    .line 93
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-nez p0, :cond_3

    .line 102
    .line 103
    const-string p0, "UsbUserPermissionManager"

    .line 104
    .line 105
    const-string p1, "grantDevicePermission: uidList put error"

    .line 106
    .line 107
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_1
    monitor-exit v0

    .line 111
    return-void

    .line 112
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    throw p0
.end method

.method public final hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v2, 0x3e8

    if-eq p3, v2, :cond_4

    .line 23
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_USB"

    .line 24
    invoke-virtual {v2, v3, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    new-instance p2, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {p2, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 26
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 27
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseBooleanArray;

    if-eqz p2, :cond_2

    .line 28
    invoke-virtual {p2, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 29
    invoke-virtual {p2, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 30
    :cond_2
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_3

    .line 31
    monitor-exit v0

    return v1

    .line 32
    :cond_3
    invoke-virtual {p0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 33
    :cond_4
    :goto_0
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasVideoCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 4
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0, p3, p4, p2}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(IILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    return v1

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasAudioCapture()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 8
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 9
    invoke-virtual {p2, v0, p3}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result p2

    if-eqz p2, :cond_3

    return v1

    .line 10
    :cond_3
    iget-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/16 v0, 0x3e8

    if-eq p4, v0, :cond_7

    .line 11
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    new-instance p3, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {p3, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 13
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseBooleanArray;

    if-eqz p3, :cond_5

    .line 14
    invoke-virtual {p3, p4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_5

    .line 15
    invoke-virtual {p3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit p2

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 16
    :cond_5
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_6

    .line 17
    monitor-exit p2

    return v1

    .line 18
    :cond_6
    invoke-virtual {p0, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit p2

    return p0

    .line 19
    :cond_7
    :goto_0
    monitor-exit p2

    return p3

    .line 20
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isCameraPermissionGranted(IILjava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "UsbUserPermissionManager"

    .line 2
    .line 3
    const-string v1, "Package "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3, p3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 17
    .line 18
    if-eq v4, p2, :cond_0

    .line 19
    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " does not match caller\'s uid "

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return v2

    .line 44
    :cond_0
    iget p3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    const/16 v1, 0x1c

    .line 47
    .line 48
    if-lt p3, v1, :cond_1

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    const-string p3, "android.permission.CAMERA"

    .line 53
    .line 54
    invoke-virtual {p0, p3, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const/4 p1, -0x1

    .line 59
    if-ne p1, p0, :cond_1

    .line 60
    .line 61
    const-string p0, "Camera permission required for USB video class devices"

    .line 62
    .line 63
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :cond_1
    const/4 p0, 0x1

    .line 68
    return p0

    .line 69
    :catch_0
    const-string p0, "Package not found, likely due to invalid package name!"

    .line 70
    .line 71
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return v2
.end method

.method public final readPermission(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    .line 1
    const-string v0, "UsbUserPermissionManager"

    .line 2
    .line 3
    :try_start_0
    const-string/jumbo v1, "uid"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "granted"

    .line 12
    .line 13
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_5

    .line 18
    .line 19
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 53
    .line 54
    .line 55
    const-string/jumbo v2, "usb-device"

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-static {p1}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 73
    .line 74
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-ltz v2, :cond_1

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Landroid/util/SparseBooleanArray;

    .line 87
    .line 88
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 93
    .line 94
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 98
    .line 99
    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    const-string/jumbo v2, "usb-accessory"

    .line 107
    .line 108
    .line 109
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_4

    .line 118
    .line 119
    invoke-static {p1}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 124
    .line 125
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-ltz v2, :cond_3

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 132
    .line 133
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Landroid/util/SparseBooleanArray;

    .line 138
    .line 139
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 144
    .line 145
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 149
    .line 150
    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 154
    .line 155
    .line 156
    :cond_4
    :goto_0
    return-void

    .line 157
    :cond_5
    :goto_1
    const-string p0, "error reading usb permission granted state"

    .line 158
    .line 159
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :catch_0
    move-exception p0

    .line 167
    const-string v1, "error reading usb permission uid"

    .line 168
    .line 169
    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .line 171
    .line 172
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public final readPermissionsLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eq v2, v3, :cond_1

    .line 30
    .line 31
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string/jumbo v3, "permission"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermission(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    if-eqz v0, :cond_3

    .line 55
    .line 56
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_4

    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto :goto_3

    .line 62
    :goto_1
    if-eqz v0, :cond_2

    .line 63
    .line 64
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 73
    :goto_3
    const-string v1, "UsbUserPermissionManager"

    .line 74
    .line 75
    const-string v2, "error reading usb permissions file, deleting to start fresh"

    .line 76
    .line 77
    invoke-static {v1, v2, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    .line 83
    .line 84
    .line 85
    :catch_1
    :cond_3
    :goto_4
    return-void
.end method

.method public final requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    .locals 15

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v0, p4

    move/from16 v7, p5

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestPermission: accessory="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " packageName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pi="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UsbUserPermissionManager"

    invoke-static {v4, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0, v3, v0, v7}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    const-string v5, "accessory"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    const-string/jumbo v3, "permission"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    :try_start_0
    iget-object v1, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 54
    :cond_0
    iget-object v8, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    :try_start_1
    iget-object v0, v8, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x81

    invoke-virtual {v0, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 56
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v9, v0

    goto :goto_1

    :catch_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v9, :cond_5

    .line 57
    array-length v10, v9

    move v11, v2

    :goto_2
    if-ge v11, v10, :cond_5

    .line 58
    aget-object v12, v9, v11

    .line 59
    :try_start_2
    iget-object v0, v8, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v13, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    if-nez v13, :cond_2

    if-eqz v13, :cond_4

    .line 60
    :cond_1
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    .line 61
    :cond_2
    :try_start_3
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 62
    :goto_3
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 63
    const-string/jumbo v0, "usb-accessory"

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    invoke-static {v13}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v3}, Landroid/hardware/usb/AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 66
    :try_start_4
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v14, v0

    goto :goto_4

    .line 67
    :cond_3
    :try_start_5
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 68
    :goto_4
    :try_start_6
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v13, v0

    :try_start_7
    invoke-virtual {v14, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 69
    :goto_6
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Unable to load component info "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "UsbUserSettingsManager"

    invoke-static {v13, v12, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_8
    const/4 v2, 0x0

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    .line 70
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public final requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v3, p4

    move/from16 v7, p5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestPermission: device="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " packageName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pi="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " pid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UsbUserPermissionManager"

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    const-string v0, "application_policy"

    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-interface {v0, v7, v2, v5}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    const-string v0, "Allowed by MDM policy"

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {p0, v2, v5, v3, v7}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    const-string v0, "Policy forcely granted usb device permission for package="

    const-string v8, "("

    const-string v9, ")"

    .line 9
    invoke-static {v7, v0, v5, v8, v9}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0, v2, v7}, Lcom/android/server/usb/UsbUserPermissionManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isUsbDevicePermittedForPackageByMdm "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 14
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 15
    invoke-virtual {p0, v2, v5, v3, v7}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v4

    const/4 v8, 0x1

    const-string/jumbo v9, "permission"

    const-string v10, "device"

    const/4 v11, 0x0

    if-eqz v4, :cond_2

    .line 16
    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    :try_start_1
    iget-object v1, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1, v11, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    .line 19
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getHasVideoCapture()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 20
    invoke-virtual {p0, v3, v7, v5}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 21
    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    invoke-virtual {v0, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    :try_start_2
    iget-object v1, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1, v11, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void

    .line 24
    :cond_3
    iget-object v3, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    :try_start_3
    iget-object v0, v3, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x81

    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 26
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    move-object v4, v0

    goto :goto_2

    :catch_3
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    if-eqz v4, :cond_8

    .line 27
    array-length v9, v4

    move v10, v11

    :goto_3
    if-ge v10, v9, :cond_8

    .line 28
    aget-object v12, v4, v10

    .line 29
    :try_start_4
    iget-object v0, v3, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v13, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    if-nez v13, :cond_5

    if-eqz v13, :cond_7

    .line 30
    :cond_4
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    .line 31
    :cond_5
    :try_start_5
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 32
    :goto_4
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v8, :cond_4

    .line 33
    const-string/jumbo v0, "usb-device"

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    invoke-static {v13}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v2}, Landroid/hardware/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_6

    .line 36
    :try_start_6
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move v4, v8

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v14, v0

    goto :goto_5

    .line 37
    :cond_6
    :try_start_7
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 38
    :goto_5
    :try_start_8
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v13, v0

    :try_start_9
    invoke-virtual {v14, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v14
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 39
    :goto_7
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Unable to load component info "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "UsbUserSettingsManager"

    invoke-static {v13, v12, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    move v4, v11

    :goto_9
    const/4 v3, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    .line 40
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public final requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 5

    .line 1
    const-string v0, " not found"

    .line 2
    .line 3
    const-string/jumbo v1, "package "

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v2, p4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    .line 19
    const-string v3, "UsbUserPermissionManager"

    .line 20
    .line 21
    if-ne v2, p6, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    .line 30
    .line 31
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 32
    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const-string p2, "device"

    .line 37
    .line 38
    invoke-virtual {v4, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_3

    .line 44
    :cond_0
    const-string p1, "accessory"

    .line 45
    .line 46
    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    :goto_0
    const-string p1, "android.intent.extra.INTENT"

    .line 50
    .line 51
    invoke-virtual {v4, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    const-string p1, "android.intent.extra.UID"

    .line 55
    .line 56
    invoke-virtual {v4, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    const-string p1, "android.hardware.usb.extra.CAN_BE_DEFAULT"

    .line 60
    .line 61
    invoke-virtual {v4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const-string p1, "android.hardware.usb.extra.PACKAGE"

    .line 65
    .line 66
    invoke-virtual {v4, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const p2, 0x10403cc

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    const/high16 p1, 0x10000000

    .line 88
    .line 89
    invoke-virtual {v4, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    .line 93
    .line 94
    invoke-virtual {v0, v4, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    .line 97
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catch_0
    :try_start_2
    const-string/jumbo p0, "unable to start UsbPermissionActivity"

    .line 102
    .line 103
    .line 104
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :goto_2
    return-void

    .line 109
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_1
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, " does not match caller\'s uid "

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    const-string p0, "180104273"

    .line 137
    .line 138
    const/4 p1, -0x1

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string p2, ""

    .line 144
    .line 145
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    const p1, 0x534e4554

    .line 150
    .line 151
    .line 152
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    .line 154
    .line 155
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    invoke-static {v1, p4, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :catchall_1
    move-exception p0

    .line 166
    throw p0

    .line 167
    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 168
    .line 169
    invoke-static {v1, p4, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p0
.end method

.method public final setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;IZ)V
    .locals 3

    .line 1
    new-instance v0, Landroid/hardware/usb/AccessoryFilter;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_4

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v2, 0x1

    .line 37
    if-ltz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eq p2, p3, :cond_1

    .line 44
    .line 45
    move p2, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 p2, 0x0

    .line 48
    :goto_1
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 53
    .line 54
    .line 55
    move p2, v2

    .line 56
    :goto_2
    if-eqz p2, :cond_4

    .line 57
    .line 58
    iget-boolean p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    .line 59
    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    .line 64
    .line 65
    new-instance p2, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbUserPermissionManager;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_3
    monitor-exit p1

    .line 74
    return-void

    .line 75
    :goto_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;IZ)V
    .locals 3

    .line 1
    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_4

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v2, 0x1

    .line 37
    if-ltz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eq p2, p3, :cond_1

    .line 44
    .line 45
    move p2, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 p2, 0x0

    .line 48
    :goto_1
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 53
    .line 54
    .line 55
    move p2, v2

    .line 56
    :goto_2
    if-eqz p2, :cond_4

    .line 57
    .line 58
    iget-boolean p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    .line 59
    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    .line 64
    .line 65
    new-instance p2, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbUserPermissionManager;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_3
    monitor-exit p1

    .line 74
    return-void

    .line 75
    :goto_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method
