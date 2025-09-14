.class public final Lcom/android/server/testharness/TestHarnessModeService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEnableKeepMemtagMode:Z

.field public mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

.field public final mService:Lcom/android/server/testharness/TestHarnessModeService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/server/testharness/TestHarnessModeService;->mEnableKeepMemtagMode:Z

    .line 6
    .line 7
    new-instance p1, Lcom/android/server/testharness/TestHarnessModeService$1;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/android/server/testharness/TestHarnessModeService$1;-><init>(Lcom/android/server/testharness/TestHarnessModeService;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService;->mService:Lcom/android/server/testharness/TestHarnessModeService$1;

    .line 13
    .line 14
    return-void
.end method

.method public static getMainUserId()I
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    const-string v0, "TestHarnessModeService"

    .line 17
    .line 18
    const-string v1, "No MainUser exists; using user 0 instead"

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public static setUpAdbFiles(Lcom/android/server/testharness/TestHarnessModeService$PersistentData;)V
    .locals 3

    .line 1
    const-class v0, Landroid/debug/AdbManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/debug/AdbManagerInternal;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbKeysFile()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbKeysFile()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    .line 24
    .line 25
    invoke-static {v2, v1}, Lcom/android/server/testharness/TestHarnessModeService;->writeBytesToFile([BLjava/nio/file/Path;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbTempKeysFile()Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbTempKeysFile()Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object p0, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    .line 43
    .line 44
    invoke-static {p0, v1}, Lcom/android/server/testharness/TestHarnessModeService;->writeBytesToFile([BLjava/nio/file/Path;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->notifyKeyFilesUpdated()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static writeBytesToFile([BLjava/nio/file/Path;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-array v1, v0, [Ljava/nio/file/OpenOption;

    .line 3
    .line 4
    invoke-static {p1, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 12
    .line 13
    .line 14
    new-array p0, v0, [Ljava/nio/file/LinkOption;

    .line 15
    .line 16
    invoke-static {p1, p0}, Ljava/nio/file/Files;->getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 21
    .line 22
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string p1, "TestHarnessModeService"

    .line 31
    .line 32
    const-string v0, "Failed to set up adb keys"

    .line 33
    .line 34
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method


# virtual methods
.method public final configureSettings()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "adb_enabled"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    const-string v0, "ctl.restart"

    .line 20
    .line 21
    const-string v3, "adbd"

    .line 22
    .line 23
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "TestHarnessModeService"

    .line 27
    .line 28
    const-string v3, "Restarted adbd"

    .line 29
    .line 30
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    const-string v0, "adb_allowed_connection_time"

    .line 34
    .line 35
    const-wide/16 v3, 0x0

    .line 36
    .line 37
    invoke-static {p0, v0, v3, v4}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 38
    .line 39
    .line 40
    const-string v0, "development_settings_enabled"

    .line 41
    .line 42
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 43
    .line 44
    .line 45
    const-string/jumbo v0, "verifier_verify_adb_installs"

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 49
    .line 50
    .line 51
    const-string/jumbo v0, "stay_on_while_plugged_in"

    .line 52
    .line 53
    .line 54
    const/16 v1, 0xf

    .line 55
    .line 56
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 57
    .line 58
    .line 59
    const-string/jumbo v0, "ota_disable_automatic_update"

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final configureUser()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/testharness/TestHarnessModeService;->getMainUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-class v1, Landroid/location/LocationManager;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/location/LocationManager;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v1, v0}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final getPersistentDataBlock()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "TestHarnessModeService"

    .line 6
    .line 7
    const-string v1, "Getting PersistentDataBlockManagerInternal from LocalServices"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const-class v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 23
    .line 24
    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 10

    .line 1
    const/16 v0, 0x270c

    .line 2
    .line 3
    const-string v1, "Failed to start Test Harness Mode; no implementation of PersistentDataBlockManagerInternal was bound!"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "TestHarnessModeService"

    .line 8
    .line 9
    const/16 v5, 0x1f4

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    const-string/jumbo v7, "persist.sys.test_harness"

    .line 13
    .line 14
    .line 15
    if-eq p1, v5, :cond_6

    .line 16
    .line 17
    const/16 v5, 0x3e8

    .line 18
    .line 19
    if-eq p1, v5, :cond_0

    .line 20
    .line 21
    goto/16 :goto_6

    .line 22
    .line 23
    :cond_0
    const-string v5, "Completing Test Harness Mode setup."

    .line 24
    .line 25
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-nez v5, :cond_1

    .line 33
    .line 34
    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    move-object v0, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    check-cast v5, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 40
    .line 41
    iget-object v1, v5, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    .line 44
    .line 45
    .line 46
    move-result-wide v8

    .line 47
    invoke-virtual {v5, v0, v8, v9}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->readInternal(IJ)[B

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    new-array v0, v2, [B

    .line 54
    .line 55
    :cond_2
    array-length v1, v0

    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    :try_start_0
    invoke-static {v0}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->fromBytes([B)Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/android/server/testharness/TestHarnessModeService;->setUpAdbFiles(Lcom/android/server/testharness/TestHarnessModeService$PersistentData;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->configureSettings()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->configureUser()V
    :try_end_0
    .catch Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->clearTestHarnessModeData()V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :catch_0
    move-exception v0

    .line 89
    :try_start_1
    const-string v1, "Failed to set up Test Harness Mode. Bad data."

    .line 90
    .line 91
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :goto_3
    invoke-static {v7, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_5

    .line 100
    .line 101
    goto/16 :goto_6

    .line 102
    .line 103
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const v1, 0x1040f19

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const v4, 0x1040f18

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    new-instance v4, Landroid/app/Notification$Builder;

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    .line 132
    .line 133
    invoke-direct {v4, v5, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const v5, 0x1080b7e

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    const-wide/16 v7, 0x0

    .line 144
    .line 145
    invoke-virtual {v4, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    const v5, 0x106001c

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    const-class v2, Landroid/app/NotificationManager;

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, Landroid/app/NotificationManager;

    .line 203
    .line 204
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 205
    .line 206
    const/16 v4, 0x36

    .line 207
    .line 208
    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 209
    .line 210
    .line 211
    goto :goto_6

    .line 212
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    check-cast p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->clearTestHarnessModeData()V

    .line 219
    .line 220
    .line 221
    throw p1

    .line 222
    :cond_6
    const-string v5, "Setting up test harness mode"

    .line 223
    .line 224
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    if-nez v5, :cond_7

    .line 232
    .line 233
    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_7
    check-cast v5, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 238
    .line 239
    iget-object v1, v5, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 240
    .line 241
    invoke-virtual {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    .line 242
    .line 243
    .line 244
    move-result-wide v8

    .line 245
    invoke-virtual {v5, v0, v8, v9}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->readInternal(IJ)[B

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-nez v0, :cond_8

    .line 250
    .line 251
    new-array v0, v2, [B

    .line 252
    .line 253
    :cond_8
    array-length v1, v0

    .line 254
    if-nez v1, :cond_9

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_9
    move-object v3, v0

    .line 258
    :goto_5
    if-nez v3, :cond_a

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    const-string v1, "device_provisioned"

    .line 270
    .line 271
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    .line 273
    .line 274
    const-string/jumbo v1, "user_setup_complete"

    .line 275
    .line 276
    .line 277
    const/4 v2, -0x2

    .line 278
    invoke-static {v0, v1, v6, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 279
    .line 280
    .line 281
    invoke-static {}, Lcom/android/server/testharness/TestHarnessModeService;->getMainUserId()I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 295
    .line 296
    .line 297
    const-string v0, "1"

    .line 298
    .line 299
    invoke-static {v7, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :goto_6
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 303
    .line 304
    .line 305
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mService:Lcom/android/server/testharness/TestHarnessModeService$1;

    .line 2
    .line 3
    const-string/jumbo v1, "testharness"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
