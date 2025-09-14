.class public final Lcom/android/server/wm/AppWarnings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAlwaysShowUnsupportedCompileSdkWarningActivities:Landroid/util/ArraySet;

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mConfigFile:Landroid/util/AtomicFile;

.field public mDeprecatedAbiDialogs:Landroid/util/SparseArray;

.field public mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

.field public final mPackageFlags:Landroid/util/ArrayMap;

.field public mPackageNightModeDialogs:Landroid/util/SparseArray;

.field public final mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

.field public mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

.field public mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;)V
    .locals 1

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
    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Landroid/util/ArraySet;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    new-instance p2, Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;-><init>(Lcom/android/server/wm/AppWarnings;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    .line 26
    .line 27
    new-instance p2, Lcom/android/server/wm/AppWarnings$UiHandler;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    .line 37
    .line 38
    new-instance p1, Landroid/util/AtomicFile;

    .line 39
    .line 40
    new-instance p2, Ljava/io/File;

    .line 41
    .line 42
    const-string/jumbo v0, "packages-warnings.xml"

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string/jumbo p3, "warnings-config"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2, p3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final getPackageFlags(ILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    monitor-exit v0

    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 20
    .line 21
    new-instance v0, Landroid/os/UserHandle;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_1
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 42
    .line 43
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    new-instance p1, Landroid/os/UserHandle;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public final getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public final isSpeg(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 16
    .line 17
    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 18
    .line 19
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "Skipping warning dialog of "

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "SPEG"

    .line 35
    .line 36
    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_1
    return v0
.end method

.method public final onStartActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Landroid/util/ArraySet;

    .line 18
    .line 19
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 29
    .line 30
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 31
    .line 32
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 33
    .line 34
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 37
    .line 38
    const-string v5, "REL"

    .line 39
    .line 40
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    xor-int/2addr v0, v2

    .line 45
    sget-object v6, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    xor-int/2addr v5, v2

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    if-lt v1, v4, :cond_4

    .line 55
    .line 56
    :cond_2
    if-eqz v5, :cond_3

    .line 57
    .line 58
    if-lt v4, v1, :cond_4

    .line 59
    .line 60
    :cond_3
    if-eqz v0, :cond_5

    .line 61
    .line 62
    if-eqz v5, :cond_5

    .line 63
    .line 64
    if-ne v4, v1, :cond_5

    .line 65
    .line 66
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 67
    .line 68
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 69
    .line 70
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    :cond_4
    const/4 v0, 0x3

    .line 79
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 90
    .line 91
    .line 92
    const-string p0, "debug.wm.disable_deprecated_target_sdk_dialog"

    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 100
    .line 101
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 102
    .line 103
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 104
    .line 105
    sget v4, Landroid/os/Build$VERSION;->MIN_SUPPORTED_TARGET_SDK_INT:I

    .line 106
    .line 107
    if-ge v1, v4, :cond_6

    .line 108
    .line 109
    if-nez p0, :cond_6

    .line 110
    .line 111
    const/4 p0, 0x5

    .line 112
    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    .line 121
    .line 122
    :cond_6
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 123
    .line 124
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 125
    .line 126
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 127
    .line 128
    and-int/lit8 p0, p0, 0x20

    .line 129
    .line 130
    if-eqz p0, :cond_7

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    const-string p0, "debug.wm.disable_deprecated_abi_dialog"

    .line 134
    .line 135
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-eqz p0, :cond_8

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_8
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 143
    .line 144
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 145
    .line 146
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 147
    .line 148
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 149
    .line 150
    if-eqz v1, :cond_9

    .line 151
    .line 152
    if-nez p0, :cond_9

    .line 153
    .line 154
    const-string p0, "64"

    .line 155
    .line 156
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-nez p0, :cond_9

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_9
    move v2, v0

    .line 164
    :goto_1
    sget-object p0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 165
    .line 166
    new-instance v0, Lcom/android/server/wm/AppWarnings$$ExternalSyntheticLambda0;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->find([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    if-eqz p0, :cond_a

    .line 176
    .line 177
    if-eqz v2, :cond_a

    .line 178
    .line 179
    const/4 p0, 0x6

    .line 180
    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 188
    .line 189
    .line 190
    :cond_a
    :goto_2
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mShouldShowPackageNightModeDialog:Z

    .line 191
    .line 192
    if-eqz p0, :cond_b

    .line 193
    .line 194
    const/4 p0, 0x7

    .line 195
    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 203
    .line 204
    .line 205
    :cond_b
    return-void
.end method

.method public final onSystemReady()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 10
    .line 11
    iput-object v0, v1, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 12
    .line 13
    const-string v2, "Error reading package metadata"

    .line 14
    .line 15
    const-string v3, "AppWarnings"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    :goto_0
    const/4 v7, 0x1

    .line 33
    const/4 v8, 0x2

    .line 34
    if-eq v6, v8, :cond_0

    .line 35
    .line 36
    if-eq v6, v7, :cond_0

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 39
    .line 40
    .line 41
    move-result v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    move-object v4, v5

    .line 45
    goto/16 :goto_d

    .line 46
    .line 47
    :catch_0
    move-exception v0

    .line 48
    move-object v4, v5

    .line 49
    goto/16 :goto_8

    .line 50
    .line 51
    :catch_1
    move-exception v0

    .line 52
    move-object v4, v5

    .line 53
    goto/16 :goto_b

    .line 54
    .line 55
    :cond_0
    if-ne v6, v7, :cond_1

    .line 56
    .line 57
    if-eqz v5, :cond_a

    .line 58
    .line 59
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 60
    .line 61
    .line 62
    goto/16 :goto_c

    .line 63
    .line 64
    :cond_1
    :try_start_3
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const-string/jumbo v9, "packages"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_8

    .line 76
    .line 77
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    const/4 v9, 0x0

    .line 82
    move v10, v9

    .line 83
    :goto_2
    if-ne v6, v8, :cond_6

    .line 84
    .line 85
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    if-ne v11, v8, :cond_6

    .line 94
    .line 95
    const-string/jumbo v11, "package"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_6

    .line 103
    .line 104
    const-string/jumbo v6, "user"

    .line 105
    .line 106
    .line 107
    const/16 v11, -0x2710

    .line 108
    .line 109
    invoke-interface {v0, v4, v6, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    const-string/jumbo v12, "name"

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v4, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    if-eqz v12, :cond_6

    .line 121
    .line 122
    const-string v13, "flags"

    .line 123
    .line 124
    invoke-interface {v0, v4, v13, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    if-eq v6, v11, :cond_2

    .line 129
    .line 130
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-static {v6, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    iget-object v11, v1, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 139
    .line 140
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    invoke-virtual {v11, v6, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_2
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-nez v6, :cond_3

    .line 153
    .line 154
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-static {v6, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    iget-object v10, v1, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 163
    .line 164
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    invoke-virtual {v10, v6, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_3
    iget-object v6, v1, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 173
    .line 174
    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    array-length v10, v6

    .line 179
    move v11, v9

    .line 180
    :goto_3
    if-ge v11, v10, :cond_5

    .line 181
    .line 182
    aget-object v14, v6, v11

    .line 183
    .line 184
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isFull()Z

    .line 185
    .line 186
    .line 187
    move-result v15

    .line 188
    if-nez v15, :cond_4

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_4
    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    .line 192
    .line 193
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v14

    .line 197
    invoke-static {v14, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 198
    .line 199
    .line 200
    move-result-object v14

    .line 201
    iget-object v15, v1, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 202
    .line 203
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v15, v14, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 211
    .line 212
    const/4 v4, 0x0

    .line 213
    goto :goto_3

    .line 214
    :cond_5
    :goto_5
    move v10, v7

    .line 215
    :cond_6
    :goto_6
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-ne v6, v7, :cond_7

    .line 220
    .line 221
    if-eqz v10, :cond_8

    .line 222
    .line 223
    iget-object v0, v1, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->schedule()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_7
    const/4 v4, 0x0

    .line 230
    goto/16 :goto_2

    .line 231
    .line 232
    :cond_8
    :goto_7
    if-eqz v5, :cond_a

    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :catchall_1
    move-exception v0

    .line 237
    const/4 v4, 0x0

    .line 238
    goto :goto_d

    .line 239
    :catch_2
    move-exception v0

    .line 240
    const/4 v4, 0x0

    .line 241
    goto :goto_8

    .line 242
    :catch_3
    move-exception v0

    .line 243
    const/4 v4, 0x0

    .line 244
    goto :goto_b

    .line 245
    :goto_8
    if-eqz v4, :cond_9

    .line 246
    .line 247
    :try_start_4
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 248
    .line 249
    .line 250
    goto :goto_9

    .line 251
    :catchall_2
    move-exception v0

    .line 252
    goto :goto_d

    .line 253
    :cond_9
    :goto_9
    if-eqz v4, :cond_a

    .line 254
    .line 255
    :goto_a
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 256
    .line 257
    .line 258
    goto :goto_c

    .line 259
    :goto_b
    :try_start_6
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 260
    .line 261
    .line 262
    if-eqz v4, :cond_a

    .line 263
    .line 264
    goto :goto_a

    .line 265
    :catch_4
    :cond_a
    :goto_c
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-nez v0, :cond_b

    .line 270
    .line 271
    return-void

    .line 272
    :cond_b
    iget-object v0, v1, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 273
    .line 274
    new-instance v2, Lcom/android/server/wm/AppWarnings$1;

    .line 275
    .line 276
    invoke-direct {v2, v1}, Lcom/android/server/wm/AppWarnings$1;-><init>(Lcom/android/server/wm/AppWarnings;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :goto_d
    if-eqz v4, :cond_c

    .line 284
    .line 285
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 286
    .line 287
    .line 288
    :catch_5
    :cond_c
    throw v0
.end method

.method public final removePackageAndHideDialogs(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

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
    move p1, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    invoke-virtual {v0, v2, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->schedule()V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    :goto_1
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public final setPackageFlag(IILjava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    or-int/2addr p2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    not-int p2, p2

    .line 13
    and-int/2addr p2, v1

    .line 14
    :goto_0
    if-eq v1, p2, :cond_2

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    iget-object p3, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p3, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->schedule()V

    .line 46
    .line 47
    .line 48
    :cond_2
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 8
    .line 9
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 14
    .line 15
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 18
    .line 19
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 20
    .line 21
    if-le v1, v0, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
