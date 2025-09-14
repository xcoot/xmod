.class public final Lcom/android/server/backup/utils/BackupEligibilityRules;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final systemPackagesAllowedForNonSystemUsers:Ljava/util/Set;

.field public static final systemPackagesAllowedForProfileUser:Ljava/util/Set;


# instance fields
.field public final mBackupDestination:I

.field public final mIsProfileUser:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mSkipRestoreForLaunchedApps:Z

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "@pm@"

    .line 2
    .line 3
    const-string v1, "android"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForProfileUser:Ljava/util/Set;

    .line 14
    .line 15
    const-string/jumbo v1, "com.android.wallpaperbackup"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v2, "com.android.providers.settings"

    .line 19
    .line 20
    .line 21
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    sput-object v2, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForNonSystemUsers:Ljava/util/Set;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mIsProfileUser:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 10
    .line 11
    iput p3, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    .line 12
    .line 13
    iput p5, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    .line 14
    .line 15
    const-class p1, Landroid/os/UserManager;

    .line 16
    .line 17
    invoke-virtual {p4, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/os/UserManager;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/os/UserManager;->isProfile()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput-boolean p1, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mIsProfileUser:Z

    .line 28
    .line 29
    iput-boolean p6, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mSkipRestoreForLaunchedApps:Z

    .line 30
    .line 31
    return-void
.end method

.method public static appIsStopped(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    .line 1
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2
    .line 3
    const/high16 v0, 0x200000

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method


# virtual methods
.method public appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    .line 1
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 9
    .line 10
    const/high16 p1, 0x4000000

    .line 11
    .line 12
    and-int/2addr p0, p1

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :cond_1
    :goto_0
    return v0
.end method

.method public appIsDisabled(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 4
    .line 5
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move p0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    :goto_0
    const/4 v0, 0x1

    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    if-eq p0, p1, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x3

    .line 33
    if-eq p0, p1, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x4

    .line 36
    if-eq p0, p1, :cond_1

    .line 37
    .line 38
    return v1

    .line 39
    :cond_1
    return v0

    .line 40
    :cond_2
    iget-boolean p0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 41
    .line 42
    xor-int/2addr p0, v0

    .line 43
    return p0
.end method

.method public appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->isAppBackupAllowed(Landroid/content/pm/ApplicationInfo;)Z

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
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 10
    .line 11
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget v0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mIsProfileUser:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget-object v2, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForProfileUser:Ljava/util/Set;

    .line 26
    .line 27
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 28
    .line 29
    check-cast v2, Landroid/util/ArraySet;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    if-nez v0, :cond_2

    .line 39
    .line 40
    sget-object v0, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForNonSystemUsers:Ljava/util/Set;

    .line 41
    .line 42
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 43
    .line 44
    check-cast v0, Ljava/util/HashSet;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    return v1

    .line 53
    :cond_2
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    return v1

    .line 58
    :cond_3
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 59
    .line 60
    const-string/jumbo v2, "com.android.sharedstoragebackup"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    return v1

    .line 70
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    return v1

    .line 77
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsDisabled(Landroid/content/pm/ApplicationInfo;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    xor-int/lit8 p0, p0, 0x1

    .line 82
    .line 83
    return p0
.end method

.method public final appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "Unable to ask about eligibility: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    iget v3, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    .line 7
    .line 8
    const/high16 v4, 0x8000000

    .line 9
    .line 10
    invoke-virtual {v2, p2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_3

    .line 21
    .line 22
    invoke-static {v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsDisabled(Landroid/content/pm/ApplicationInfo;)Z

    .line 29
    .line 30
    .line 31
    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    :try_start_1
    const-string v3, "AppBackupUtils.appIsRunningAndEligibleForBackupWithTransport"

    .line 39
    .line 40
    invoke-virtual {p1, v3}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    iget-object v3, p1, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v4, p1, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 55
    .line 56
    invoke-interface {v4, p2, p0, v3}, Lcom/android/internal/backup/IBackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;ZLcom/android/internal/infra/AndroidFuture;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Ljava/lang/Boolean;

    .line 64
    .line 65
    if-eqz p0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    if-eqz p0, :cond_1

    .line 72
    .line 73
    move v1, v2

    .line 74
    :cond_1
    return v1

    .line 75
    :catch_0
    move-exception p0

    .line 76
    :try_start_2
    const-string p1, "BackupManagerService"

    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 95
    .line 96
    .line 97
    :cond_2
    return v2

    .line 98
    :catch_1
    :cond_3
    :goto_0
    return v1
.end method

.method public final isAppBackupAllowed(Landroid/content/pm/ApplicationInfo;)Z
    .locals 10

    .line 1
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2
    .line 3
    const v1, 0x8000

    .line 4
    .line 5
    .line 6
    and-int/2addr v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    iget v4, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    .line 15
    .line 16
    if-eqz v4, :cond_d

    .line 17
    .line 18
    iget v5, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    .line 19
    .line 20
    if-eq v4, v3, :cond_9

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    const-string v6, "BackupManagerService"

    .line 24
    .line 25
    if-eq v4, v0, :cond_1

    .line 26
    .line 27
    const-string p0, "Unknown operation type:"

    .line 28
    .line 29
    invoke-static {v4, p0, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return v2

    .line 33
    :cond_1
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v4, :cond_2

    .line 36
    .line 37
    const-string p0, "Invalid ApplicationInfo object"

    .line 38
    .line 39
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    const-wide/32 v7, 0xa31bf12

    .line 44
    .line 45
    .line 46
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-static {v7, v8, v4, v9}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-nez v7, :cond_3

    .line 55
    .line 56
    return v1

    .line 57
    :cond_3
    const-string v7, "android"

    .line 58
    .line 59
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_4

    .line 64
    .line 65
    return v3

    .line 66
    :cond_4
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 67
    .line 68
    and-int/lit8 v8, v7, 0x8

    .line 69
    .line 70
    if-eqz v8, :cond_5

    .line 71
    .line 72
    move v8, v3

    .line 73
    goto :goto_1

    .line 74
    :cond_5
    move v8, v2

    .line 75
    :goto_1
    and-int/2addr v0, v7

    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    move v2, v3

    .line 79
    :cond_6
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 80
    .line 81
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_8

    .line 86
    .line 87
    if-eqz v8, :cond_7

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_7
    return v2

    .line 91
    :cond_8
    :goto_2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 92
    .line 93
    const-string p1, "android.backup.ALLOW_ADB_BACKUP"

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p1, v4, v0, v5}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    .line 101
    .line 102
    .line 103
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return p0

    .line 105
    :catch_0
    const-string p0, "Failed to read allowAdbBackup property for + "

    .line 106
    .line 107
    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return v1

    .line 115
    :cond_9
    and-int/lit8 p0, v0, 0x1

    .line 116
    .line 117
    if-eqz p0, :cond_a

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_a
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-wide/32 v4, 0xaea9af1

    .line 127
    .line 128
    .line 129
    invoke-static {v4, v5, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_b

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_b
    :goto_3
    if-eqz v1, :cond_c

    .line 137
    .line 138
    :goto_4
    move v2, v3

    .line 139
    :cond_c
    return v2

    .line 140
    :cond_d
    return v1
.end method

.method public final signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .locals 7

    .line 1
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    and-int/2addr v0, v2

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v2

    .line 16
    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    return v1

    .line 23
    :cond_2
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 24
    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    const-string p0, "BackupManagerService"

    .line 28
    .line 29
    const-string/jumbo p1, "signingInfo is empty, app was either unsigned or the flag PackageManager#GET_SIGNING_CERTIFICATES was not specified"

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_3
    array-length v3, p1

    .line 37
    if-ne v3, v2, :cond_5

    .line 38
    .line 39
    aget-object p1, p1, v1

    .line 40
    .line 41
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 44
    .line 45
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    if-nez p0, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;I)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :goto_0
    return v1

    .line 65
    :cond_5
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    array-length p2, p0

    .line 70
    move v0, v1

    .line 71
    :goto_1
    if-ge v0, v3, :cond_8

    .line 72
    .line 73
    move v4, v1

    .line 74
    :goto_2
    if-ge v4, p2, :cond_7

    .line 75
    .line 76
    aget-object v5, p1, v0

    .line 77
    .line 78
    aget-object v6, p0, v4

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_6

    .line 85
    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_7
    return v1

    .line 93
    :cond_8
    return v2
.end method
