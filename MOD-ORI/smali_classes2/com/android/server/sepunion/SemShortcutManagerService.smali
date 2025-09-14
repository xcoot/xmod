.class public final Lcom/android/server/sepunion/SemShortcutManagerService;
.super Lcom/samsung/android/app/ISemExecuteManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final mLock:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$2;

.field public final mSemExecutableInfos:Ljava/util/HashMap;

.field public final mShortcutChangeListener:Lcom/android/server/sepunion/SemShortcutManagerService$1;

.field public final mShortcutChangedCallbackMap:Ljava/util/HashMap;

.field public final mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public final mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/app/ISemExecuteManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/sepunion/SemShortcutManagerService$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemShortcutManagerService$1;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/android/server/sepunion/SemShortcutManagerService$2;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, p0, v2}, Lcom/android/server/sepunion/SemShortcutManagerService$2;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$2;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    new-instance v1, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Landroid/os/UserHandle;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v1, "user"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/os/UserManager;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    .line 62
    .line 63
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 78
    .line 79
    const-class p1, Landroid/content/pm/ShortcutServiceInternal;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/content/pm/ShortcutServiceInternal;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroid/content/pm/ShortcutServiceInternal;

    .line 92
    .line 93
    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutServiceInternal;->addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V

    .line 96
    .line 97
    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v0, "----- SemShortcutManagerService: start updateSemExecutableInfo() on "

    .line 101
    .line 102
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v0, "SemExecuteManagerService"

    .line 117
    .line 118
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->updateSemExecutableInfo()V

    .line 122
    .line 123
    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string p1, "----- SemShortcutManagerService: end updateSemExecutableInfo() on "

    .line 127
    .line 128
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    .line 133
    .line 134
    move-result-wide v1

    .line 135
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    return-void
.end method


# virtual methods
.method public final canAccessProfile(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectClearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    :try_start_0
    iget-object v4, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    .line 18
    .line 19
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    const-string v1, "SemExecuteManagerService"

    .line 30
    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p3, " by "

    .line 40
    .line 41
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, " for another profile "

    .line 48
    .line 49
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, " from "

    .line 56
    .line 57
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v2, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    return p0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    if-eqz p2, :cond_2

    .line 84
    .line 85
    iget p2, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 86
    .line 87
    const/16 v0, -0x2710

    .line 88
    .line 89
    if-eq p2, v0, :cond_2

    .line 90
    .line 91
    iget v0, v4, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    if-ne p2, v0, :cond_2

    .line 94
    .line 95
    invoke-virtual {p0, v2, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    .line 96
    .line 97
    .line 98
    return v1

    .line 99
    :cond_2
    :try_start_2
    new-instance p2, Ljava/lang/SecurityException;

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p3, " for unrelated profile "

    .line 110
    .line 111
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    .line 126
    .line 127
    .line 128
    throw p1
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p1, "android.permission.DUMP"

    .line 4
    .line 5
    const-string p3, "SemExecuteManagerService"

    .line 6
    .line 7
    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p0, "\n##### SEM SHORTCUT MANAGER SERVICE #####\n##### (dumpsys sepunion execute) #####\n"

    .line 11
    .line 12
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final enforeCallingPermission(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/16 v1, 0x3e8

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p0, "Permission denied: "

    .line 21
    .line 22
    const-string v1, " uid="

    .line 23
    .line 24
    const-string v2, ", you need system uid of to be signed with the system certificate."

    .line 25
    .line 26
    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "SemExecuteManagerService"

    .line 31
    .line 32
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    new-instance v3, Ljava/lang/SecurityException;

    .line 36
    .line 37
    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v3, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v3
.end method

.method public final getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Cannot check package"

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(ILjava/lang/String;Ljava/lang/String;)Z

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
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    .line 32
    .line 33
    move-result-wide p0

    .line 34
    :try_start_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v1, v0

    .line 41
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 42
    .line 43
    int-to-long v4, p3

    .line 44
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    move-object v6, p2

    .line 49
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 50
    .line 51
    .line 52
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    return-object p2

    .line 57
    :catchall_0
    move-exception p2

    .line 58
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    throw p2
.end method

.method public final getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/SemExecutableInfo;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/samsung/android/app/SemExecutableInfo;

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method public final getExecutableInfos()Ljava/util/List;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v0
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 7

    .line 1
    const-string v0, "getShortcutIconFd"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Cannot access shortcuts"

    .line 7
    .line 8
    invoke-virtual {p0, p5, p1, v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(ILjava/lang/String;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0, p5}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    move-object v3, p2

    .line 34
    move-object v4, p3

    .line 35
    move-object v5, p4

    .line 36
    move v6, p5

    .line 37
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public final getShortcuts(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v3, "getShortcuts: "

    .line 7
    .line 8
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "SemExecuteManagerService"

    .line 19
    .line 20
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const-string v2, "getShortcuts"

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p9 .. p9}, Landroid/os/UserHandle;->getIdentifier()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const-string v3, "Cannot get shortcuts"

    .line 33
    .line 34
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(ILjava/lang/String;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-virtual/range {p9 .. p9}, Landroid/os/UserHandle;->getIdentifier()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(I)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    if-eqz p6, :cond_2

    .line 52
    .line 53
    if-eqz p5, :cond_1

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
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    .line 65
    .line 66
    iget-object v2, v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-virtual/range {p9 .. p9}, Landroid/os/UserHandle;->getIdentifier()I

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    const/4 v9, 0x0

    .line 89
    move-object/from16 v4, p2

    .line 90
    .line 91
    move-wide/from16 v5, p3

    .line 92
    .line 93
    move-object/from16 v7, p5

    .line 94
    .line 95
    move-object/from16 v8, p6

    .line 96
    .line 97
    move-object/from16 v10, p7

    .line 98
    .line 99
    move/from16 v11, p8

    .line 100
    .line 101
    invoke-virtual/range {v2 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 106
    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_3
    :goto_1
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    .line 110
    .line 111
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 112
    .line 113
    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    return-object v0
.end method

.method public final hasShortcutHostPermission(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p1, "hasShortcutHostPermission"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public injectBinderCallingUid()I
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->getCallingUid()I

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

.method public injectRestoreCallingIdentity(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final isUserEnabled(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectClearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    .line 6
    .line 7
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    return p1

    .line 28
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/android/server/sepunion/SemShortcutManagerService$3;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemShortcutManagerService$3;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->updateSemExecutableInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final registerChangedCallback(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/UserHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    monitor-exit p1

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public final startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v9, p7

    .line 3
    .line 4
    const-string/jumbo v7, "startShortcut"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v7}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "Cannot start activity"

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    invoke-virtual {p0, v9, p1, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(ILjava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v10, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return v10

    .line 21
    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_5

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    move-object v3, p2

    .line 38
    move-object v4, p3

    .line 39
    move-object v5, p4

    .line 40
    move/from16 v6, p7

    .line 41
    .line 42
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, v7}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v1, v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    move-object v3, p2

    .line 70
    move-object v4, p3

    .line 71
    move-object v5, p4

    .line 72
    move/from16 v6, p7

    .line 73
    .line 74
    invoke-virtual/range {v1 .. v8}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    array-length v1, v4

    .line 81
    if-nez v1, :cond_2

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    aget-object v1, v4, v10

    .line 85
    .line 86
    const/high16 v2, 0x10000000

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    aget-object v1, v4, v10

    .line 92
    .line 93
    move-object/from16 v2, p5

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 96
    .line 97
    .line 98
    const-string v6, "SemExecuteManagerService"

    .line 99
    .line 100
    const-string v7, "Couldn\'t start activity, code="

    .line 101
    .line 102
    :try_start_0
    iget-object v0, v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    move-object v1, p3

    .line 106
    move/from16 v3, p7

    .line 107
    .line 108
    move-object/from16 v5, p6

    .line 109
    .line 110
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesAsPackage(Ljava/lang/String;Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    const/4 v10, 0x1

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "SecurityException while launching intent"

    .line 140
    .line 141
    invoke-static {v6, v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .line 143
    .line 144
    :cond_4
    :goto_0
    return v10

    .line 145
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 146
    .line 147
    const-string v1, "Cannot start a shortcut for disabled profile "

    .line 148
    .line 149
    invoke-static {v9, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0
.end method

.method public final unRegisterChangedCallback(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/UserHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/util/ArrayList;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    check-cast p3, Landroid/app/PendingIntent;

    .line 37
    .line 38
    invoke-virtual {p3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    if-eqz p3, :cond_0

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    monitor-exit p1

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final declared-synchronized updateSemExecutableInfo()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    .line 3
    .line 4
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/samsung/android/app/SemExecutableInfo;->scanExecutableInfos(Landroid/content/Context;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    move v2, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_3

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/samsung/android/app/SemExecutableInfo;

    .line 42
    .line 43
    iget-object v6, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v5}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Lcom/samsung/android/app/SemExecutableInfo;

    .line 54
    .line 55
    if-nez v6, :cond_2

    .line 56
    .line 57
    :goto_2
    move v2, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v6, v5}, Lcom/samsung/android/app/SemExecutableInfo;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    goto :goto_4

    .line 68
    :cond_3
    if-eqz v2, :cond_4

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/samsung/android/app/SemExecutableInfo;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    monitor-exit p0

    .line 103
    return-void

    .line 104
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    :catchall_1
    move-exception v0

    .line 107
    monitor-exit p0

    .line 108
    throw v0
.end method

.method public verifyCallingPackage(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->getCallingUid()I

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
    const-wide/32 v2, 0xc2000

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    const/4 v0, -0x1

    .line 22
    :goto_0
    if-gez v0, :cond_0

    .line 23
    .line 24
    const-string v1, "Package not found: "

    .line 25
    .line 26
    const-string v2, "SemExecuteManagerService"

    .line 27
    .line 28
    invoke-static {v1, p1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-ne v0, p0, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 39
    .line 40
    const-string p1, "Calling package name mismatch"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method
