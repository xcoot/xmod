.class public final Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/testharness/TestHarnessModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/testharness/TestHarnessModeService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static getBytesFromFile(Ljava/io/File;)[B
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    .line 16
    .line 17
    invoke-static {p0, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :try_start_0
    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    long-to-int p0, v1

    .line 26
    new-array v1, p0, [B

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 29
    .line 30
    .line 31
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-ne v2, p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_1
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    .line 39
    .line 40
    const-string v1, "Failed to read the whole file"

    .line 41
    .line 42
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    throw p0

    .line 58
    :cond_3
    :goto_1
    new-array p0, v0, [B

    .line 59
    .line 60
    return-object p0
.end method


# virtual methods
.method public final handleEnable()I
    .locals 8

    .line 1
    const-string v0, "Failed to enable Test Harness Mode"

    .line 2
    .line 3
    const-string v1, "ShellCommand"

    .line 4
    .line 5
    const-class v2, Landroid/debug/AdbManagerInternal;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroid/debug/AdbManagerInternal;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/debug/AdbManagerInternal;->getAdbKeysFile()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2}, Landroid/debug/AdbManagerInternal;->getAdbTempKeysFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v4, 0x1

    .line 22
    :try_start_0
    invoke-static {v3}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getBytesFromFile(Ljava/io/File;)[B

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v2}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getBytesFromFile(Ljava/io/File;)[B

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v5, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    .line 31
    .line 32
    invoke-direct {v5, v3, v2}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;-><init>([B[B)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    const-string v2, "Failed to enable Test Harness Mode. No implementation of PersistentDataBlockManagerInternal was bound."

    .line 44
    .line 45
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v4

    .line 56
    :catch_0
    move-exception v2

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->toBytes()[B

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v2, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 63
    .line 64
    iget-object v5, v2, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    const/16 v7, 0x270c

    .line 71
    .line 72
    invoke-virtual {v2, v5, v6, v3, v7}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeInternal(J[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    new-instance v0, Landroid/content/Intent;

    .line 76
    .line 77
    const-string v2, "android.intent.action.FACTORY_RESET"

    .line 78
    .line 79
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v2, "android"

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    const/high16 v2, 0x10000000

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    const-string v2, "android.intent.extra.REASON"

    .line 93
    .line 94
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    const-string v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    .line 98
    .line 99
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    .line 103
    .line 104
    iget-boolean v1, v1, Lcom/android/server/testharness/TestHarnessModeService;->mEnableKeepMemtagMode:Z

    .line 105
    .line 106
    const-string v2, "keep_memtag_mode"

    .line 107
    .line 108
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 118
    .line 119
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 120
    .line 121
    .line 122
    const/4 p0, 0x0

    .line 123
    return p0

    .line 124
    :goto_0
    const-string v3, "Failed to store ADB keys."

    .line 125
    .line 126
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return v4
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    const-string v0, "enable"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string/jumbo v0, "restore"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    const-string v1, "--keep-memtag"

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v1, "Invalid option: "

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return v0

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    .line 60
    .line 61
    iput-boolean v0, p1, Lcom/android/server/testharness/TestHarnessModeService;->mEnableKeepMemtagMode:Z

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v0, "android.permission.ENABLE_TEST_HARNESS_MODE"

    .line 71
    .line 72
    const-string v1, "You must hold android.permission.ENABLE_TEST_HARNESS_MODE to enable Test Harness Mode"

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    :try_start_0
    iget-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-class v2, Landroid/app/KeyguardManager;

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroid/app/KeyguardManager;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/android/server/testharness/TestHarnessModeService;->getMainUserId()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {p1, v2}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_4

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string p1, "Test Harness Mode cannot be enabled if there is a lock screen"

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    .line 121
    .line 122
    const/4 p0, 0x2

    .line 123
    return p0

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->handleEnable()I

    .line 127
    .line 128
    .line 129
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    .line 132
    .line 133
    return p0

    .line 134
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    .line 136
    .line 137
    throw p0
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "About:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  Test Harness Mode is a mode that the device can be placed in to prepare"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "  the device for running UI tests. The device is placed into this mode by"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  first wiping all data from the device, preserving ADB keys."

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 26
    .line 27
    .line 28
    const-string v0, "  By default, the following settings are configured:"

    .line 29
    .line 30
    const-string v1, "    * Package Verifier is disabled"

    .line 31
    .line 32
    const-string v2, "    * Stay Awake While Charging is enabled"

    .line 33
    .line 34
    const-string v3, "    * OTA Updates are disabled"

    .line 35
    .line 36
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "    * Auto-Sync for accounts is disabled"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 45
    .line 46
    .line 47
    const-string v0, "  Other apps may configure themselves differently in Test Harness Mode by"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v0, "  checking ActivityManager.isRunningInUserTestHarness()"

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 58
    .line 59
    .line 60
    const-string v0, "Test Harness Mode commands:"

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v0, "  help"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "    Print this help text."

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 76
    .line 77
    .line 78
    const-string v0, "  enable|restore"

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v0, "    Erase all data from this device and enable Test Harness Mode,"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v0, "    preserving the stored ADB keys currently on the device and toggling"

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v0, "    settings in a way that are conducive to Instrumentation testing."

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
