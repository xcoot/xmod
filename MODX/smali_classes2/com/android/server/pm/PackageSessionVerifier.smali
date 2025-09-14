.class public final Lcom/android/server/pm/PackageSessionVerifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mPackageParserSupplier:Ljava/util/function/Supplier;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mStagedSessions:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    .line 11
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 12
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 13
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPackageParserSupplier:Ljava/util/function/Supplier;

    .line 14
    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    iput-object p3, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 6
    iput-object p4, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPackageParserSupplier:Ljava/util/function/Supplier;

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .locals 1

    .line 1
    check-cast p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 6
    .line 7
    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method


# virtual methods
.method public checkActiveSessions(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 21
    .line 22
    move-object v2, v1

    .line 23
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    check-cast v1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    if-nez p1, :cond_4

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    if-gt v0, p0, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 52
    .line 53
    const/16 p1, -0x77

    .line 54
    .line 55
    const-string v0, "Cannot stage multiple sessions without checkpoint support"

    .line 56
    .line 57
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_4
    :goto_1
    return-void
.end method

.method public final checkApexSignature(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-wide/32 v2, 0x40000000

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-interface {p0, v1, v2, v3, v4}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_4

    .line 31
    .line 32
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 33
    .line 34
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 35
    .line 36
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 37
    .line 38
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2, v1, p0}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/16 v3, -0x16

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Landroid/content/pm/SigningDetails;

    .line 63
    .line 64
    iget-object v2, p1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v2

    .line 67
    :try_start_0
    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 68
    .line 69
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    const/4 v1, 0x1

    .line 71
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    const/16 v1, 0x8

    .line 78
    .line 79
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 87
    .line 88
    const-string p1, "APK container signature of APEX package "

    .line 89
    .line 90
    const-string v1, " is not compatible with the one currently installed on device"

    .line 91
    .line 92
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_2
    :goto_0
    return-void

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    throw p0

    .line 104
    :cond_3
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 105
    .line 106
    const-string v0, "Failed to verify APEX package "

    .line 107
    .line 108
    const-string v2, " : "

    .line 109
    .line 110
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-direct {p1, v3, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_4
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 134
    .line 135
    const-string p1, "Attempting to install new APEX package "

    .line 136
    .line 137
    invoke-static {p1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const/16 v0, -0x17

    .line 142
    .line 143
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p0
.end method

.method public final checkApexUpdateAllowed(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 9
    .line 10
    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 11
    .line 12
    const/high16 v1, 0x800000

    .line 13
    .line 14
    and-int/2addr v0, v1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ModuleInfoProvider;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v2, "PackageSessionVerifier"

    .line 38
    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mModulesInstallerPackageName:Ljava/lang/String;

    .line 46
    .line 47
    if-nez p0, :cond_2

    .line 48
    .line 49
    const-string p0, "No modules installer defined"

    .line 50
    .line 51
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mAllowedVendorApexes:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Ljava/lang/String;

    .line 71
    .line 72
    if-nez p0, :cond_5

    .line 73
    .line 74
    const-string p0, "com.sec.android.app.samsungapps"

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_4

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, " is not allowed to be updated"

    .line 93
    .line 94
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    :goto_0
    if-eqz v1, :cond_6

    .line 110
    .line 111
    return-void

    .line 112
    :cond_6
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 113
    .line 114
    const-string v1, "Update of APEX package "

    .line 115
    .line 116
    const-string v2, " is not allowed for "

    .line 117
    .line 118
    invoke-static {v1, v0, v2, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const/16 v0, -0x16

    .line 123
    .line 124
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0
.end method

.method public checkOverlaps(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_6

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    check-cast p2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 20
    .line 21
    iget-object v0, p2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_5

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    .line 30
    .line 31
    check-cast p0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 48
    .line 49
    check-cast v1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 50
    .line 51
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 66
    .line 67
    iget v3, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 68
    .line 69
    iget-object v4, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 70
    .line 71
    iget v4, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 72
    .line 73
    if-ne v3, v4, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    new-instance v3, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-direct {v3, v0, v4}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    new-instance v4, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;

    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    invoke-direct {v4, v5, v3}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_1

    .line 93
    .line 94
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 95
    .line 96
    iget-object v4, v3, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter v4

    .line 99
    :try_start_0
    iget-wide v5, v3, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    .line 100
    .line 101
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    iget-object v3, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 103
    .line 104
    iget-object v7, v3, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 105
    .line 106
    monitor-enter v7

    .line 107
    :try_start_1
    iget-wide v3, v3, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    .line 108
    .line 109
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    cmp-long v3, v5, v3

    .line 111
    .line 112
    const-string v4, " has been staged already by session: "

    .line 113
    .line 114
    const-string v5, " in session: "

    .line 115
    .line 116
    const-string v6, "Package: "

    .line 117
    .line 118
    const/16 v7, -0x77

    .line 119
    .line 120
    if-ltz v3, :cond_3

    .line 121
    .line 122
    invoke-static {v6, v0, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 127
    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v2, p2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 135
    .line 136
    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 137
    .line 138
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v1, v7, v2}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_3
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 150
    .line 151
    invoke-static {v6, v0, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 156
    .line 157
    iget p2, p2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget p2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-direct {p0, v7, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :catchall_0
    move-exception p0

    .line 179
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    throw p0

    .line 181
    :catchall_1
    move-exception p0

    .line 182
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 183
    throw p0

    .line 184
    :cond_4
    return-void

    .line 185
    :cond_5
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 186
    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v0, "Cannot stage session "

    .line 190
    .line 191
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 195
    .line 196
    iget p2, p2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 197
    .line 198
    const-string v0, " with package name null"

    .line 199
    .line 200
    invoke-static {p2, p1, v0}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    const/16 p2, -0x16

    .line 205
    .line 206
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p0

    .line 210
    :cond_6
    :goto_1
    return-void
.end method

.method public checkRebootlessApex(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 4
    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/16 v1, -0x16

    .line 20
    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    .line 24
    .line 25
    check-cast p0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 42
    .line 43
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 44
    .line 45
    iget-object v2, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    new-instance v2, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;

    .line 67
    .line 68
    const/4 v4, 0x1

    .line 69
    invoke-direct {v3, v4, v2}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 73
    .line 74
    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 82
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v3, "Staged session "

    .line 86
    .line 87
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 91
    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, " already contains "

    .line 96
    .line 97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_4
    return-void

    .line 112
    :cond_5
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v2, "Invalid session "

    .line 117
    .line 118
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 122
    .line 123
    const-string v2, " with package name null"

    .line 124
    .line 125
    invoke-static {p1, v0, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_6
    :goto_1
    return-void
.end method

.method public checkRollbacks(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_6

    .line 11
    .line 12
    move-object v0, p1

    .line 13
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    .line 24
    .line 25
    check-cast v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_6

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 42
    .line 43
    move-object v3, v2

    .line 44
    check-cast v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 45
    .line 46
    iget-object v3, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    move-object v3, v2

    .line 55
    check-cast v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-static {p1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const-string v5, "Session was failed by rollback session: "

    .line 69
    .line 70
    const/16 v6, -0x77

    .line 71
    .line 72
    iget-object v7, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 73
    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    invoke-static {v2}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_4

    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageSessionVerifier;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const-string v4, "PackageSessionVerifier"

    .line 87
    .line 88
    if-nez v2, :cond_3

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v8, "Failed to abort apex session "

    .line 93
    .line 94
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget v8, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 98
    .line 99
    invoke-static {v2, v8, v4}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 108
    .line 109
    iget v8, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 110
    .line 111
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v3, v6, v2}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v3, "Session "

    .line 124
    .line 125
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget v3, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v3, " is marked failed due to rollback session: "

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v3, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 139
    .line 140
    invoke-static {v2, v3, v4}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_4
    invoke-static {p1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-nez v3, :cond_1

    .line 149
    .line 150
    invoke-static {v2}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-nez v2, :cond_5

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_5
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 158
    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget v0, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :cond_6
    :goto_1
    return-void
.end method

.method public final createVerifyingSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$1;)Lcom/android/server/pm/VerifyingSession;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 4
    .line 5
    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x40

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 12
    .line 13
    :goto_0
    move-object v4, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    new-instance v1, Landroid/os/UserHandle;

    .line 16
    .line 17
    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :goto_1
    new-instance v1, Lcom/android/server/pm/VerifyingSession;

    .line 24
    .line 25
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 26
    .line 27
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v2

    .line 42
    :try_start_0
    iget-object v11, v0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 43
    .line 44
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    iget v12, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 46
    .line 47
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v3

    .line 50
    :try_start_1
    iget-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 51
    .line 52
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequired:Ljava/lang/Boolean;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    :goto_2
    move v14, v0

    .line 62
    move-object/from16 v0, p0

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_1
    const-string v0, "PackageInstallerSession"

    .line 66
    .line 67
    const-string/jumbo v2, "mUserActionRequired should not be null."

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    goto :goto_2

    .line 75
    :goto_3
    iget-object v15, v0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 76
    .line 77
    move-object v3, v1

    .line 78
    move-object/from16 v7, p2

    .line 79
    .line 80
    invoke-direct/range {v3 .. v15}, Lcom/android/server/pm/VerifyingSession;-><init>(Landroid/os/UserHandle;Ljava/io/File;Ljava/lang/String;Lcom/android/server/pm/PackageSessionVerifier$1;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;ILandroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;ZLcom/android/server/pm/PackageManagerService;)V

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw v0

    .line 87
    :catchall_1
    move-exception v0

    .line 88
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    throw v0
.end method

.method public final endVerification(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 4

    .line 1
    const-string v0, "PackageSessionVerifier"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->startCheckpoint(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_4

    .line 24
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "Marking session "

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v2, p1

    .line 32
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 35
    .line 36
    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 37
    .line 38
    const-string v3, " as ready"

    .line 39
    .line 40
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 44
    .line 45
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->setSessionReady()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isSessionReady()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    const-string/jumbo p1, "sys.staged_apex.state"

    .line 63
    .line 64
    .line 65
    const-string/jumbo v1, "staged"

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget p1, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 74
    .line 75
    check-cast p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-interface {p0, p1}, Landroid/apex/IApexService;->markStagedSessionReady(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :catch_1
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :catch_2
    move-exception p0

    .line 91
    goto :goto_2

    .line 92
    :goto_1
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "Failed to mark apexd session as ready : "

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const/16 v0, -0x16

    .line 113
    .line 114
    invoke-direct {p1, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1

    .line 118
    :goto_2
    const-string p1, "ApexManager"

    .line 119
    .line 120
    const-string v0, "Unable to contact apexservice"

    .line 121
    .line 122
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .line 124
    .line 125
    new-instance p1, Ljava/lang/RuntimeException;

    .line 126
    .line 127
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_1
    :goto_3
    return-void

    .line 132
    :goto_4
    const-string p1, "Failed to get hold of StorageManager"

    .line 133
    .line 134
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .line 136
    .line 137
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 138
    .line 139
    const/16 v0, -0x6e

    .line 140
    .line 141
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0
.end method

.method public final ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 12
    .line 13
    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-boolean v2, v0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    iget-boolean v2, v0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    iget-boolean v2, v0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    iget-boolean v0, v0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    check-cast p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 41
    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p0, p1}, Landroid/apex/IApexService;->abortStagedSession(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    const-string p1, "ApexManager"

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    :cond_2
    :goto_0
    return v1
.end method

.method public final onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v0, "Failed to abort apex session "

    .line 10
    .line 11
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 18
    .line 19
    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 20
    .line 21
    const-string v1, "PackageSessionVerifier"

    .line 22
    .line 23
    invoke-static {p0, v0, v1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 27
    .line 28
    invoke-virtual {p1, p3, p4}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/16 p0, -0x16

    .line 32
    .line 33
    invoke-virtual {p2, p0, p4}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;->onResult(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public storeSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final verifyAPK(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/pm/PackageSessionVerifier$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$1;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageSessionVerifier;->createVerifyingSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$1;)Lcom/android/server/pm/VerifyingSession;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 11
    .line 12
    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 13
    .line 14
    iget-object v1, p2, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/PackageSessionVerifier;->createVerifyingSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$1;)Lcom/android/server/pm/VerifyingSession;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance p0, Lcom/android/server/pm/MultiPackageVerifyingSession;

    .line 57
    .line 58
    invoke-direct {p0, p2, v0}, Lcom/android/server/pm/MultiPackageVerifyingSession;-><init>(Lcom/android/server/pm/VerifyingSession;Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 62
    .line 63
    new-instance p2, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-direct {p2, v0, p0}, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    const-wide/32 v2, 0x40000

    .line 78
    .line 79
    .line 80
    const-string/jumbo p1, "queueVerify"

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v3, p1, p0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    iget-object p0, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 87
    .line 88
    new-instance p1, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    invoke-direct {p1, v0, p2}, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    .line 96
    .line 97
    :goto_1
    return-void
.end method

.method public final verifyApex(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 7
    .line 8
    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 9
    .line 10
    const/high16 v2, 0x40000

    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    const/16 v2, -0x16

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const-string v4, "PackageSessionVerifier"

    .line 17
    .line 18
    const/4 v5, -0x1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-class v1, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 28
    .line 29
    :try_start_0
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 32
    .line 33
    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 34
    .line 35
    check-cast v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->notifyStagedSession(I)I

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_2

    .line 42
    :catch_0
    move-exception p1

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v6, "Failed to notifyStagedSession for session: "

    .line 46
    .line 47
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 51
    .line 52
    iget v6, v6, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 53
    .line 54
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v4, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    iget-object p1, v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 72
    .line 73
    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    const-class v6, Landroid/content/rollback/RollbackManager;

    .line 78
    .line 79
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/content/rollback/RollbackManager;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    move v7, v3

    .line 94
    :goto_0
    if-ge v7, v6, :cond_2

    .line 95
    .line 96
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    check-cast v8, Landroid/content/rollback/RollbackInfo;

    .line 101
    .line 102
    invoke-virtual {v8}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-ne v9, p1, :cond_1

    .line 107
    .line 108
    invoke-virtual {v8}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    goto :goto_2

    .line 113
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 117
    .line 118
    const-string v0, "Could not find rollback id for commit session: "

    .line 119
    .line 120
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0

    .line 128
    :cond_3
    :goto_1
    move p1, v5

    .line 129
    :goto_2
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_d

    .line 134
    .line 135
    new-instance v1, Landroid/util/IntArray;

    .line 136
    .line 137
    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 141
    .line 142
    iget-object v7, v6, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 143
    .line 144
    iget-boolean v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 145
    .line 146
    if-eqz v7, :cond_5

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->getChildSessions()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_5

    .line 161
    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    check-cast v7, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 167
    .line 168
    check-cast v7, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 169
    .line 170
    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isApexSession()Z

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    if-eqz v8, :cond_4

    .line 175
    .line 176
    iget-object v7, v7, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 177
    .line 178
    iget v7, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 179
    .line 180
    invoke-virtual {v1, v7}, Landroid/util/IntArray;->add(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_5
    new-instance v0, Landroid/apex/ApexSessionParams;

    .line 185
    .line 186
    invoke-direct {v0}, Landroid/apex/ApexSessionParams;-><init>()V

    .line 187
    .line 188
    .line 189
    iget v7, v6, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 190
    .line 191
    iput v7, v0, Landroid/apex/ApexSessionParams;->sessionId:I

    .line 192
    .line 193
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iput-object v1, v0, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    .line 198
    .line 199
    iget-object v1, v6, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 200
    .line 201
    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 202
    .line 203
    const/4 v7, 0x5

    .line 204
    const/4 v8, 0x1

    .line 205
    if-ne v1, v7, :cond_6

    .line 206
    .line 207
    iput-boolean v8, v0, Landroid/apex/ApexSessionParams;->isRollback:Z

    .line 208
    .line 209
    iput p1, v0, Landroid/apex/ApexSessionParams;->rollbackId:I

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_6
    if-eq p1, v5, :cond_7

    .line 213
    .line 214
    iput-boolean v8, v0, Landroid/apex/ApexSessionParams;->hasRollbackEnabled:Z

    .line 215
    .line 216
    iput p1, v0, Landroid/apex/ApexSessionParams;->rollbackId:I

    .line 217
    .line 218
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    const-string/jumbo v1, "power"

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Landroid/os/PowerManager;

    .line 228
    .line 229
    invoke-virtual {p1, v8, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    :try_start_1
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 234
    .line 235
    .line 236
    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 237
    .line 238
    invoke-virtual {v1, v0}, Lcom/android/server/pm/ApexManager;->submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;

    .line 239
    .line 240
    .line 241
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 242
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 243
    .line 244
    .line 245
    new-instance p1, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    iget-object v0, v0, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    .line 251
    .line 252
    array-length v1, v0

    .line 253
    move v5, v3

    .line 254
    :goto_5
    if-ge v5, v1, :cond_c

    .line 255
    .line 256
    aget-object v7, v0, v5

    .line 257
    .line 258
    :try_start_2
    iget-object v8, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPackageParserSupplier:Ljava/util/function/Supplier;

    .line 259
    .line 260
    invoke-interface {v8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    check-cast v8, Lcom/android/internal/pm/parsing/PackageParser2;
    :try_end_2
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 265
    .line 266
    :try_start_3
    new-instance v9, Ljava/io/File;

    .line 267
    .line 268
    iget-object v10, v7, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 269
    .line 270
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    const/16 v10, 0x400

    .line 274
    .line 275
    invoke-virtual {v8, v9, v10, v3}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 276
    .line 277
    .line 278
    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    :try_start_4
    invoke-virtual {v8}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_4
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_4 .. :try_end_4} :catch_1

    .line 280
    .line 281
    .line 282
    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMetaData()Landroid/os/Bundle;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    if-eqz v7, :cond_a

    .line 287
    .line 288
    const-string v8, "com.samsung.android.support.targets"

    .line 289
    .line 290
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    if-eqz v7, :cond_a

    .line 295
    .line 296
    const-string/jumbo v8, "ro.product.name"

    .line 297
    .line 298
    .line 299
    const-string v10, ""

    .line 300
    .line 301
    invoke-static {v8, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    const-string v10, ","

    .line 306
    .line 307
    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    array-length v11, v10

    .line 312
    move v12, v3

    .line 313
    :goto_6
    if-ge v12, v11, :cond_9

    .line 314
    .line 315
    aget-object v13, v10, v12

    .line 316
    .line 317
    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 318
    .line 319
    .line 320
    move-result v13

    .line 321
    if-eqz v13, :cond_8

    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_9
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 328
    .line 329
    const-string p1, "Supported targets("

    .line 330
    .line 331
    const-string v0, ") are specified but no matched one with "

    .line 332
    .line 333
    invoke-static {p1, v7, v0, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw p0

    .line 341
    :cond_a
    :goto_7
    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v7

    .line 345
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    add-int/lit8 v5, v5, 0x1

    .line 349
    .line 350
    goto :goto_5

    .line 351
    :catch_1
    move-exception p0

    .line 352
    goto :goto_9

    .line 353
    :catchall_0
    move-exception p0

    .line 354
    if-eqz v8, :cond_b

    .line 355
    .line 356
    :try_start_5
    invoke-virtual {v8}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 357
    .line 358
    .line 359
    goto :goto_8

    .line 360
    :catchall_1
    move-exception p1

    .line 361
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 362
    .line 363
    .line 364
    :cond_b
    :goto_8
    throw p0
    :try_end_6
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_6 .. :try_end_6} :catch_1

    .line 365
    :goto_9
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 366
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    const-string v1, "Failed to parse APEX package "

    .line 370
    .line 371
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    iget-object v1, v7, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string v1, " : "

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-direct {p1, v2, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    .line 393
    .line 394
    throw p1

    .line 395
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    const-string v0, "Session "

    .line 398
    .line 399
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget v0, v6, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 403
    .line 404
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string v0, " has following APEX packages: "

    .line 408
    .line 409
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p0

    .line 419
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    goto :goto_a

    .line 423
    :catchall_2
    move-exception p0

    .line 424
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 425
    .line 426
    .line 427
    throw p0

    .line 428
    :cond_d
    :goto_a
    return-void
.end method
