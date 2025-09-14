.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.super Landroid/content/pm/ILauncherApps$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mCallbackHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;

.field public final mDumpCallbacks:Landroid/os/RemoteCallbackList;

.field public final mIPM:Landroid/content/pm/IPackageManager;

.field public final mInternal:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;

.field public mIsWatchingPackageBroadcasts:Z

.field public final mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

.field public final mOnDumpExecutor:Ljava/util/concurrent/ExecutorService;

.field public mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

.field public final mPackageRemovedListener:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;

.field public final mRegisteredListenersForDump:Landroid/util/ArrayMap;

.field public final mRoleManager:Landroid/app/role/RoleManager;

.field public final mShortcutChangeHandler:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;

.field public final mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public final mUm:Landroid/os/UserManager;

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static $r8$lambda$lNRUt_M-XrgBrBdVdi8x0Dx4VDQ(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    new-array v0, p0, [Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    :try_start_0
    new-array v1, v1, [Ljava/nio/file/OpenOption;

    .line 13
    .line 14
    sget-object v2, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    .line 15
    .line 16
    aput-object v2, v1, p0

    .line 17
    .line 18
    sget-object p0, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    aput-object p0, v1, v2

    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    .line 28
    .line 29
    invoke-direct {v1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    .line 31
    .line 32
    new-instance p2, Lcom/android/internal/util/SizedInputStream;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    int-to-long v2, v2

    .line 39
    invoke-direct {p2, v1, v2, v3}, Lcom/android/internal/util/SizedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p0}, Lcom/android/internal/util/SizedInputStream;->transferTo(Ljava/io/OutputStream;)J

    .line 43
    .line 44
    .line 45
    sget-object p2, Lcom/android/server/pm/LauncherAppsService;->WM_TRACE_FILE_PERMISSIONS:Ljava/util/Set;

    .line 46
    .line 47
    invoke-static {v0, p2}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p2

    .line 59
    if-eqz p0, :cond_0

    .line 60
    .line 61
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    :try_start_4
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 70
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v0, "failed to write data to "

    .line 73
    .line 74
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p1, " in wmtrace dir"

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string p2, "LauncherAppsService"

    .line 90
    .line 91
    invoke-static {p2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    :cond_1
    :goto_2
    return-void
.end method

.method public static -$$Nest$mgetFilteredPackageNames(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;[Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Landroid/os/UserHandle;)[Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    aget-object v3, p1, v2

    .line 14
    .line 15
    invoke-virtual {p0, p3, p2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isPackageVisibleToListener(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    new-array p0, p0, [Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, [Ljava/lang/String;

    .line 39
    .line 40
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/content/pm/ILauncherApps$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageRemovedListener:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIsWatchingPackageBroadcasts:Z

    .line 27
    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mOnDumpExecutor:Ljava/util/concurrent/ExecutorService;

    .line 33
    .line 34
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDumpCallbacks:Landroid/os/RemoteCallbackList;

    .line 40
    .line 41
    new-instance v1, Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mRegisteredListenersForDump:Landroid/util/ArrayMap;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIPM:Landroid/content/pm/IPackageManager;

    .line 55
    .line 56
    const-string/jumbo v1, "user"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/os/UserManager;

    .line 64
    .line 65
    iput-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 66
    .line 67
    const-class v1, Landroid/app/role/RoleManager;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/app/role/RoleManager;

    .line 74
    .line 75
    iput-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mRoleManager:Landroid/app/role/RoleManager;

    .line 76
    .line 77
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 84
    .line 85
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 89
    .line 90
    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 91
    .line 92
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 97
    .line 98
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iput-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 102
    .line 103
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 104
    .line 105
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 110
    .line 111
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    iput-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 115
    .line 116
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 117
    .line 118
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 123
    .line 124
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    iput-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 128
    .line 129
    const-class v2, Landroid/content/pm/ShortcutServiceInternal;

    .line 130
    .line 131
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Landroid/content/pm/ShortcutServiceInternal;

    .line 136
    .line 137
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    iput-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 141
    .line 142
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 143
    .line 144
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 149
    .line 150
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    iput-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 154
    .line 155
    const-class v3, Landroid/app/AppOpsManager;

    .line 156
    .line 157
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Landroid/app/AppOpsManager;

    .line 162
    .line 163
    iput-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 164
    .line 165
    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutServiceInternal;->addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;

    .line 169
    .line 170
    invoke-direct {v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;-><init>(Lcom/android/server/pm/UserManagerInternal;)V

    .line 171
    .line 172
    .line 173
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutChangeHandler:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;

    .line 174
    .line 175
    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutServiceInternal;->addShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V

    .line 176
    .line 177
    .line 178
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    .line 183
    .line 184
    const-string v0, "device_policy"

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 191
    .line 192
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 193
    .line 194
    new-instance p1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;

    .line 195
    .line 196
    invoke-direct {p1, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    .line 197
    .line 198
    .line 199
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mInternal:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;

    .line 200
    .line 201
    return-void
.end method

.method public static buildMarketPackageInfoIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/net/Uri$Builder;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "market"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "details"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "id"

    .line 27
    .line 28
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance v0, Landroid/net/Uri$Builder;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "android-app"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const-string v0, "android.intent.extra.REFERRER"

    .line 60
    .line 61
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const/high16 p1, 0x10000000

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method public static getActivityOptionsForLauncher(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final addOnAppsChangedListener(Ljava/lang/String;Landroid/content/pm/IOnAppsChangedListener;)V
    .locals 7

    .line 1
    const-string v0, "Package: "

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startWatchingPackageBroadcasts()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 24
    .line 25
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 29
    .line 30
    new-instance v3, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    invoke-direct {v3, v5, v6, v4, p1}, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;-><init>(IILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p2, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    new-instance v2, Ljava/util/Date;

    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mRegisteredListenersForDump:Landroid/util/ArrayMap;

    .line 64
    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, " Pid: "

    .line 74
    .line 75
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p1, " Uid: "

    .line 86
    .line 87
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p1, " UserHandle: "

    .line 98
    .line 99
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p1, " Time: "

    .line 114
    .line 115
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    monitor-exit v1

    .line 133
    return-void

    .line 134
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    throw p0
.end method

.method public final buildAppMarketIntentSenderForUser(Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .locals 6

    .line 1
    new-instance v2, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "android.intent.action.MAIN"

    .line 4
    .line 5
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "android.intent.category.APP_MARKET"

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const v0, 0x10008000

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/high16 v3, 0xc000000

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    move-object v5, p1

    .line 26
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_0
    return-object p0
.end method

.method public final cacheShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureStrictAccessShortcutsPermission(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "Cannot cache shortcuts"

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-nez p5, :cond_1

    .line 28
    .line 29
    const/16 p0, 0x4000

    .line 30
    .line 31
    :goto_0
    move v7, p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    if-ne p5, p0, :cond_2

    .line 35
    .line 36
    const/high16 p0, 0x40000000    # 2.0f

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 p0, 0x2

    .line 40
    if-ne p5, p0, :cond_3

    .line 41
    .line 42
    const/high16 p0, 0x20000000

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/4 p0, 0x0

    .line 46
    goto :goto_0

    .line 47
    :goto_1
    const-string p0, "Invalid cache owner"

    .line 48
    .line 49
    invoke-static {v7, p0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-object v3, p1

    .line 53
    move-object v4, p2

    .line 54
    move-object v5, p3

    .line 55
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->cacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final canAccessHiddenProfile(II)Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    invoke-static {}, Landroid/multiuser/Flags;->enableHidingProfiles()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    invoke-static {}, Landroid/multiuser/Flags;->enableLauncherAppsHiddenProfileChecks()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    invoke-static {}, Landroid/multiuser/Flags;->enablePermissionToAccessHiddenProfiles()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_5

    .line 25
    .line 26
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 39
    .line 40
    .line 41
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const/4 v4, 0x0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    return v4

    .line 49
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    const-string v6, "android.permission.ACCESS_HIDDEN_PROFILES_FULL"

    .line 52
    .line 53
    invoke-virtual {v5, v6, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 54
    .line 55
    .line 56
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    if-nez v5, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    return v1

    .line 63
    :cond_1
    :try_start_2
    const-string/jumbo v5, "multiuser"

    .line 64
    .line 65
    .line 66
    const-string v6, "allow_3p_launchers_access_via_launcher_apps_apis"

    .line 67
    .line 68
    invoke-static {v5, v6, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    xor-int/2addr v5, v1

    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    return v4

    .line 79
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mRoleManager:Landroid/app/role/RoleManager;

    .line 80
    .line 81
    const-string v6, "android.app.role.HOME"

    .line 82
    .line 83
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-virtual {v5, v6, v7}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    return v4

    .line 105
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    const-string v5, "android.permission.ACCESS_HIDDEN_PROFILES"

    .line 108
    .line 109
    invoke-virtual {v0, v5, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 110
    .line 111
    .line 112
    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    if-nez p1, :cond_4

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    move v1, v4

    .line 117
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 118
    .line 119
    .line 120
    return v1

    .line 121
    :catchall_0
    move-exception p1

    .line 122
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :cond_5
    return v1
.end method

.method public final canAccessProfile(ILjava/lang/String;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne p1, v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 22
    .line 23
    invoke-virtual {v4, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v5, 0x0

    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    :goto_0
    move v3, v5

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectHasInteractAcrossUsersFullPermission(II)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 44
    .line 45
    invoke-virtual {v4, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    const-string v0, "LauncherAppsService"

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p2, " for another profile "

    .line 68
    .line 69
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, " from "

    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, " not allowed"

    .line 84
    .line 85
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {p0, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isHiddenProfile(Landroid/os/UserHandle;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_4

    .line 113
    .line 114
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessHiddenProfile(II)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_4

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 122
    .line 123
    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/android/server/pm/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    :goto_1
    return v3

    .line 128
    :goto_2
    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 129
    .line 130
    .line 131
    throw p1
.end method

.method public final changePackageIcon(Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "packageName cannot be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/os/UserHandle;

    .line 8
    .line 9
    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda3;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/content/pm/ILauncherApps$Stub;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->forEachViewCaptureWindow(Ljava/util/function/BiConsumer;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string p3, "LauncherAppsService"

    .line 15
    .line 16
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 24
    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    const-string p3, "Registered Listeners:"

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mRegisteredListenersForDump:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    check-cast p3, Ljava/lang/String;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v1, "  "

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    monitor-exit p1

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public final ensureShortcutPermission(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 26
    .line 27
    const-string p1, "Caller can\'t access shortcut information"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final ensureStrictAccessShortcutsPermission(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectHasAccessShortcutsPermission(II)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    .line 21
    const-string p1, "Caller can\'t access shortcut information"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final forEachViewCaptureWindow(Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mOnDumpExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda7;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/util/function/BiConsumer;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "LauncherAppsService"

    .line 18
    .line 19
    const-string v0, "background work was interrupted"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final generateLauncherActivitiesForArchivedApp(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Cannot retrieve activities"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    check-cast p1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v4, 0x1

    .line 40
    const-wide v5, 0x100000000L

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->getInstalledApplications(IIZJ)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    move v2, v0

    .line 55
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-ge v2, v3, :cond_5

    .line 60
    .line 61
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 66
    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    .line 70
    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    new-instance v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda2;

    .line 84
    .line 85
    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    iget-boolean v1, p1, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    .line 97
    .line 98
    if-nez v1, :cond_3

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_1
    move-object v1, p1

    .line 106
    goto :goto_3

    .line 107
    :cond_4
    :goto_2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    move v2, v0

    .line 116
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-ge v2, v3, :cond_9

    .line 121
    .line 122
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 127
    .line 128
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 129
    .line 130
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    if-nez v4, :cond_6

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_6
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    invoke-interface {v4, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    if-nez v4, :cond_7

    .line 152
    .line 153
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 154
    .line 155
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    const-string v4, "Expected package: %s to be archived but missing ArchiveState in PackageState."

    .line 160
    .line 161
    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    const-string v4, "LauncherAppsService"

    .line 166
    .line 167
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_7
    iget-object v4, v4, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    .line 172
    .line 173
    move v5, v0

    .line 174
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-ge v5, v6, :cond_8

    .line 179
    .line 180
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    check-cast v6, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 185
    .line 186
    new-instance v7, Landroid/content/pm/ActivityInfo;

    .line 187
    .line 188
    invoke-direct {v7}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 189
    .line 190
    .line 191
    iget-boolean v8, v3, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    .line 192
    .line 193
    iput-boolean v8, v7, Landroid/content/pm/ActivityInfo;->isArchived:Z

    .line 194
    .line 195
    iput-object v3, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 196
    .line 197
    iget-object v8, v6, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mOriginalComponentName:Landroid/content/ComponentName;

    .line 198
    .line 199
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    iput-object v8, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 204
    .line 205
    iget-object v8, v6, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mOriginalComponentName:Landroid/content/ComponentName;

    .line 206
    .line 207
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    iput-object v8, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 212
    .line 213
    iget-object v6, v6, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mTitle:Ljava/lang/String;

    .line 214
    .line 215
    iput-object v6, v7, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 216
    .line 217
    new-instance v6, Landroid/content/pm/LauncherActivityInfoInternal;

    .line 218
    .line 219
    new-instance v8, Landroid/content/pm/IncrementalStatesInfo;

    .line 220
    .line 221
    const/4 v9, 0x0

    .line 222
    const-wide/16 v10, 0x0

    .line 223
    .line 224
    invoke-direct {v8, v0, v9, v10, v11}, Landroid/content/pm/IncrementalStatesInfo;-><init>(ZFJ)V

    .line 225
    .line 226
    .line 227
    invoke-direct {v6, v7, v8, p2}, Landroid/content/pm/LauncherActivityInfoInternal;-><init>(Landroid/content/pm/ActivityInfo;Landroid/content/pm/IncrementalStatesInfo;Landroid/os/UserHandle;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    add-int/lit8 v5, v5, 0x1

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_9
    return-object p1
.end method

.method public final getActivityLaunchIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "android.permission.START_TASKS_FROM_RECENTS"

    .line 12
    .line 13
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const-string v0, "Cannot start activity"

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/UserHandle;Z)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const/high16 v3, 0x2000000

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v1, 0x0

    .line 48
    move-object v5, p3

    .line 49
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 50
    .line 51
    .line 52
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 63
    .line 64
    const-string p1, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER "

    .line 65
    .line 66
    invoke-static {p2, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_1
    new-instance p0, Landroid/content/ActivityNotFoundException;

    .line 75
    .line 76
    const-string p1, "Activity could not be found"

    .line 77
    .line 78
    invoke-direct {p0, p1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 83
    .line 84
    const-string p1, "Permission START_TASKS_FROM_RECENTS required"

    .line 85
    .line 86
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public final getActivityOverrides(Ljava/lang/String;I)Ljava/util/Map;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 18
    .line 19
    invoke-virtual {v3, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 46
    .line 47
    .line 48
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p2, 0x0

    .line 51
    :goto_0
    if-nez p2, :cond_2

    .line 52
    .line 53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyCache;->getLauncherShortcutOverrides()Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_4

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/util/Map$Entry;

    .line 84
    .line 85
    new-instance v5, Landroid/content/Intent;

    .line 86
    .line 87
    const-string v6, "android.intent.action.MAIN"

    .line 88
    .line 89
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string v6, "android.intent.category.LAUNCHER"

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    check-cast v6, Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryIntentLauncherActivities(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-nez v6, :cond_3

    .line 119
    .line 120
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Ljava/lang/String;

    .line 125
    .line 126
    const/4 v6, 0x0

    .line 127
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Landroid/content/pm/LauncherActivityInfoInternal;

    .line 132
    .line 133
    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    goto :goto_2

    .line 139
    :cond_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    .line 141
    .line 142
    return-object v2

    .line 143
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    .line 145
    .line 146
    throw p0
.end method

.method public final getAllSessions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessHiddenProfile(II)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->getProfileIdsExcludingHidden(IZ)[I

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    :try_start_0
    array-length v4, v1

    .line 50
    const/4 v5, 0x0

    .line 51
    :goto_1
    if-ge v5, v4, :cond_1

    .line 52
    .line 53
    aget v6, v1, v5

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v7, v6}, Lcom/android/server/pm/PackageInstallerService;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    add-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda5;

    .line 79
    .line 80
    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 84
    .line 85
    .line 86
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 87
    .line 88
    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    return-object p0

    .line 92
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public final getAppMarketActivityIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .locals 12

    .line 1
    const-string v0, "Couldn\'t find installer for "

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "Can\'t access AppMarketActivity for another user"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->buildAppMarketIntentSenderForUser(Landroid/os/UserHandle;)Landroid/content/IntentSender;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIPM:Landroid/content/pm/IPackageManager;

    .line 39
    .line 40
    invoke-interface {v5, p2, v1}, Landroid/content/pm/IPackageManager;->getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    :goto_0
    move-object v0, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v1

    .line 54
    :try_start_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v5, "LauncherAppsService"

    .line 59
    .line 60
    invoke-static {v5, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :goto_1
    if-eqz v0, :cond_6

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 67
    .line 68
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const-wide/16 v6, 0x0

    .line 73
    .line 74
    invoke-virtual {v1, v0, v6, v7, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-gez v1, :cond_3

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    invoke-static {p2, v0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->buildMarketPackageInfoIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 86
    .line 87
    iget-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    const-wide/32 v8, 0x20000

    .line 106
    .line 107
    .line 108
    move-object v6, p1

    .line 109
    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_4

    .line 118
    .line 119
    invoke-virtual {p0, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->buildAppMarketIntentSenderForUser(Landroid/os/UserHandle;)Landroid/content/IntentSender;

    .line 120
    .line 121
    .line 122
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    const/4 v6, 0x0

    .line 130
    const/high16 v8, 0xc000000

    .line 131
    .line 132
    const/4 v9, 0x0

    .line 133
    move-object v7, p1

    .line 134
    move-object v10, p3

    .line 135
    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    if-nez p0, :cond_5

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_5
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 143
    .line 144
    .line 145
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    .line 148
    .line 149
    return-object v2

    .line 150
    :cond_6
    :goto_3
    :try_start_4
    invoke-virtual {p0, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->buildAppMarketIntentSenderForUser(Landroid/os/UserHandle;)Landroid/content/IntentSender;

    .line 151
    .line 152
    .line 153
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    .line 156
    .line 157
    return-object p0

    .line 158
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    .line 160
    .line 161
    throw p0
.end method

.method public final getAppUsageLimit(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/LauncherApps$AppUsageLimit;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const-string v0, "Cannot access usage limit"

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_a

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 35
    .line 36
    check-cast p0, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 43
    .line 44
    monitor-enter p1

    .line 45
    :try_start_0
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    invoke-virtual {p0, p3}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/util/ArrayList;

    .line 60
    .line 61
    if-eqz p0, :cond_8

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-eqz p3, :cond_1

    .line 68
    .line 69
    goto/16 :goto_5

    .line 70
    .line 71
    :cond_1
    new-instance p3, Landroid/util/ArraySet;

    .line 72
    .line 73
    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    move v2, v1

    .line 78
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-ge v2, v3, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    instance-of v3, v3, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 89
    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 97
    .line 98
    move v4, v1

    .line 99
    :goto_1
    iget-object v5, v3, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    .line 100
    .line 101
    array-length v6, v5

    .line 102
    if-ge v4, v6, :cond_3

    .line 103
    .line 104
    aget-object v5, v5, v4

    .line 105
    .line 106
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_2

    .line 111
    .line 112
    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_7

    .line 118
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    invoke-virtual {p3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-eqz p0, :cond_5

    .line 129
    .line 130
    monitor-exit p1

    .line 131
    :goto_3
    move-object p2, v0

    .line 132
    goto :goto_6

    .line 133
    :cond_5
    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 138
    .line 139
    const/4 p2, 0x1

    .line 140
    :goto_4
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-ge p2, v1, :cond_7

    .line 145
    .line 146
    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    .line 153
    .line 154
    .line 155
    move-result-wide v2

    .line 156
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    .line 157
    .line 158
    .line 159
    move-result-wide v4

    .line 160
    cmp-long v2, v2, v4

    .line 161
    .line 162
    if-gez v2, :cond_6

    .line 163
    .line 164
    move-object p0, v1

    .line 165
    :cond_6
    add-int/lit8 p2, p2, 0x1

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_7
    new-instance p2, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    .line 169
    .line 170
    iget-wide v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    .line 173
    .line 174
    .line 175
    move-result-wide v3

    .line 176
    invoke-direct {p2, v1, v2, v3, v4}, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;-><init>(JJ)V

    .line 177
    .line 178
    .line 179
    monitor-exit p1

    .line 180
    goto :goto_6

    .line 181
    :cond_8
    :goto_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    goto :goto_3

    .line 183
    :goto_6
    if-nez p2, :cond_9

    .line 184
    .line 185
    return-object v0

    .line 186
    :cond_9
    new-instance p0, Landroid/content/pm/LauncherApps$AppUsageLimit;

    .line 187
    .line 188
    iget-wide v0, p2, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mTotalUsageLimit:J

    .line 189
    .line 190
    iget-wide p1, p2, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->mUsageRemaining:J

    .line 191
    .line 192
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/content/pm/LauncherApps$AppUsageLimit;-><init>(JJ)V

    .line 193
    .line 194
    .line 195
    return-object p0

    .line 196
    :goto_7
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    throw p0

    .line 198
    :cond_a
    new-instance p0, Ljava/lang/SecurityException;

    .line 199
    .line 200
    const-string p1, "Caller is not the recents app"

    .line 201
    .line 202
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p0
.end method

.method public final getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 8

    .line 1
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const-string v0, "Cannot check package"

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    .line 21
    .line 22
    move-result-wide v6

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 24
    .line 25
    int-to-long v3, p3

    .line 26
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    move-object v5, p2

    .line 31
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final getCallingUserId()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getHiddenAppActivityInfo(ILandroid/os/UserHandle;Ljava/lang/String;)Landroid/content/pm/LauncherActivityInfoInternal;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/content/ComponentName;

    .line 7
    .line 8
    sget-object v2, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v1, p3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryIntentLauncherActivities(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-lez p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroid/content/pm/LauncherActivityInfoInternal;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public final getLauncherActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .locals 10

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "android.intent.action.MAIN"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "android.intent.category.LAUNCHER"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryActivitiesForUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    .line 23
    .line 24
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->archiving()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->generateLauncherActivitiesForArchivedApp(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-nez p1, :cond_1

    .line 42
    .line 43
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    .line 44
    .line 45
    invoke-direct {p1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    .line 55
    .line 56
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    .line 57
    .line 58
    invoke-direct {v0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    move-object p1, v0

    .line 62
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string/jumbo v1, "show_hidden_icon_apps_enabled"

    .line 69
    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_3
    if-nez p1, :cond_4

    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    return-object p0

    .line 83
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    .line 88
    .line 89
    .line 90
    move-result-wide v7

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 92
    .line 93
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_e

    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 108
    .line 109
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    goto/16 :goto_4

    .line 124
    .line 125
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 128
    .line 129
    .line 130
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 134
    .line 135
    .line 136
    return-object p1

    .line 137
    :cond_6
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    .line 145
    .line 146
    if-eqz p2, :cond_9

    .line 147
    .line 148
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    if-lez v0, :cond_7

    .line 153
    .line 154
    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 155
    .line 156
    .line 157
    return-object p1

    .line 158
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 159
    .line 160
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    const-wide/16 v3, 0x0

    .line 165
    .line 166
    move v1, v6

    .line 167
    move-object v5, p2

    .line 168
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->shouldShowSyntheticActivity(Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_8

    .line 177
    .line 178
    invoke-virtual {p0, v6, p3, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getHiddenAppActivityInfo(ILandroid/os/UserHandle;Ljava/lang/String;)Landroid/content/pm/LauncherActivityInfoInternal;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-eqz p1, :cond_8

    .line 183
    .line 184
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :catchall_0
    move-exception p1

    .line 189
    goto :goto_5

    .line 190
    :cond_8
    :goto_1
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    .line 191
    .line 192
    invoke-direct {p1, v9}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 196
    .line 197
    .line 198
    return-object p1

    .line 199
    :cond_9
    :try_start_3
    new-instance p1, Ljava/util/HashSet;

    .line 200
    .line 201
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_a

    .line 213
    .line 214
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Landroid/content/pm/LauncherActivityInfoInternal;

    .line 219
    .line 220
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfoInternal;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_a
    iget-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 231
    .line 232
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    const-wide/16 v1, 0x0

    .line 237
    .line 238
    invoke-virtual {p2, v0, v6, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(IIJ)Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    :cond_b
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_d

    .line 251
    .line 252
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 257
    .line 258
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-nez v1, :cond_b

    .line 265
    .line 266
    invoke-virtual {p0, p3, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->shouldShowSyntheticActivity(Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-nez v1, :cond_c

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_c
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {p0, v6, p3, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getHiddenAppActivityInfo(ILandroid/os/UserHandle;Ljava/lang/String;)Landroid/content/pm/LauncherActivityInfoInternal;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    if-eqz v0, :cond_b

    .line 280
    .line 281
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_d
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    .line 286
    .line 287
    invoke-direct {p1, v9}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 291
    .line 292
    .line 293
    return-object p1

    .line 294
    :cond_e
    :goto_4
    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 295
    .line 296
    .line 297
    return-object p1

    .line 298
    :goto_5
    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 299
    .line 300
    .line 301
    throw p1
.end method

.method public final getLauncherUserInfo(Landroid/os/UserHandle;)Landroid/content/pm/LauncherUserInfo;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Can\'t access LauncherUserInfo for another user"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerInternal;->getLauncherUserInfo(I)Landroid/content/pm/LauncherUserInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/UserHandle;Z)Landroid/content/Intent;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v8, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "android.intent.action.MAIN"

    .line 5
    .line 6
    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "android.intent.category.LAUNCHER"

    .line 10
    .line 11
    invoke-virtual {v8, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    const/high16 v1, 0x10200000

    .line 15
    .line 16
    invoke-virtual {v8, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    .line 32
    .line 33
    move-result-wide v9

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v8, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    const-wide/32 v4, 0xc0000

    .line 51
    .line 52
    .line 53
    move-object v2, v8

    .line 54
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/4 v3, 0x0

    .line 63
    move v4, v3

    .line 64
    :goto_0
    const/4 v5, 0x0

    .line 65
    if-ge v4, v2, :cond_2

    .line 66
    .line 67
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 72
    .line 73
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 74
    .line 75
    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_1

    .line 86
    .line 87
    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_1

    .line 98
    .line 99
    iget-boolean v1, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 100
    .line 101
    if-eqz v1, :cond_0

    .line 102
    .line 103
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    move v3, v0

    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto :goto_3

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 114
    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string p3, "Cannot launch non-exported components "

    .line 121
    .line 122
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :cond_1
    add-int/2addr v4, v0

    .line 137
    goto :goto_0

    .line 138
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 139
    .line 140
    if-eqz p3, :cond_3

    .line 141
    .line 142
    sget-object p3, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    .line 143
    .line 144
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->archiving()Z

    .line 145
    .line 146
    .line 147
    move-result p3

    .line 148
    if-eqz p3, :cond_3

    .line 149
    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getMatchingArchivedAppActivityInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfoInternal;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    if-eqz p0, :cond_3

    .line 155
    .line 156
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_3
    move v0, v3

    .line 164
    :goto_2
    if-nez v0, :cond_4

    .line 165
    .line 166
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    .line 168
    .line 169
    return-object v5

    .line 170
    :cond_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    .line 172
    .line 173
    return-object v8

    .line 174
    :goto_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    .line 176
    .line 177
    throw p0
.end method

.method public final getMatchingArchivedAppActivityInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfoInternal;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->generateLauncherActivitiesForArchivedApp(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 p2, 0x0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ge p2, v1, :cond_2

    .line 23
    .line 24
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/content/pm/LauncherActivityInfoInternal;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfoInternal;->getComponentName()Landroid/content/ComponentName;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Landroid/content/pm/LauncherActivityInfoInternal;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string p0, "Expected archived app component name: %s is not available!"

    .line 51
    .line 52
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string p1, "LauncherAppsService"

    .line 61
    .line 62
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public final getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string/jumbo v0, "package"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/content/pm/IPackageManager;

    .line 13
    .line 14
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/pm/PackageInstallerService;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "LauncherAppsService"

    .line 25
    .line 26
    const-string v2, "Error getting IPackageInstaller"

    .line 27
    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 32
    .line 33
    return-object p0
.end method

.method public final getPreInstalledSystemPackages(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Can\'t access preinstalled packages for another user"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getPreInstallableSystemPackages(Ljava/lang/String;)Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    new-instance p0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final getPrivateSpaceSettingsIntent()Landroid/content/IntentSender;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/content/pm/ILauncherApps$Stub;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/content/pm/ILauncherApps$Stub;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessHiddenProfile(II)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v0, "LauncherAppsService"

    .line 19
    .line 20
    const-string v1, "Caller cannot access hidden profiles"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {}, Landroid/content/pm/ILauncherApps$Stub;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    .line 36
    .line 37
    move-result-wide v10

    .line 38
    :try_start_0
    new-instance v14, Landroid/content/Intent;

    .line 39
    .line 40
    const-string v3, "com.android.settings.action.OPEN_PRIVATE_SPACE_SETTINGS"

    .line 41
    .line 42
    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const v3, 0x10008000

    .line 46
    .line 47
    .line 48
    invoke-virtual {v14, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    iget-object v3, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 52
    .line 53
    iget-object v4, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v14, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const-wide/32 v6, 0x100000

    .line 64
    .line 65
    .line 66
    move-object v4, v14

    .line 67
    move v9, v1

    .line 68
    invoke-virtual/range {v3 .. v9}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-eqz v3, :cond_1

    .line 77
    .line 78
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    return-object v2

    .line 82
    :cond_1
    :try_start_1
    iget-object v12, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 85
    .line 86
    .line 87
    move-result-object v17

    .line 88
    const/4 v13, 0x0

    .line 89
    const/high16 v15, 0xc000000

    .line 90
    .line 91
    const/16 v16, 0x0

    .line 92
    .line 93
    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-nez v0, :cond_2

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 101
    .line 102
    .line 103
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    .line 106
    .line 107
    return-object v2

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    .line 111
    .line 112
    throw v0
.end method

.method public final getShortcutConfigActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutServiceInternal;->areShortcutsSupportedOnHomeScreen(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryActivitiesForUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final getShortcutConfigActivityIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .locals 11

    .line 1
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const-string v1, "Cannot check package"

    .line 11
    .line 12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v9

    .line 31
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 32
    .line 33
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v3, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    const-wide/32 v5, 0xc0000

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {v2 .. v8}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda6;

    .line 72
    .line 73
    invoke-direct {v2, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda6;-><init>(Landroid/content/ComponentName;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 77
    .line 78
    .line 79
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-nez p1, :cond_1

    .line 81
    .line 82
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    return-object v1

    .line 86
    :cond_1
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    .line 87
    .line 88
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    const/high16 v5, 0x54000000

    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    const/4 v3, 0x0

    .line 101
    move-object v7, p3

    .line 102
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    if-nez p0, :cond_2

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 110
    .line 111
    .line 112
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    return-object v1

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    .line 120
    .line 121
    throw p0
.end method

.method public final getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "Cannot access shortcuts"

    .line 5
    .line 6
    invoke-virtual {p0, p4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v7, Lcom/android/internal/infra/AndroidFuture;

    .line 15
    .line 16
    invoke-direct {v7}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    move-object v2, p1

    .line 26
    move-object v3, p2

    .line 27
    move-object v4, p3

    .line 28
    move v5, p4

    .line 29
    move-object v6, v7

    .line 30
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconFdAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/infra/AndroidFuture;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v7}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public final getShortcutIconResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "Cannot access shortcuts"

    .line 5
    .line 6
    invoke-virtual {p0, p4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    move-object v2, p1

    .line 21
    move-object v3, p2

    .line 22
    move-object v4, p3

    .line 23
    move v5, p4

    .line 24
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public final getShortcutIconUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "Cannot access shortcuts"

    .line 5
    .line 6
    invoke-virtual {p0, p4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v7, Lcom/android/internal/infra/AndroidFuture;

    .line 15
    .line 16
    invoke-direct {v7}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    move-object v2, p1

    .line 26
    move-object v3, p2

    .line 27
    move-object v4, p3

    .line 28
    move v5, p4

    .line 29
    move-object v6, v7

    .line 30
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconUriAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/infra/AndroidFuture;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v7}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public final getShortcutIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v2, "Cannot get shortcuts"

    .line 22
    .line 23
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_0
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    .line 32
    .line 33
    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v3, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    move-object v5, p1

    .line 55
    move-object v6, p2

    .line 56
    move-object v7, p3

    .line 57
    move-object v11, v1

    .line 58
    invoke-virtual/range {v3 .. v11}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntentsAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/android/internal/infra/AndroidFuture;)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move-object v3, v1

    .line 66
    check-cast v3, [Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    array-length v1, v3

    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 75
    .line 76
    .line 77
    move-result-wide v8

    .line 78
    :try_start_1
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 79
    .line 80
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    const-wide/32 v4, 0x10000000

    .line 85
    .line 86
    .line 87
    move-object v6, p2

    .line 88
    invoke-virtual {v1, p2, v4, v5, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    const/4 v2, 0x0

    .line 93
    const/high16 v4, 0xc000000

    .line 94
    .line 95
    move-object v1, p0

    .line 96
    move-object/from16 v5, p4

    .line 97
    .line 98
    move-object v6, p2

    .line 99
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectCreatePendingIntent(I[Landroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;

    .line 100
    .line 101
    .line 102
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    .line 110
    .line 111
    throw v0

    .line 112
    :catch_0
    :cond_2
    :goto_0
    return-object v2
.end method

.method public final getShortcuts(Ljava/lang/String;Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "Cannot get shortcuts"

    .line 10
    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string/jumbo v0, "return empty shortcuts because callingPackage "

    .line 18
    .line 19
    .line 20
    const-string v1, " cannot access user "

    .line 21
    .line 22
    move-object/from16 v4, p1

    .line 23
    .line 24
    invoke-static {v0, v4, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "LauncherAppsService"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    .line 45
    .line 46
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 47
    .line 48
    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_0
    move-object/from16 v4, p1

    .line 53
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getChangedSince()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getPackage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getShortcutIds()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getLocusIds()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getActivity()Landroid/content/ComponentName;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getQueryFlags()I

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    if-eqz v8, :cond_2

    .line 79
    .line 80
    if-eqz v7, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    const-string v1, "To query by shortcut ID, package name must also be set"

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_2
    :goto_0
    if-eqz v9, :cond_4

    .line 92
    .line 93
    if-eqz v7, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    const-string v1, "To query by locus ID, package name must also be set"

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_4
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getQueryFlags()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    and-int/lit16 v1, v1, 0x800

    .line 109
    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureStrictAccessShortcutsPermission(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    .line 116
    .line 117
    iget-object v2, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    move-object/from16 v4, p1

    .line 136
    .line 137
    invoke-virtual/range {v2 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 142
    .line 143
    .line 144
    return-object v1
.end method

.method public final getShortcutsAsync(Ljava/lang/String;Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "Cannot get shortcuts"

    .line 10
    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 18
    .line 19
    move-object/from16 v14, p4

    .line 20
    .line 21
    invoke-virtual {v14, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    move-object/from16 v14, p4

    .line 26
    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getChangedSince()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getPackage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getShortcutIds()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getLocusIds()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getActivity()Landroid/content/ComponentName;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getQueryFlags()I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    if-eqz v7, :cond_2

    .line 52
    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string v1, "To query by shortcut ID, package name must also be set"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_2
    :goto_0
    if-eqz v8, :cond_4

    .line 65
    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string v1, "To query by locus ID, package name must also be set"

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_4
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getQueryFlags()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    and-int/lit16 v1, v1, 0x800

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureStrictAccessShortcutsPermission(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    move-object/from16 v3, p1

    .line 107
    .line 108
    move-object/from16 v14, p4

    .line 109
    .line 110
    invoke-virtual/range {v1 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutsAsync(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIIILcom/android/internal/infra/AndroidFuture;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final getSuspendedPackageLauncherExtras(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const-string v1, "Cannot get launcher extras"

    .line 10
    .line 11
    invoke-virtual {p0, p2, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v1, v0, p2, p1, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 30
    .line 31
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManagerInternal;->getSuspendedPackageLauncherExtras(ILjava/lang/String;)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final getUserProfiles()Ljava/util/List;
    .locals 4

    .line 1
    invoke-static {}, Landroid/content/pm/ILauncherApps$Stub;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/content/pm/ILauncherApps$Stub;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessHiddenProfile(II)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, p0, v1}, Landroid/os/UserManager;->getProfileIdsExcludingHidden(IZ)[I

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    array-length v1, p0

    .line 40
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    array-length v1, p0

    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_1
    if-ge v2, v1, :cond_1

    .line 46
    .line 47
    aget v3, p0, v2

    .line 48
    .line 49
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    return-object v0
.end method

.method public final hasShortcutHostPermission(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public injectBinderCallingPid()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/content/pm/ILauncherApps$Stub;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public injectBinderCallingUid()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/content/pm/ILauncherApps$Stub;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public injectClearCallingIdentity()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public injectCreatePendingIntent(I[Landroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    move v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move v3, p3

    .line 7
    move-object v5, p5

    .line 8
    move v6, p6

    .line 9
    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityManagerInternal;->getPendingIntentActivityAsApp(I[Landroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public injectHasAccessShortcutsPermission(II)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.ACCESS_SHORTCUTS"

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public injectHasInteractAcrossUsersFullPermission(II)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public injectRestoreCallingIdentity(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final isActivityEnabled(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 10

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const-string v1, "Cannot check component"

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    sget-object v0, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    .line 17
    .line 18
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->archiving()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->generateLauncherActivitiesForArchivedApp(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_3

    .line 45
    .line 46
    move p0, v1

    .line 47
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    if-ge p0, p3, :cond_2

    .line 52
    .line 53
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    check-cast p3, Landroid/content/pm/LauncherActivityInfoInternal;

    .line 58
    .line 59
    invoke-virtual {p3}, Landroid/content/pm/LauncherActivityInfoInternal;->getComponentName()Landroid/content/ComponentName;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-eqz p3, :cond_1

    .line 68
    .line 69
    return p1

    .line 70
    :cond_1
    add-int/2addr p0, p1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return v1

    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 78
    .line 79
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0, v3, v2, p2}, Lcom/android/server/pm/Computer;->getComponentEnabledSettingInternal(IILandroid/content/ComponentName;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eq v0, p1, :cond_6

    .line 96
    .line 97
    const/4 v2, 0x2

    .line 98
    if-eq v0, v2, :cond_5

    .line 99
    .line 100
    const/4 v2, 0x3

    .line 101
    if-eq v0, v2, :cond_5

    .line 102
    .line 103
    const/4 v2, 0x4

    .line 104
    if-eq v0, v2, :cond_5

    .line 105
    .line 106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 107
    .line 108
    .line 109
    move-result-wide v8

    .line 110
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 111
    .line 112
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    const-wide/32 v5, 0xc0000

    .line 125
    .line 126
    .line 127
    move-object v7, p2

    .line 128
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->getActivityInfoInternal(IIJLandroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    if-eqz p0, :cond_4

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    .line 135
    .line 136
    .line 137
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    if-eqz p0, :cond_4

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :catchall_0
    move-exception p0

    .line 142
    goto :goto_2

    .line 143
    :cond_4
    move p1, v1

    .line 144
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    .line 146
    .line 147
    return p1

    .line 148
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    .line 150
    .line 151
    throw p0

    .line 152
    :cond_5
    return v1

    .line 153
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 154
    .line 155
    .line 156
    move-result-wide v8

    .line 157
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 158
    .line 159
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 164
    .line 165
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    const-wide/32 v5, 0xc0000

    .line 172
    .line 173
    .line 174
    move-object v7, p2

    .line 175
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->getActivityInfoInternal(IIJLandroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    if-nez p0, :cond_7

    .line 180
    .line 181
    const-string p0, "LauncherAppsService"

    .line 182
    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string p2, " was enabled, but now it\'s removed."

    .line 192
    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    .line 202
    .line 203
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    .line 205
    .line 206
    return v1

    .line 207
    :catchall_1
    move-exception p0

    .line 208
    goto :goto_3

    .line 209
    :cond_7
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 210
    .line 211
    .line 212
    return p1

    .line 213
    :goto_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    .line 215
    .line 216
    throw p0
.end method

.method public final isEnabledProfileOf(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isHiddenProfile(Landroid/os/UserHandle;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    .line 9
    .line 10
    iget v2, p2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    .line 11
    .line 12
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessHiddenProfile(II)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/android/server/pm/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final isHiddenProfile(Landroid/os/UserHandle;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/multiuser/Flags;->enableLauncherAppsHiddenProfileChecks()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    .line 16
    .line 17
    .line 18
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    const/4 v0, 0x1

    .line 30
    if-ne p1, v0, :cond_2

    .line 31
    .line 32
    move v1, v0

    .line 33
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :catch_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    return v1
.end method

.method public final isPackageEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 9

    .line 1
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const-string v0, "Cannot check package"

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    .line 21
    .line 22
    move-result-wide v7

    .line 23
    :try_start_0
    sget-object p1, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    .line 24
    .line 25
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->archiving()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const-wide v3, 0x1200c0000L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    :goto_0
    move-wide v4, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const-wide/32 v3, 0x200c0000

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    move-object v6, p2

    .line 49
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(IIJLjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 56
    .line 57
    iget-boolean p1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 58
    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->isArchived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    :goto_2
    const/4 v0, 0x1

    .line 69
    :cond_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    return v0

    .line 73
    :goto_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public final isPackageVisibleToListener(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    iget p2, p2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    .line 9
    .line 10
    invoke-virtual {p0, p2, p1, p3, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    xor-int/lit8 p0, p0, 0x1

    .line 15
    .line 16
    return p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 12

    .line 1
    move-object v9, p0

    .line 2
    move-object/from16 v0, p6

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x7d0

    .line 9
    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 16
    .line 17
    const-string v1, "Caller must be shell"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v10

    .line 27
    :try_start_0
    new-instance v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    .line 30
    .line 31
    .line 32
    move-object v2, p0

    .line 33
    move-object v3, p1

    .line 34
    move-object v4, p2

    .line 35
    move-object v5, p3

    .line 36
    move-object/from16 v6, p4

    .line 37
    .line 38
    move-object/from16 v7, p5

    .line 39
    .line 40
    move-object/from16 v8, p6

    .line 41
    .line 42
    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    invoke-virtual {p0, v10, v11}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_2
    invoke-virtual {p0, v10, v11}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    throw v0
.end method

.method public final pinShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 2
    .line 3
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutServiceInternal;->areShortcutsSupportedOnHomeScreen(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureStrictAccessShortcutsPermission(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v1, "Cannot pin shortcuts"

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    move-object v3, p1

    .line 47
    move-object v4, p2

    .line 48
    move-object v5, p3

    .line 49
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public postToPackageMonitorHandler(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final queryActivitiesForUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Cannot retrieve activities"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    :try_start_0
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryIntentLauncherActivities(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v3, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    return-object v3

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public final queryIntentLauncherActivities(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    const-wide/32 v3, 0xc0000

    .line 18
    .line 19
    .line 20
    move-object v1, p1

    .line 21
    move v5, p2

    .line 22
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-ge v2, v0, :cond_2

    .line 37
    .line 38
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 43
    .line 44
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 45
    .line 46
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 47
    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 52
    .line 53
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-virtual {v5, p2, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(IILjava/lang/String;)Landroid/content/pm/IncrementalStatesInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    if-nez v4, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    new-instance v5, Landroid/content/pm/LauncherActivityInfoInternal;

    .line 65
    .line 66
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 67
    .line 68
    invoke-direct {v5, v3, v4, p3}, Landroid/content/pm/LauncherActivityInfoInternal;-><init>(Landroid/content/pm/ActivityInfo;Landroid/content/pm/IncrementalStatesInfo;Landroid/os/UserHandle;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    return-object v1
.end method

.method public final registerDumpCallback(Landroid/window/IDumpCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.READ_FRAME_BUFFER"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/content/PermissionChecker;->checkCallingOrSelfPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDumpCallbacks:Landroid/os/RemoteCallbackList;

    .line 26
    .line 27
    invoke-virtual {p0, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p0, "LauncherAppsService"

    .line 32
    .line 33
    const-string p1, "caller lacks permissions to registerDumpCallback"

    .line 34
    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final registerPackageInstallerCallback(Ljava/lang/String;Landroid/content/pm/IPackageInstallerCallback;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 5
    .line 6
    new-instance v1, Landroid/os/UserHandle;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/content/pm/ILauncherApps$Stub;->getCallingPid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {}, Landroid/content/pm/ILauncherApps$Stub;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-direct {v0, v2, v3, v1, p1}, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;-><init>(IILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda4;

    .line 31
    .line 32
    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p1, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 36
    .line 37
    new-instance p1, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-direct {p1, v0, v1}, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;-><init>(ILjava/util/function/IntPredicate;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 47
    .line 48
    invoke-virtual {p0, p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final registerShortcutChangeCallback(Ljava/lang/String;Landroid/content/pm/ShortcutQueryWrapper;Landroid/content/pm/IShortcutChangeCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/pm/ShortcutQueryWrapper;->getShortcutIds()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/pm/ShortcutQueryWrapper;->getPackage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string p1, "To query by shortcut ID, package name must also be set"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/pm/ShortcutQueryWrapper;->getLocusIds()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/content/pm/ShortcutQueryWrapper;->getPackage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p1, "To query by locus ID, package name must also be set"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectHasInteractAcrossUsersFullPermission(II)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutChangeHandler:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;

    .line 74
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 77
    .line 78
    invoke-virtual {v0, p3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 82
    .line 83
    new-instance v1, Landroid/util/Pair;

    .line 84
    .line 85
    invoke-direct {v1, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p3, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception p1

    .line 94
    monitor-exit p0

    .line 95
    throw p1
.end method

.method public final removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIsWatchingPackageBroadcasts:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageRemovedListener:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIsWatchingPackageBroadcasts:Z

    .line 35
    .line 36
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mRegisteredListenersForDump:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mRegisteredListenersForDump:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final resolveLauncherActivityInternal(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfoInternal;
    .locals 9

    .line 1
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const-string v0, "Cannot resolve activity"

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    if-eqz p2, :cond_5

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 33
    .line 34
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-wide/32 v4, 0xc0000

    .line 47
    .line 48
    .line 49
    move v2, p1

    .line 50
    move-object v6, p2

    .line 51
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->getActivityInfoInternal(IIJLandroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    sget-object p1, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    .line 58
    .line 59
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->archiving()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getMatchingArchivedAppActivityInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfoInternal;

    .line 66
    .line 67
    .line 68
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_3
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {p0, p1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(IILjava/lang/String;)Landroid/content/pm/IncrementalStatesInfo;

    .line 90
    .line 91
    .line 92
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    if-nez p0, :cond_4

    .line 94
    .line 95
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_4
    :try_start_2
    new-instance p1, Landroid/content/pm/LauncherActivityInfoInternal;

    .line 100
    .line 101
    invoke-direct {p1, v1, p0, p3}, Landroid/content/pm/LauncherActivityInfoInternal;-><init>(Landroid/content/pm/ActivityInfo;Landroid/content/pm/IncrementalStatesInfo;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    .line 103
    .line 104
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    .line 106
    .line 107
    return-object p1

    .line 108
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_5
    :goto_1
    return-object v0
.end method

.method public final saveViewCaptureData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.READ_FRAME_BUFFER"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/content/PermissionChecker;->checkCallingOrSelfPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->forEachViewCaptureWindow(Ljava/util/function/BiConsumer;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "LauncherAppsService"

    .line 21
    .line 22
    const-string v0, "caller lacks permissions to save view capture data"

    .line 23
    .line 24
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public final setArchiveCompatibilityOptions(ZZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;IZZ)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final shouldHideFromSuggestions(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "cannot get shouldHideFromSuggestions"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    sget-object v1, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->archiving()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    new-instance v4, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda2;

    .line 31
    .line 32
    invoke-direct {v4, p0, p1, v1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    iget-boolean v1, p2, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {p2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 54
    .line 55
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    xor-int/2addr p2, v3

    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    return v3

    .line 63
    :cond_3
    iget-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 64
    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p2, v1, v0, p1, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    return v2

    .line 76
    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 77
    .line 78
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    if-nez p0, :cond_5

    .line 85
    .line 86
    move p0, v2

    .line 87
    goto :goto_2

    .line 88
    :cond_5
    invoke-interface {p0, v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    :goto_2
    and-int/2addr p0, v3

    .line 97
    if-eqz p0, :cond_6

    .line 98
    .line 99
    move v2, v3

    .line 100
    :cond_6
    return v2
.end method

.method public final shouldShowSyntheticActivity(Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_7

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_7

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    move v2, v0

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-ge v2, v3, :cond_4

    .line 36
    .line 37
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v4, v3}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    return v0

    .line 74
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 78
    .line 79
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_5

    .line 86
    .line 87
    return v0

    .line 88
    :cond_5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    const/4 v1, 0x1

    .line 97
    xor-int/2addr p1, v1

    .line 98
    if-eqz p1, :cond_7

    .line 99
    .line 100
    iget-object p1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 101
    .line 102
    new-instance v3, Landroid/content/Intent;

    .line 103
    .line 104
    const-string p2, "android.intent.action.MAIN"

    .line 105
    .line 106
    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string p2, "android.intent.category.LAUNCHER"

    .line 110
    .line 111
    invoke-virtual {v3, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v3, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    const-wide/16 v5, 0x200

    .line 138
    .line 139
    invoke-virtual/range {v2 .. v8}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    move p2, v0

    .line 148
    :goto_2
    if-ge p2, p1, :cond_7

    .line 149
    .line 150
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 155
    .line 156
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 157
    .line 158
    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 159
    .line 160
    if-eqz v2, :cond_6

    .line 161
    .line 162
    move v0, v1

    .line 163
    goto :goto_3

    .line 164
    :cond_6
    add-int/lit8 p2, p2, 0x1

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_7
    :goto_3
    return v0
.end method

.method public final showAppDetailsAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    const-string/jumbo v2, "package not found: "

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p7 .. p7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v3, "Cannot show app details"

    .line 10
    .line 11
    invoke-virtual {p0, v0, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/high16 v6, 0x400000

    .line 33
    .line 34
    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    :try_start_2
    const-string v6, "LauncherAppsService"

    .line 45
    .line 46
    new-instance v7, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const/4 v0, -0x1

    .line 62
    :goto_0
    new-instance v10, Landroid/content/Intent;

    .line 63
    .line 64
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 65
    .line 66
    const-string/jumbo v6, "package"

    .line 67
    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    invoke-static {v6, v5, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-direct {v10, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    .line 76
    .line 77
    const-string/jumbo v2, "uId"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    const v0, 0x10008000

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    move-object/from16 v2, p5

    .line 90
    .line 91
    invoke-virtual {v10, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    .line 94
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    .line 96
    .line 97
    iget-object v6, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 98
    .line 99
    invoke-static/range {p6 .. p6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getActivityOptionsForLauncher(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    invoke-virtual/range {p7 .. p7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    const/4 v11, 0x0

    .line 108
    const/high16 v12, 0x10000000

    .line 109
    .line 110
    move-object/from16 v7, p1

    .line 111
    .line 112
    move-object/from16 v8, p2

    .line 113
    .line 114
    move-object/from16 v9, p3

    .line 115
    .line 116
    invoke-virtual/range {v6 .. v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    .line 122
    .line 123
    throw v0
.end method

.method public final startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p4

    .line 3
    .line 4
    invoke-virtual/range {p7 .. p7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const-string v3, "Cannot start activity"

    .line 9
    .line 10
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v2, 0x1

    .line 18
    move-object/from16 v3, p7

    .line 19
    .line 20
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/UserHandle;Z)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    if-eqz v7, :cond_1

    .line 25
    .line 26
    move-object/from16 v2, p5

    .line 27
    .line 28
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 32
    .line 33
    invoke-static/range {p6 .. p6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getActivityOptionsForLauncher(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    invoke-virtual/range {p7 .. p7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    const/4 v8, 0x0

    .line 42
    const/high16 v9, 0x10000000

    .line 43
    .line 44
    move-object v3, v0

    .line 45
    move-object v4, p1

    .line 46
    move-object v5, p2

    .line 47
    move-object v6, p3

    .line 48
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 53
    .line 54
    const-string v2, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER "

    .line 55
    .line 56
    invoke-static {v1, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method

.method public final startSessionDetailsActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p2

    .line 3
    move-object v1, p4

    .line 4
    invoke-virtual/range {p7 .. p7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 5
    .line 6
    .line 7
    move-result v8

    .line 8
    const-string v3, "Cannot start details activity"

    .line 9
    .line 10
    invoke-virtual {p0, v8, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v3, Landroid/content/Intent;

    .line 18
    .line 19
    const-string v4, "android.intent.action.VIEW"

    .line 20
    .line 21
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Landroid/net/Uri$Builder;

    .line 25
    .line 26
    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v5, "market"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-string v5, "details"

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v5, v1, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 43
    .line 44
    const-string v6, "id"

    .line 45
    .line 46
    invoke-virtual {v4, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    new-instance v4, Landroid/net/Uri$Builder;

    .line 59
    .line 60
    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v5, "android-app"

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v4, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const-string v5, "android.intent.extra.REFERRER"

    .line 78
    .line 79
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    move-object v3, p5

    .line 84
    invoke-virtual {v4, p5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p4}, Landroid/content/pm/PackageInstaller$SessionInfo;->isUnarchival()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_1

    .line 92
    .line 93
    const-string v3, "android"

    .line 94
    .line 95
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_1

    .line 100
    .line 101
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    :cond_1
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 107
    .line 108
    invoke-static {p6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getActivityOptionsForLauncher(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    const/4 v5, 0x0

    .line 113
    const/high16 v6, 0x10000000

    .line 114
    .line 115
    move-object v1, p1

    .line 116
    move-object v2, p2

    .line 117
    move-object v3, p3

    .line 118
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    move-object v0, p0

    .line 18
    move-object v4, p1

    .line 19
    move-object v5, p2

    .line 20
    move-object v6, p3

    .line 21
    move-object v7, p4

    .line 22
    move-object/from16 v8, p5

    .line 23
    .line 24
    move-object/from16 v9, p6

    .line 25
    .line 26
    move/from16 v10, p7

    .line 27
    .line 28
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startShortcutInner(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public final startShortcutInner(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move-object/from16 v10, p4

    .line 4
    .line 5
    invoke-virtual {p0, v10, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    const-string v2, "Cannot start activity"

    .line 9
    .line 10
    move/from16 v11, p10

    .line 11
    .line 12
    invoke-virtual {p0, v11, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v12, 0x0

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return v12

    .line 20
    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 21
    .line 22
    move/from16 v3, p3

    .line 23
    .line 24
    move-object/from16 v4, p4

    .line 25
    .line 26
    move-object/from16 v5, p5

    .line 27
    .line 28
    move-object/from16 v6, p7

    .line 29
    .line 30
    move/from16 v7, p10

    .line 31
    .line 32
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, v10, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 42
    .line 43
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    move/from16 v4, p2

    .line 48
    .line 49
    invoke-virtual {v2, v3, v10, v4, p1}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 57
    .line 58
    const-string v1, "Caller can\'t access shortcut information"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_2
    :goto_0
    new-instance v13, Lcom/android/internal/infra/AndroidFuture;

    .line 65
    .line 66
    invoke-direct {v13}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    move-object/from16 v3, p4

    .line 84
    .line 85
    move-object/from16 v4, p5

    .line 86
    .line 87
    move-object/from16 v5, p7

    .line 88
    .line 89
    move/from16 v6, p10

    .line 90
    .line 91
    move-object v9, v13

    .line 92
    invoke-virtual/range {v1 .. v9}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntentsAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/android/internal/infra/AndroidFuture;)V

    .line 93
    .line 94
    .line 95
    :try_start_0
    invoke-virtual {v13}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    move-object v7, v1

    .line 100
    check-cast v7, [Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    if-eqz v7, :cond_a

    .line 103
    .line 104
    array-length v1, v7

    .line 105
    if-nez v1, :cond_3

    .line 106
    .line 107
    goto/16 :goto_3

    .line 108
    .line 109
    :cond_3
    invoke-static/range {p9 .. p9}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->isApplyActivityFlagsForBubbles()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    const/high16 v3, 0x8000000

    .line 120
    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    aget-object v2, v7, v12

    .line 124
    .line 125
    const/high16 v4, 0x80000

    .line 126
    .line 127
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    aget-object v2, v7, v12

    .line 131
    .line 132
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    :cond_4
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->isApplyMultipleTaskFlagForShortcut()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_5

    .line 140
    .line 141
    aget-object v2, v7, v12

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    :cond_5
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->isApplyNoUserActionFlagForShortcut()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_6

    .line 151
    .line 152
    aget-object v1, v7, v12

    .line 153
    .line 154
    const/high16 v2, 0x40000

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    .line 158
    .line 159
    :cond_6
    aget-object v1, v7, v12

    .line 160
    .line 161
    const/high16 v2, 0x10000000

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    aget-object v1, v7, v12

    .line 167
    .line 168
    move-object/from16 v2, p8

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 174
    .line 175
    move/from16 v2, p3

    .line 176
    .line 177
    move-object/from16 v3, p4

    .line 178
    .line 179
    move-object/from16 v4, p5

    .line 180
    .line 181
    move-object/from16 v5, p7

    .line 182
    .line 183
    move/from16 v6, p10

    .line 184
    .line 185
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutStartingThemeResName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-eqz v1, :cond_8

    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-nez v2, :cond_8

    .line 196
    .line 197
    if-nez p9, :cond_7

    .line 198
    .line 199
    new-instance v2, Landroid/os/Bundle;

    .line 200
    .line 201
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_7
    move-object/from16 v2, p9

    .line 206
    .line 207
    :goto_1
    const-string v3, "android.activity.splashScreenTheme"

    .line 208
    .line 209
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_8
    move-object/from16 v2, p9

    .line 214
    .line 215
    :goto_2
    const-string v1, "Couldn\'t start activity, code="

    .line 216
    .line 217
    :try_start_1
    iget-object v3, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 218
    .line 219
    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getActivityOptionsForLauncher(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    move-object/from16 v4, p5

    .line 224
    .line 225
    move-object/from16 v5, p6

    .line 226
    .line 227
    move/from16 v6, p10

    .line 228
    .line 229
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesAsPackage(Ljava/lang/String;Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_9

    .line 238
    .line 239
    const/4 v12, 0x1

    .line 240
    goto :goto_3

    .line 241
    :cond_9
    const-string v2, "LauncherAppsService"

    .line 242
    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    .line 257
    .line 258
    :catch_0
    :cond_a
    :goto_3
    return v12
.end method

.method public final startWatchingPackageBroadcasts()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIsWatchingPackageBroadcasts:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v4, Landroid/content/IntentFilter;

    .line 6
    .line 7
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "android.intent.action.PACKAGE_REMOVED_INTERNAL"

    .line 11
    .line 12
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v0, "package"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageRemovedListener:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;

    .line 24
    .line 25
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    .line 29
    .line 30
    move-object v3, v0

    .line 31
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    .line 43
    .line 44
    invoke-virtual {v3, v4, v0, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIsWatchingPackageBroadcasts:Z

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_0
    :goto_0
    return-void
.end method

.method public final unRegisterDumpCallback(Landroid/window/IDumpCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.READ_FRAME_BUFFER"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/content/PermissionChecker;->checkCallingOrSelfPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDumpCallbacks:Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p0, "LauncherAppsService"

    .line 18
    .line 19
    const-string p1, "caller lacks permissions to unRegisterDumpCallback"

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final uncacheShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureStrictAccessShortcutsPermission(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "Cannot uncache shortcuts"

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-nez p5, :cond_1

    .line 28
    .line 29
    const/16 p0, 0x4000

    .line 30
    .line 31
    :goto_0
    move v7, p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    if-ne p5, p0, :cond_2

    .line 35
    .line 36
    const/high16 p0, 0x40000000    # 2.0f

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 p0, 0x2

    .line 40
    if-ne p5, p0, :cond_3

    .line 41
    .line 42
    const/high16 p0, 0x20000000

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/4 p0, 0x0

    .line 46
    goto :goto_0

    .line 47
    :goto_1
    const-string p0, "Invalid cache owner"

    .line 48
    .line 49
    invoke-static {v7, p0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-object v3, p1

    .line 53
    move-object v4, p2

    .line 54
    move-object v5, p3

    .line 55
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final unregisterShortcutChangeCallback(Ljava/lang/String;Landroid/content/pm/IShortcutChangeCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutChangeHandler:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;

    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public final verifyCallingPackage(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public verifyCallingPackage(Ljava/lang/String;I)V
    .locals 3

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIPM:Landroid/content/pm/IPackageManager;

    .line 3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-wide/32 v1, 0xc2000

    .line 4
    invoke-interface {p0, p1, v1, v2, v0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    if-gez p0, :cond_0

    .line 5
    const-string v0, "Package not found: "

    const-string v1, "LauncherAppsService"

    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-ne p0, p2, :cond_1

    return-void

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Calling package name mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
