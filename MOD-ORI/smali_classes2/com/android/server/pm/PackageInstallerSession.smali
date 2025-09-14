.class public final Lcom/android/server/pm/PackageInstallerSession;
.super Landroid/content/pm/IPackageInstallerSession$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_CHILD_SESSION_ARRAY:[I

.field public static final EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

.field public static final sAddedApkFilter:Lcom/android/server/pm/PackageInstallerSession$1;

.field public static final sAddedFilter:Lcom/android/server/pm/PackageInstallerSession$1;

.field public static final sRemovedFilter:Lcom/android/server/pm/PackageInstallerSession$1;


# instance fields
.field public committedMillis:J

.field public final createdMillis:J

.field public final defaultContainerGid:I

.field public final mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mBridges:Ljava/util/ArrayList;

.field public final mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field public final mChecksums:Landroid/util/ArrayMap;

.field public final mChildSessions:Landroid/util/SparseArray;

.field public mClientProgress:F

.field public final mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mContext:Landroid/content/Context;

.field public volatile mDataLoaderFinished:Z

.field public volatile mDestroyed:Z

.field public final mFds:Ljava/util/ArrayList;

.field public final mFiles:Landroid/util/ArraySet;

.field public mFinalMessage:Ljava/lang/String;

.field public mFinalStatus:I

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerCallback:Lcom/android/server/pm/PackageInstallerSession$4;

.field public mHasAppMetadataFile:Z

.field public mHasDeviceAdminReceiver:Z

.field public mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

.field public mIncrementalProgress:F

.field public mInheritedFilesBase:Ljava/io/File;

.field public mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public volatile mInstallerUid:I

.field public mInternalProgress:F

.field public final mLock:Ljava/lang/Object;

.field public final mOriginalInstallerPackageName:Ljava/lang/String;

.field public final mOriginalInstallerUid:I

.field public mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public mPackageName:Ljava/lang/String;

.field public mParentSessionId:I

.field public mPendingAbandonCallback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;

.field public mPermissionsManuallyAccepted:Z

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

.field public mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

.field public mPreapprovalRemoteStatusReceiver:Landroid/content/IntentSender;

.field public final mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mPrepared:Z

.field public mProgress:F

.field public final mProgressLock:Ljava/lang/Object;

.field public mRemoteStatusReceiver:Landroid/content/IntentSender;

.field public mReportedProgress:F

.field public mResolvedBaseFile:Ljava/io/File;

.field public final mResolvedInheritedFiles:Ljava/util/List;

.field public final mResolvedInstructionSets:Ljava/util/List;

.field public final mResolvedNativeLibPaths:Ljava/util/List;

.field public mResolvedStageDir:Ljava/io/File;

.field public final mResolvedStagedFiles:Ljava/util/List;

.field public mSealed:Z

.field public mSessionApplied:Z

.field public mSessionErrorCode:I

.field public mSessionErrorMessage:Ljava/lang/String;

.field public mSessionFailed:Z

.field public final mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

.field public mSessionReady:Z

.field public final mShouldBeSealed:Z

.field public mSigningDetails:Landroid/content/pm/SigningDetails;

.field public final mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

.field public mStageDirInUse:Z

.field public final mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

.field public final mStagingManager:Lcom/android/server/pm/StagingManager;

.field public final mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUnarchivalListeners:Ljava/util/Set;

.field public mUnarchivalStatus:I

.field public final mUnknownSourceInstallAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mUserActionRequired:Ljava/lang/Boolean;

.field public mUserActionRequirement:I

.field public mValidatedTargetSdk:I

.field public mVerificationInProgress:Z

.field public mVerityFoundForApks:Z

.field public mVersionCode:J

.field public final params:Landroid/content/pm/PackageInstaller$SessionParams;

.field public final sessionId:I

.field public final stageCid:Ljava/lang/String;

.field public final stageDir:Ljava/io/File;

.field public updatedMillis:J

.field public final userId:I


# direct methods
.method public static -$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/content/pm/DataLoaderManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/content/pm/DataLoaderManager;

    .line 10
    .line 11
    const/16 v0, -0x14

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/content/pm/DataLoaderManager;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 23
    .line 24
    const-string p1, "Failure to obtain data loader"

    .line 25
    .line 26
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 31
    .line 32
    const-string p1, "Failed to find data loader manager service"

    .line 33
    .line 34
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public static -$$Nest$smsendPendingStreaming(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V
    .locals 8

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p0, "PackageInstallerSession"

    .line 4
    .line 5
    const-string p1, "Missing receiver for pending streaming status."

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    new-instance v3, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v0, "android.content.pm.extra.SESSION_ID"

    .line 17
    .line 18
    invoke-virtual {v3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string p0, "android.content.pm.extra.STATUS"

    .line 22
    .line 23
    const/4 v0, -0x2

    .line 24
    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    .line 32
    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "Staging Image Not Ready ["

    .line 38
    .line 39
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p3, "]"

    .line 46
    .line 47
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const-string p0, "Staging Image Not Ready"

    .line 59
    .line 60
    invoke-virtual {v3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const/4 p3, 0x0

    .line 68
    invoke-virtual {p0, p3}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v6, 0x0

    .line 77
    const/4 v2, 0x0

    .line 78
    const/4 v4, 0x0

    .line 79
    move-object v0, p2

    .line 80
    move-object v1, p1

    .line 81
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :catch_0
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    .line 2
    .line 3
    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Landroid/content/pm/InstallationFile;

    .line 7
    .line 8
    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

    .line 9
    .line 10
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$1;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedApkFilter:Lcom/android/server/pm/PackageInstallerSession$1;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$1;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>(I)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Lcom/android/server/pm/PackageInstallerSession$1;

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$1;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Lcom/android/server/pm/PackageInstallerSession$1;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;Landroid/content/pm/verify/domain/DomainSet;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    move-wide/from16 v5, p13

    move-object/from16 v7, p17

    move-object/from16 v8, p18

    move-object/from16 v9, p19

    move-object/from16 v10, p20

    move-object/from16 v11, p25

    .line 1
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    .line 2
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v12, Ljava/lang/Object;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 4
    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mUnknownSourceInstallAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v12, Ljava/lang/Object;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    const/4 v12, 0x0

    .line 7
    iput v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 8
    iput v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 9
    iput v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    const/high16 v14, -0x40800000    # -1.0f

    .line 10
    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 11
    iput v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    .line 12
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 13
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 14
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    .line 15
    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 18
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mVerificationInProgress:Z

    .line 19
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 20
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 21
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 22
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 23
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    .line 24
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    .line 25
    iput v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 26
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    .line 27
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 28
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 29
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    .line 30
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    .line 31
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalListeners:Ljava/util/Set;

    .line 32
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 33
    iput-boolean v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    const v12, 0x7fffffff

    .line 34
    iput v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mValidatedTargetSdk:I

    const/4 v12, -0x1

    .line 35
    iput v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalStatus:I

    .line 36
    new-instance v12, Lcom/android/server/pm/PackageInstallerSession$4;

    invoke-direct {v12, v0}, Lcom/android/server/pm/PackageInstallerSession$4;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    move-object/from16 v14, p1

    .line 37
    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    move-object/from16 v14, p2

    .line 38
    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 39
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v14, 0x0

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    goto :goto_0

    :cond_0
    move-object v1, v14

    :goto_0
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v1, p4

    .line 41
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    move-object/from16 v1, p5

    .line 42
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 43
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v15, p6

    invoke-direct {v1, v15, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p7

    .line 44
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    move/from16 v1, p8

    .line 45
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    move/from16 v1, p9

    .line 46
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 47
    iput v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 48
    iput v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 49
    invoke-static/range {p11 .. p11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 50
    iget-object v1, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    .line 51
    iput-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 52
    iput-wide v5, v0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 53
    iput-wide v5, v0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    move-wide/from16 v1, p15

    .line 54
    iput-wide v1, v0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    .line 55
    iput-object v7, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 56
    iput-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    move/from16 v1, p24

    .line 57
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    if-eqz v11, :cond_1

    .line 58
    array-length v1, v11

    move v2, v13

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, v11, v2

    .line 59
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move/from16 v1, p26

    .line 60
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-eqz v9, :cond_3

    .line 61
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    array-length v2, v9

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 62
    array-length v1, v9

    move v2, v13

    :goto_2
    if-ge v2, v1, :cond_3

    .line 63
    aget-object v3, v9, v2

    .line 64
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    invoke-direct {v6, v2, v3}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add a duplicate installation file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz v10, :cond_4

    .line 66
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 67
    :cond_4
    iget-boolean v1, v4, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    const/4 v2, 0x1

    if-nez v1, :cond_7

    if-nez v7, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v13

    :goto_3
    if-nez v8, :cond_6

    move v3, v2

    goto :goto_4

    :cond_6
    move v3, v13

    :goto_4
    if-eq v1, v3, :cond_8

    :cond_7
    move/from16 v1, p21

    goto :goto_5

    .line 68
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of stageDir or stageCid stage must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :goto_5
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 70
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v3, p22

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move/from16 v1, p23

    .line 71
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    move/from16 v1, p27

    .line 72
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    move/from16 v1, p29

    .line 73
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    move/from16 v1, p28

    .line 74
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    move/from16 v1, p30

    .line 75
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    if-eqz p31, :cond_9

    move-object/from16 v1, p31

    goto :goto_6

    .line 76
    :cond_9
    const-string v1, ""

    :goto_6
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 77
    iget-boolean v1, v4, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v1, :cond_a

    new-instance v14, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-direct {v14, v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    :cond_a
    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    move-object/from16 v1, p32

    .line 78
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 80
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const-string v3, "com.samsung.android.container"

    const-wide/32 v7, 0x100000

    invoke-interface {v1, v3, v7, v8, v13}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 81
    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->defaultContainerGid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    if-nez v1, :cond_c

    .line 85
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 86
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v3, "com.android.permission.USE_SYSTEM_DATA_LOADERS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_7

    .line 87
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the com.android.permission.USE_SYSTEM_DATA_LOADERS permission to use system data loaders"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DataLoader installation of APEX modules is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_d
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Landroid/os/incremental/IncrementalManager;->isAllowed()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_8

    .line 90
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incremental installation not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_f
    :goto_8
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v5, 0x8000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_12

    .line 92
    iget v3, v4, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-ne v3, v2, :cond_11

    .line 93
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 94
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v1}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v1

    if-ne v1, v2, :cond_10

    .line 95
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9

    .line 96
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Archived installation can only use Streaming System DataLoader."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Archived installation can only be full install."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_9
    return-void

    :catchall_0
    move-exception v0

    .line 98
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    throw v0
.end method

.method public static copyFiles(Ljava/util/List;Ljava/io/File;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    const-string v3, ".tmp"

    .line 8
    .line 9
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v4, v0, v2

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v2, "PackageInstallerSession"

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/io/File;

    .line 46
    .line 47
    const-string v4, "inherit"

    .line 48
    .line 49
    invoke-static {v4, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v6, "Copying "

    .line 56
    .line 57
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v6, " to "

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_3

    .line 83
    .line 84
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const/16 v7, 0x1a4

    .line 89
    .line 90
    invoke-static {v5, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    new-instance v5, Ljava/io/File;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct {v5, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v7, "Renaming "

    .line 105
    .line 106
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_2

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 133
    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v0, "Failed to rename "

    .line 137
    .line 138
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :catch_0
    new-instance p0, Ljava/io/IOException;

    .line 159
    .line 160
    const-string p1, "Failed to chmod "

    .line 161
    .line 162
    invoke-static {v4, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0

    .line 170
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 171
    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v0, "Failed to copy "

    .line 175
    .line 176
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p0

    .line 196
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v1, "Copied "

    .line 199
    .line 200
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string p0, " files into "

    .line 211
    .line 212
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    return-void
.end method

.method public static filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    array-length v1, p1

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    new-instance v4, Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-object v0
.end method

.method public static getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "/."

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 33
    .line 34
    const-string v1, "File: "

    .line 35
    .line 36
    const-string v2, " outside base: "

    .line 37
    .line 38
    invoke-static {v1, p0, v2, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 47
    .line 48
    const-string v0, "Invalid path (was relative) : "

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public static getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ".removed"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v1, "Invalid marker: "

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public static isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public static isEmergencyInstallerEnabled(IILcom/android/server/pm/Computer;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-interface {p2, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p3, :cond_3

    .line 7
    .line 8
    iget-object v1, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v1, p3, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 20
    .line 21
    invoke-static {p0, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    iget-object p3, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 26
    .line 27
    invoke-interface {p3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getEmergencyInstaller()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    if-eqz p3, :cond_3

    .line 32
    .line 33
    invoke-interface {p2, p1}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1, p3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-nez p3, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string p3, "android.permission.INSTALL_PACKAGES"

    .line 45
    .line 46
    invoke-interface {p2, p3, p0}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-eqz p3, :cond_2

    .line 51
    .line 52
    const-string p3, "android.permission.INSTALL_PACKAGE_UPDATES"

    .line 53
    .line 54
    invoke-interface {p2, p3, p0}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    if-eqz p3, :cond_2

    .line 59
    .line 60
    const-string p3, "android.permission.INSTALL_SELF_UPDATES"

    .line 61
    .line 62
    invoke-interface {p2, p3, p0}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    return v0

    .line 69
    :cond_2
    const-string p0, "android.permission.EMERGENCY_INSTALL_PACKAGES"

    .line 70
    .line 71
    invoke-interface {p2, p0, p1}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_3

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    :cond_3
    :goto_0
    return v0
.end method

.method public static isLinkPossible(Ljava/util/List;Ljava/io/File;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/io/File;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-wide v1, v1, Landroid/system/StructStat;->st_dev:J

    .line 35
    .line 36
    iget-wide v3, p1, Landroid/system/StructStat;->st_dev:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    cmp-long v1, v1, v3

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    return v0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "Failed to detect if linking possible: "

    .line 50
    .line 51
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string p1, "PackageInstallerSession"

    .line 62
    .line 63
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return v0
.end method

.method public static isSystemDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

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
    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "android"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public static notifyKnoxSignatureVerificationFailure(IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v0, -0x82

    .line 9
    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/16 v0, -0x76

    .line 13
    .line 14
    if-eq p0, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, -0x7

    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    packed-switch p0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string/jumbo p0, "update"

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    :pswitch_0
    const-string p0, "install"

    .line 29
    .line 30
    :goto_0
    if-eqz p0, :cond_3

    .line 31
    .line 32
    const/16 v0, 0x36

    .line 33
    .line 34
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p1, v0, p0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_3
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch -0x69
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;)Lcom/android/server/pm/PackageInstallerSession;
    .locals 55

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x1

    .line 5
    const/4 v5, 0x0

    .line 6
    const-string/jumbo v6, "sessionId"

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v15

    .line 13
    const-string/jumbo v7, "userId"

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v14

    .line 20
    const-string v7, "installerPackageName"

    .line 21
    .line 22
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    const-string v8, "installerPackageUid"

    .line 27
    .line 28
    const/4 v9, -0x1

    .line 29
    invoke-interface {v0, v5, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v19

    .line 33
    const-string/jumbo v8, "updateOwnererPackageName"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v20

    .line 40
    const-string v8, "installerAttributionTag"

    .line 41
    .line 42
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v21

    .line 46
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    const-wide/16 v10, 0x2000

    .line 51
    .line 52
    invoke-interface {v8, v7, v10, v11, v14}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    const-string v10, "installerUid"

    .line 57
    .line 58
    invoke-interface {v0, v5, v10, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v25

    .line 62
    const-string v8, "installInitiatingPackageName"

    .line 63
    .line 64
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v16

    .line 68
    const-string v8, "installOriginatingPackageName"

    .line 69
    .line 70
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v17

    .line 74
    const-string v8, "createdMillis"

    .line 75
    .line 76
    invoke-interface {v0, v5, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v26

    .line 80
    const-string/jumbo v8, "updatedMillis"

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v5, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 84
    .line 85
    .line 86
    const-string v8, "committedMillis"

    .line 87
    .line 88
    const-wide/16 v10, 0x0

    .line 89
    .line 90
    invoke-interface {v0, v5, v8, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 91
    .line 92
    .line 93
    move-result-wide v28

    .line 94
    const-string/jumbo v8, "sessionStageDir"

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    if-eqz v8, :cond_0

    .line 102
    .line 103
    new-instance v10, Ljava/io/File;

    .line 104
    .line 105
    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    move-object/from16 v30, v10

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    move-object/from16 v30, v5

    .line 112
    .line 113
    :goto_0
    const-string/jumbo v8, "sessionStageCid"

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v31

    .line 120
    const-string/jumbo v8, "prepared"

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v5, v8, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 124
    .line 125
    .line 126
    move-result v32

    .line 127
    const-string v8, "committed"

    .line 128
    .line 129
    invoke-interface {v0, v5, v8, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 130
    .line 131
    .line 132
    move-result v33

    .line 133
    const-string v8, "destroyed"

    .line 134
    .line 135
    invoke-interface {v0, v5, v8, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 136
    .line 137
    .line 138
    move-result v34

    .line 139
    const-string/jumbo v8, "sealed"

    .line 140
    .line 141
    .line 142
    invoke-interface {v0, v5, v8, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 143
    .line 144
    .line 145
    move-result v35

    .line 146
    const-string/jumbo v8, "parentSessionId"

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v5, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 150
    .line 151
    .line 152
    move-result v36

    .line 153
    new-instance v13, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 154
    .line 155
    invoke-direct {v13, v9}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 156
    .line 157
    .line 158
    const-string/jumbo v8, "multiPackage"

    .line 159
    .line 160
    .line 161
    invoke-interface {v0, v5, v8, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    iput-boolean v8, v13, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 166
    .line 167
    const-string/jumbo v8, "stagedSession"

    .line 168
    .line 169
    .line 170
    invoke-interface {v0, v5, v8, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    iput-boolean v8, v13, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 175
    .line 176
    const-string/jumbo v8, "sessionFlags"

    .line 177
    .line 178
    .line 179
    invoke-interface {v0, v5, v8, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    iput v8, v13, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    .line 184
    .line 185
    const-string/jumbo v8, "mode"

    .line 186
    .line 187
    .line 188
    invoke-interface {v0, v5, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    iput v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 193
    .line 194
    const-string v10, "installFlags"

    .line 195
    .line 196
    invoke-interface {v0, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    iput v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 201
    .line 202
    const-string v10, "installLocation"

    .line 203
    .line 204
    invoke-interface {v0, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    iput v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 209
    .line 210
    const-string/jumbo v10, "sizeBytes"

    .line 211
    .line 212
    .line 213
    invoke-interface {v0, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 214
    .line 215
    .line 216
    move-result-wide v10

    .line 217
    iput-wide v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 218
    .line 219
    const-string v10, "appPackageName"

    .line 220
    .line 221
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    iput-object v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 226
    .line 227
    const-string v10, "appIcon"

    .line 228
    .line 229
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 230
    .line 231
    .line 232
    move-result-object v10

    .line 233
    iput-object v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 234
    .line 235
    const-string v10, "appLabel"

    .line 236
    .line 237
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    iput-object v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 242
    .line 243
    const-string/jumbo v10, "originatingUri"

    .line 244
    .line 245
    .line 246
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    .line 247
    .line 248
    .line 249
    move-result-object v10

    .line 250
    iput-object v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 251
    .line 252
    const-string/jumbo v10, "originatingUid"

    .line 253
    .line 254
    .line 255
    invoke-interface {v0, v5, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 256
    .line 257
    .line 258
    move-result v10

    .line 259
    iput v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 260
    .line 261
    const-string/jumbo v10, "referrerUri"

    .line 262
    .line 263
    .line 264
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    iput-object v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 269
    .line 270
    const-string v10, "abiOverride"

    .line 271
    .line 272
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v10

    .line 276
    iput-object v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 277
    .line 278
    const-string/jumbo v10, "volumeUuid"

    .line 279
    .line 280
    .line 281
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    iput-object v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 286
    .line 287
    const-string v10, "installRason"

    .line 288
    .line 289
    invoke-interface {v0, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    move-result v10

    .line 293
    iput v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 294
    .line 295
    const-string/jumbo v10, "packageSource"

    .line 296
    .line 297
    .line 298
    invoke-interface {v0, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result v10

    .line 302
    iput v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 303
    .line 304
    const-string v10, "applicationEnabledSettingPersistent"

    .line 305
    .line 306
    invoke-interface {v0, v5, v10, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 307
    .line 308
    .line 309
    move-result v10

    .line 310
    iput-boolean v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 311
    .line 312
    const-string v10, "isDataLoader"

    .line 313
    .line 314
    invoke-interface {v0, v5, v10, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 315
    .line 316
    .line 317
    move-result v10

    .line 318
    if-eqz v10, :cond_1

    .line 319
    .line 320
    new-instance v10, Landroid/content/pm/DataLoaderParams;

    .line 321
    .line 322
    const-string v11, "dataLoaderType"

    .line 323
    .line 324
    invoke-interface {v0, v5, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    move-result v11

    .line 328
    new-instance v12, Landroid/content/ComponentName;

    .line 329
    .line 330
    const-string v9, "dataLoaderPackageName"

    .line 331
    .line 332
    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v9

    .line 336
    const-string v1, "dataLoaderClassName"

    .line 337
    .line 338
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-direct {v12, v9, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const-string v1, "dataLoaderArguments"

    .line 346
    .line 347
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-direct {v10, v11, v12, v1}, Landroid/content/pm/DataLoaderParams;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iput-object v10, v13, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 355
    .line 356
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 357
    .line 358
    const-string v9, "app_icon."

    .line 359
    .line 360
    const-string v10, ".png"

    .line 361
    .line 362
    invoke-static {v15, v9, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    move-object/from16 v10, p6

    .line 367
    .line 368
    invoke-direct {v1, v10, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 372
    .line 373
    .line 374
    move-result v9

    .line 375
    if-eqz v9, :cond_2

    .line 376
    .line 377
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v9

    .line 381
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 382
    .line 383
    .line 384
    move-result-object v9

    .line 385
    iput-object v9, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 388
    .line 389
    .line 390
    move-result-wide v9

    .line 391
    iput-wide v9, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 392
    .line 393
    :cond_2
    const-string v1, "isReady"

    .line 394
    .line 395
    invoke-interface {v0, v5, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    const-string v9, "isFailed"

    .line 400
    .line 401
    invoke-interface {v0, v5, v9, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 402
    .line 403
    .line 404
    move-result v37

    .line 405
    const-string v9, "isApplied"

    .line 406
    .line 407
    invoke-interface {v0, v5, v9, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 408
    .line 409
    .line 410
    move-result v38

    .line 411
    const-string v9, "errorCode"

    .line 412
    .line 413
    invoke-interface {v0, v5, v9, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 414
    .line 415
    .line 416
    move-result v39

    .line 417
    const-string v9, "errorMessage"

    .line 418
    .line 419
    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v40

    .line 423
    if-nez v1, :cond_3

    .line 424
    .line 425
    if-nez v38, :cond_3

    .line 426
    .line 427
    if-eqz v37, :cond_6

    .line 428
    .line 429
    :cond_3
    if-eqz v1, :cond_4

    .line 430
    .line 431
    if-nez v38, :cond_4

    .line 432
    .line 433
    if-eqz v37, :cond_6

    .line 434
    .line 435
    :cond_4
    if-nez v1, :cond_5

    .line 436
    .line 437
    if-eqz v38, :cond_5

    .line 438
    .line 439
    if-eqz v37, :cond_6

    .line 440
    .line 441
    :cond_5
    if-nez v1, :cond_1e

    .line 442
    .line 443
    if-nez v38, :cond_1e

    .line 444
    .line 445
    if-eqz v37, :cond_1e

    .line 446
    .line 447
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    .line 448
    .line 449
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .line 451
    .line 452
    new-instance v10, Landroid/util/ArraySet;

    .line 453
    .line 454
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 455
    .line 456
    .line 457
    new-instance v11, Landroid/util/ArraySet;

    .line 458
    .line 459
    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 460
    .line 461
    .line 462
    new-instance v12, Ljava/util/ArrayList;

    .line 463
    .line 464
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .line 466
    .line 467
    new-instance v3, Landroid/util/IntArray;

    .line 468
    .line 469
    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    .line 470
    .line 471
    .line 472
    new-instance v5, Ljava/util/ArrayList;

    .line 473
    .line 474
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .line 476
    .line 477
    new-instance v2, Landroid/util/ArrayMap;

    .line 478
    .line 479
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 480
    .line 481
    .line 482
    new-instance v4, Landroid/util/ArrayMap;

    .line 483
    .line 484
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 485
    .line 486
    .line 487
    move/from16 v41, v14

    .line 488
    .line 489
    new-instance v14, Landroid/util/ArraySet;

    .line 490
    .line 491
    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 492
    .line 493
    .line 494
    move/from16 p6, v1

    .line 495
    .line 496
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    move-object/from16 v43, v7

    .line 501
    .line 502
    move/from16 v42, v15

    .line 503
    .line 504
    const/4 v15, 0x3

    .line 505
    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 506
    .line 507
    .line 508
    move-result v7

    .line 509
    move/from16 v44, v15

    .line 510
    .line 511
    const/4 v15, 0x1

    .line 512
    if-eq v7, v15, :cond_7

    .line 513
    .line 514
    const/4 v15, 0x3

    .line 515
    if-ne v7, v15, :cond_8

    .line 516
    .line 517
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 518
    .line 519
    .line 520
    move-result v15

    .line 521
    if-le v15, v1, :cond_7

    .line 522
    .line 523
    const/4 v15, 0x3

    .line 524
    goto :goto_2

    .line 525
    :cond_7
    move-object/from16 v23, v2

    .line 526
    .line 527
    move-object/from16 v46, v13

    .line 528
    .line 529
    move-object v2, v14

    .line 530
    const/4 v1, 0x0

    .line 531
    goto/16 :goto_e

    .line 532
    .line 533
    :cond_8
    :goto_2
    if-eq v7, v15, :cond_9

    .line 534
    .line 535
    const/4 v15, 0x4

    .line 536
    if-ne v7, v15, :cond_a

    .line 537
    .line 538
    :cond_9
    move/from16 v45, v1

    .line 539
    .line 540
    move-object/from16 v23, v2

    .line 541
    .line 542
    move-object/from16 v47, v8

    .line 543
    .line 544
    move-object/from16 v46, v13

    .line 545
    .line 546
    move-object v2, v14

    .line 547
    const/4 v1, 0x0

    .line 548
    const/4 v7, -0x1

    .line 549
    goto/16 :goto_d

    .line 550
    .line 551
    :cond_a
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v7

    .line 555
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    const-string/jumbo v15, "signature"

    .line 559
    .line 560
    .line 561
    move/from16 v45, v1

    .line 562
    .line 563
    const-string/jumbo v1, "name"

    .line 564
    .line 565
    .line 566
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 567
    .line 568
    .line 569
    move-result v46

    .line 570
    sparse-switch v46, :sswitch_data_0

    .line 571
    .line 572
    .line 573
    move-object/from16 v46, v13

    .line 574
    .line 575
    :goto_3
    const/4 v7, -0x1

    .line 576
    goto/16 :goto_5

    .line 577
    .line 578
    :sswitch_0
    move-object/from16 v46, v13

    .line 579
    .line 580
    const-string v13, "deny-permission"

    .line 581
    .line 582
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v7

    .line 586
    if-nez v7, :cond_b

    .line 587
    .line 588
    goto/16 :goto_4

    .line 589
    .line 590
    :cond_b
    const/16 v7, 0x9

    .line 591
    .line 592
    goto/16 :goto_5

    .line 593
    .line 594
    :sswitch_1
    move-object/from16 v46, v13

    .line 595
    .line 596
    const-string v13, "grant-permission"

    .line 597
    .line 598
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v7

    .line 602
    if-nez v7, :cond_c

    .line 603
    .line 604
    goto/16 :goto_4

    .line 605
    .line 606
    :cond_c
    const/16 v7, 0x8

    .line 607
    .line 608
    goto/16 :goto_5

    .line 609
    .line 610
    :sswitch_2
    move-object/from16 v46, v13

    .line 611
    .line 612
    const-string v13, "auto-revoke-permissions-mode"

    .line 613
    .line 614
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v7

    .line 618
    if-nez v7, :cond_d

    .line 619
    .line 620
    goto/16 :goto_4

    .line 621
    .line 622
    :cond_d
    const/4 v7, 0x7

    .line 623
    goto/16 :goto_5

    .line 624
    .line 625
    :sswitch_3
    move-object/from16 v46, v13

    .line 626
    .line 627
    const-string/jumbo v13, "sessionChecksum"

    .line 628
    .line 629
    .line 630
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v7

    .line 634
    if-nez v7, :cond_e

    .line 635
    .line 636
    goto :goto_4

    .line 637
    :cond_e
    const/4 v7, 0x6

    .line 638
    goto :goto_5

    .line 639
    :sswitch_4
    move-object/from16 v46, v13

    .line 640
    .line 641
    const-string/jumbo v13, "whitelisted-restricted-permission"

    .line 642
    .line 643
    .line 644
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v7

    .line 648
    if-nez v7, :cond_f

    .line 649
    .line 650
    goto :goto_4

    .line 651
    :cond_f
    const/4 v7, 0x5

    .line 652
    goto :goto_5

    .line 653
    :sswitch_5
    move-object/from16 v46, v13

    .line 654
    .line 655
    const-string/jumbo v13, "sessionFile"

    .line 656
    .line 657
    .line 658
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v7

    .line 662
    if-nez v7, :cond_10

    .line 663
    .line 664
    goto :goto_4

    .line 665
    :cond_10
    const/4 v7, 0x4

    .line 666
    goto :goto_5

    .line 667
    :sswitch_6
    move-object/from16 v46, v13

    .line 668
    .line 669
    const-string/jumbo v13, "preVerifiedDomains"

    .line 670
    .line 671
    .line 672
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    move-result v7

    .line 676
    if-nez v7, :cond_11

    .line 677
    .line 678
    goto :goto_4

    .line 679
    :cond_11
    const/4 v7, 0x3

    .line 680
    goto :goto_5

    .line 681
    :sswitch_7
    move-object/from16 v46, v13

    .line 682
    .line 683
    const-string v13, "granted-runtime-permission"

    .line 684
    .line 685
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move-result v7

    .line 689
    if-nez v7, :cond_12

    .line 690
    .line 691
    goto :goto_4

    .line 692
    :cond_12
    const/4 v7, 0x2

    .line 693
    goto :goto_5

    .line 694
    :sswitch_8
    move-object/from16 v46, v13

    .line 695
    .line 696
    const-string/jumbo v13, "sessionChecksumSignature"

    .line 697
    .line 698
    .line 699
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v7

    .line 703
    if-nez v7, :cond_13

    .line 704
    .line 705
    goto :goto_4

    .line 706
    :cond_13
    const/4 v7, 0x1

    .line 707
    goto :goto_5

    .line 708
    :sswitch_9
    move-object/from16 v46, v13

    .line 709
    .line 710
    const-string v13, "childSession"

    .line 711
    .line 712
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result v7

    .line 716
    if-nez v7, :cond_14

    .line 717
    .line 718
    :goto_4
    goto/16 :goto_3

    .line 719
    .line 720
    :cond_14
    const/4 v7, 0x0

    .line 721
    :goto_5
    packed-switch v7, :pswitch_data_0

    .line 722
    .line 723
    .line 724
    :goto_6
    move-object/from16 v23, v2

    .line 725
    .line 726
    move-object/from16 v47, v8

    .line 727
    .line 728
    :goto_7
    move-object v2, v14

    .line 729
    :goto_8
    const/4 v1, 0x0

    .line 730
    const/4 v7, -0x1

    .line 731
    goto/16 :goto_a

    .line 732
    .line 733
    :pswitch_0
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    goto :goto_6

    .line 741
    :pswitch_1
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    invoke-virtual {v10, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    goto :goto_6

    .line 749
    :pswitch_2
    const/4 v7, 0x0

    .line 750
    invoke-interface {v0, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    move v15, v1

    .line 755
    move-object/from16 v23, v2

    .line 756
    .line 757
    move-object v1, v7

    .line 758
    move-object/from16 v47, v8

    .line 759
    .line 760
    move-object v2, v14

    .line 761
    const/4 v7, -0x1

    .line 762
    goto/16 :goto_b

    .line 763
    .line 764
    :pswitch_3
    const/4 v7, 0x0

    .line 765
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    new-instance v13, Landroid/content/pm/Checksum;

    .line 770
    .line 771
    const-string v15, "checksumKind"

    .line 772
    .line 773
    move-object/from16 v47, v8

    .line 774
    .line 775
    const/4 v8, 0x0

    .line 776
    invoke-interface {v0, v7, v15, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 777
    .line 778
    .line 779
    move-result v15

    .line 780
    const-string v7, "checksumValue"

    .line 781
    .line 782
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    .line 783
    .line 784
    .line 785
    move-result-object v7

    .line 786
    invoke-direct {v13, v15, v7}, Landroid/content/pm/Checksum;-><init>(I[B)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v7

    .line 793
    check-cast v7, Ljava/util/List;

    .line 794
    .line 795
    if-nez v7, :cond_15

    .line 796
    .line 797
    new-instance v7, Ljava/util/ArrayList;

    .line 798
    .line 799
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v2, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    :cond_15
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    :goto_9
    move-object/from16 v23, v2

    .line 809
    .line 810
    goto :goto_7

    .line 811
    :pswitch_4
    move-object/from16 v47, v8

    .line 812
    .line 813
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v1

    .line 817
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    goto :goto_9

    .line 821
    :pswitch_5
    move-object/from16 v47, v8

    .line 822
    .line 823
    new-instance v7, Landroid/content/pm/InstallationFile;

    .line 824
    .line 825
    const-string v8, "location"

    .line 826
    .line 827
    move-object/from16 v23, v2

    .line 828
    .line 829
    const/4 v2, 0x0

    .line 830
    const/4 v13, 0x0

    .line 831
    invoke-interface {v0, v2, v8, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 832
    .line 833
    .line 834
    move-result v49

    .line 835
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v50

    .line 839
    const-string v1, "lengthBytes"

    .line 840
    .line 841
    move-object v8, v14

    .line 842
    const-wide/16 v13, -0x1

    .line 843
    .line 844
    invoke-interface {v0, v2, v1, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 845
    .line 846
    .line 847
    move-result-wide v51

    .line 848
    const-string/jumbo v1, "metadata"

    .line 849
    .line 850
    .line 851
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    .line 852
    .line 853
    .line 854
    move-result-object v53

    .line 855
    invoke-static {v0, v15}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    .line 856
    .line 857
    .line 858
    move-result-object v54

    .line 859
    move-object/from16 v48, v7

    .line 860
    .line 861
    invoke-direct/range {v48 .. v54}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    move-object v2, v8

    .line 868
    goto/16 :goto_8

    .line 869
    .line 870
    :pswitch_6
    move-object/from16 v23, v2

    .line 871
    .line 872
    move-object/from16 v47, v8

    .line 873
    .line 874
    move-object v8, v14

    .line 875
    const-string v1, "domain"

    .line 876
    .line 877
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    move-object v2, v8

    .line 882
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 883
    .line 884
    .line 885
    goto/16 :goto_8

    .line 886
    .line 887
    :pswitch_7
    move-object/from16 v23, v2

    .line 888
    .line 889
    move-object/from16 v47, v8

    .line 890
    .line 891
    move-object v2, v14

    .line 892
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    goto/16 :goto_8

    .line 900
    .line 901
    :pswitch_8
    move-object/from16 v23, v2

    .line 902
    .line 903
    move-object/from16 v47, v8

    .line 904
    .line 905
    move-object v2, v14

    .line 906
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v1

    .line 910
    invoke-static {v0, v15}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    .line 911
    .line 912
    .line 913
    move-result-object v7

    .line 914
    invoke-virtual {v4, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    goto/16 :goto_8

    .line 918
    .line 919
    :pswitch_9
    move-object/from16 v23, v2

    .line 920
    .line 921
    move-object/from16 v47, v8

    .line 922
    .line 923
    move-object v2, v14

    .line 924
    const/4 v1, 0x0

    .line 925
    const/4 v7, -0x1

    .line 926
    invoke-interface {v0, v1, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 927
    .line 928
    .line 929
    move-result v8

    .line 930
    invoke-virtual {v3, v8}, Landroid/util/IntArray;->add(I)V

    .line 931
    .line 932
    .line 933
    :goto_a
    move/from16 v15, v44

    .line 934
    .line 935
    :goto_b
    move-object v14, v2

    .line 936
    move-object/from16 v2, v23

    .line 937
    .line 938
    :goto_c
    move/from16 v1, v45

    .line 939
    .line 940
    move-object/from16 v13, v46

    .line 941
    .line 942
    move-object/from16 v8, v47

    .line 943
    .line 944
    goto/16 :goto_1

    .line 945
    .line 946
    :goto_d
    move-object v14, v2

    .line 947
    move-object/from16 v2, v23

    .line 948
    .line 949
    move/from16 v15, v44

    .line 950
    .line 951
    goto :goto_c

    .line 952
    :goto_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 953
    .line 954
    .line 955
    move-result v0

    .line 956
    if-lez v0, :cond_16

    .line 957
    .line 958
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 959
    .line 960
    .line 961
    move-result-object v0

    .line 962
    move-object/from16 v6, v46

    .line 963
    .line 964
    invoke-virtual {v6, v9, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setPermissionStates(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 965
    .line 966
    .line 967
    goto :goto_f

    .line 968
    :cond_16
    move-object/from16 v6, v46

    .line 969
    .line 970
    invoke-virtual {v6, v10, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setPermissionStates(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 971
    .line 972
    .line 973
    :goto_f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 974
    .line 975
    .line 976
    move-result v0

    .line 977
    if-lez v0, :cond_17

    .line 978
    .line 979
    iput-object v12, v6, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 980
    .line 981
    :cond_17
    move/from16 v15, v44

    .line 982
    .line 983
    iput v15, v6, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 984
    .line 985
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    .line 986
    .line 987
    .line 988
    move-result v0

    .line 989
    if-lez v0, :cond_18

    .line 990
    .line 991
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    .line 992
    .line 993
    .line 994
    move-result v0

    .line 995
    new-array v0, v0, [I

    .line 996
    .line 997
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    .line 998
    .line 999
    .line 1000
    move-result v7

    .line 1001
    const/4 v8, 0x0

    .line 1002
    :goto_10
    if-ge v8, v7, :cond_19

    .line 1003
    .line 1004
    invoke-virtual {v3, v8}, Landroid/util/IntArray;->get(I)I

    .line 1005
    .line 1006
    .line 1007
    move-result v9

    .line 1008
    aput v9, v0, v8

    .line 1009
    .line 1010
    const/4 v9, 0x1

    .line 1011
    add-int/2addr v8, v9

    .line 1012
    goto :goto_10

    .line 1013
    :cond_18
    sget-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 1014
    .line 1015
    :cond_19
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1016
    .line 1017
    .line 1018
    move-result v3

    .line 1019
    if-nez v3, :cond_1a

    .line 1020
    .line 1021
    sget-object v3, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

    .line 1022
    .line 1023
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v3

    .line 1027
    check-cast v3, [Landroid/content/pm/InstallationFile;

    .line 1028
    .line 1029
    goto :goto_11

    .line 1030
    :cond_1a
    move-object v3, v1

    .line 1031
    :goto_11
    invoke-virtual/range {v23 .. v23}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 1032
    .line 1033
    .line 1034
    move-result v5

    .line 1035
    if-nez v5, :cond_1b

    .line 1036
    .line 1037
    new-instance v5, Landroid/util/ArrayMap;

    .line 1038
    .line 1039
    invoke-virtual/range {v23 .. v23}, Landroid/util/ArrayMap;->size()I

    .line 1040
    .line 1041
    .line 1042
    move-result v7

    .line 1043
    invoke-direct {v5, v7}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual/range {v23 .. v23}, Landroid/util/ArrayMap;->size()I

    .line 1047
    .line 1048
    .line 1049
    move-result v7

    .line 1050
    const/4 v8, 0x0

    .line 1051
    :goto_12
    if-ge v8, v7, :cond_1c

    .line 1052
    .line 1053
    move-object/from16 v9, v23

    .line 1054
    .line 1055
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v10

    .line 1059
    check-cast v10, Ljava/lang/String;

    .line 1060
    .line 1061
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v11

    .line 1065
    check-cast v11, Ljava/util/List;

    .line 1066
    .line 1067
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v12

    .line 1071
    check-cast v12, [B

    .line 1072
    .line 1073
    new-instance v13, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    .line 1074
    .line 1075
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 1076
    .line 1077
    .line 1078
    move-result v14

    .line 1079
    new-array v14, v14, [Landroid/content/pm/Checksum;

    .line 1080
    .line 1081
    invoke-interface {v11, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v11

    .line 1085
    check-cast v11, [Landroid/content/pm/Checksum;

    .line 1086
    .line 1087
    invoke-direct {v13, v11, v12}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;-><init>([Landroid/content/pm/Checksum;[B)V

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v5, v10, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    const/4 v10, 0x1

    .line 1094
    add-int/2addr v8, v10

    .line 1095
    goto :goto_12

    .line 1096
    :cond_1b
    move-object v5, v1

    .line 1097
    :cond_1c
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 1098
    .line 1099
    .line 1100
    move-result v4

    .line 1101
    if-eqz v4, :cond_1d

    .line 1102
    .line 1103
    goto :goto_13

    .line 1104
    :cond_1d
    new-instance v1, Landroid/content/pm/verify/domain/DomainSet;

    .line 1105
    .line 1106
    invoke-direct {v1, v2}, Landroid/content/pm/verify/domain/DomainSet;-><init>(Ljava/util/Set;)V

    .line 1107
    .line 1108
    .line 1109
    :goto_13
    iget v2, v6, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 1110
    .line 1111
    const/16 v23, 0x0

    .line 1112
    .line 1113
    const/16 v24, 0x0

    .line 1114
    .line 1115
    move-object/from16 v18, v43

    .line 1116
    .line 1117
    move/from16 v22, v2

    .line 1118
    .line 1119
    invoke-static/range {v16 .. v24}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v18

    .line 1123
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 1124
    .line 1125
    move-object v7, v2

    .line 1126
    move-object/from16 v8, p1

    .line 1127
    .line 1128
    move-object/from16 v9, p2

    .line 1129
    .line 1130
    move-object/from16 v10, p3

    .line 1131
    .line 1132
    move-object/from16 v11, p7

    .line 1133
    .line 1134
    move-object/from16 v12, p8

    .line 1135
    .line 1136
    move-object v4, v6

    .line 1137
    move-object/from16 v13, p4

    .line 1138
    .line 1139
    move/from16 v6, v41

    .line 1140
    .line 1141
    move-object/from16 v14, p5

    .line 1142
    .line 1143
    move/from16 v15, v42

    .line 1144
    .line 1145
    move/from16 v16, v6

    .line 1146
    .line 1147
    move/from16 v17, v25

    .line 1148
    .line 1149
    move-object/from16 v19, v4

    .line 1150
    .line 1151
    move-wide/from16 v20, v26

    .line 1152
    .line 1153
    move-wide/from16 v22, v28

    .line 1154
    .line 1155
    move-object/from16 v24, v30

    .line 1156
    .line 1157
    move-object/from16 v25, v31

    .line 1158
    .line 1159
    move-object/from16 v26, v3

    .line 1160
    .line 1161
    move-object/from16 v27, v5

    .line 1162
    .line 1163
    move/from16 v28, v32

    .line 1164
    .line 1165
    move/from16 v29, v33

    .line 1166
    .line 1167
    move/from16 v30, v34

    .line 1168
    .line 1169
    move/from16 v31, v35

    .line 1170
    .line 1171
    move-object/from16 v32, v0

    .line 1172
    .line 1173
    move/from16 v33, v36

    .line 1174
    .line 1175
    move/from16 v34, p6

    .line 1176
    .line 1177
    move/from16 v35, v37

    .line 1178
    .line 1179
    move/from16 v36, v38

    .line 1180
    .line 1181
    move/from16 v37, v39

    .line 1182
    .line 1183
    move-object/from16 v38, v40

    .line 1184
    .line 1185
    move-object/from16 v39, v1

    .line 1186
    .line 1187
    invoke-direct/range {v7 .. v39}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;Landroid/content/pm/verify/domain/DomainSet;)V

    .line 1188
    .line 1189
    .line 1190
    return-object v2

    .line 1191
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1192
    .line 1193
    const-string v1, "Can\'t restore staged session with invalid state."

    .line 1194
    .line 1195
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1196
    .line 1197
    .line 1198
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x5ce79226 -> :sswitch_9
        -0x51290c41 -> :sswitch_8
        -0x242664ca -> :sswitch_7
        -0x29c68dc -> :sswitch_6
        -0x15d4ece -> :sswitch_5
        0x96d971a -> :sswitch_4
        0x263d4cf9 -> :sswitch_3
        0x5b2b4b95 -> :sswitch_2
        0x6093e720 -> :sswitch_1
        0x62d33430 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static resizeContainerForSd(JLjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {p2, v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->unMountSdDir(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->resizeSdDir(JLjava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/16 p1, 0x3e8

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-static {p2, p0, p1, v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 36
    .line 37
    const-string p1, "Failed to find mounted "

    .line 38
    .line 39
    invoke-static {p1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/16 p2, -0x12

    .line 44
    .line 45
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public static unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/content/pm/SigningDetails;
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, p0, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/content/pm/SigningDetails;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 24
    .line 25
    const-string v1, "Couldn\'t obtain signatures from APK : "

    .line 26
    .line 27
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v1, -0x2

    .line 32
    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method


# virtual methods
.method public final abandon()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "abandon"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootOrSystem()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInTerminalState()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 28
    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    throw p0
.end method

.method public final acquireTransactionLock()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string v0, "Concurrent access not supported"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final addChildSessionId(I)V
    .locals 7

    .line 1
    const-string v0, "Unable to add child session "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 4
    .line 5
    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 6
    .line 7
    if-eqz v1, :cond_e

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    .line 10
    .line 11
    check-cast v1, Lcom/android/server/pm/PackageInstallerService;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_d

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 20
    .line 21
    iget-boolean v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 22
    .line 23
    if-nez v3, :cond_c

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 26
    .line 27
    iget-boolean v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 28
    .line 29
    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 30
    .line 31
    if-ne v4, v2, :cond_b

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ne v2, v3, :cond_a

    .line 44
    .line 45
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/4 v3, 0x1

    .line 56
    const/4 v4, 0x0

    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move v2, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    move v2, v3

    .line 69
    :goto_1
    new-instance v5, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    invoke-direct {v5, v6}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-nez v5, :cond_3

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    move v5, v4

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    :goto_2
    move v5, v3

    .line 91
    :goto_3
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 92
    .line 93
    iget-boolean v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 94
    .line 95
    if-nez v6, :cond_5

    .line 96
    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    if-nez v5, :cond_4

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    const-string p1, "Mix of APK and APEX is not supported for non-staged multi-package session"

    .line 105
    .line 106
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_5
    :goto_4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    .line 114
    .line 115
    .line 116
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 117
    .line 118
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 119
    .line 120
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 121
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_6

    .line 126
    .line 127
    iget v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 128
    .line 129
    if-ne v6, v2, :cond_7

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :catchall_0
    move-exception p1

    .line 133
    goto :goto_8

    .line 134
    :cond_6
    :goto_5
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_7

    .line 141
    .line 142
    iget-boolean v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 143
    .line 144
    if-nez v2, :cond_7

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_7
    move v3, v4

    .line 148
    :goto_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    if-eqz v3, :cond_9

    .line 150
    .line 151
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 152
    .line 153
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 154
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 155
    .line 156
    .line 157
    const-string v2, "addChildSessionId"

    .line 158
    .line 159
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 163
    .line 164
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-ltz v2, :cond_8

    .line 169
    .line 170
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :catchall_1
    move-exception p1

    .line 179
    goto :goto_7

    .line 180
    :cond_8
    :try_start_4
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 183
    .line 184
    .line 185
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 186
    .line 187
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 191
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :goto_7
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 199
    :try_start_6
    throw p1

    .line 200
    :catchall_2
    move-exception p1

    .line 201
    goto :goto_9

    .line 202
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 203
    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string p1, " as it is in an invalid state."

    .line 213
    .line 214
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 225
    :goto_8
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 226
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 227
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 231
    .line 232
    .line 233
    throw p1

    .line 234
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 235
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v2, "Multipackage Inconsistency: session "

    .line 239
    .line 240
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v1, " and session "

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 254
    .line 255
    const-string v1, " have inconsistent rollback settings"

    .line 256
    .line 257
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p1

    .line 265
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 266
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v2, "Multipackage Inconsistency: session "

    .line 270
    .line 271
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v1, " and session "

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 285
    .line 286
    const-string v1, " have inconsistent staged settings"

    .line 287
    .line 288
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw p1

    .line 296
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 297
    .line 298
    const-string v0, "Multi-session "

    .line 299
    .line 300
    const-string v1, " can\'t be a child."

    .line 301
    .line 302
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw p0

    .line 310
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 311
    .line 312
    const-string v0, "Unable to add child session "

    .line 313
    .line 314
    const-string v1, " as it does not exist."

    .line 315
    .line 316
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw p0

    .line 324
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 325
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    const-string v1, "Single-session "

    .line 329
    .line 330
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 334
    .line 335
    const-string v1, " can\'t have child."

    .line 336
    .line 337
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw p1
.end method

.method public final addClientProgress(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 8
    .line 9
    add-float/2addr v1, p1

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final addFile(ILjava/lang/String;J[B[B)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p2

    .line 3
    .line 4
    const-string v8, "File already added: "

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->addFile_enforcePermission()V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_5

    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 26
    .line 27
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/content/pm/DataLoaderParams;->getType()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string v1, "Non-incremental installation only supports /data/app placement: "

    .line 42
    .line 43
    invoke-static {v1, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    :goto_0
    if-eqz p5, :cond_4

    .line 52
    .line 53
    invoke-static/range {p2 .. p2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter v9

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 63
    .line 64
    .line 65
    const-string v1, "addFile"

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    .line 71
    .line 72
    new-instance v11, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    .line 73
    .line 74
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    new-instance v13, Landroid/content/pm/InstallationFile;

    .line 79
    .line 80
    move-object v0, v13

    .line 81
    move v1, p1

    .line 82
    move-object/from16 v2, p2

    .line 83
    .line 84
    move-wide/from16 v3, p3

    .line 85
    .line 86
    move-object/from16 v5, p5

    .line 87
    .line 88
    move-object/from16 v6, p6

    .line 89
    .line 90
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v11, v12, v13}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    monitor-exit v9

    .line 103
    return-void

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw v0

    .line 126
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    const-string v1, "Invalid name: "

    .line 129
    .line 130
    invoke-static {v1, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    const-string v1, "DataLoader installation requires valid metadata: "

    .line 141
    .line 142
    invoke-static {v1, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 151
    .line 152
    const-string v1, "Cannot add files to non-data loader installation session."

    .line 153
    .line 154
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0
.end method

.method public final assertCallerIsOwnerOrRoot()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 8
    .line 9
    if-ne v0, p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 13
    .line 14
    const-string v1, "Session does not belong to uid "

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public final assertCallerIsOwnerOrRootOrSystem()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 8
    .line 9
    if-eq v0, p0, :cond_1

    .line 10
    .line 11
    const/16 p0, 0x3e8

    .line 12
    .line 13
    if-ne v0, p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 17
    .line 18
    const-string v1, "Session does not belong to uid "

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final assertCallerIsOwnerRootOrVerifier()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 30
    .line 31
    const-string v1, "Session does not belong to uid "

    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public final assertCanWrite(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    const-string v1, "assertCanWrite"

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const/16 p1, 0x3e8

    .line 30
    .line 31
    if-eq p0, p1, :cond_1

    .line 32
    .line 33
    const/16 p1, 0x7d0

    .line 34
    .line 35
    if-ne p0, p1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 39
    .line 40
    const-string p1, "Reverse mode only supported from shell or system"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    :goto_0
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0

    .line 50
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p1, "Cannot write regular files in a data loader installation session."

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public final assertNoWriteFileTransfersOpenLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "Files still open"

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/os/RevocableFileDescriptor;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/RevocableFileDescriptor;->isRevoked()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 29
    .line 30
    invoke-direct {p0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/os/FileBridge;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/os/FileBridge;->isClosed()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 60
    .line 61
    invoke-direct {p0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_3
    return-void
.end method

.method public final assertNotChild(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

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
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, " can\'t be called on a child session, id="

    .line 11
    .line 12
    invoke-static {p1, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " parentId="

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public final assertNotLocked(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, " is holding mLock"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final assertPackageConsistentLocked(Ljava/lang/String;JLjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, " inconsistent with "

    .line 8
    .line 9
    const/4 v2, -0x2

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 13
    .line 14
    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    .line 26
    .line 27
    const-string p3, " specified package "

    .line 28
    .line 29
    invoke-static {p1, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 34
    .line 35
    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1, p0, v1, p4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {p2, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p2

    .line 45
    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 46
    .line 47
    cmp-long p4, v3, p2

    .line 48
    .line 49
    if-nez p4, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    new-instance p4, Lcom/android/server/pm/PackageManagerException;

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, " version code "

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-wide p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 74
    .line 75
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-direct {p4, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p4

    .line 86
    :cond_3
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    .line 87
    .line 88
    new-instance p3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, " package "

    .line 97
    .line 98
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-direct {p2, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p2
.end method

.method public final assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 14
    .line 15
    const-string v0, " not allowed after commit"

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 11
    .line 12
    const-string v0, " not allowed after destruction"

    .line 13
    .line 14
    invoke-static {p1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, " before prepared"

    .line 25
    .line 26
    invoke-static {p1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 10
    .line 11
    const-string v0, " not allowed after sealing"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public final calculateInstalledSize()J
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v1, v2, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_6

    .line 28
    .line 29
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    move-object v5, v1

    .line 34
    check-cast v5, Landroid/content/pm/parsing/ApkLite;

    .line 35
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 42
    .line 43
    check-cast v2, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-wide/16 v3, 0x0

    .line 50
    .line 51
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Ljava/io/File;

    .line 62
    .line 63
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 64
    .line 65
    invoke-virtual {v7, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v6}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_1

    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 87
    .line 88
    .line 89
    move-result-wide v6

    .line 90
    add-long/2addr v6, v3

    .line 91
    move-wide v3, v6

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 94
    .line 95
    check-cast v2, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    :goto_1
    move-wide v15, v3

    .line 102
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Ljava/io/File;

    .line 113
    .line 114
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 115
    .line 116
    invoke-virtual {v4, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_3

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    invoke-static {v3}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_4

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 138
    .line 139
    .line 140
    move-result-wide v3

    .line 141
    add-long/2addr v3, v15

    .line 142
    goto :goto_1

    .line 143
    :cond_5
    new-instance v14, Landroid/content/pm/parsing/PackageLite;

    .line 144
    .line 145
    invoke-virtual {v5}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    new-array v2, v2, [Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    move-object v10, v1

    .line 160
    check-cast v10, [Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v5}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    const/4 v13, 0x0

    .line 167
    const/4 v1, 0x0

    .line 168
    const/4 v3, 0x0

    .line 169
    const/4 v6, 0x0

    .line 170
    const/4 v7, 0x0

    .line 171
    const/4 v8, 0x0

    .line 172
    const/4 v9, 0x0

    .line 173
    const/4 v11, 0x0

    .line 174
    move-object v2, v14

    .line 175
    move-wide/from16 v17, v15

    .line 176
    .line 177
    move-object v15, v14

    .line 178
    move-object v14, v1

    .line 179
    invoke-direct/range {v2 .. v14}, Landroid/content/pm/parsing/PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V

    .line 180
    .line 181
    .line 182
    :try_start_0
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 183
    .line 184
    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 185
    .line 186
    invoke-static {v15, v0}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    add-long v0, v0, v17

    .line 191
    .line 192
    return-wide v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    .line 195
    .line 196
    const/4 v2, -0x2

    .line 197
    const-string v3, "Failed to calculate install size"

    .line 198
    .line 199
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .line 201
    .line 202
    throw v1

    .line 203
    :cond_6
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 204
    .line 205
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    throw v0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->deactivate()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p0
.end method

.method public final commit(Landroid/content/IntentSender;Z)V
    .locals 8

    .line 1
    const-string v0, "commit"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/32 v0, 0xe578ada

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v0, v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/IntentSender;->isImmutable()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string p1, "The commit() status receiver should come from a mutable PendingIntent"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_0
    const-string v0, "PackageInstallerSession"

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "START COMMIT SESSION: id{"

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 44
    .line 45
    const-string/jumbo v3, "}"

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsSealed(Landroid/content/IntentSender;Z)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 59
    .line 60
    iget-boolean p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    const/4 v1, 0x0

    .line 64
    if-eqz p1, :cond_6

    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter p1

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    sub-int/2addr v2, v0

    .line 76
    move v3, v1

    .line 77
    :goto_1
    if-ltz v2, :cond_4

    .line 78
    .line 79
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 80
    .line 81
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    invoke-virtual {v4, v5, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsSealed(Landroid/content/IntentSender;Z)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_3

    .line 93
    .line 94
    move v3, v0

    .line 95
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    if-eqz v3, :cond_5

    .line 101
    .line 102
    monitor-exit p1

    .line 103
    return-void

    .line 104
    :cond_5
    monitor-exit p1

    .line 105
    goto :goto_3

    .line 106
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p0

    .line 108
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 109
    .line 110
    monitor-enter p1

    .line 111
    :try_start_1
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    .line 112
    .line 113
    if-eqz p2, :cond_8

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getStagedAppMetadataFile()Ljava/io/File;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 120
    .line 121
    .line 122
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    :try_start_2
    const-string/jumbo v4, "package_manager_service"

    .line 124
    .line 125
    .line 126
    const-string v5, "app_metadata_byte_size_limit"

    .line 127
    .line 128
    const-wide/16 v6, 0x7d00

    .line 129
    .line 130
    invoke-static {v4, v5, v6, v7}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 131
    .line 132
    .line 133
    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 134
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 138
    .line 139
    .line 140
    move-result-wide v2

    .line 141
    cmp-long v2, v2, v4

    .line 142
    .line 143
    if-gtz v2, :cond_7

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_8

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getTmpAppMetadataFile()Ljava/io/File;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {p2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :catchall_1
    move-exception p0

    .line 160
    goto :goto_5

    .line 161
    :cond_7
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 162
    .line 163
    .line 164
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    .line 165
    .line 166
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 167
    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v0, "App metadata size exceeds the maximum allowed limit of "

    .line 174
    .line 175
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p0

    .line 189
    :catchall_2
    move-exception p0

    .line 190
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    .line 192
    .line 193
    throw p0

    .line 194
    :cond_8
    :goto_4
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 195
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 196
    .line 197
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :goto_5
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 206
    throw p0
.end method

.method public final computeProgressLocked(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    .line 22
    .line 23
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 24
    .line 25
    sub-float v3, v0, v3

    .line 26
    .line 27
    float-to-double v3, v3

    .line 28
    cmpl-double v3, v3, v1

    .line 29
    .line 30
    if-ltz v3, :cond_2

    .line 31
    .line 32
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 36
    .line 37
    const v3, 0x3f4ccccd    # 0.8f

    .line 38
    .line 39
    .line 40
    mul-float/2addr v0, v3

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-static {v0, v4, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 47
    .line 48
    const v5, 0x3e4ccccd    # 0.2f

    .line 49
    .line 50
    .line 51
    mul-float/2addr v3, v5

    .line 52
    invoke-static {v3, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-float/2addr v3, v0

    .line 57
    iput v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 58
    .line 59
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 60
    .line 61
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 62
    .line 63
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 64
    .line 65
    sub-float/2addr p1, v0

    .line 66
    float-to-double v3, p1

    .line 67
    cmpl-double p1, v3, v1

    .line 68
    .line 69
    if-ltz p1, :cond_4

    .line 70
    .line 71
    :cond_3
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 72
    .line 73
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 80
    .line 81
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 82
    .line 83
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 84
    .line 85
    sget v2, Lcom/android/server/pm/PackageInstallerService$Callbacks;->$r8$clinit:I

    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const/4 v2, 0x4

    .line 92
    invoke-virtual {v0, v2, v1, p0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    .line 98
    .line 99
    :cond_4
    return-void
.end method

.method public final createInstallingSession(Ljava/util/concurrent/CompletableFuture;)Lcom/android/server/pm/InstallingSession;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Session: "

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    iget-boolean v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 11
    .line 12
    const/16 v5, -0x6e

    .line 13
    .line 14
    if-eqz v4, :cond_11

    .line 15
    .line 16
    iget-boolean v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 17
    .line 18
    if-nez v4, :cond_10

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    iput-boolean v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 22
    .line 23
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 24
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 25
    .line 26
    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    new-instance v3, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    .line 32
    .line 33
    invoke-direct {v3, v0, v6}, Lcom/android/server/pm/PackageInstallerSession$InstallResult;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 47
    .line 48
    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    .line 53
    .line 54
    invoke-direct {v2, v0, v6}, Lcom/android/server/pm/PackageInstallerSession$InstallResult;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    return-object v6

    .line 61
    :cond_1
    :goto_0
    new-instance v11, Lcom/android/server/pm/PackageInstallerSession$5;

    .line 62
    .line 63
    invoke-direct {v11, v0, v1}, Lcom/android/server/pm/PackageInstallerSession$5;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/concurrent/CompletableFuture;)V

    .line 64
    .line 65
    .line 66
    iget v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 67
    .line 68
    const/16 v3, 0x7d0

    .line 69
    .line 70
    const/16 v6, 0x4d

    .line 71
    .line 72
    if-ne v1, v3, :cond_6

    .line 73
    .line 74
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceModeFromProperty()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 81
    .line 82
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 83
    .line 84
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    if-nez v3, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v3, v1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-nez v7, :cond_6

    .line 100
    .line 101
    const/4 v7, 0x4

    .line 102
    invoke-virtual {v1, v3, v7}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 110
    .line 111
    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 112
    .line 113
    and-int/lit8 v1, v1, 0x40

    .line 114
    .line 115
    if-nez v1, :cond_5

    .line 116
    .line 117
    iget v1, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 118
    .line 119
    if-ne v1, v6, :cond_4

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    .line 123
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v3, "Not allowed to install apps on user "

    .line 127
    .line 128
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 132
    .line 133
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {v1, v5, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v1

    .line 144
    :cond_5
    :goto_2
    const-string v1, "PackageInstallerSession"

    .line 145
    .line 146
    const-string v3, "It will be installed only on Maintenance mode user"

    .line 147
    .line 148
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 152
    .line 153
    iget v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 154
    .line 155
    and-int/lit8 v3, v3, -0x41

    .line 156
    .line 157
    iput v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 158
    .line 159
    move v1, v4

    .line 160
    goto :goto_4

    .line 161
    :cond_6
    :goto_3
    const/4 v1, 0x0

    .line 162
    :goto_4
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 163
    .line 164
    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 165
    .line 166
    and-int/lit8 v3, v3, 0x40

    .line 167
    .line 168
    if-eqz v3, :cond_7

    .line 169
    .line 170
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 171
    .line 172
    :goto_5
    move-object v14, v1

    .line 173
    goto :goto_6

    .line 174
    :cond_7
    if-eqz v1, :cond_8

    .line 175
    .line 176
    new-instance v1, Landroid/os/UserHandle;

    .line 177
    .line 178
    invoke-direct {v1, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_8
    new-instance v1, Landroid/os/UserHandle;

    .line 183
    .line 184
    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 185
    .line 186
    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :goto_6
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 191
    .line 192
    iget-boolean v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 193
    .line 194
    if-eqz v3, :cond_9

    .line 195
    .line 196
    iget v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 197
    .line 198
    const/high16 v5, 0x200000

    .line 199
    .line 200
    or-int/2addr v3, v5

    .line 201
    iput v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 202
    .line 203
    :cond_9
    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 204
    .line 205
    if-nez v1, :cond_d

    .line 206
    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-nez v1, :cond_d

    .line 212
    .line 213
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 214
    .line 215
    monitor-enter v1

    .line 216
    :try_start_1
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 217
    .line 218
    if-nez v3, :cond_a

    .line 219
    .line 220
    const-string v3, "PackageInstallerSession"

    .line 221
    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 228
    .line 229
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v2, ". Don\'t have a valid PackageLite."

    .line 233
    .line 234
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    goto :goto_7

    .line 245
    :catchall_0
    move-exception v0

    .line 246
    goto :goto_a

    .line 247
    :cond_a
    :goto_7
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    .line 249
    if-eqz v2, :cond_b

    .line 250
    .line 251
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    .line 253
    .line 254
    goto :goto_8

    .line 255
    :catch_0
    move-exception v0

    .line 256
    move-object v2, v0

    .line 257
    :try_start_3
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 258
    .line 259
    const-string v3, "Failed to resolve stage location"

    .line 260
    .line 261
    const/16 v4, -0x12

    .line 262
    .line 263
    invoke-direct {v0, v4, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    throw v0

    .line 267
    :cond_b
    :goto_8
    if-eqz v2, :cond_c

    .line 268
    .line 269
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 270
    .line 271
    goto :goto_9

    .line 272
    :cond_c
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 273
    .line 274
    :goto_9
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->getOrParsePackageLiteLocked(Ljava/io/File;)Landroid/content/pm/parsing/PackageLite;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 279
    .line 280
    monitor-exit v1

    .line 281
    goto :goto_b

    .line 282
    :goto_a
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    throw v0

    .line 284
    :cond_d
    :goto_b
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 285
    .line 286
    monitor-enter v1

    .line 287
    :try_start_4
    new-instance v2, Lcom/android/server/pm/InstallingSession;

    .line 288
    .line 289
    iget v8, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 290
    .line 291
    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 292
    .line 293
    iget-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 294
    .line 295
    iget-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 296
    .line 297
    iget-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 298
    .line 299
    iget-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 300
    .line 301
    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 302
    .line 303
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 304
    .line 305
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 306
    .line 307
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 308
    .line 309
    iget-boolean v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    .line 310
    .line 311
    move-object/from16 v19, v7

    .line 312
    .line 313
    move-object v7, v2

    .line 314
    move/from16 v16, v3

    .line 315
    .line 316
    move-object/from16 v17, v5

    .line 317
    .line 318
    move-object/from16 v18, v6

    .line 319
    .line 320
    move/from16 v20, v4

    .line 321
    .line 322
    invoke-direct/range {v7 .. v20}, Lcom/android/server/pm/InstallingSession;-><init>(ILjava/io/File;Ljava/lang/String;Lcom/android/server/pm/PackageInstallerSession$5;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Landroid/content/pm/verify/domain/DomainSet;Lcom/android/server/pm/PackageManagerService;Z)V

    .line 323
    .line 324
    .line 325
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 326
    .line 327
    if-eqz v3, :cond_e

    .line 328
    .line 329
    const/4 v3, 0x1

    .line 330
    iput-boolean v3, v2, Lcom/android/server/pm/InstallingSession;->mIsMoveRequest:Z

    .line 331
    .line 332
    goto :goto_c

    .line 333
    :catchall_1
    move-exception v0

    .line 334
    goto :goto_d

    .line 335
    :cond_e
    :goto_c
    sget-boolean v3, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 336
    .line 337
    if-eqz v3, :cond_f

    .line 338
    .line 339
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 340
    .line 341
    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 342
    .line 343
    iput v0, v2, Lcom/android/server/pm/InstallingSession;->mPreferredInstallLocation:I

    .line 344
    .line 345
    :cond_f
    monitor-exit v1

    .line 346
    return-object v2

    .line 347
    :goto_d
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 348
    throw v0

    .line 349
    :catchall_2
    move-exception v0

    .line 350
    goto :goto_e

    .line 351
    :cond_10
    :try_start_5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 352
    .line 353
    const-string v1, "Session destroyed"

    .line 354
    .line 355
    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_11
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 360
    .line 361
    const-string v1, "Session not sealed"

    .line 362
    .line 363
    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw v0

    .line 367
    :goto_e
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 368
    throw v0
.end method

.method public final createOatDirs(Ljava/lang/String;Ljava/util/List;Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 24
    .line 25
    .line 26
    move-result v3
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 31
    .line 32
    invoke-interface {v1, p1, v2, v0}, Landroid/os/IInstalld;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    :try_start_2
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    throw p0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 42
    :catch_1
    move-exception p0

    .line 43
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const/16 p3, -0x6e

    .line 54
    .line 55
    invoke-direct {p1, p3, p2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    return-void
.end method

.method public final createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 15
    .line 16
    :goto_0
    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :goto_1
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    throw p0
.end method

.method public final deactivate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 20
    .line 21
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 22
    .line 23
    sget v2, Lcom/android/server/pm/PackageInstallerService$Callbacks;->$r8$clinit:I

    .line 24
    .line 25
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    invoke-virtual {v0, v3, v1, p0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0
.end method

.method public final destroy(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public final destroyInternal(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "PackageInstallerSession"

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Session ["

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "] was destroyed because of ["

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, "]"

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter p1

    .line 40
    const/4 v0, 0x1

    .line 41
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 44
    .line 45
    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_4

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/os/RevocableFileDescriptor;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/os/RevocableFileDescriptor;->revoke()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroid/os/FileBridge;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/os/FileBridge;->forceClose()V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 102
    .line 103
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    :try_start_1
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalFileStorages;->cleanUpAndMarkComplete()V

    .line 107
    .line 108
    .line 109
    :cond_4
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 110
    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    .line 127
    .line 128
    :catch_0
    :cond_5
    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 129
    .line 130
    if-eqz p1, :cond_6

    .line 131
    .line 132
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 133
    .line 134
    if-eqz p1, :cond_6

    .line 135
    .line 136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 137
    .line 138
    .line 139
    move-result-wide v0

    .line 140
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :catchall_1
    move-exception p0

    .line 150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :cond_6
    :goto_3
    return-void

    .line 155
    :goto_4
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    throw p0
.end method

.method public final dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    :goto_0
    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/android/server/pm/PackageInstallerSession;->sendUpdateToRemoteStatusReceiver(Ljava/lang/String;Landroid/os/Bundle;IZ)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    .line 31
    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 33
    if-ne p1, v1, :cond_1

    .line 34
    .line 35
    move p2, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move p2, v2

    .line 38
    :goto_1
    if-eqz p3, :cond_3

    .line 39
    .line 40
    const-string v0, "android.intent.extra.REPLACING"

    .line 41
    .line 42
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-nez p3, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move p3, v2

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    :goto_2
    move p3, v1

    .line 52
    :goto_3
    if-eqz p2, :cond_4

    .line 53
    .line 54
    if-eqz p3, :cond_4

    .line 55
    .line 56
    iget-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 57
    .line 58
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 59
    .line 60
    iget-boolean p3, p3, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    .line 61
    .line 62
    if-eqz p3, :cond_4

    .line 63
    .line 64
    iget-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 65
    .line 66
    invoke-virtual {p0, v1, v1}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 71
    .line 72
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iget-object v5, p3, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 77
    .line 78
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 79
    .line 80
    invoke-virtual {p3, v4, v0, v3, v5}, Lcom/android/server/pm/BroadcastHelper;->sendSessionCommitBroadcast(Lcom/android/server/pm/Computer;Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->mUnknownSourceInstallAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    .line 85
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-eqz p3, :cond_7

    .line 90
    .line 91
    iget-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 92
    .line 93
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 94
    .line 95
    invoke-virtual {p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getUnknownSourceAppManager()Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    if-eqz p2, :cond_5

    .line 105
    .line 106
    const-string v3, "UnknownSourceAppManager"

    .line 107
    .line 108
    const-string v4, "addUnknownSourceApp : "

    .line 109
    .line 110
    invoke-static {v4, v0, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v3, p3, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    .line 114
    .line 115
    monitor-enter v3

    .line 116
    :try_start_1
    iget-object v4, p3, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    .line 117
    .line 118
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    if-eqz v0, :cond_7

    .line 124
    .line 125
    new-instance v0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda2;

    .line 126
    .line 127
    invoke-direct {v0, p3}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;)V

    .line 128
    .line 129
    .line 130
    iget-object p3, p3, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mHandler:Landroid/os/Handler;

    .line 131
    .line 132
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_6

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    throw p0

    .line 139
    :cond_5
    const-string v3, "UnknownSourceAppManager"

    .line 140
    .line 141
    const-string/jumbo v4, "removeUnknownSourceApp : "

    .line 142
    .line 143
    .line 144
    invoke-static {v4, v0, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v3, p3, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    .line 148
    .line 149
    monitor-enter v3

    .line 150
    :try_start_3
    iget-object v4, p3, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    .line 151
    .line 152
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_6

    .line 157
    .line 158
    iget-object v4, p3, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    .line 159
    .line 160
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    goto :goto_4

    .line 165
    :catchall_1
    move-exception p0

    .line 166
    goto :goto_5

    .line 167
    :cond_6
    move v0, v2

    .line 168
    :goto_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    if-eqz v0, :cond_7

    .line 170
    .line 171
    new-instance v0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda2;

    .line 172
    .line 173
    invoke-direct {v0, p3}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;)V

    .line 174
    .line 175
    .line 176
    iget-object p3, p3, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mHandler:Landroid/os/Handler;

    .line 177
    .line 178
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_6

    .line 182
    :goto_5
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 183
    throw p0

    .line 184
    :cond_7
    :goto_6
    iget-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 185
    .line 186
    iget-object v0, p3, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 187
    .line 188
    if-eqz p2, :cond_8

    .line 189
    .line 190
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 191
    .line 192
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 193
    .line 194
    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 195
    .line 196
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    const/4 v7, 0x5

    .line 201
    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 206
    .line 207
    .line 208
    :cond_8
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    .line 209
    .line 210
    new-instance v3, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;

    .line 211
    .line 212
    invoke-direct {v3, p3, p0, p2}, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    .line 217
    .line 218
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 219
    .line 220
    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    if-eqz p2, :cond_11

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    iget-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 231
    .line 232
    iget p3, p3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 233
    .line 234
    and-int/lit8 p3, p3, 0x20

    .line 235
    .line 236
    if-nez p3, :cond_9

    .line 237
    .line 238
    move-object v5, p2

    .line 239
    goto :goto_7

    .line 240
    :cond_9
    const-string p3, ""

    .line 241
    .line 242
    move-object v5, p3

    .line 243
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 244
    .line 245
    .line 246
    move-result-wide v3

    .line 247
    const-wide/16 v6, 0x0

    .line 248
    .line 249
    if-eq p1, v1, :cond_a

    .line 250
    .line 251
    const/4 p3, -0x1

    .line 252
    :goto_8
    move v11, p3

    .line 253
    goto :goto_9

    .line 254
    :cond_a
    iget-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 255
    .line 256
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 257
    .line 258
    .line 259
    move-result-object p3

    .line 260
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 261
    .line 262
    invoke-interface {p3, p2, v6, v7, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 263
    .line 264
    .line 265
    move-result p3

    .line 266
    goto :goto_8

    .line 267
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 272
    .line 273
    sub-long v0, v3, v0

    .line 274
    .line 275
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 276
    .line 277
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 282
    .line 283
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    if-nez p0, :cond_c

    .line 288
    .line 289
    :cond_b
    :goto_a
    move-wide v9, v6

    .line 290
    goto :goto_c

    .line 291
    :cond_c
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 292
    .line 293
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 294
    .line 295
    if-nez p0, :cond_d

    .line 296
    .line 297
    goto :goto_a

    .line 298
    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 299
    .line 300
    .line 301
    move-result p2

    .line 302
    const-string v3, ".apk"

    .line 303
    .line 304
    if-eqz p2, :cond_e

    .line 305
    .line 306
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p2

    .line 314
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    if-eqz p2, :cond_e

    .line 319
    .line 320
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 321
    .line 322
    .line 323
    move-result-wide v2

    .line 324
    move-wide v9, v2

    .line 325
    goto :goto_c

    .line 326
    :cond_e
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    if-nez p2, :cond_f

    .line 331
    .line 332
    goto :goto_a

    .line 333
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    :goto_b
    array-length p2, p0

    .line 338
    if-ge v2, p2, :cond_b

    .line 339
    .line 340
    aget-object p2, p0, v2

    .line 341
    .line 342
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p2

    .line 346
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result p2

    .line 354
    if-eqz p2, :cond_10

    .line 355
    .line 356
    aget-object p2, p0, v2

    .line 357
    .line 358
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 359
    .line 360
    .line 361
    move-result-wide v8

    .line 362
    add-long/2addr v8, v6

    .line 363
    move-wide v6, v8

    .line 364
    :cond_10
    add-int/lit8 v2, v2, 0x1

    .line 365
    .line 366
    goto :goto_b

    .line 367
    :goto_c
    const/16 v3, 0x107

    .line 368
    .line 369
    move v4, p3

    .line 370
    move-wide v6, v0

    .line 371
    move v8, p1

    .line 372
    invoke-static/range {v3 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;JIJI)V

    .line 373
    .line 374
    .line 375
    :cond_11
    return-void

    .line 376
    :catchall_2
    move-exception p0

    .line 377
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 378
    throw p0
.end method

.method public final doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    move-wide/from16 v2, p2

    .line 5
    .line 6
    move-wide/from16 v4, p4

    .line 7
    .line 8
    const-string v6, "Invalid name: "

    .line 9
    .line 10
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v7

    .line 13
    :try_start_0
    sget-boolean v9, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    .line 14
    .line 15
    const/4 v10, 0x0

    .line 16
    if-eqz v9, :cond_0

    .line 17
    .line 18
    new-instance v8, Landroid/os/RevocableFileDescriptor;

    .line 19
    .line 20
    invoke-direct {v8}, Landroid/os/RevocableFileDescriptor;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v11, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-object v11, v8

    .line 29
    move-object v12, v10

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto/16 :goto_8

    .line 33
    .line 34
    :cond_0
    new-instance v8, Landroid/os/FileBridge;

    .line 35
    .line 36
    invoke-direct {v8}, Landroid/os/FileBridge;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v11, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-object v12, v8

    .line 45
    move-object v11, v10

    .line 46
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_9

    .line 52
    .line 53
    sget-boolean v6, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 54
    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    new-instance v6, Ljava/io/File;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 71
    .line 72
    .line 73
    move-result-wide v6
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :try_start_2
    new-instance v8, Ljava/io/File;

    .line 75
    .line 76
    iget-object v13, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 77
    .line 78
    invoke-direct {v8, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 79
    .line 80
    .line 81
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    move-object v6, v8

    .line 85
    :goto_1
    const-string v7, "app.metadata"

    .line 86
    .line 87
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    const/16 v0, 0x1a0

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    const/16 v0, 0x1a4

    .line 97
    .line 98
    :goto_2
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    sget v8, Landroid/system/OsConstants;->O_CREAT:I

    .line 103
    .line 104
    sget v13, Landroid/system/OsConstants;->O_WRONLY:I

    .line 105
    .line 106
    or-int/2addr v8, v13

    .line 107
    invoke-static {v7, v8, v0}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    new-instance v13, Landroid/os/ParcelFileDescriptor;

    .line 112
    .line 113
    invoke-direct {v13, v7}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-static {v6, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 124
    .line 125
    const-wide/16 v6, 0x0

    .line 126
    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    cmp-long v0, v4, v6

    .line 130
    .line 131
    if-lez v0, :cond_3

    .line 132
    .line 133
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    const-class v8, Landroid/os/storage/StorageManager;

    .line 136
    .line 137
    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 142
    .line 143
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    iget-object v14, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 148
    .line 149
    iget v14, v14, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 150
    .line 151
    invoke-static {v14}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    invoke-virtual {v0, v8, v4, v5, v14}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V

    .line 156
    .line 157
    .line 158
    :cond_3
    cmp-long v0, v2, v6

    .line 159
    .line 160
    if-lez v0, :cond_4

    .line 161
    .line 162
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    sget v8, Landroid/system/OsConstants;->SEEK_SET:I

    .line 167
    .line 168
    invoke-static {v0, v2, v3, v8}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0

    .line 169
    .line 170
    .line 171
    :cond_4
    if-eqz p6, :cond_7

    .line 172
    .line 173
    :try_start_4
    new-instance v0, Landroid/system/Int64Ref;

    .line 174
    .line 175
    invoke-direct {v0, v6, v7}, Landroid/system/Int64Ref;-><init>(J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual/range {p6 .. p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    new-instance v7, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 187
    .line 188
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 189
    .line 190
    .line 191
    new-instance v8, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;

    .line 192
    .line 193
    invoke-direct {v8, p0, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;)V

    .line 194
    .line 195
    .line 196
    const/4 v6, 0x0

    .line 197
    move-wide/from16 v4, p4

    .line 198
    .line 199
    invoke-static/range {v2 .. v8}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 200
    .line 201
    .line 202
    :try_start_5
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 203
    .line 204
    .line 205
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 206
    .line 207
    .line 208
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 209
    .line 210
    monitor-enter v2
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0

    .line 211
    if-eqz v9, :cond_5

    .line 212
    .line 213
    :try_start_6
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :catchall_1
    move-exception v0

    .line 220
    goto :goto_4

    .line 221
    :cond_5
    invoke-virtual {v12}, Landroid/os/FileBridge;->forceClose()V

    .line 222
    .line 223
    .line 224
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    :goto_3
    monitor-exit v2

    .line 230
    return-object v10

    .line 231
    :goto_4
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 232
    :try_start_7
    throw v0

    .line 233
    :catchall_2
    move-exception v0

    .line 234
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 235
    .line 236
    .line 237
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 238
    .line 239
    .line 240
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 241
    .line 242
    monitor-enter v2
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_0

    .line 243
    :try_start_8
    sget-boolean v3, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    .line 244
    .line 245
    if-eqz v3, :cond_6

    .line 246
    .line 247
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    goto :goto_5

    .line 253
    :catchall_3
    move-exception v0

    .line 254
    goto :goto_6

    .line 255
    :cond_6
    invoke-virtual {v12}, Landroid/os/FileBridge;->forceClose()V

    .line 256
    .line 257
    .line 258
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    :goto_5
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 264
    :try_start_9
    throw v0
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_9} :catch_0

    .line 265
    :goto_6
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 266
    :try_start_b
    throw v0

    .line 267
    :cond_7
    if-eqz v9, :cond_8

    .line 268
    .line 269
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    new-instance v2, Ljava/io/FileDescriptor;

    .line 274
    .line 275
    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 279
    .line 280
    .line 281
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 282
    .line 283
    invoke-virtual {v11, v0, v2}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v11}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    return-object v0

    .line 291
    :cond_8
    invoke-virtual {v12, v13}, Landroid/os/FileBridge;->setTargetFile(Landroid/os/ParcelFileDescriptor;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v12}, Landroid/os/FileBridge;->start()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v12}, Landroid/os/FileBridge;->getClientSocket()Landroid/os/ParcelFileDescriptor;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    return-object v0

    .line 302
    :catchall_4
    move-exception v0

    .line 303
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    .line 305
    .line 306
    throw v0

    .line 307
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 308
    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw v1
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_b} :catch_0

    .line 325
    :goto_7
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    throw v0

    .line 330
    :goto_8
    :try_start_c
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 331
    throw v0
.end method

.method public final dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Session "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ":"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 26
    .line 27
    .line 28
    const-string/jumbo v0, "userId"

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 38
    .line 39
    .line 40
    const-string/jumbo v0, "mOriginalInstallerUid"

    .line 41
    .line 42
    .line 43
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 50
    .line 51
    .line 52
    const-string/jumbo v0, "mOriginalInstallerPackageName"

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 58
    .line 59
    .line 60
    const-string v0, "installerPackageName"

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 67
    .line 68
    .line 69
    const-string v0, "installInitiatingPackageName"

    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 76
    .line 77
    .line 78
    const-string v0, "installOriginatingPackageName"

    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 81
    .line 82
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 85
    .line 86
    .line 87
    const-string v0, "mInstallerUid"

    .line 88
    .line 89
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 96
    .line 97
    .line 98
    const-string v0, "createdMillis"

    .line 99
    .line 100
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 101
    .line 102
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 107
    .line 108
    .line 109
    const-string/jumbo v0, "updatedMillis"

    .line 110
    .line 111
    .line 112
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 113
    .line 114
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 119
    .line 120
    .line 121
    const-string v0, "committedMillis"

    .line 122
    .line 123
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    .line 124
    .line 125
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 130
    .line 131
    .line 132
    const-string/jumbo v0, "stageDir"

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 136
    .line 137
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 138
    .line 139
    .line 140
    const-string/jumbo v0, "stageCid"

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 152
    .line 153
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    .line 157
    .line 158
    monitor-enter v0

    .line 159
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 160
    .line 161
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 162
    .line 163
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    const-string v0, "mClientProgress"

    .line 165
    .line 166
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 171
    .line 172
    .line 173
    const-string/jumbo v0, "mProgress"

    .line 174
    .line 175
    .line 176
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 181
    .line 182
    .line 183
    const-string v0, "mCommitted"

    .line 184
    .line 185
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    .line 187
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 188
    .line 189
    .line 190
    const-string/jumbo v0, "mPreapprovalRequested"

    .line 191
    .line 192
    .line 193
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 194
    .line 195
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 196
    .line 197
    .line 198
    const-string/jumbo v0, "mSealed"

    .line 199
    .line 200
    .line 201
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 202
    .line 203
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 208
    .line 209
    .line 210
    const-string/jumbo v0, "mPermissionsManuallyAccepted"

    .line 211
    .line 212
    .line 213
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 214
    .line 215
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 220
    .line 221
    .line 222
    const-string/jumbo v0, "mStageDirInUse"

    .line 223
    .line 224
    .line 225
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 226
    .line 227
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 232
    .line 233
    .line 234
    const-string v0, "mDestroyed"

    .line 235
    .line 236
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 237
    .line 238
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 243
    .line 244
    .line 245
    const-string v0, "mFds"

    .line 246
    .line 247
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 258
    .line 259
    .line 260
    const-string v0, "mBridges"

    .line 261
    .line 262
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 273
    .line 274
    .line 275
    const-string v0, "mFinalStatus"

    .line 276
    .line 277
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    .line 278
    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 284
    .line 285
    .line 286
    const-string v0, "mFinalMessage"

    .line 287
    .line 288
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 291
    .line 292
    .line 293
    const-string/jumbo v0, "params.isMultiPackage"

    .line 294
    .line 295
    .line 296
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 297
    .line 298
    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 299
    .line 300
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 305
    .line 306
    .line 307
    const-string/jumbo v0, "params.isStaged"

    .line 308
    .line 309
    .line 310
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 311
    .line 312
    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 313
    .line 314
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 319
    .line 320
    .line 321
    const-string/jumbo v0, "mParentSessionId"

    .line 322
    .line 323
    .line 324
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 325
    .line 326
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 331
    .line 332
    .line 333
    const-string v0, "mChildSessionIds"

    .line 334
    .line 335
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 340
    .line 341
    .line 342
    const-string/jumbo v0, "mSessionApplied"

    .line 343
    .line 344
    .line 345
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 346
    .line 347
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 352
    .line 353
    .line 354
    const-string/jumbo v0, "mSessionFailed"

    .line 355
    .line 356
    .line 357
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 358
    .line 359
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 364
    .line 365
    .line 366
    const-string/jumbo v0, "mSessionReady"

    .line 367
    .line 368
    .line 369
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    .line 370
    .line 371
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 376
    .line 377
    .line 378
    const-string/jumbo v0, "mSessionErrorCode"

    .line 379
    .line 380
    .line 381
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 382
    .line 383
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 388
    .line 389
    .line 390
    const-string/jumbo v0, "mSessionErrorMessage"

    .line 391
    .line 392
    .line 393
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 396
    .line 397
    .line 398
    const-string/jumbo v0, "mPreapprovalDetails"

    .line 399
    .line 400
    .line 401
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 402
    .line 403
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 404
    .line 405
    .line 406
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 407
    .line 408
    if-eqz p0, :cond_0

    .line 409
    .line 410
    const-string/jumbo v0, "mPreVerifiedDomains"

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 414
    .line 415
    .line 416
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 420
    .line 421
    .line 422
    return-void

    .line 423
    :catchall_0
    move-exception p0

    .line 424
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    throw p0
.end method

.method public final extractNativeLibraries(Landroid/content/pm/parsing/PackageLite;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string v0, "Failed to extract native libraries, res="

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    const-string v2, "lib"

    .line 9
    .line 10
    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    invoke-static {v1, p2}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 20
    .line 21
    iget p4, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 22
    .line 23
    const/high16 v2, 0x8000000

    .line 24
    .line 25
    and-int/2addr p4, v2

    .line 26
    if-eqz p4, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const/4 p4, 0x0

    .line 30
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/parsing/PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-static {p4, v1, p3, p0}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    .line 39
    .line 40
    .line 41
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-ne p0, p2, :cond_2

    .line 43
    .line 44
    invoke-static {p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    :try_start_1
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 49
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    :try_start_2
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 70
    .line 71
    const-string p2, "Failed to extract native libraries"

    .line 72
    .line 73
    const/16 p3, -0x6e

    .line 74
    .line 75
    invoke-direct {p1, p3, p2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :goto_0
    invoke-static {p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public final fetchPackageNames()Ljava/util/List;
    .locals 8

    .line 1
    const-string v0, "fetchPackageNames"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 10
    .line 11
    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_5

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 48
    .line 49
    const-string v2, "fetchPackageName"

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter v3

    .line 60
    :try_start_0
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Ljava/io/File;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const/4 v7, 0x0

    .line 91
    invoke-static {v6, v5, v7}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-nez v6, :cond_2

    .line 100
    .line 101
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    check-cast v5, Landroid/content/pm/parsing/ApkLite;

    .line 106
    .line 107
    invoke-virtual {v5}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    if-eqz v5, :cond_1

    .line 112
    .line 113
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 121
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v2, "Can\'t parse package for session="

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-direct {p0, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 150
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v2, "Can\'t fetch package name for session="

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    throw p0

    .line 176
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    const-string v0, " before sealing"

    .line 179
    .line 180
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p0

    .line 188
    :cond_5
    return-object v0
.end method

.method public final generateInfoForCaller(IZ)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 1

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 7

    .line 1
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 10
    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v3

    .line 15
    :try_start_1
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 16
    .line 17
    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 20
    .line 21
    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 24
    .line 25
    iget-object v4, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    const-string v4, "android.permission.READ_INSTALLED_SESSION_PATHS"

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v4, 0x0

    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 48
    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-lez v6, :cond_0

    .line 62
    .line 63
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/io/File;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto/16 :goto_6

    .line 72
    .line 73
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 80
    .line 81
    :cond_1
    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 82
    .line 83
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 84
    .line 85
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isPreapprovalRequested:Z

    .line 102
    .line 103
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-lez v1, :cond_2

    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    move v1, v4

    .line 114
    :goto_1
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 117
    .line 118
    iget v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 119
    .line 120
    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    .line 121
    .line 122
    iget v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 123
    .line 124
    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 125
    .line 126
    iget v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 127
    .line 128
    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installScenario:I

    .line 129
    .line 130
    iget-wide v5, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 131
    .line 132
    iput-wide v5, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    .line 133
    .line 134
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 135
    .line 136
    if-eqz v2, :cond_3

    .line 137
    .line 138
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getPackageName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    goto :goto_2

    .line 143
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 144
    .line 145
    if-eqz v2, :cond_4

    .line 146
    .line 147
    move-object v1, v2

    .line 148
    goto :goto_2

    .line 149
    :cond_4
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 150
    .line 151
    :goto_2
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 152
    .line 153
    if-eqz p1, :cond_6

    .line 154
    .line 155
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 156
    .line 157
    if-eqz p1, :cond_5

    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getIcon()Landroid/graphics/Bitmap;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-eqz p1, :cond_5

    .line 164
    .line 165
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getIcon()Landroid/graphics/Bitmap;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    goto :goto_3

    .line 172
    :cond_5
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 173
    .line 174
    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 175
    .line 176
    :goto_3
    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 177
    .line 178
    :cond_6
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 179
    .line 180
    if-eqz p1, :cond_7

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getLabel()Ljava/lang/CharSequence;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    goto :goto_4

    .line 187
    :cond_7
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 188
    .line 189
    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 190
    .line 191
    :goto_4
    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    .line 192
    .line 193
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 194
    .line 195
    iget v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 196
    .line 197
    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    .line 198
    .line 199
    if-nez p2, :cond_8

    .line 200
    .line 201
    iget-object v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 202
    .line 203
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    .line 204
    .line 205
    :cond_8
    iget v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 206
    .line 207
    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    .line 208
    .line 209
    if-nez p2, :cond_9

    .line 210
    .line 211
    iget-object p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 212
    .line 213
    iput-object p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    .line 214
    .line 215
    :cond_9
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionParams;->getLegacyGrantedRuntimePermissions()[Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 220
    .line 221
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 222
    .line 223
    iget-object p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 224
    .line 225
    iput-object p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 226
    .line 227
    iget p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 228
    .line 229
    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    .line 230
    .line 231
    iget p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 232
    .line 233
    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 234
    .line 235
    iget-wide v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    .line 236
    .line 237
    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackLifetimeMillis:J

    .line 238
    .line 239
    iget p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    .line 240
    .line 241
    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackImpactLevel:I

    .line 242
    .line 243
    iget-boolean p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 244
    .line 245
    iput-boolean p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    .line 246
    .line 247
    iget-boolean p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 248
    .line 249
    iput-boolean p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    .line 250
    .line 251
    iget p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 252
    .line 253
    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    .line 254
    .line 255
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 256
    .line 257
    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 264
    .line 265
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 266
    .line 267
    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    .line 268
    .line 269
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    .line 270
    .line 271
    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionReady:Z

    .line 272
    .line 273
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 274
    .line 275
    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    .line 276
    .line 277
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 278
    .line 279
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->setSessionErrorCode(ILjava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-wide p1, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 285
    .line 286
    iput-wide p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    .line 287
    .line 288
    iget-wide p1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 289
    .line 290
    iput-wide p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->updatedMillis:J

    .line 291
    .line 292
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 293
    .line 294
    iget p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 295
    .line 296
    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->requireUserAction:I

    .line 297
    .line 298
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 299
    .line 300
    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerUid:I

    .line 301
    .line 302
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 303
    .line 304
    iget p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 305
    .line 306
    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    .line 307
    .line 308
    iget-boolean p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 309
    .line 310
    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->applicationEnabledSettingPersistent:Z

    .line 311
    .line 312
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequirement:I

    .line 313
    .line 314
    const/4 p1, 0x3

    .line 315
    if-eq p0, p1, :cond_a

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_a
    const/4 v4, 0x2

    .line 319
    :goto_5
    iput v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->pendingUserActionReason:I

    .line 320
    .line 321
    monitor-exit v3

    .line 322
    return-object v0

    .line 323
    :goto_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    throw p0

    .line 325
    :catchall_1
    move-exception p0

    .line 326
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 327
    throw p0
.end method

.method public final getAddedApksLocked()Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 13
    .line 14
    :goto_0
    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->sAddedApkFilter:Lcom/android/server/pm/PackageInstallerSession$1;

    .line 15
    .line 16
    invoke-static {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getAppMetadataFd()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    const-string v1, "getAppMetadataFd"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_1
    const-string v1, "app.metadata"

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    throw p0

    .line 35
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p0
.end method

.method public final getChildSessionIds()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final getChildSessionIdsLocked()[I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-array v1, v0, [I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v0, :cond_1

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    aput v3, v1, v2

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-object v1
.end method

.method public final getChildSessions()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsLocked()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final getChildSessionsLocked()Ljava/util/List;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 4
    .line 5
    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v0, :cond_0

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v0, v1

    .line 38
    :cond_1
    return-object v0
.end method

.method public final getDataLoaderParams()Landroid/content/pm/DataLoaderParamsParcel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getDataLoaderParams_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 5
    .line 6
    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return-object p0
.end method

.method public final getInstallFlags()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 4
    .line 5
    return p0
.end method

.method public final getInstallSource()Lcom/android/server/pm/InstallSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [Landroid/content/pm/InstallationFile;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    .line 26
    .line 27
    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mIndex:I

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    .line 30
    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method

.method public final getInstallerUid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getNames()[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerRootOrVerifier()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    const-string v1, "getNames"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getStageDirContentsLocked()[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    const-string v1, "app.metadata"

    .line 32
    .line 33
    invoke-static {p0, v1}, Lcom/android/internal/util/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    monitor-exit v0

    .line 38
    return-object p0

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final getNamesLocked()[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 20
    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    :cond_1
    return-object p0

    .line 33
    :goto_0
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    throw p0

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getStageDirContentsLocked()[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    array-length v0, p0

    .line 48
    new-array v0, v0, [Ljava/lang/String;

    .line 49
    .line 50
    array-length v1, p0

    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_1
    if-ge v2, v1, :cond_4

    .line 53
    .line 54
    aget-object v3, p0, v2

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    aput-object v3, v0, v2

    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    return-object v0
.end method

.method public final getOrParsePackageLiteLocked(Ljava/io/File;)Landroid/content/pm/parsing/PackageLite;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p0, p1, v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroid/content/pm/parsing/PackageLite;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 29
    .line 30
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/16 v1, -0x6e

    .line 39
    .line 40
    invoke-direct {p1, v1, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getParentSessionId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getPreVerifiedDomains()Landroid/content/pm/verify/domain/DomainSet;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    const-string v1, "getPreVerifiedDomains"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final getRemoteStatusReceiver()Landroid/content/IntentSender;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getStageDirContentsLocked()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 12
    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    :cond_1
    return-object p0

    .line 25
    :goto_0
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    throw p0

    .line 30
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 31
    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_4

    .line 42
    .line 43
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 44
    .line 45
    :cond_4
    return-object p0
.end method

.method public final getStagedAppMetadataFile()Ljava/io/File;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Landroid/os/ParcelableException;

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    .line 13
    .line 14
    const/16 v2, -0x12

    .line 15
    .line 16
    const-string v3, "Failed to resolve stage location"

    .line 17
    .line 18
    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 33
    .line 34
    :goto_1
    const-string v0, "app.metadata"

    .line 35
    .line 36
    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v1
.end method

.method public final getTmpAppMetadataFile()Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 4
    .line 5
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 17
    .line 18
    const-string v3, "-app.metadata"

    .line 19
    .line 20
    invoke-static {p0, v2, v3}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final hasParentSessionId()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq p0, v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final inheritFileLocked(Ljava/io/File;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 28
    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {}, Landroid/security/Flags;->extendVbChainToUpdatedApk()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Ljava/io/File;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ".idsig"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 73
    .line 74
    check-cast v1, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-static {p1}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 86
    .line 87
    check-cast v1, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    new-instance v1, Ljava/io/File;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 112
    .line 113
    check-cast v0, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :cond_2
    sget v0, Lcom/android/server/pm/ApkChecksums;->$r8$clinit:I

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1}, Lcom/android/server/pm/ApkChecksums;->buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance v0, Ljava/io/File;

    .line 129
    .line 130
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    const/4 v1, 0x0

    .line 138
    if-eqz p1, :cond_3

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_3
    move-object v0, v1

    .line 142
    :goto_0
    if-eqz v0, :cond_5

    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 145
    .line 146
    check-cast p1, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string v0, ".signature"

    .line 156
    .line 157
    invoke-static {p1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    new-instance v0, Ljava/io/File;

    .line 162
    .line 163
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_4

    .line 171
    .line 172
    move-object v1, v0

    .line 173
    :cond_4
    if-eqz v1, :cond_5

    .line 174
    .line 175
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 176
    .line 177
    check-cast p0, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    :cond_5
    return-void
.end method

.method public final install()Ljava/util/concurrent/CompletableFuture;
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->createInstallingSession(Ljava/util/concurrent/CompletableFuture;)Lcom/android/server/pm/InstallingSession;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 19
    .line 20
    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    const-string v3, "Install failed with internal error"

    .line 23
    .line 24
    const/16 v4, -0x6e

    .line 25
    .line 26
    if-eqz v2, :cond_4

    .line 27
    .line 28
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v5, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-ge v6, v7, :cond_3

    .line 47
    .line 48
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    .line 53
    .line 54
    if-eqz v7, :cond_1

    .line 55
    .line 56
    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {p0, v8}, Lcom/android/server/pm/PackageInstallerSession;->isAttemptSamsungThemeForgery(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-nez v8, :cond_0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 68
    .line 69
    invoke-direct {v0, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    goto :goto_3

    .line 75
    :cond_1
    :goto_1
    new-instance v8, Ljava/util/concurrent/CompletableFuture;

    .line 76
    .line 77
    invoke-direct {v8}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v8}, Lcom/android/server/pm/PackageInstallerSession;->createInstallingSession(Ljava/util/concurrent/CompletableFuture;)Lcom/android/server/pm/InstallingSession;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    if-eqz v7, :cond_2

    .line 88
    .line 89
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_7

    .line 100
    .line 101
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v5}, Lcom/android/server/pm/InstallingSession;->installStage(Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_4
    if-eqz v1, :cond_7

    .line 109
    .line 110
    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 111
    .line 112
    if-eqz v2, :cond_6

    .line 113
    .line 114
    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->isAttemptSamsungThemeForgery(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_5

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 126
    .line 127
    invoke-direct {v0, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v0

    .line 131
    :cond_6
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/pm/InstallingSession;->installStage()V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-object v0, v1

    .line 148
    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    new-array v1, v1, [Ljava/util/concurrent/CompletableFuture;

    .line 153
    .line 154
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, [Ljava/util/concurrent/CompletableFuture;

    .line 159
    .line 160
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;

    .line 165
    .line 166
    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    return-object p0
.end method

.method public final isApexSession()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 4
    .line 5
    const/high16 v0, 0x20000

    .line 6
    .line 7
    and-int/2addr p0, v0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public final isApplicationEnabledSettingPersistent()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 4
    .line 5
    return p0
.end method

.method public final isAttemptSamsungThemeForgery(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    .line 2
    .line 3
    const-string v0, "com.samsung.android.themecenter"

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-interface {v0, p1, v3, v4, v2}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 29
    .line 30
    const/16 v0, 0x7d0

    .line 31
    .line 32
    if-ne p0, v0, :cond_1

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const-string p0, "com.samsung.themedesigner"

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    return v1

    .line 45
    :cond_1
    return v2
.end method

.method public final isDestroyed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final isInTerminalState()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_2

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 18
    :goto_1
    monitor-exit v0

    .line 19
    return p0

    .line 20
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final isIncrementalInstallation()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 10
    .line 11
    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/pm/DataLoaderParams;->getType()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v0, 0x2

    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method

.method public final isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z
    .locals 3

    .line 1
    const-string v0, "isInstallerDeviceOwnerOrAffiliatedProfileOwner"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotLocked(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 35
    .line 36
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 37
    .line 38
    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    :cond_1
    return v2
.end method

.method public final isMultiPackage()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 4
    .line 5
    return p0
.end method

.method public final isRequestUpdateOwnership()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 4
    .line 5
    const/high16 v0, 0x2000000

    .line 6
    .line 7
    and-int/2addr p0, v0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public final isSealed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final isStaged()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 4
    .line 5
    return p0
.end method

.method public final isStagedAndInTerminalState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInTerminalState()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final linkFiles(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .locals 6

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/io/File;

    .line 16
    .line 17
    invoke-static {v1, p4}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v4
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 33
    .line 34
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    :try_start_2
    invoke-virtual {v5, v1, v2, v3}, Landroid/os/incremental/IncrementalFileStorages;->makeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    .line 47
    .line 48
    invoke-virtual {v4, p1, v1, v2, v3}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    :try_start_4
    throw p0
    :try_end_4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 55
    :goto_1
    new-instance p1, Ljava/io/IOException;

    .line 56
    .line 57
    const-string p2, "failed linkOrCreateDir("

    .line 58
    .line 59
    const-string p3, ", "

    .line 60
    .line 61
    invoke-static {p2, v1, p3, v2, p3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const-string p3, ")"

    .line 66
    .line 67
    invoke-static {p2, v3, p3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string p1, "Linked "

    .line 78
    .line 79
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p1, " files into "

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p1, "PackageInstallerSession"

    .line 102
    .line 103
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final markAsSealed(Landroid/content/IntentSender;Z)Z
    .locals 7

    .line 1
    const-string v0, "commit of session "

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v3, v1

    .line 17
    :goto_1
    const-string/jumbo v4, "statusReceiver can\'t be null for the root session"

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v3

    .line 29
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 35
    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/security/Flags;->frpEnforcement()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const-class v4, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    :cond_2
    move v0, v2

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->isFactoryResetProtectionActive()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    goto :goto_2

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto/16 :goto_6

    .line 76
    .line 77
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string/jumbo v4, "secure_frp_mode"

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-ne v0, v1, :cond_2

    .line 91
    .line 92
    move v0, v1

    .line 93
    :goto_2
    if-eqz v0, :cond_8

    .line 94
    .line 95
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    const-class v5, Landroid/content/pm/PackageManagerInternal;

    .line 102
    .line 103
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    .line 108
    .line 109
    const/4 v6, 0x2

    .line 110
    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    if-eqz v4, :cond_6

    .line 119
    .line 120
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-static {v6, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_6

    .line 129
    .line 130
    :cond_5
    move v0, v2

    .line 131
    goto :goto_3

    .line 132
    :cond_6
    const-string v4, "android.permission.INSTALL_PACKAGES"

    .line 133
    .line 134
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_5

    .line 139
    .line 140
    move v0, v1

    .line 141
    :goto_3
    if-eqz v0, :cond_7

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    .line 145
    .line 146
    const-string p1, "Can\'t install packages while in secure FRP"

    .line 147
    .line 148
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p0

    .line 152
    :cond_8
    :goto_4
    if-eqz p2, :cond_a

    .line 153
    .line 154
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    const-string v0, "android.permission.INSTALL_PACKAGES"

    .line 157
    .line 158
    const/4 v4, 0x0

    .line 159
    invoke-virtual {p2, v0, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 163
    .line 164
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 165
    .line 166
    if-eq p2, v0, :cond_9

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 170
    .line 171
    const-string p1, "Session has not been transferred"

    .line 172
    .line 173
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :cond_a
    iget p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 178
    .line 179
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 180
    .line 181
    if-ne p2, v0, :cond_c

    .line 182
    .line 183
    :goto_5
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 184
    .line 185
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :try_start_1
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    .line 187
    .line 188
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    :try_start_2
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 190
    .line 191
    if-eqz p1, :cond_b

    .line 192
    .line 193
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    return v1

    .line 195
    :cond_b
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    .line 197
    .line 198
    :try_start_4
    monitor-exit v3

    .line 199
    return v1

    .line 200
    :catch_0
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    return v2

    .line 202
    :catchall_1
    move-exception p0

    .line 203
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 204
    :try_start_6
    throw p0

    .line 205
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    const-string p1, "Session has been transferred"

    .line 208
    .line 209
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p0

    .line 213
    :goto_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 214
    throw p0
.end method

.method public final maybeFinishChildSessions(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final maybeStageFsveritySignatureLocked(Ljava/io/File;Ljava/io/File;Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/security/Flags;->deprecateFsvSig()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    new-instance p1, Ljava/io/File;

    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p2}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-nez p3, :cond_2

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_2
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 48
    .line 49
    const-string p2, "Missing corresponding fs-verity signature to "

    .line 50
    .line 51
    invoke-static {p1, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/16 p2, -0x76

    .line 56
    .line 57
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public final onSessionValidationFailure(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Failed to validate session, error: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onSessionVerificationFailure(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Failed to verify session "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 9
    .line 10
    const-string v2, "PackageInstallerSession"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final open()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 16
    .line 17
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 18
    .line 19
    sget v3, Lcom/android/server/pm/PackageInstallerService$Callbacks;->$r8$clinit:I

    .line 20
    .line 21
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 35
    .line 36
    if-nez v1, :cond_5

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 50
    .line 51
    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 57
    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 65
    .line 66
    .line 67
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 71
    .line 72
    iget-wide v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 73
    .line 74
    const-wide/32 v8, 0x500000

    .line 75
    .line 76
    .line 77
    add-long/2addr v6, v8

    .line 78
    sget-boolean v8, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    .line 79
    .line 80
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    const/16 v10, 0x3e8

    .line 85
    .line 86
    const/4 v11, 0x1

    .line 87
    move-object v8, v2

    .line 88
    invoke-static/range {v6 .. v11}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->createSdDir(JLjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    if-eqz v6, :cond_3

    .line 93
    .line 94
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    .line 96
    .line 97
    const/high16 v2, 0x3e800000    # 0.25f

    .line 98
    .line 99
    iput v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 100
    .line 101
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 102
    .line 103
    .line 104
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v3, "Failed to create session cid: "

    .line 112
    .line 113
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    :catchall_1
    move-exception p0

    .line 128
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    const-string v1, "Exactly one of stageDir or stageCid stage must be set"

    .line 135
    .line 136
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_5
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    if-nez v1, :cond_6

    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/android/server/pm/utils/RequestThrottle;->schedule()V

    .line 150
    .line 151
    .line 152
    :cond_6
    return-void

    .line 153
    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    throw p0
.end method

.method public final openQuick(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 16
    .line 17
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 18
    .line 19
    sget v3, Lcom/android/server/pm/PackageInstallerService$Callbacks;->$r8$clinit:I

    .line 20
    .line 21
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 35
    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-static {v2, p1}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDirQuick(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 49
    .line 50
    iget-boolean p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    :goto_0
    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string/jumbo p1, "stageDir must be set"

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-nez v1, :cond_4

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/pm/utils/RequestThrottle;->schedule()V

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void

    .line 80
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0
.end method

.method public final openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    const-string/jumbo v1, "openRead"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    monitor-exit v0

    .line 26
    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    throw p0

    .line 35
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p0

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string p1, "Cannot read regular files in a data loader installation session."

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    const-string v0, "Invalid name: "

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 23
    .line 24
    :goto_0
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget p1, Landroid/system/OsConstants;->O_RDONLY:I

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-static {p0, p1, v0}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance p1, Landroid/os/ParcelFileDescriptor;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    throw p0
.end method

.method public final openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertCanWrite(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    throw p0
.end method

.method public final openWriteAppMetadata()Landroid/os/ParcelFileDescriptor;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    const-string/jumbo v1, "openWriteAppMetadata"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    const-string v3, "app.metadata"

    .line 15
    .line 16
    const-wide/16 v6, -0x1

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    const/4 v2, 0x1

    .line 30
    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    .line 31
    .line 32
    monitor-exit v1

    .line 33
    return-object v0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    throw p0

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 45
    throw p0
.end method

.method public final parseApkAndExtractNativeLibraries()V
    .locals 9

    .line 1
    const-string v0, "Final Size "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 7
    .line 8
    const/16 v3, -0x6e

    .line 9
    .line 10
    if-nez v2, :cond_f

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 13
    .line 14
    if-nez v2, :cond_e

    .line 15
    .line 16
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 17
    .line 18
    if-eqz v2, :cond_d

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v2, :cond_c

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 25
    .line 26
    if-eqz v2, :cond_b

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 29
    .line 30
    if-eqz v2, :cond_a

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x2

    .line 37
    const/16 v4, -0x12

    .line 38
    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 50
    .line 51
    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 52
    .line 53
    if-eq v5, v3, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->calculateInstalledSize()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    const-string v7, "PackageInstallerSession"

    .line 60
    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v5, v6, v0}, Lcom/android/server/pm/PackageInstallerSession;->resizeContainerForSd(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto/16 :goto_8

    .line 84
    .line 85
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 86
    .line 87
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception p0

    .line 92
    :try_start_2
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 93
    .line 94
    const-string v2, "Failed to resolve stage location"

    .line 95
    .line 96
    invoke-direct {v0, v4, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 106
    .line 107
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->getOrParsePackageLiteLocked(Ljava/io/File;)Landroid/content/pm/parsing/PackageLite;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    goto :goto_3

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->getOrParsePackageLiteLocked(Ljava/io/File;)Landroid/content/pm/parsing/PackageLite;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :goto_3
    if-eqz v0, :cond_9

    .line 119
    .line 120
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_9

    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    .line 129
    .line 130
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    const/high16 v2, 0x3f000000    # 0.5f

    .line 132
    .line 133
    :try_start_3
    iput v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 134
    .line 135
    const/4 v2, 0x1

    .line 136
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 137
    .line 138
    .line 139
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    :try_start_4
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :catch_1
    move-exception p0

    .line 149
    :try_start_6
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 150
    .line 151
    const-string v2, "Failed to resolve stage location"

    .line 152
    .line 153
    invoke-direct {v0, v4, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_4
    :goto_4
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 158
    .line 159
    if-eqz v0, :cond_5

    .line 160
    .line 161
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 165
    .line 166
    :goto_5
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 167
    .line 168
    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 169
    .line 170
    const-string/jumbo v6, "pi.inherit_native_on_dont_kill"

    .line 171
    .line 172
    .line 173
    invoke-static {v6, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_6

    .line 178
    .line 179
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 180
    .line 181
    iget v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 182
    .line 183
    if-ne v7, v3, :cond_6

    .line 184
    .line 185
    iget v3, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 186
    .line 187
    and-int/2addr v3, v2

    .line 188
    if-eqz v3, :cond_6

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_6
    const/4 v2, 0x0

    .line 192
    :goto_6
    invoke-virtual {p0, v4, v0, v5, v2}, Lcom/android/server/pm/PackageInstallerSession;->extractNativeLibraries(Landroid/content/pm/parsing/PackageLite;Ljava/io/File;Ljava/lang/String;Z)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 196
    .line 197
    if-eqz v0, :cond_9

    .line 198
    .line 199
    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->finalizeSdDir(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    const/16 v3, -0x12

    .line 204
    .line 205
    if-eqz v2, :cond_8

    .line 206
    .line 207
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->defaultContainerGid:I

    .line 208
    .line 209
    const/4 v2, 0x0

    .line 210
    invoke-static {v0, p0, v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result p0

    .line 214
    if-eqz p0, :cond_7

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_7
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 218
    .line 219
    const-string v2, "Failed to fix permissions on container "

    .line 220
    .line 221
    invoke-static {v2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-direct {p0, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p0

    .line 229
    :cond_8
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 230
    .line 231
    const-string v2, "Failed to finalize container "

    .line 232
    .line 233
    invoke-static {v2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-direct {p0, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 241
    :catchall_1
    move-exception p0

    .line 242
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 243
    :try_start_8
    throw p0

    .line 244
    :cond_9
    :goto_7
    monitor-exit v1

    .line 245
    return-void

    .line 246
    :cond_a
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 247
    .line 248
    const-string v0, "Session no resolved base file"

    .line 249
    .line 250
    invoke-direct {p0, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p0

    .line 254
    :cond_b
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 255
    .line 256
    const-string v0, "Session no signing data"

    .line 257
    .line 258
    invoke-direct {p0, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw p0

    .line 262
    :cond_c
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 263
    .line 264
    const-string v0, "Session no package name"

    .line 265
    .line 266
    invoke-direct {p0, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw p0

    .line 270
    :cond_d
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 271
    .line 272
    const-string v0, "Session not sealed"

    .line 273
    .line 274
    invoke-direct {p0, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw p0

    .line 278
    :cond_e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 279
    .line 280
    const-string v0, "Session destroyed"

    .line 281
    .line 282
    invoke-direct {p0, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw p0

    .line 286
    :cond_f
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 287
    .line 288
    const-string v0, "Session files in use"

    .line 289
    .line 290
    invoke-direct {p0, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw p0

    .line 294
    :goto_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 295
    throw p0
.end method

.method public final prepareDataLoaderLocked()Z
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

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
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v8, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    array-length v2, v0

    .line 31
    const/4 v12, 0x0

    .line 32
    move v3, v12

    .line 33
    :goto_0
    if-ge v3, v2, :cond_4

    .line 34
    .line 35
    aget-object v4, v0, v3

    .line 36
    .line 37
    sget-object v5, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Lcom/android/server/pm/PackageInstallerSession$1;

    .line 38
    .line 39
    new-instance v6, Ljava/io/File;

    .line 40
    .line 41
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-direct {v6, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageInstallerSession$1;->accept(Ljava/io/File;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/content/pm/InstallationFile;->getData()Landroid/content/pm/InstallationFileParcel;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    sget-object v5, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Lcom/android/server/pm/PackageInstallerSession$1;

    .line 65
    .line 66
    new-instance v6, Ljava/io/File;

    .line 67
    .line 68
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-direct {v6, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageInstallerSession$1;->accept(Ljava/io/File;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_3

    .line 82
    .line 83
    invoke-virtual {v4}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v4}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    add-int/lit8 v4, v4, -0x8

    .line 96
    .line 97
    invoke-virtual {v5, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 108
    .line 109
    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    xor-int/2addr v1, v2

    .line 116
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 117
    .line 118
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    new-instance v11, Lcom/android/server/pm/PackageInstallerSession$6;

    .line 123
    .line 124
    move-object v2, v11

    .line 125
    move-object v3, p0

    .line 126
    move v4, v10

    .line 127
    move v5, v1

    .line 128
    move-object v6, v9

    .line 129
    move-object v7, v0

    .line 130
    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageInstallerSession$6;-><init>(Lcom/android/server/pm/PackageInstallerSession;ZZLjava/util/List;Landroid/content/pm/DataLoaderParams;Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    const/16 v13, -0x14

    .line 134
    .line 135
    if-nez v1, :cond_8

    .line 136
    .line 137
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getPerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    new-instance v7, Landroid/os/incremental/StorageHealthCheckParams;

    .line 148
    .line 149
    invoke-direct {v7}, Landroid/os/incremental/StorageHealthCheckParams;-><init>()V

    .line 150
    .line 151
    .line 152
    const/16 v2, 0x7d0

    .line 153
    .line 154
    iput v2, v7, Landroid/os/incremental/StorageHealthCheckParams;->blockedTimeoutMs:I

    .line 155
    .line 156
    const/16 v2, 0x1b58

    .line 157
    .line 158
    iput v2, v7, Landroid/os/incremental/StorageHealthCheckParams;->unhealthyTimeoutMs:I

    .line 159
    .line 160
    const v2, 0xea60

    .line 161
    .line 162
    .line 163
    iput v2, v7, Landroid/os/incremental/StorageHealthCheckParams;->unhealthyMonitoringMs:I

    .line 164
    .line 165
    new-instance v8, Lcom/android/server/pm/PackageInstallerSession$7;

    .line 166
    .line 167
    invoke-direct {v8, p0, v10}, Lcom/android/server/pm/PackageInstallerSession$7;-><init>(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 168
    .line 169
    .line 170
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 171
    .line 172
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 177
    .line 178
    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 179
    .line 180
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 181
    .line 182
    const-wide/16 v5, 0x0

    .line 183
    .line 184
    invoke-interface {v2, v3, v5, v6, v4}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    if-eqz v2, :cond_5

    .line 189
    .line 190
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 191
    .line 192
    if-eqz v3, :cond_5

    .line 193
    .line 194
    new-instance v3, Ljava/io/File;

    .line 195
    .line 196
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 197
    .line 198
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :goto_2
    move-object v4, v2

    .line 210
    goto :goto_3

    .line 211
    :catch_0
    move-exception p0

    .line 212
    goto :goto_6

    .line 213
    :cond_5
    const/4 v2, 0x0

    .line 214
    goto :goto_2

    .line 215
    :goto_3
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 216
    .line 217
    if-nez v2, :cond_7

    .line 218
    .line 219
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 220
    .line 221
    sget-boolean v3, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 222
    .line 223
    if-eqz v3, :cond_6

    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    goto :goto_4

    .line 230
    :cond_6
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 231
    .line 232
    :goto_4
    new-instance v14, Lcom/android/server/pm/PackageInstallerSession$8;

    .line 233
    .line 234
    invoke-direct {v14, p0}, Lcom/android/server/pm/PackageInstallerSession$8;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 235
    .line 236
    .line 237
    move-object v5, v0

    .line 238
    move-object v6, v11

    .line 239
    move-object v10, v1

    .line 240
    move-object v11, v14

    .line 241
    invoke-static/range {v2 .. v11}, Landroid/os/incremental/IncrementalFileStorages;->initialize(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;Ljava/util/List;[Landroid/os/incremental/PerUidReadTimeouts;Landroid/content/pm/IPackageLoadingProgressCallback;)Landroid/os/incremental/IncrementalFileStorages;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_7
    move-object v3, v0

    .line 249
    move-object v4, v11

    .line 250
    move-object v5, v7

    .line 251
    move-object v6, v8

    .line 252
    move-object v7, v1

    .line 253
    invoke-virtual/range {v2 .. v7}, Landroid/os/incremental/IncrementalFileStorages;->startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .line 255
    .line 256
    :goto_5
    return v12

    .line 257
    :goto_6
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 258
    .line 259
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-direct {v0, v13, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    .line 269
    .line 270
    throw v0

    .line 271
    :cond_8
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 272
    .line 273
    const-class v2, Landroid/content/pm/DataLoaderManager;

    .line 274
    .line 275
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    move-object v2, v1

    .line 280
    check-cast v2, Landroid/content/pm/DataLoaderManager;

    .line 281
    .line 282
    if-eqz v2, :cond_a

    .line 283
    .line 284
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 285
    .line 286
    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    const-wide/16 v5, 0x0

    .line 291
    .line 292
    move-object v7, v11

    .line 293
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/DataLoaderManager;->bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z

    .line 294
    .line 295
    .line 296
    move-result p0

    .line 297
    if-eqz p0, :cond_9

    .line 298
    .line 299
    return v12

    .line 300
    :cond_9
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 301
    .line 302
    const-string v0, "Failed to initialize data loader"

    .line 303
    .line 304
    invoke-direct {p0, v13, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw p0

    .line 308
    :cond_a
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 309
    .line 310
    const-string v0, "Failed to find data loader manager service"

    .line 311
    .line 312
    invoke-direct {p0, v13, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw p0
.end method

.method public final prepareInheritedFiles()V
    .locals 9

    .line 1
    const-string v0, "Inherited files: "

    .line 2
    .line 3
    const-string v1, "Final Size "

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_f

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 12
    .line 13
    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    if-eq v2, v3, :cond_0

    .line 17
    .line 18
    goto/16 :goto_9

    .line 19
    .line 20
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v2

    .line 23
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 24
    .line 25
    const/16 v4, -0x6e

    .line 26
    .line 27
    if-nez v3, :cond_e

    .line 28
    .line 29
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 30
    .line 31
    if-nez v3, :cond_d

    .line 32
    .line 33
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 34
    .line 35
    if-eqz v3, :cond_c

    .line 36
    .line 37
    sget-boolean v3, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->calculateInstalledSize()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    const-string v6, "PackageInstallerSession"

    .line 50
    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v4, v5, v1}, Lcom/android/server/pm/PackageInstallerSession;->resizeContainerForSd(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto/16 :goto_8

    .line 74
    .line 75
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 76
    .line 77
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception p0

    .line 82
    :try_start_2
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 83
    .line 84
    const-string v1, "Failed to resolve stage location"

    .line 85
    .line 86
    const/16 v3, -0x12

    .line 87
    .line 88
    invoke-direct {v0, v3, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :cond_2
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 93
    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catch_1
    move-exception p0

    .line 100
    goto/16 :goto_7

    .line 101
    .line 102
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 103
    .line 104
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const-string v5, "PackageInstallerSession"

    .line 109
    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 116
    .line 117
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 128
    .line 129
    check-cast v0, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_5

    .line 136
    .line 137
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    .line 138
    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    const-string v0, "mInheritedFilesBase == null"

    .line 145
    .line 146
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p0

    .line 150
    :cond_5
    :goto_3
    invoke-static {v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->isLinkPossible(Ljava/util/List;Ljava/io/File;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_b

    .line 155
    .line 156
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    .line 157
    .line 158
    check-cast v0, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_6

    .line 165
    .line 166
    new-instance v0, Ljava/io/File;

    .line 167
    .line 168
    const-string/jumbo v5, "oat"

    .line 169
    .line 170
    .line 171
    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    .line 175
    .line 176
    invoke-virtual {p0, v4, v5, v0}, Lcom/android/server/pm/PackageInstallerSession;->createOatDirs(Ljava/lang/String;Ljava/util/List;Ljava/io/File;)V

    .line 177
    .line 178
    .line 179
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    .line 180
    .line 181
    check-cast v0, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_a

    .line 188
    .line 189
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    .line 190
    .line 191
    check-cast v0, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_a

    .line 202
    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    check-cast v5, Ljava/lang/String;

    .line 208
    .line 209
    const/16 v6, 0x2f

    .line 210
    .line 211
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-ltz v6, :cond_9

    .line 216
    .line 217
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    const/4 v8, 0x1

    .line 222
    sub-int/2addr v7, v8

    .line 223
    if-lt v6, v7, :cond_7

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_7
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    new-instance v8, Ljava/io/File;

    .line 231
    .line 232
    invoke-direct {v8, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    if-nez v7, :cond_8

    .line 240
    .line 241
    invoke-static {v8}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 242
    .line 243
    .line 244
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 245
    .line 246
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    new-instance v6, Ljava/io/File;

    .line 251
    .line 252
    invoke-direct {v6, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-static {v6}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 256
    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_9
    :goto_5
    const-string v6, "PackageInstallerSession"

    .line 260
    .line 261
    new-instance v7, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v8, "Skipping native library creation for linking due to invalid path: "

    .line 267
    .line 268
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    .line 283
    .line 284
    invoke-virtual {p0, v4, v1, v3, v0}, Lcom/android/server/pm/PackageInstallerSession;->linkFiles(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    .line 285
    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_b
    invoke-static {v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->copyFiles(Ljava/util/List;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 289
    .line 290
    .line 291
    :goto_6
    :try_start_4
    monitor-exit v2

    .line 292
    return-void

    .line 293
    :goto_7
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 294
    .line 295
    const-string v1, "Failed to inherit existing install"

    .line 296
    .line 297
    const/4 v3, -0x4

    .line 298
    invoke-direct {v0, v3, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    .line 300
    .line 301
    throw v0

    .line 302
    :cond_c
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 303
    .line 304
    const-string v0, "Session not sealed"

    .line 305
    .line 306
    invoke-direct {p0, v4, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw p0

    .line 310
    :cond_d
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 311
    .line 312
    const-string v0, "Session destroyed"

    .line 313
    .line 314
    invoke-direct {p0, v4, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw p0

    .line 318
    :cond_e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 319
    .line 320
    const-string v0, "Session files in use"

    .line 321
    .line 322
    invoke-direct {p0, v4, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw p0

    .line 326
    :goto_8
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 327
    throw p0

    .line 328
    :cond_f
    :goto_9
    return-void
.end method

.method public final releaseTransactionLock()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final removeAppMetadata()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getStagedAppMetadataFile()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final removeChildSessionId(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "removeChildSessionId"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-gez p1, :cond_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    .line 37
    .line 38
    .line 39
    const/4 v2, -0x1

    .line 40
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    .line 47
    .line 48
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 52
    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :catchall_1
    move-exception p1

    .line 57
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    throw p0
.end method

.method public final removeFile(ILjava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "File already removed: "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeFile_enforcePermission()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 15
    .line 16
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v2, "removeFile"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    .line 37
    .line 38
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    new-instance v11, Landroid/content/pm/InstallationFile;

    .line 45
    .line 46
    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const/4 v9, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    const-wide/16 v7, -0x1

    .line 53
    .line 54
    move-object v4, v11

    .line 55
    move v5, p1

    .line 56
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v3, v11}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_0

    .line 67
    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw p0

    .line 92
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    const-string p1, "Must specify package name to remove a split"

    .line 95
    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    const-string p1, "Cannot add files to non-data loader installation session."

    .line 103
    .line 104
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method public final removeSplit(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 10
    .line 11
    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    const-string/jumbo v1, "removeSplit"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    :try_start_2
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    throw p0

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    throw p0

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "Must specify package name to remove a split"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p1, "Cannot remove splits in a data loader installation session."

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final reportUnarchivalStatus(IIJLandroid/app/PendingIntent;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalStatus:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalStatus:I

    .line 7
    .line 8
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;

    .line 13
    .line 14
    move-object v0, v6

    .line 15
    move-object v1, p0

    .line 16
    move v2, p1

    .line 17
    move-wide v3, p3

    .line 18
    move-object v5, p5

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageInstallerSession;IJLandroid/app/PendingIntent;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    new-instance p1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda2;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "Unarchival status for ID %s has already been set or a session has been created for it already by the caller."

    .line 47
    .line 48
    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final requestChecksums(Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerRootOrVerifier()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Landroid/os/ParcelableException;

    .line 14
    .line 15
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    .line 16
    .line 17
    const/16 p3, -0x12

    .line 18
    .line 19
    const-string p4, "Failed to resolve stage location"

    .line 20
    .line 21
    invoke-direct {p2, p3, p4, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 36
    .line 37
    :goto_1
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 57
    .line 58
    :goto_2
    move-object v2, p1

    .line 59
    goto :goto_3

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 68
    .line 69
    move v3, p2

    .line 70
    move v4, p3

    .line 71
    move-object v5, p4

    .line 72
    move-object v6, p5

    .line 73
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->requestFileChecksums(Ljava/io/File;Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catch_1
    move-exception p0

    .line 78
    new-instance p1, Landroid/os/ParcelableException;

    .line 79
    .line 80
    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method

.method public final requestUserPreapproval(Landroid/content/pm/PackageInstaller$PreapprovalDetails;Landroid/content/IntentSender;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "request of session "

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 8
    .line 9
    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 10
    .line 11
    if-nez v1, :cond_3

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 38
    :try_start_1
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRemoteStatusReceiver:Landroid/content/IntentSender;

    .line 39
    .line 40
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 41
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 42
    const-string p1, "PackageInstallerSession"

    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "START PREAPPROVAL SESSION: id{"

    .line 47
    .line 48
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 52
    .line 53
    const-string/jumbo v1, "}"

    .line 54
    .line 55
    .line 56
    invoke-static {p2, v0, v1, p1}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 60
    .line 61
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    :try_start_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const v1, 0x11101bf

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 73
    .line 74
    .line 75
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    const/4 v1, 0x1

    .line 77
    if-nez v0, :cond_0

    .line 78
    .line 79
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    :try_start_4
    const-string/jumbo v0, "package_manager_service"

    .line 85
    .line 86
    .line 87
    const-string v2, "is_preapproval_available"

    .line 88
    .line 89
    invoke-static {v0, v2, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 90
    .line 91
    .line 92
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 93
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    move p1, v0

    .line 97
    :goto_0
    if-nez p1, :cond_1

    .line 98
    .line 99
    const-string p1, "Request user pre-approval is currently not available."

    .line 100
    .line 101
    const/4 p2, 0x0

    .line 102
    const/16 v0, -0x81

    .line 103
    .line 104
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sendUpdateToRemoteStatusReceiver(Ljava/lang/String;Landroid/os/Bundle;IZ)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 109
    .line 110
    monitor-enter v0

    .line 111
    :try_start_5
    const-string p1, "dispatchPreapprovalRequest"

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_2

    .line 123
    .line 124
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 131
    .line 132
    const/4 p1, 0x6

    .line 133
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :catchall_0
    move-exception p0

    .line 142
    goto :goto_1

    .line 143
    :cond_2
    :try_start_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 144
    .line 145
    const-string p1, "dispatchPreapprovalRequest not allowed after requesting"

    .line 146
    .line 147
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0

    .line 151
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 152
    throw p0

    .line 153
    :catchall_1
    move-exception p0

    .line 154
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :catchall_2
    move-exception p0

    .line 159
    goto :goto_2

    .line 160
    :catchall_3
    move-exception p0

    .line 161
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 162
    :try_start_8
    throw p0

    .line 163
    :goto_2
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 164
    throw p0

    .line 165
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 166
    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v0, "Session "

    .line 170
    .line 171
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 175
    .line 176
    const-string v0, " is a parent of multi-package session and requestUserPreapproval on the parent session isn\'t supported."

    .line 177
    .line 178
    invoke-static {p0, p2, v0}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1
.end method

.method public final resolveAndStageFileLocked(Ljava/io/File;Ljava/io/File;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFoundForApks:Z

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFoundForApks:Z

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 34
    .line 35
    check-cast v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/io/File;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const-string v4, ".apk"

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 82
    .line 83
    const/16 p1, -0x76

    .line 84
    .line 85
    const-string p2, "Previously staged apk is missing fs-verity signature"

    .line 86
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageFsveritySignatureLocked(Ljava/io/File;Ljava/io/File;Z)V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Landroid/security/Flags;->extendVbChainToUpdatedApk()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    new-instance v0, Ljava/io/File;

    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, ".idsig"

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_5

    .line 137
    .line 138
    new-instance v1, Ljava/io/File;

    .line 139
    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    invoke-static {p1}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string v1, "Failed to resolve stage location"

    .line 170
    .line 171
    const/16 v2, -0x12

    .line 172
    .line 173
    if-nez v0, :cond_6

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-static {v3}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_15

    .line 185
    .line 186
    sget-boolean v3, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 187
    .line 188
    if-eqz v3, :cond_7

    .line 189
    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catch_0
    move-exception p0

    .line 195
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 196
    .line 197
    invoke-direct {p1, v2, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    throw p1

    .line 201
    :cond_7
    :goto_2
    new-instance v4, Ljava/io/File;

    .line 202
    .line 203
    if-eqz v3, :cond_8

    .line 204
    .line 205
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_8
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 209
    .line 210
    :goto_3
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-static {v5}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v0, v4}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    .line 222
    .line 223
    .line 224
    invoke-static {}, Landroid/content/pm/dex/DexMetadataHelper;->isFsVerityRequired()Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageFsveritySignatureLocked(Ljava/io/File;Ljava/io/File;Z)V

    .line 229
    .line 230
    .line 231
    :goto_4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    .line 242
    .line 243
    if-nez v0, :cond_9

    .line 244
    .line 245
    goto/16 :goto_e

    .line 246
    .line 247
    :cond_9
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    .line 248
    .line 249
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    iget-object p1, v0, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->mChecksums:[Landroid/content/pm/Checksum;

    .line 257
    .line 258
    array-length v3, p1

    .line 259
    if-nez v3, :cond_a

    .line 260
    .line 261
    goto/16 :goto_e

    .line 262
    .line 263
    :cond_a
    sget-boolean v3, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 264
    .line 265
    if-eqz v3, :cond_b

    .line 266
    .line 267
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    .line 269
    .line 270
    goto :goto_5

    .line 271
    :catch_1
    move-exception p0

    .line 272
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 273
    .line 274
    invoke-direct {p1, v2, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    .line 276
    .line 277
    throw p1

    .line 278
    :cond_b
    :goto_5
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    invoke-static {p2}, Lcom/android/server/pm/ApkChecksums;->buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    new-instance v1, Ljava/io/File;

    .line 287
    .line 288
    if-eqz v3, :cond_c

    .line 289
    .line 290
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_c
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 294
    .line 295
    :goto_6
    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :try_start_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 299
    .line 300
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_2

    .line 301
    .line 302
    .line 303
    :try_start_3
    invoke-static {v2, p1}, Lcom/android/server/pm/ApkChecksums;->writeChecksums(Ljava/io/OutputStream;[Landroid/content/pm/Checksum;)V

    .line 304
    .line 305
    .line 306
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->mSignature:[B

    .line 307
    .line 308
    if-eqz v0, :cond_d

    .line 309
    .line 310
    array-length v4, v0

    .line 311
    if-lez v4, :cond_d

    .line 312
    .line 313
    invoke-static {p1, v0}, Lcom/android/server/pm/ApkChecksums;->verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;

    .line 314
    .line 315
    .line 316
    goto :goto_7

    .line 317
    :catchall_0
    move-exception p1

    .line 318
    goto/16 :goto_f

    .line 319
    .line 320
    :cond_d
    :goto_7
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 329
    .line 330
    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    :try_start_4
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 332
    .line 333
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 334
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    const/16 v7, 0x1ff

    .line 339
    .line 340
    if-eqz v5, :cond_f

    .line 341
    .line 342
    if-nez v6, :cond_e

    .line 343
    .line 344
    goto :goto_8

    .line 345
    :cond_e
    invoke-virtual {v6, p2, v4, v7}, Landroid/os/incremental/IncrementalFileStorages;->makeFile(Ljava/lang/String;[BI)V

    .line 346
    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_f
    :goto_8
    invoke-static {p1, v4}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V

    .line 350
    .line 351
    .line 352
    :goto_9
    invoke-virtual {p0, v1, v1}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    .line 353
    .line 354
    .line 355
    if-eqz v0, :cond_14

    .line 356
    .line 357
    array-length p1, v0

    .line 358
    if-nez p1, :cond_10

    .line 359
    .line 360
    goto :goto_d

    .line 361
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string p2, ".signature"

    .line 370
    .line 371
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    new-instance p2, Ljava/io/File;

    .line 379
    .line 380
    if-eqz v3, :cond_11

    .line 381
    .line 382
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 383
    .line 384
    goto :goto_a

    .line 385
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 386
    .line 387
    :goto_a
    invoke-direct {p2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 395
    .line 396
    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 397
    :try_start_6
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 398
    .line 399
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 400
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    if-eqz v3, :cond_13

    .line 405
    .line 406
    if-nez v4, :cond_12

    .line 407
    .line 408
    goto :goto_b

    .line 409
    :cond_12
    invoke-virtual {v4, p1, v0, v7}, Landroid/os/incremental/IncrementalFileStorages;->makeFile(Ljava/lang/String;[BI)V

    .line 410
    .line 411
    .line 412
    goto :goto_c

    .line 413
    :cond_13
    :goto_b
    invoke-static {v1, v0}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V

    .line 414
    .line 415
    .line 416
    :goto_c
    invoke-virtual {p0, p2, p2}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 417
    .line 418
    .line 419
    :cond_14
    :goto_d
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_8 .. :try_end_8} :catch_2

    .line 420
    .line 421
    .line 422
    goto :goto_e

    .line 423
    :catch_2
    move-exception p1

    .line 424
    goto :goto_11

    .line 425
    :catch_3
    move-exception p1

    .line 426
    goto :goto_12

    .line 427
    :catchall_1
    move-exception p1

    .line 428
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 429
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 430
    :goto_e
    return-void

    .line 431
    :catchall_2
    move-exception p1

    .line 432
    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 433
    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 434
    :goto_f
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 435
    .line 436
    .line 437
    goto :goto_10

    .line 438
    :catchall_3
    move-exception p2

    .line 439
    :try_start_e
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 440
    .line 441
    .line 442
    :goto_10
    throw p1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_e .. :try_end_e} :catch_2

    .line 443
    :goto_11
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    .line 444
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    const-string v1, "Failed to verify digests\' signature for "

    .line 448
    .line 449
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object p0

    .line 461
    const/16 v0, -0x67

    .line 462
    .line 463
    invoke-direct {p2, v0, p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    .line 465
    .line 466
    throw p2

    .line 467
    :goto_12
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    .line 468
    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    const-string v1, "Failed to store digests for "

    .line 472
    .line 473
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object p0

    .line 485
    const/4 v0, -0x4

    .line 486
    invoke-direct {p2, v0, p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    .line 488
    .line 489
    throw p2

    .line 490
    :cond_15
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 491
    .line 492
    const-string p1, "Invalid filename: "

    .line 493
    .line 494
    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    const/4 p2, -0x2

    .line 499
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 500
    .line 501
    .line 502
    throw p0
.end method

.method public final resolveStageDirLocked()Ljava/io/File;
    .locals 5

    .line 1
    const-string v0, "Failed to resolve path to container "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 4
    .line 5
    if-nez v1, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    new-instance v0, Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {v3, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 68
    .line 69
    return-object p0
.end method

.method public final seal()V
    .locals 2

    .line 1
    const-string/jumbo v0, "seal"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V

    .line 14
    .line 15
    .line 16
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 36
    .line 37
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v1
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V

    .line 41
    .line 42
    .line 43
    monitor-exit v1

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    :try_start_4
    throw p0
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    return-void

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 53
    :try_start_6
    throw p0
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6 .. :try_end_6} :catch_0

    .line 54
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v1, "Package is not valid"

    .line 57
    .line 58
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method public final sealLocked()V
    .locals 3

    .line 1
    const-string/jumbo v0, "sealing of session "

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    iget v0, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 35
    .line 36
    invoke-static {v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1
.end method

.method public final sendPendingUserActionIntent(Landroid/content/IntentSender;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 22
    .line 23
    const-string v3, "android.content.pm.action.CONFIRM_PRE_APPROVAL"

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    move-object v0, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const-string v0, "android.content.pm.action.CONFIRM_INSTALL"

    .line 30
    .line 31
    :goto_1
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 42
    .line 43
    const-string v4, "android.content.pm.extra.SESSION_ID"

    .line 44
    .line 45
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    const-string v0, ""

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const-string v0, " [null]"

    .line 59
    .line 60
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string/jumbo v6, "status of session: pending{"

    .line 63
    .line 64
    .line 65
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string/jumbo v6, "}, User action required"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v5, "PackageInstallerSession"

    .line 87
    .line 88
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 94
    .line 95
    new-instance v9, Landroid/content/Intent;

    .line 96
    .line 97
    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    const-string p0, "android.content.pm.extra.STATUS"

    .line 104
    .line 105
    const/4 v0, -0x1

    .line 106
    invoke-virtual {v9, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    const-string v0, "android.content.pm.extra.PRE_APPROVAL"

    .line 118
    .line 119
    invoke-virtual {v9, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    const-string p0, "android.intent.extra.INTENT"

    .line 123
    .line 124
    invoke-virtual {v9, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    const/4 v8, 0x0

    .line 139
    const/4 v10, 0x0

    .line 140
    const/4 v11, 0x0

    .line 141
    const/4 v12, 0x0

    .line 142
    move-object v6, p1

    .line 143
    invoke-virtual/range {v6 .. v13}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    :catch_0
    return-void
.end method

.method public final sendPendingUserActionIntentIfNeeded(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "PackageInstallerSession#sendPendingUserActionIntentIfNeeded"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRemoteStatusReceiver:Landroid/content/IntentSender;

    .line 20
    .line 21
    monitor-exit p1

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    new-instance p1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {p1, v1, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final sendUpdateToRemoteStatusReceiver(Ljava/lang/String;Landroid/os/Bundle;IZ)V
    .locals 2

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    iget-object p4, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p4

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRemoteStatusReceiver:Landroid/content/IntentSender;

    .line 7
    .line 8
    monitor-exit p4

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 28
    .line 29
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 30
    .line 31
    iput-object p2, p4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 32
    .line 33
    iput-object v0, p4, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 34
    .line 35
    iput p3, p4, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 p1, 0x0

    .line 56
    :goto_1
    iput p1, p4, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 59
    .line 60
    const/4 p1, 0x4

    .line 61
    invoke-virtual {p0, p1, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method

.method public final sessionContains(Ljava/util/function/Predicate;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsLocked()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 35
    .line 36
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_2
    const/4 p0, 0x0

    .line 45
    return p0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p0
.end method

.method public final setChecksums(Ljava/lang/String;[Landroid/content/pm/Checksum;[B)V
    .locals 4

    .line 1
    array-length v0, p2

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 23
    .line 24
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_7

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-class v2, Landroid/app/AppOpsManager;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/app/AppOpsManager;

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v1, v2, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    if-eqz p3, :cond_2

    .line 62
    .line 63
    array-length v0, p3

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    :try_start_0
    invoke-static {p2, p3}, Lcom/android/server/pm/ApkChecksums;->verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception p0

    .line 71
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string p3, "Can\'t verify signature: "

    .line 76
    .line 77
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_2
    :goto_1
    array-length v0, p2

    .line 96
    const/4 v1, 0x0

    .line 97
    :goto_2
    if-ge v1, v0, :cond_4

    .line 98
    .line 99
    aget-object v2, p2, v1

    .line 100
    .line 101
    invoke-virtual {v2}, Landroid/content/pm/Checksum;->getValue()[B

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eqz v3, :cond_3

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/content/pm/Checksum;->getValue()[B

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    array-length v2, v2

    .line 112
    const/16 v3, 0x40

    .line 113
    .line 114
    if-gt v2, v3, :cond_3

    .line 115
    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    const-string p1, "Invalid checksum."

    .line 122
    .line 123
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 131
    .line 132
    monitor-enter v0

    .line 133
    :try_start_1
    const-string v1, "addChecksums"

    .line 134
    .line 135
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    .line 139
    .line 140
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_5

    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    .line 147
    .line 148
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    .line 149
    .line 150
    invoke-direct {v1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;-><init>([Landroid/content/pm/Checksum;[B)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 158
    :catchall_0
    move-exception p0

    .line 159
    goto :goto_3

    .line 160
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 161
    .line 162
    const-string p1, "Duplicate checksums."

    .line 163
    .line 164
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0

    .line 168
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    throw p0

    .line 170
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 171
    .line 172
    const-string p1, "Can\'t obtain calling installer\'s package."

    .line 173
    .line 174
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 179
    .line 180
    const-string p1, "Installer package is empty."

    .line 181
    .line 182
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p0
.end method

.method public final setClientProgress(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final setClientProgressLocked(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setParentSessionId(I)V
    .locals 4

    .line 1
    const-string v0, "The parent of "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    const/4 v2, -0x1

    .line 7
    if-eq p1, v2, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 10
    .line 11
    if-ne v3, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " is alreadyset to "

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 32
    .line 33
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 47
    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final setPermissionsResult(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 17
    .line 18
    const-string p1, "Must be sealed to accept permissions"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    check-cast v0, Lcom/android/server/pm/PackageInstallerService;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v0, p0

    .line 52
    :goto_1
    if-eqz p1, :cond_4

    .line 53
    .line 54
    const-string p1, "PackageInstallerSession"

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string/jumbo v2, "status of session: accepted{"

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 65
    .line 66
    const-string/jumbo v3, "}, User has confirmed"

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v2, v3, p1}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 73
    .line 74
    monitor-enter p1

    .line 75
    const/4 v1, 0x1

    .line 76
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 77
    .line 78
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object p1, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_3

    .line 88
    .line 89
    const/4 p0, 0x3

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    const/4 p0, 0x6

    .line 92
    :goto_2
    invoke-virtual {p1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    throw p0

    .line 103
    :cond_4
    const-string p0, "User rejected permissions"

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerSession;->destroy(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string p0, "User rejected permissions"

    .line 109
    .line 110
    const/4 p1, 0x0

    .line 111
    const/16 v1, -0x73

    .line 112
    .line 113
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 114
    .line 115
    .line 116
    const-string p0, "User rejected permissions"

    .line 117
    .line 118
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_3
    return-void
.end method

.method public final setPreVerifiedDomains(Landroid/content/pm/verify/domain/DomainSet;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 6
    .line 7
    const/16 v1, 0x7d0

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "android.permission.ACCESS_INSTANT_APPS"

    .line 19
    .line 20
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 21
    .line 22
    invoke-interface {v0, v1, v2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 52
    .line 53
    const-string p1, "Only the instant app installer can call this API."

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p1, "Instant app installer is not available. Only the instant app installer can call this API."

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 68
    .line 69
    const-string p1, "You need android.permission.ACCESS_INSTANT_APPS permission to set pre-verified domains."

    .line 70
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    :try_start_0
    const-string/jumbo v2, "package_manager_service"

    .line 80
    .line 81
    .line 82
    const-string/jumbo v3, "pre_verified_domains_count_limit"

    .line 83
    .line 84
    .line 85
    const-wide/16 v4, 0x3e8

    .line 86
    .line 87
    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 91
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    int-to-long v0, v0

    .line 103
    cmp-long v0, v0, v2

    .line 104
    .line 105
    if-gtz v0, :cond_7

    .line 106
    .line 107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    :try_start_1
    const-string/jumbo v2, "package_manager_service"

    .line 112
    .line 113
    .line 114
    const-string/jumbo v3, "pre_verified_domain_length_limit"

    .line 115
    .line 116
    .line 117
    const-wide/16 v4, 0x100

    .line 118
    .line 119
    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 120
    .line 121
    .line 122
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_6

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    int-to-long v4, v4

    .line 151
    cmp-long v4, v4, v2

    .line 152
    .line 153
    if-gtz v4, :cond_5

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v0, "Pre-verified domain: ["

    .line 161
    .line 162
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v0, " ] exceeds maximum length allowed: "

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p0

    .line 184
    :cond_6
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 185
    .line 186
    monitor-enter v2

    .line 187
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 188
    .line 189
    .line 190
    const-string/jumbo v0, "setPreVerifiedDomains"

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 197
    .line 198
    monitor-exit v2

    .line 199
    return-void

    .line 200
    :catchall_0
    move-exception p0

    .line 201
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    throw p0

    .line 203
    :catchall_1
    move-exception p0

    .line 204
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    .line 206
    .line 207
    throw p0

    .line 208
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 209
    .line 210
    const-string p1, "The number of pre-verified domains have exceeded the maximum of "

    .line 211
    .line 212
    invoke-static {v2, v3, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p0

    .line 220
    :catchall_2
    move-exception p0

    .line 221
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    .line 223
    .line 224
    throw p0
.end method

.method public final setSessionFailed(ILjava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Marking session "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 7
    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    .line 17
    .line 18
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 22
    .line 23
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 26
    .line 27
    const-string p1, "PackageInstallerSession"

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, " as failed: "

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "Session marked as failed: "

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->destroy(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 73
    .line 74
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 81
    return-void

    .line 82
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    throw p0
.end method

.method public final setSessionReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 20
    .line 21
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 26
    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
.end method

.method public final setUnknownSourceConfirmResult(Z)V
    .locals 3

    .line 1
    const-string v0, "PackageInstallerSession"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "setUnknownSourceConfirmResult, sessionid: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", accepted: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter p1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mUnknownSourceInstallAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    const/4 v0, 0x3

    .line 52
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 57
    .line 58
    .line 59
    monitor-exit p1

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0

    .line 64
    :cond_0
    const-string p1, "User rejected installing unknown source package"

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string p1, "User rejected installing unknown source package"

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    const/16 v1, -0x73

    .line 73
    .line 74
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void

    .line 78
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 79
    .line 80
    const-string p1, "Must be sealed to accept permissions"

    .line 81
    .line 82
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final stageFileLocked(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Could not rename file "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " to "

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/16 p2, -0x6e

    .line 46
    .line 47
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public final stageViaHardLink(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Can\'t relabel file: "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x3e8

    .line 8
    .line 9
    if-ne v1, v2, :cond_2

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 15
    new-instance v2, Ljava/io/File;

    .line 16
    .line 17
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Ljava/io/File;

    .line 21
    .line 22
    sget-boolean v4, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 28
    .line 29
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v3, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :try_start_1
    invoke-static {p1, p0}, Landroid/system/Os;->link(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/16 p1, 0x1a4

    .line 44
    .line 45
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :catch_1
    move-exception p1

    .line 52
    :try_start_2
    invoke-virtual {p1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    :goto_2
    :try_start_3
    invoke-static {p0}, Landroid/system/Os;->unlink(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :catch_2
    const-string v0, "Failed to unlink session file: "

    .line 85
    .line 86
    const-string v1, "PackageInstallerSession"

    .line 87
    .line 88
    invoke-static {v0, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_3
    invoke-static {p1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    throw p0

    .line 96
    :catch_3
    move-exception p0

    .line 97
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    throw p0

    .line 102
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 103
    .line 104
    const-string p1, "link() can only be run by the system"

    .line 105
    .line 106
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0
.end method

.method public final streamValidateAndCommit()Z
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return v2

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 18
    .line 19
    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v1, :cond_4

    .line 23
    .line 24
    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return v3

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApkInstallLocked()V

    .line 50
    .line 51
    .line 52
    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 53
    .line 54
    const/16 v4, -0x6e

    .line 55
    .line 56
    if-nez v1, :cond_7

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_5

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    const/high16 v5, 0x3f800000    # 1.0f

    .line 68
    .line 69
    :try_start_2
    iput v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 70
    .line 71
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 72
    .line 73
    .line 74
    monitor-exit v1

    .line 75
    goto :goto_1

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    :try_start_3
    throw p0

    .line 79
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    .line 86
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    iput-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    .line 97
    .line 98
    monitor-exit v0

    .line 99
    return v2

    .line 100
    :cond_6
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    .line 101
    .line 102
    const-string v2, "The mCommitted of session %d should be false originally"

    .line 103
    .line 104
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 105
    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {v2, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-direct {v1, v4, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v1

    .line 122
    :cond_7
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 123
    .line 124
    const-string v1, "Session destroyed"

    .line 125
    .line 126
    invoke-direct {p0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    :try_start_4
    throw p0
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 132
    :catchall_2
    move-exception p0

    .line 133
    goto :goto_3

    .line 134
    :catch_0
    move-exception p0

    .line 135
    goto :goto_4

    .line 136
    :goto_3
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 137
    .line 138
    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :goto_4
    throw p0
.end method

.method public final transfer(Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 19
    .line 20
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    const-string v2, "android.permission.INSTALL_PACKAGES"

    .line 27
    .line 28
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 29
    .line 30
    invoke-interface {v0, v2, v3}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->areHiddenOptionsSet()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 48
    .line 49
    .line 50
    const-string/jumbo v2, "transfer"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    :try_start_2
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 60
    .line 61
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 62
    .line 63
    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 66
    .line 67
    iget v8, v1, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    const/4 v10, 0x0

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v7, 0x0

    .line 73
    move-object v2, p1

    .line 74
    move-object v4, p1

    .line 75
    move-object v6, p1

    .line 76
    invoke-static/range {v2 .. v10}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 81
    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string v1, "Package is not valid"

    .line 90
    .line 91
    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    throw p0

    .line 97
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 98
    .line 99
    const-string p1, "Can only transfer sessions that use public options"

    .line 100
    .line 101
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 106
    .line 107
    const-string v0, "Destination package "

    .line 108
    .line 109
    const-string v1, " does not have the android.permission.INSTALL_PACKAGES permission"

    .line 110
    .line 111
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :cond_2
    new-instance p0, Landroid/os/ParcelableException;

    .line 120
    .line 121
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 122
    .line 123
    invoke-direct {v0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw p0
.end method

.method public final validateApexInstallLocked()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, -0x2

    .line 13
    if-nez v2, :cond_5

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-gt v0, v2, :cond_4

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/io/File;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, ".apex"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_0
    invoke-static {v1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    new-instance v2, Ljava/io/File;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 55
    .line 56
    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFileLocked(Ljava/io/File;Ljava/io/File;)V

    .line 60
    .line 61
    .line 62
    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 76
    .line 77
    const/16 v2, 0x20

    .line 78
    .line 79
    invoke-static {v0, v1, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_2

    .line 88
    .line 89
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroid/content/pm/parsing/ApkLite;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 96
    .line 97
    if-nez v1, :cond_1

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getLongVersionCode()J

    .line 106
    .line 107
    .line 108
    move-result-wide v1

    .line 109
    iput-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 110
    .line 111
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->isHasDeviceAdminReceiver()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasDeviceAdminReceiver:Z

    .line 122
    .line 123
    return-void

    .line 124
    :cond_2
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 125
    .line 126
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getPackageNameForAudit()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :cond_3
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 147
    .line 148
    const-string v0, "Invalid filename: "

    .line 149
    .line 150
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-direct {p0, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :cond_4
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 159
    .line 160
    const-string v0, "Too many files for apex install"

    .line 161
    .line 162
    invoke-direct {p0, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0

    .line 166
    :cond_5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 167
    .line 168
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 169
    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 175
    .line 176
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    const-string v1, "Session: %d. No packages staged in %s"

    .line 185
    .line 186
    invoke-static {v1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-direct {v0, v3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v0
.end method

.method public final validateApkInstallLocked()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, -0x1

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x0

    .line 6
    iput-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 7
    .line 8
    iput-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    const-wide/16 v5, -0x1

    .line 11
    .line 12
    iput-wide v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 13
    .line 14
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 15
    .line 16
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 17
    .line 18
    iput-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 19
    .line 20
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 21
    .line 22
    check-cast v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 28
    .line 29
    check-cast v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 41
    .line 42
    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 43
    .line 44
    const-wide/32 v6, 0x4000040

    .line 45
    .line 46
    .line 47
    iget v8, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 48
    .line 49
    invoke-interface {v0, v5, v6, v7, v8}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 54
    .line 55
    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 56
    .line 57
    const/4 v6, -0x2

    .line 58
    const/4 v7, 0x2

    .line 59
    if-ne v0, v7, :cond_1

    .line 60
    .line 61
    if-eqz v5, :cond_0

    .line 62
    .line 63
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 69
    .line 70
    const-string v1, "Missing existing base package"

    .line 71
    .line 72
    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 77
    .line 78
    invoke-static {}, Landroid/security/Flags;->deprecateFsvSig()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/4 v8, 0x0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    :cond_2
    move v0, v8

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 88
    .line 89
    const/16 v9, 0x1e

    .line 90
    .line 91
    if-ge v0, v9, :cond_4

    .line 92
    .line 93
    const-string/jumbo v0, "ro.apk_verity.mode"

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-ne v0, v7, :cond_2

    .line 101
    .line 102
    :cond_4
    move v0, v3

    .line 103
    :goto_1
    if-eqz v0, :cond_5

    .line 104
    .line 105
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 106
    .line 107
    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 108
    .line 109
    if-ne v0, v7, :cond_5

    .line 110
    .line 111
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/android/internal/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    new-instance v0, Ljava/io/File;

    .line 124
    .line 125
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 126
    .line 127
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    invoke-static {v9}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    move v0, v3

    .line 145
    goto :goto_2

    .line 146
    :cond_5
    move v0, v8

    .line 147
    :goto_2
    iput-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mVerityFoundForApks:Z

    .line 148
    .line 149
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 150
    .line 151
    const-string v9, "Failed to resolve stage location"

    .line 152
    .line 153
    const/16 v10, -0x12

    .line 154
    .line 155
    if-eqz v0, :cond_6

    .line 156
    .line 157
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :catch_0
    move-exception v0

    .line 162
    move-object v1, v0

    .line 163
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 164
    .line 165
    invoke-direct {v0, v10, v9, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    if-eqz v0, :cond_7

    .line 174
    .line 175
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_7
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 179
    .line 180
    :goto_4
    sget-object v12, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Lcom/android/server/pm/PackageInstallerSession$1;

    .line 181
    .line 182
    invoke-static {v0, v11, v12}, Lcom/android/server/pm/PackageInstallerSession;->filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    new-instance v11, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    if-nez v12, :cond_8

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    if-eqz v12, :cond_8

    .line 206
    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    check-cast v12, Ljava/io/File;

    .line 212
    .line 213
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    add-int/lit8 v13, v13, -0x8

    .line 222
    .line 223
    invoke-virtual {v12, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_8
    invoke-static {}, Landroid/security/Flags;->extendVbChainToUpdatedApk()Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_a

    .line 236
    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-nez v0, :cond_a

    .line 242
    .line 243
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    if-eqz v12, :cond_a

    .line 258
    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v12

    .line 263
    check-cast v12, Ljava/io/File;

    .line 264
    .line 265
    new-instance v13, Ljava/io/File;

    .line 266
    .line 267
    new-instance v14, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v15

    .line 276
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v15, ".idsig"

    .line 280
    .line 281
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v14

    .line 288
    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 292
    .line 293
    .line 294
    move-result v13

    .line 295
    if-eqz v13, :cond_9

    .line 296
    .line 297
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v12

    .line 301
    invoke-static {v12}, Lcom/android/internal/security/VerityUtils;->setUpFsverity(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :catch_1
    move-exception v0

    .line 306
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    .line 307
    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v3, "Failed to enable fs-verity to verify with idsig: "

    .line 311
    .line 312
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    const/16 v2, -0x76

    .line 323
    .line 324
    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v1

    .line 328
    :cond_a
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 329
    .line 330
    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 331
    .line 332
    const/high16 v12, 0x8000000

    .line 333
    .line 334
    and-int/2addr v0, v12

    .line 335
    if-eqz v0, :cond_b

    .line 336
    .line 337
    move v0, v3

    .line 338
    goto :goto_7

    .line 339
    :cond_b
    move v0, v8

    .line 340
    :goto_7
    const/16 v13, -0x6e

    .line 341
    .line 342
    if-nez v0, :cond_d

    .line 343
    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    new-instance v9, Ljava/util/ArrayList;

    .line 349
    .line 350
    check-cast v0, Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 353
    .line 354
    .line 355
    move-result v10

    .line 356
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    .line 358
    .line 359
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 364
    .line 365
    .line 366
    move-result v14

    .line 367
    move v15, v8

    .line 368
    :goto_8
    if-ge v15, v14, :cond_16

    .line 369
    .line 370
    invoke-virtual {v10}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v16

    .line 378
    move-object/from16 v8, v16

    .line 379
    .line 380
    check-cast v8, Ljava/io/File;

    .line 381
    .line 382
    const/16 v4, 0x20

    .line 383
    .line 384
    invoke-static {v7, v8, v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 389
    .line 390
    .line 391
    move-result v7

    .line 392
    if-nez v7, :cond_c

    .line 393
    .line 394
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    check-cast v4, Landroid/content/pm/parsing/ApkLite;

    .line 399
    .line 400
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    add-int/2addr v15, v3

    .line 404
    const/4 v4, 0x0

    .line 405
    const/4 v7, 0x2

    .line 406
    const/4 v8, 0x0

    .line 407
    goto :goto_8

    .line 408
    :cond_c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 409
    .line 410
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getPackageNameForAudit()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    .line 428
    .line 429
    throw v0

    .line 430
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    new-instance v4, Ljava/util/ArrayList;

    .line 435
    .line 436
    array-length v7, v0

    .line 437
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 438
    .line 439
    .line 440
    sget-boolean v7, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 441
    .line 442
    if-eqz v7, :cond_e

    .line 443
    .line 444
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 445
    .line 446
    .line 447
    goto :goto_9

    .line 448
    :catch_2
    move-exception v0

    .line 449
    move-object v1, v0

    .line 450
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 451
    .line 452
    invoke-direct {v0, v10, v9, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 453
    .line 454
    .line 455
    throw v0

    .line 456
    :cond_e
    :goto_9
    array-length v7, v0

    .line 457
    const/4 v8, 0x0

    .line 458
    :goto_a
    if-ge v8, v7, :cond_15

    .line 459
    .line 460
    new-instance v9, Ljava/io/File;

    .line 461
    .line 462
    sget-boolean v10, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 463
    .line 464
    if-eqz v10, :cond_f

    .line 465
    .line 466
    iget-object v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 467
    .line 468
    goto :goto_b

    .line 469
    :cond_f
    iget-object v10, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 470
    .line 471
    :goto_b
    aget-object v14, v0, v8

    .line 472
    .line 473
    invoke-virtual {v14}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v14

    .line 477
    invoke-direct {v9, v10, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    sget-object v10, Lcom/android/server/pm/PackageInstallerSession;->sAddedApkFilter:Lcom/android/server/pm/PackageInstallerSession$1;

    .line 481
    .line 482
    invoke-virtual {v10, v9}, Lcom/android/server/pm/PackageInstallerSession$1;->accept(Ljava/io/File;)Z

    .line 483
    .line 484
    .line 485
    move-result v10

    .line 486
    if-nez v10, :cond_10

    .line 487
    .line 488
    goto :goto_c

    .line 489
    :cond_10
    :try_start_3
    aget-object v10, v0, v8

    .line 490
    .line 491
    invoke-virtual {v10}, Landroid/content/pm/InstallationFile;->getMetadata()[B

    .line 492
    .line 493
    .line 494
    move-result-object v10

    .line 495
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->fromByteArray([B)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    .line 496
    .line 497
    .line 498
    move-result-object v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 499
    iget-byte v14, v10, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    .line 500
    .line 501
    const/4 v15, 0x4

    .line 502
    const/16 v12, -0x16

    .line 503
    .line 504
    if-ne v14, v15, :cond_14

    .line 505
    .line 506
    if-ne v14, v15, :cond_13

    .line 507
    .line 508
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:[B

    .line 509
    .line 510
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->readArchivedPackageParcel([B)Landroid/content/pm/ArchivedPackageParcel;

    .line 511
    .line 512
    .line 513
    move-result-object v10

    .line 514
    if-eqz v10, :cond_12

    .line 515
    .line 516
    iget-object v14, v10, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    .line 517
    .line 518
    if-eqz v14, :cond_11

    .line 519
    .line 520
    iget-object v14, v10, Landroid/content/pm/ArchivedPackageParcel;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 521
    .line 522
    if-eqz v14, :cond_11

    .line 523
    .line 524
    new-instance v12, Landroid/content/pm/parsing/ApkLite;

    .line 525
    .line 526
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v9

    .line 530
    invoke-direct {v12, v9, v10}, Landroid/content/pm/parsing/ApkLite;-><init>(Ljava/lang/String;Landroid/content/pm/ArchivedPackageParcel;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    :goto_c
    add-int/2addr v8, v3

    .line 537
    const/high16 v12, 0x8000000

    .line 538
    .line 539
    goto :goto_a

    .line 540
    :cond_11
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 541
    .line 542
    const-string v1, "ArchivedPackage does not contain required info: "

    .line 543
    .line 544
    invoke-static {v9, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-direct {v0, v12, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 549
    .line 550
    .line 551
    throw v0

    .line 552
    :cond_12
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 553
    .line 554
    const-string v1, "Metadata does not contain ArchivedPackage: "

    .line 555
    .line 556
    invoke-static {v9, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    invoke-direct {v0, v12, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 561
    .line 562
    .line 563
    throw v0

    .line 564
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 565
    .line 566
    const-string v1, "Not an archived package metadata."

    .line 567
    .line 568
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    throw v0

    .line 572
    :cond_14
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 573
    .line 574
    const-string v1, "File metadata is not for ARCHIVED package: "

    .line 575
    .line 576
    invoke-static {v9, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    invoke-direct {v0, v12, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 581
    .line 582
    .line 583
    throw v0

    .line 584
    :catch_3
    move-exception v0

    .line 585
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    .line 586
    .line 587
    const-string v2, "Failed to "

    .line 588
    .line 589
    invoke-direct {v1, v13, v2, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 590
    .line 591
    .line 592
    throw v1

    .line 593
    :cond_15
    move-object v9, v4

    .line 594
    :cond_16
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 595
    .line 596
    .line 597
    move-result v0

    .line 598
    if-eqz v0, :cond_19

    .line 599
    .line 600
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    if-eqz v0, :cond_17

    .line 605
    .line 606
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    .line 607
    .line 608
    if-eqz v0, :cond_19

    .line 609
    .line 610
    :cond_17
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 611
    .line 612
    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 613
    .line 614
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    sget-boolean v3, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 619
    .line 620
    if-eqz v3, :cond_18

    .line 621
    .line 622
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 623
    .line 624
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    goto :goto_d

    .line 629
    :cond_18
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 630
    .line 631
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    :goto_d
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    const-string v2, "Session: %d. No packages staged in %s"

    .line 640
    .line 641
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 646
    .line 647
    .line 648
    throw v0

    .line 649
    :cond_19
    new-instance v4, Landroid/util/ArraySet;

    .line 650
    .line 651
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 652
    .line 653
    .line 654
    new-instance v7, Landroid/util/ArraySet;

    .line 655
    .line 656
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 657
    .line 658
    .line 659
    new-instance v8, Landroid/util/ArraySet;

    .line 660
    .line 661
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 662
    .line 663
    .line 664
    new-instance v10, Landroid/util/ArrayMap;

    .line 665
    .line 666
    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 667
    .line 668
    .line 669
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 670
    .line 671
    .line 672
    move-result-object v12

    .line 673
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    const/4 v9, 0x0

    .line 678
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 679
    .line 680
    .line 681
    move-result v14

    .line 682
    const-string v15, "PackageInstallerSession"

    .line 683
    .line 684
    if-eqz v14, :cond_25

    .line 685
    .line 686
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v14

    .line 690
    check-cast v14, Landroid/content/pm/parsing/ApkLite;

    .line 691
    .line 692
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v13

    .line 696
    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 697
    .line 698
    .line 699
    move-result v13

    .line 700
    if-eqz v13, :cond_24

    .line 701
    .line 702
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->isUpdatableSystem()Z

    .line 703
    .line 704
    .line 705
    move-result v13

    .line 706
    if-nez v13, :cond_1b

    .line 707
    .line 708
    iget v13, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 709
    .line 710
    if-nez v13, :cond_1a

    .line 711
    .line 712
    new-instance v13, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    const-string v3, "Overriding updatableSystem because the installer is root for: "

    .line 715
    .line 716
    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v3

    .line 723
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v3

    .line 730
    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .line 732
    .line 733
    goto :goto_f

    .line 734
    :cond_1a
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 735
    .line 736
    const-string v1, "Non updatable system package can\'t be installed or updated"

    .line 737
    .line 738
    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 739
    .line 740
    .line 741
    throw v0

    .line 742
    :cond_1b
    :goto_f
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 743
    .line 744
    if-nez v3, :cond_1c

    .line 745
    .line 746
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v3

    .line 750
    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 751
    .line 752
    move-object v13, v7

    .line 753
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getLongVersionCode()J

    .line 754
    .line 755
    .line 756
    move-result-wide v6

    .line 757
    iput-wide v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 758
    .line 759
    goto :goto_10

    .line 760
    :cond_1c
    move-object v13, v7

    .line 761
    :goto_10
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 762
    .line 763
    sget-object v7, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 764
    .line 765
    if-ne v6, v7, :cond_1d

    .line 766
    .line 767
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 768
    .line 769
    .line 770
    move-result-object v6

    .line 771
    iput-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 772
    .line 773
    :cond_1d
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->isHasDeviceAdminReceiver()Z

    .line 774
    .line 775
    .line 776
    move-result v6

    .line 777
    iput-boolean v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mHasDeviceAdminReceiver:Z

    .line 778
    .line 779
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v6

    .line 783
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v7

    .line 787
    move-object/from16 v17, v4

    .line 788
    .line 789
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getLongVersionCode()J

    .line 790
    .line 791
    .line 792
    move-result-wide v3

    .line 793
    invoke-virtual {v1, v6, v3, v4, v7}, Lcom/android/server/pm/PackageInstallerSession;->assertPackageConsistentLocked(Ljava/lang/String;JLjava/lang/String;)V

    .line 794
    .line 795
    .line 796
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 797
    .line 798
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 799
    .line 800
    .line 801
    move-result-object v4

    .line 802
    invoke-virtual {v3, v4}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    .line 803
    .line 804
    .line 805
    move-result v3

    .line 806
    if-eqz v3, :cond_23

    .line 807
    .line 808
    invoke-static {v14}, Landroid/content/pm/parsing/ApkLiteParseUtils;->splitNameToFileName(Landroid/content/pm/parsing/ApkLite;)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v3

    .line 812
    invoke-static {v3}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    .line 813
    .line 814
    .line 815
    move-result v4

    .line 816
    if-eqz v4, :cond_22

    .line 817
    .line 818
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getInstallLocation()I

    .line 819
    .line 820
    .line 821
    move-result v4

    .line 822
    if-eq v4, v2, :cond_1e

    .line 823
    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 825
    .line 826
    .line 827
    move-result-object v4

    .line 828
    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 829
    .line 830
    if-eqz v4, :cond_1e

    .line 831
    .line 832
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 833
    .line 834
    iget v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 835
    .line 836
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getInstallLocation()I

    .line 837
    .line 838
    .line 839
    move-result v7

    .line 840
    if-eq v6, v7, :cond_1e

    .line 841
    .line 842
    new-instance v6, Ljava/lang/StringBuilder;

    .line 843
    .line 844
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    const-string v4, " drops manifest attribute android:installLocation in "

    .line 851
    .line 852
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    const-string v4, " for "

    .line 859
    .line 860
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 864
    .line 865
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v4

    .line 872
    invoke-static {v15, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    .line 874
    .line 875
    :cond_1e
    new-instance v4, Ljava/io/File;

    .line 876
    .line 877
    sget-boolean v6, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 878
    .line 879
    if-eqz v6, :cond_1f

    .line 880
    .line 881
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 882
    .line 883
    goto :goto_11

    .line 884
    :cond_1f
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 885
    .line 886
    :goto_11
    invoke-direct {v4, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 890
    .line 891
    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 892
    .line 893
    const/high16 v6, 0x8000000

    .line 894
    .line 895
    and-int/2addr v3, v6

    .line 896
    if-eqz v3, :cond_20

    .line 897
    .line 898
    goto :goto_12

    .line 899
    :cond_20
    new-instance v3, Ljava/io/File;

    .line 900
    .line 901
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v6

    .line 905
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFileLocked(Ljava/io/File;Ljava/io/File;)V

    .line 912
    .line 913
    .line 914
    :goto_12
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v3

    .line 918
    if-nez v3, :cond_21

    .line 919
    .line 920
    iput-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 921
    .line 922
    move-object v9, v14

    .line 923
    goto :goto_13

    .line 924
    :cond_21
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v3

    .line 928
    invoke-virtual {v10, v3, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    :goto_13
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getRequiredSplitTypes()Ljava/util/Set;

    .line 932
    .line 933
    .line 934
    move-result-object v3

    .line 935
    invoke-static {v8, v3}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getSplitTypes()Ljava/util/Set;

    .line 939
    .line 940
    .line 941
    move-result-object v3

    .line 942
    invoke-static {v13, v3}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 943
    .line 944
    .line 945
    move-object v7, v13

    .line 946
    move-object/from16 v4, v17

    .line 947
    .line 948
    const/4 v3, 0x1

    .line 949
    const/4 v6, -0x2

    .line 950
    const/16 v13, -0x6e

    .line 951
    .line 952
    goto/16 :goto_e

    .line 953
    .line 954
    :cond_22
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 955
    .line 956
    const-string v1, "Invalid filename: "

    .line 957
    .line 958
    invoke-static {v1, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v1

    .line 962
    const/4 v2, -0x2

    .line 963
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 964
    .line 965
    .line 966
    throw v0

    .line 967
    :cond_23
    const/4 v2, -0x2

    .line 968
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 969
    .line 970
    const-string v1, " signatures are inconsistent"

    .line 971
    .line 972
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v1

    .line 976
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 977
    .line 978
    .line 979
    throw v0

    .line 980
    :cond_24
    move v2, v6

    .line 981
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 982
    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    .line 984
    .line 985
    const-string v3, "Split "

    .line 986
    .line 987
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 988
    .line 989
    .line 990
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v3

    .line 994
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    const-string v3, " was defined multiple times"

    .line 998
    .line 999
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v1

    .line 1006
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 1007
    .line 1008
    .line 1009
    throw v0

    .line 1010
    :cond_25
    move-object/from16 v17, v4

    .line 1011
    .line 1012
    move-object v13, v7

    .line 1013
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 1014
    .line 1015
    .line 1016
    move-result v0

    .line 1017
    if-lez v0, :cond_2a

    .line 1018
    .line 1019
    if-eqz v5, :cond_29

    .line 1020
    .line 1021
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v0

    .line 1025
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1026
    .line 1027
    .line 1028
    move-result v4

    .line 1029
    if-eqz v4, :cond_27

    .line 1030
    .line 1031
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v4

    .line 1035
    check-cast v4, Ljava/lang/String;

    .line 1036
    .line 1037
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 1038
    .line 1039
    invoke-static {v6, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v6

    .line 1043
    if-eqz v6, :cond_26

    .line 1044
    .line 1045
    goto :goto_14

    .line 1046
    :cond_26
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 1047
    .line 1048
    const-string v1, "Split not found: "

    .line 1049
    .line 1050
    invoke-static {v1, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v1

    .line 1054
    const/4 v2, -0x2

    .line 1055
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 1056
    .line 1057
    .line 1058
    throw v0

    .line 1059
    :cond_27
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1060
    .line 1061
    if-nez v0, :cond_28

    .line 1062
    .line 1063
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1064
    .line 1065
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1066
    .line 1067
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 1068
    .line 1069
    .line 1070
    move-result-wide v6

    .line 1071
    iput-wide v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 1072
    .line 1073
    :cond_28
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 1074
    .line 1075
    sget-object v4, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 1076
    .line 1077
    if-ne v0, v4, :cond_2a

    .line 1078
    .line 1079
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1080
    .line 1081
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1082
    .line 1083
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 1088
    .line 1089
    goto :goto_15

    .line 1090
    :cond_29
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 1091
    .line 1092
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    const-string v4, "Missing existing base package for "

    .line 1095
    .line 1096
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1100
    .line 1101
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v1

    .line 1108
    const/4 v2, -0x2

    .line 1109
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    throw v0

    .line 1113
    :cond_2a
    :goto_15
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 1114
    .line 1115
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1120
    .line 1121
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1122
    .line 1123
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    const/16 v4, -0x74

    .line 1128
    .line 1129
    if-eqz v0, :cond_2e

    .line 1130
    .line 1131
    move-object v6, v0

    .line 1132
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 1133
    .line 1134
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1135
    .line 1136
    if-nez v7, :cond_2b

    .line 1137
    .line 1138
    goto :goto_16

    .line 1139
    :cond_2b
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isUpdatableSystem()Z

    .line 1140
    .line 1141
    .line 1142
    move-result v7

    .line 1143
    if-eqz v7, :cond_2c

    .line 1144
    .line 1145
    goto :goto_16

    .line 1146
    :cond_2c
    iget v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 1147
    .line 1148
    if-nez v7, :cond_2d

    .line 1149
    .line 1150
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1151
    .line 1152
    const-string v14, "Overriding updatableSystem because the installer is root: "

    .line 1153
    .line 1154
    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1155
    .line 1156
    .line 1157
    iget-object v6, v6, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 1158
    .line 1159
    invoke-static {v7, v6, v15}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    .line 1161
    .line 1162
    goto :goto_16

    .line 1163
    :cond_2d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 1164
    .line 1165
    const-string v1, "Installation of this package is not allowed."

    .line 1166
    .line 1167
    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 1168
    .line 1169
    .line 1170
    throw v0

    .line 1171
    :cond_2e
    :goto_16
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1172
    .line 1173
    iget v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1174
    .line 1175
    const/high16 v7, 0x8000000

    .line 1176
    .line 1177
    and-int/2addr v6, v7

    .line 1178
    if-eqz v6, :cond_31

    .line 1179
    .line 1180
    if-nez v0, :cond_30

    .line 1181
    .line 1182
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1183
    .line 1184
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 1185
    .line 1186
    iget-object v6, v6, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 1187
    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v7

    .line 1192
    iget-object v7, v7, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 1193
    .line 1194
    iget v14, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 1195
    .line 1196
    invoke-virtual {v6, v14, v7}, Lcom/android/server/pm/PackageArchiver;->verifySupportsUnarchival(ILjava/lang/String;)Z

    .line 1197
    .line 1198
    .line 1199
    move-result v6

    .line 1200
    if-eqz v6, :cond_2f

    .line 1201
    .line 1202
    goto :goto_17

    .line 1203
    :cond_2f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 1204
    .line 1205
    const-string v1, "Installer has to support unarchival in order to install archived packages."

    .line 1206
    .line 1207
    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 1208
    .line 1209
    .line 1210
    throw v0

    .line 1211
    :cond_30
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 1212
    .line 1213
    const-string v1, "Archived installation of this package is not allowed."

    .line 1214
    .line 1215
    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 1216
    .line 1217
    .line 1218
    throw v0

    .line 1219
    :cond_31
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    .line 1220
    .line 1221
    .line 1222
    move-result v6

    .line 1223
    if-eqz v6, :cond_32

    .line 1224
    .line 1225
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getTmpAppMetadataFile()Ljava/io/File;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v6

    .line 1229
    goto :goto_18

    .line 1230
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getStagedAppMetadataFile()Ljava/io/File;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v6

    .line 1234
    :goto_18
    iget-boolean v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    .line 1235
    .line 1236
    if-eqz v7, :cond_34

    .line 1237
    .line 1238
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 1239
    .line 1240
    .line 1241
    move-result v6

    .line 1242
    if-eqz v6, :cond_33

    .line 1243
    .line 1244
    goto :goto_19

    .line 1245
    :cond_33
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 1246
    .line 1247
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1248
    .line 1249
    const-string v3, "App metadata file expected but not found in "

    .line 1250
    .line 1251
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1252
    .line 1253
    .line 1254
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 1255
    .line 1256
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v1

    .line 1260
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    .line 1262
    .line 1263
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v1

    .line 1267
    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 1268
    .line 1269
    .line 1270
    throw v0

    .line 1271
    :cond_34
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    .line 1272
    .line 1273
    .line 1274
    move-result v6

    .line 1275
    if-eqz v6, :cond_38

    .line 1276
    .line 1277
    if-eqz v0, :cond_37

    .line 1278
    .line 1279
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1280
    .line 1281
    iget-object v6, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1282
    .line 1283
    if-nez v6, :cond_35

    .line 1284
    .line 1285
    goto :goto_1a

    .line 1286
    :cond_35
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 1287
    .line 1288
    .line 1289
    move-result v6

    .line 1290
    if-nez v6, :cond_36

    .line 1291
    .line 1292
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 1293
    .line 1294
    iget-boolean v0, v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 1295
    .line 1296
    if-nez v0, :cond_36

    .line 1297
    .line 1298
    goto :goto_1a

    .line 1299
    :cond_36
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 1300
    .line 1301
    const-string v1, "Incremental installation of this package is not allowed."

    .line 1302
    .line 1303
    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 1304
    .line 1305
    .line 1306
    throw v0

    .line 1307
    :cond_37
    :goto_1a
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mHasAppMetadataFile:Z

    .line 1308
    .line 1309
    if-eqz v0, :cond_38

    .line 1310
    .line 1311
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getTmpAppMetadataFile()Ljava/io/File;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v6

    .line 1315
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 1316
    .line 1317
    monitor-enter v7

    .line 1318
    :try_start_4
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 1319
    .line 1320
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1321
    :try_start_5
    const-string v7, "app.metadata"

    .line 1322
    .line 1323
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v14

    .line 1327
    invoke-static {v14}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 1328
    .line 1329
    .line 1330
    move-result-object v14

    .line 1331
    const/16 v3, 0x1a0

    .line 1332
    .line 1333
    invoke-virtual {v0, v7, v14, v3}, Landroid/os/incremental/IncrementalFileStorages;->makeFile(Ljava/lang/String;[BI)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1334
    .line 1335
    .line 1336
    :goto_1b
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1337
    .line 1338
    .line 1339
    goto :goto_1d

    .line 1340
    :catchall_0
    move-exception v0

    .line 1341
    goto :goto_1c

    .line 1342
    :catch_4
    move-exception v0

    .line 1343
    :try_start_6
    const-string v3, "Failed to write app metadata to incremental storage"

    .line 1344
    .line 1345
    invoke-static {v15, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1346
    .line 1347
    .line 1348
    goto :goto_1b

    .line 1349
    :goto_1c
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1350
    .line 1351
    .line 1352
    throw v0

    .line 1353
    :catchall_1
    move-exception v0

    .line 1354
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1355
    throw v0

    .line 1356
    :cond_38
    :goto_1d
    iget v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 1357
    .line 1358
    iget v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 1359
    .line 1360
    if-eq v0, v3, :cond_3a

    .line 1361
    .line 1362
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1363
    .line 1364
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1365
    .line 1366
    .line 1367
    move-result v0

    .line 1368
    if-nez v0, :cond_39

    .line 1369
    .line 1370
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1371
    .line 1372
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    .line 1373
    .line 1374
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1375
    .line 1376
    .line 1377
    move-result v0

    .line 1378
    if-eqz v0, :cond_39

    .line 1379
    .line 1380
    goto :goto_1e

    .line 1381
    :cond_39
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 1382
    .line 1383
    const/16 v1, -0x17

    .line 1384
    .line 1385
    const-string v2, "Can only transfer sessions that update the original installer"

    .line 1386
    .line 1387
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 1388
    .line 1389
    .line 1390
    throw v0

    .line 1391
    :cond_3a
    :goto_1e
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    .line 1392
    .line 1393
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 1394
    .line 1395
    .line 1396
    move-result v0

    .line 1397
    if-eqz v0, :cond_6f

    .line 1398
    .line 1399
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1400
    .line 1401
    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 1402
    .line 1403
    const-string v4, "Missing split for "

    .line 1404
    .line 1405
    const-string v6, "219044664"

    .line 1406
    .line 1407
    const/16 v7, -0x1c

    .line 1408
    .line 1409
    const v14, 0x534e4554

    .line 1410
    .line 1411
    .line 1412
    const/4 v3, 0x1

    .line 1413
    if-ne v0, v3, :cond_41

    .line 1414
    .line 1415
    move-object/from16 v2, v17

    .line 1416
    .line 1417
    const/4 v3, 0x0

    .line 1418
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1419
    .line 1420
    .line 1421
    move-result v0

    .line 1422
    if-eqz v0, :cond_40

    .line 1423
    .line 1424
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1425
    .line 1426
    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1427
    .line 1428
    and-int/lit16 v0, v0, 0x1000

    .line 1429
    .line 1430
    if-eqz v0, :cond_3b

    .line 1431
    .line 1432
    invoke-static {v14, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1433
    .line 1434
    .line 1435
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1436
    .line 1437
    const/4 v3, 0x0

    .line 1438
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setDontKillApp(Z)V

    .line 1439
    .line 1440
    .line 1441
    :cond_3b
    invoke-virtual {v9}, Landroid/content/pm/parsing/ApkLite;->isSplitRequired()Z

    .line 1442
    .line 1443
    .line 1444
    move-result v0

    .line 1445
    if-eqz v0, :cond_3d

    .line 1446
    .line 1447
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 1448
    .line 1449
    .line 1450
    move-result v0

    .line 1451
    const/4 v2, 0x1

    .line 1452
    if-le v0, v2, :cond_3c

    .line 1453
    .line 1454
    invoke-virtual {v13, v8}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    .line 1455
    .line 1456
    .line 1457
    move-result v0

    .line 1458
    if-eqz v0, :cond_3c

    .line 1459
    .line 1460
    goto :goto_1f

    .line 1461
    :cond_3c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 1462
    .line 1463
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1464
    .line 1465
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1466
    .line 1467
    .line 1468
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1469
    .line 1470
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    .line 1472
    .line 1473
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v1

    .line 1477
    invoke-direct {v0, v7, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 1478
    .line 1479
    .line 1480
    throw v0

    .line 1481
    :cond_3d
    :goto_1f
    invoke-virtual {v12}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v0

    .line 1485
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 1486
    .line 1487
    if-eqz v2, :cond_3e

    .line 1488
    .line 1489
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 1490
    .line 1491
    :goto_20
    const/4 v3, 0x1

    .line 1492
    goto :goto_21

    .line 1493
    :cond_3e
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 1494
    .line 1495
    goto :goto_20

    .line 1496
    :goto_21
    invoke-static {v0, v2, v9, v10, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;Z)Landroid/content/pm/parsing/result/ParseResult;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v0

    .line 1500
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 1501
    .line 1502
    .line 1503
    move-result v2

    .line 1504
    if-nez v2, :cond_3f

    .line 1505
    .line 1506
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v0

    .line 1510
    check-cast v0, Landroid/content/pm/parsing/PackageLite;

    .line 1511
    .line 1512
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 1513
    .line 1514
    const/4 v3, 0x0

    .line 1515
    goto/16 :goto_36

    .line 1516
    .line 1517
    :cond_3f
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    .line 1518
    .line 1519
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    .line 1520
    .line 1521
    .line 1522
    move-result v2

    .line 1523
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v3

    .line 1527
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v0

    .line 1531
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1532
    .line 1533
    .line 1534
    throw v1

    .line 1535
    :cond_40
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 1536
    .line 1537
    const-string v1, "Full install must include a base package"

    .line 1538
    .line 1539
    const/4 v2, -0x2

    .line 1540
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 1541
    .line 1542
    .line 1543
    throw v0

    .line 1544
    :cond_41
    move-object/from16 v2, v17

    .line 1545
    .line 1546
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1547
    .line 1548
    invoke-virtual {v12}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v9

    .line 1552
    new-instance v10, Ljava/io/File;

    .line 1553
    .line 1554
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v12

    .line 1558
    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1559
    .line 1560
    .line 1561
    const/4 v12, 0x0

    .line 1562
    invoke-static {v9, v10, v12}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v9

    .line 1566
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 1567
    .line 1568
    .line 1569
    move-result v10

    .line 1570
    if-nez v10, :cond_6e

    .line 1571
    .line 1572
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v9

    .line 1576
    check-cast v9, Landroid/content/pm/parsing/PackageLite;

    .line 1577
    .line 1578
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v10

    .line 1582
    move-object v12, v4

    .line 1583
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getLongVersionCode()J

    .line 1584
    .line 1585
    .line 1586
    move-result-wide v3

    .line 1587
    const-string v7, "Existing"

    .line 1588
    .line 1589
    invoke-virtual {v1, v7, v3, v4, v10}, Lcom/android/server/pm/PackageInstallerSession;->assertPackageConsistentLocked(Ljava/lang/String;JLjava/lang/String;)V

    .line 1590
    .line 1591
    .line 1592
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v3

    .line 1596
    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerSession;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v3

    .line 1600
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 1601
    .line 1602
    invoke-virtual {v4, v3}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    .line 1603
    .line 1604
    .line 1605
    move-result v3

    .line 1606
    if-eqz v3, :cond_6d

    .line 1607
    .line 1608
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1609
    .line 1610
    if-nez v3, :cond_42

    .line 1611
    .line 1612
    new-instance v3, Ljava/io/File;

    .line 1613
    .line 1614
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v4

    .line 1618
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1619
    .line 1620
    .line 1621
    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1622
    .line 1623
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->inheritFileLocked(Ljava/io/File;)V

    .line 1624
    .line 1625
    .line 1626
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getBaseRequiredSplitTypes()Ljava/util/Set;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v3

    .line 1630
    invoke-static {v8, v3}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 1631
    .line 1632
    .line 1633
    goto :goto_22

    .line 1634
    :cond_42
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1635
    .line 1636
    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1637
    .line 1638
    and-int/lit16 v3, v3, 0x1000

    .line 1639
    .line 1640
    if-eqz v3, :cond_43

    .line 1641
    .line 1642
    invoke-static {v14, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1643
    .line 1644
    .line 1645
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1646
    .line 1647
    const/4 v4, 0x0

    .line 1648
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setDontKillApp(Z)V

    .line 1649
    .line 1650
    .line 1651
    :cond_43
    :goto_22
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v3

    .line 1655
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 1656
    .line 1657
    .line 1658
    move-result v3

    .line 1659
    if-nez v3, :cond_45

    .line 1660
    .line 1661
    const/4 v3, 0x0

    .line 1662
    const/4 v4, 0x0

    .line 1663
    :goto_23
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v6

    .line 1667
    array-length v6, v6

    .line 1668
    if-ge v3, v6, :cond_46

    .line 1669
    .line 1670
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v6

    .line 1674
    aget-object v6, v6, v3

    .line 1675
    .line 1676
    new-instance v7, Ljava/io/File;

    .line 1677
    .line 1678
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v10

    .line 1682
    aget-object v10, v10, v3

    .line 1683
    .line 1684
    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1685
    .line 1686
    .line 1687
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1688
    .line 1689
    .line 1690
    move-result v10

    .line 1691
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1692
    .line 1693
    .line 1694
    move-result v6

    .line 1695
    if-nez v6, :cond_44

    .line 1696
    .line 1697
    if-nez v10, :cond_44

    .line 1698
    .line 1699
    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageInstallerSession;->inheritFileLocked(Ljava/io/File;)V

    .line 1700
    .line 1701
    .line 1702
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getRequiredSplitTypes()[Ljava/util/Set;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v6

    .line 1706
    aget-object v6, v6, v3

    .line 1707
    .line 1708
    invoke-static {v8, v6}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 1709
    .line 1710
    .line 1711
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitTypes()[Ljava/util/Set;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v6

    .line 1715
    aget-object v6, v6, v3

    .line 1716
    .line 1717
    invoke-static {v13, v6}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 1718
    .line 1719
    .line 1720
    :goto_24
    const/4 v6, 0x1

    .line 1721
    goto :goto_25

    .line 1722
    :cond_44
    const/4 v4, 0x1

    .line 1723
    goto :goto_24

    .line 1724
    :goto_25
    add-int/2addr v3, v6

    .line 1725
    goto :goto_23

    .line 1726
    :cond_45
    const/4 v4, 0x0

    .line 1727
    :cond_46
    if-eqz v4, :cond_47

    .line 1728
    .line 1729
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1730
    .line 1731
    iget v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1732
    .line 1733
    and-int/lit16 v4, v4, 0x1000

    .line 1734
    .line 1735
    if-eqz v4, :cond_47

    .line 1736
    .line 1737
    const/4 v4, 0x0

    .line 1738
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setDontKillApp(Z)V

    .line 1739
    .line 1740
    .line 1741
    :cond_47
    new-instance v3, Ljava/io/File;

    .line 1742
    .line 1743
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v0

    .line 1747
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1748
    .line 1749
    .line 1750
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v3

    .line 1754
    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    .line 1755
    .line 1756
    new-instance v0, Ljava/io/File;

    .line 1757
    .line 1758
    const-string/jumbo v4, "oat"

    .line 1759
    .line 1760
    .line 1761
    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1762
    .line 1763
    .line 1764
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1765
    .line 1766
    .line 1767
    move-result v4

    .line 1768
    if-eqz v4, :cond_4c

    .line 1769
    .line 1770
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v0

    .line 1774
    if-eqz v0, :cond_4c

    .line 1775
    .line 1776
    array-length v4, v0

    .line 1777
    if-lez v4, :cond_4c

    .line 1778
    .line 1779
    sget-object v4, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    .line 1780
    .line 1781
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 1782
    .line 1783
    array-length v4, v4

    .line 1784
    new-array v6, v4, [Ljava/lang/String;

    .line 1785
    .line 1786
    const/4 v7, 0x0

    .line 1787
    :goto_26
    if-ge v7, v4, :cond_48

    .line 1788
    .line 1789
    sget-object v10, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 1790
    .line 1791
    aget-object v10, v10, v7

    .line 1792
    .line 1793
    invoke-static {v10}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v10

    .line 1797
    aput-object v10, v6, v7

    .line 1798
    .line 1799
    const/4 v10, 0x1

    .line 1800
    add-int/2addr v7, v10

    .line 1801
    goto :goto_26

    .line 1802
    :cond_48
    invoke-static {v6}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v4

    .line 1806
    array-length v6, v0

    .line 1807
    const/4 v7, 0x0

    .line 1808
    :goto_27
    if-ge v7, v6, :cond_4c

    .line 1809
    .line 1810
    aget-object v10, v0, v7

    .line 1811
    .line 1812
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v14

    .line 1816
    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1817
    .line 1818
    .line 1819
    move-result v14

    .line 1820
    if-nez v14, :cond_4a

    .line 1821
    .line 1822
    :cond_49
    move-object/from16 v18, v0

    .line 1823
    .line 1824
    :goto_28
    const/4 v10, 0x1

    .line 1825
    goto :goto_29

    .line 1826
    :cond_4a
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v14

    .line 1830
    if-eqz v14, :cond_49

    .line 1831
    .line 1832
    move-object/from16 v18, v0

    .line 1833
    .line 1834
    array-length v0, v14

    .line 1835
    if-nez v0, :cond_4b

    .line 1836
    .line 1837
    goto :goto_28

    .line 1838
    :cond_4b
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    .line 1839
    .line 1840
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1841
    .line 1842
    .line 1843
    move-result-object v10

    .line 1844
    check-cast v0, Ljava/util/ArrayList;

    .line 1845
    .line 1846
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1847
    .line 1848
    .line 1849
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 1850
    .line 1851
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v10

    .line 1855
    check-cast v0, Ljava/util/ArrayList;

    .line 1856
    .line 1857
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1858
    .line 1859
    .line 1860
    goto :goto_28

    .line 1861
    :goto_29
    add-int/2addr v7, v10

    .line 1862
    move-object/from16 v0, v18

    .line 1863
    .line 1864
    goto :goto_27

    .line 1865
    :cond_4c
    const/4 v10, 0x1

    .line 1866
    const-string/jumbo v0, "pi.inherit_native_on_dont_kill"

    .line 1867
    .line 1868
    .line 1869
    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 1870
    .line 1871
    .line 1872
    move-result v0

    .line 1873
    if-eqz v0, :cond_4d

    .line 1874
    .line 1875
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1876
    .line 1877
    iget v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 1878
    .line 1879
    const/4 v6, 0x2

    .line 1880
    if-ne v4, v6, :cond_4d

    .line 1881
    .line 1882
    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1883
    .line 1884
    and-int/2addr v0, v10

    .line 1885
    if-eqz v0, :cond_4d

    .line 1886
    .line 1887
    const/4 v0, 0x1

    .line 1888
    goto :goto_2a

    .line 1889
    :cond_4d
    const/4 v0, 0x0

    .line 1890
    :goto_2a
    if-eqz v0, :cond_56

    .line 1891
    .line 1892
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1893
    .line 1894
    .line 1895
    move-result v0

    .line 1896
    if-eqz v0, :cond_56

    .line 1897
    .line 1898
    const/4 v4, 0x2

    .line 1899
    new-array v6, v4, [Ljava/io/File;

    .line 1900
    .line 1901
    new-instance v0, Ljava/io/File;

    .line 1902
    .line 1903
    const-string v7, "lib"

    .line 1904
    .line 1905
    invoke-direct {v0, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1906
    .line 1907
    .line 1908
    const/4 v7, 0x0

    .line 1909
    aput-object v0, v6, v7

    .line 1910
    .line 1911
    new-instance v0, Ljava/io/File;

    .line 1912
    .line 1913
    const-string v7, "lib64"

    .line 1914
    .line 1915
    invoke-direct {v0, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1916
    .line 1917
    .line 1918
    const/4 v7, 0x1

    .line 1919
    aput-object v0, v6, v7

    .line 1920
    .line 1921
    const/4 v7, 0x0

    .line 1922
    :goto_2b
    if-ge v7, v4, :cond_56

    .line 1923
    .line 1924
    aget-object v0, v6, v7

    .line 1925
    .line 1926
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1927
    .line 1928
    .line 1929
    move-result v10

    .line 1930
    if-eqz v10, :cond_4e

    .line 1931
    .line 1932
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 1933
    .line 1934
    .line 1935
    move-result v10

    .line 1936
    if-nez v10, :cond_4f

    .line 1937
    .line 1938
    :cond_4e
    move-object/from16 v21, v3

    .line 1939
    .line 1940
    move-object/from16 v18, v6

    .line 1941
    .line 1942
    :goto_2c
    const/4 v3, 0x1

    .line 1943
    goto/16 :goto_32

    .line 1944
    .line 1945
    :cond_4f
    new-instance v10, Ljava/util/ArrayList;

    .line 1946
    .line 1947
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1948
    .line 1949
    .line 1950
    new-instance v14, Ljava/util/ArrayList;

    .line 1951
    .line 1952
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1953
    .line 1954
    .line 1955
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v0

    .line 1959
    array-length v4, v0

    .line 1960
    move-object/from16 v18, v6

    .line 1961
    .line 1962
    const/4 v6, 0x0

    .line 1963
    :goto_2d
    if-ge v6, v4, :cond_53

    .line 1964
    .line 1965
    move/from16 v19, v4

    .line 1966
    .line 1967
    aget-object v4, v0, v6

    .line 1968
    .line 1969
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 1970
    .line 1971
    .line 1972
    move-result v20

    .line 1973
    if-nez v20, :cond_51

    .line 1974
    .line 1975
    move-object/from16 v20, v0

    .line 1976
    .line 1977
    move-object/from16 v21, v3

    .line 1978
    .line 1979
    :cond_50
    :goto_2e
    const/4 v3, 0x1

    .line 1980
    goto :goto_2f

    .line 1981
    :cond_51
    move-object/from16 v20, v0

    .line 1982
    .line 1983
    :try_start_8
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1987
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 1988
    .line 1989
    .line 1990
    move-result-object v4

    .line 1991
    move-object/from16 v21, v3

    .line 1992
    .line 1993
    if-eqz v4, :cond_50

    .line 1994
    .line 1995
    array-length v3, v4

    .line 1996
    if-nez v3, :cond_52

    .line 1997
    .line 1998
    goto :goto_2e

    .line 1999
    :cond_52
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2000
    .line 2001
    .line 2002
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v0

    .line 2006
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2007
    .line 2008
    .line 2009
    goto :goto_2e

    .line 2010
    :goto_2f
    add-int/2addr v6, v3

    .line 2011
    move/from16 v4, v19

    .line 2012
    .line 2013
    move-object/from16 v0, v20

    .line 2014
    .line 2015
    move-object/from16 v3, v21

    .line 2016
    .line 2017
    goto :goto_2d

    .line 2018
    :catch_5
    move-exception v0

    .line 2019
    move-object/from16 v21, v3

    .line 2020
    .line 2021
    move-object v3, v0

    .line 2022
    const-string v0, "Skipping linking of native library directory!"

    .line 2023
    .line 2024
    invoke-static {v15, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2025
    .line 2026
    .line 2027
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 2028
    .line 2029
    .line 2030
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 2031
    .line 2032
    .line 2033
    goto :goto_30

    .line 2034
    :cond_53
    move-object/from16 v21, v3

    .line 2035
    .line 2036
    :goto_30
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2037
    .line 2038
    .line 2039
    move-result-object v0

    .line 2040
    :cond_54
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2041
    .line 2042
    .line 2043
    move-result v3

    .line 2044
    if-eqz v3, :cond_55

    .line 2045
    .line 2046
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2047
    .line 2048
    .line 2049
    move-result-object v3

    .line 2050
    check-cast v3, Ljava/lang/String;

    .line 2051
    .line 2052
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    .line 2053
    .line 2054
    check-cast v4, Ljava/util/ArrayList;

    .line 2055
    .line 2056
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2057
    .line 2058
    .line 2059
    move-result v4

    .line 2060
    if-nez v4, :cond_54

    .line 2061
    .line 2062
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    .line 2063
    .line 2064
    check-cast v4, Ljava/util/ArrayList;

    .line 2065
    .line 2066
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2067
    .line 2068
    .line 2069
    goto :goto_31

    .line 2070
    :cond_55
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 2071
    .line 2072
    check-cast v0, Ljava/util/ArrayList;

    .line 2073
    .line 2074
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2075
    .line 2076
    .line 2077
    goto/16 :goto_2c

    .line 2078
    .line 2079
    :goto_32
    add-int/2addr v7, v3

    .line 2080
    move-object/from16 v6, v18

    .line 2081
    .line 2082
    move-object/from16 v3, v21

    .line 2083
    .line 2084
    const/4 v4, 0x2

    .line 2085
    goto/16 :goto_2b

    .line 2086
    .line 2087
    :cond_56
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->isSplitRequired()Z

    .line 2088
    .line 2089
    .line 2090
    move-result v0

    .line 2091
    if-eqz v0, :cond_5c

    .line 2092
    .line 2093
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    .line 2094
    .line 2095
    .line 2096
    move-result-object v0

    .line 2097
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    .line 2098
    .line 2099
    .line 2100
    move-result v0

    .line 2101
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 2102
    .line 2103
    .line 2104
    move-result v3

    .line 2105
    if-ne v0, v3, :cond_57

    .line 2106
    .line 2107
    const/4 v0, 0x1

    .line 2108
    goto :goto_33

    .line 2109
    :cond_57
    const/4 v0, 0x0

    .line 2110
    :goto_33
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 2111
    .line 2112
    .line 2113
    move-result v3

    .line 2114
    const/4 v4, 0x1

    .line 2115
    if-ne v3, v4, :cond_58

    .line 2116
    .line 2117
    const/4 v3, 0x0

    .line 2118
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 2119
    .line 2120
    .line 2121
    move-result v4

    .line 2122
    if-eqz v4, :cond_59

    .line 2123
    .line 2124
    const/4 v4, 0x1

    .line 2125
    goto :goto_34

    .line 2126
    :cond_58
    const/4 v3, 0x0

    .line 2127
    :cond_59
    const/4 v4, 0x0

    .line 2128
    :goto_34
    if-eqz v0, :cond_5a

    .line 2129
    .line 2130
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 2131
    .line 2132
    .line 2133
    move-result v0

    .line 2134
    if-nez v0, :cond_5b

    .line 2135
    .line 2136
    if-nez v4, :cond_5b

    .line 2137
    .line 2138
    :cond_5a
    invoke-virtual {v13, v8}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    .line 2139
    .line 2140
    .line 2141
    move-result v0

    .line 2142
    if-eqz v0, :cond_5b

    .line 2143
    .line 2144
    goto :goto_35

    .line 2145
    :cond_5b
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 2146
    .line 2147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2148
    .line 2149
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2150
    .line 2151
    .line 2152
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2153
    .line 2154
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2155
    .line 2156
    .line 2157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2158
    .line 2159
    .line 2160
    move-result-object v1

    .line 2161
    const/16 v2, -0x1c

    .line 2162
    .line 2163
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 2164
    .line 2165
    .line 2166
    throw v0

    .line 2167
    :cond_5c
    const/4 v3, 0x0

    .line 2168
    :goto_35
    move-object v0, v9

    .line 2169
    :goto_36
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 2170
    .line 2171
    if-eqz v2, :cond_5f

    .line 2172
    .line 2173
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2174
    .line 2175
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2176
    .line 2177
    .line 2178
    move-result v2

    .line 2179
    if-nez v2, :cond_5d

    .line 2180
    .line 2181
    goto :goto_38

    .line 2182
    :cond_5d
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2183
    .line 2184
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 2185
    .line 2186
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getPackageName()Ljava/lang/String;

    .line 2187
    .line 2188
    .line 2189
    move-result-object v4

    .line 2190
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2191
    .line 2192
    .line 2193
    move-result v2

    .line 2194
    if-eqz v2, :cond_67

    .line 2195
    .line 2196
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 2197
    .line 2198
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2199
    .line 2200
    .line 2201
    move-result-object v2

    .line 2202
    const-wide/16 v6, 0x0

    .line 2203
    .line 2204
    if-eqz v5, :cond_5e

    .line 2205
    .line 2206
    goto :goto_37

    .line 2207
    :cond_5e
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2208
    .line 2209
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 2210
    .line 2211
    .line 2212
    move-result-object v4

    .line 2213
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2214
    .line 2215
    iget v8, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 2216
    .line 2217
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 2218
    .line 2219
    .line 2220
    move-result-object v5

    .line 2221
    :goto_37
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 2222
    .line 2223
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getLabel()Ljava/lang/CharSequence;

    .line 2224
    .line 2225
    .line 2226
    move-result-object v4

    .line 2227
    if-eqz v5, :cond_60

    .line 2228
    .line 2229
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2230
    .line 2231
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v5

    .line 2235
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2236
    .line 2237
    .line 2238
    move-result v5

    .line 2239
    if-eqz v5, :cond_60

    .line 2240
    .line 2241
    :cond_5f
    :goto_38
    const/4 v13, 0x1

    .line 2242
    const/4 v15, 0x0

    .line 2243
    goto/16 :goto_3c

    .line 2244
    .line 2245
    :cond_60
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    .line 2246
    .line 2247
    .line 2248
    move-result-object v5

    .line 2249
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 2250
    .line 2251
    .line 2252
    move-result-object v6

    .line 2253
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 2254
    .line 2255
    .line 2256
    move-result-object v2

    .line 2257
    if-eqz v2, :cond_66

    .line 2258
    .line 2259
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    .line 2260
    .line 2261
    .line 2262
    move-result-object v5

    .line 2263
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 2264
    .line 2265
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getLocale()Landroid/icu/util/ULocale;

    .line 2266
    .line 2267
    .line 2268
    move-result-object v6

    .line 2269
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2270
    .line 2271
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 2272
    .line 2273
    .line 2274
    move-result v7

    .line 2275
    const/4 v8, 0x1

    .line 2276
    sub-int/2addr v7, v8

    .line 2277
    move v8, v7

    .line 2278
    const/4 v7, 0x0

    .line 2279
    :goto_39
    if-ltz v8, :cond_64

    .line 2280
    .line 2281
    if-nez v7, :cond_64

    .line 2282
    .line 2283
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2284
    .line 2285
    .line 2286
    move-result-object v9

    .line 2287
    check-cast v9, Ljava/lang/String;

    .line 2288
    .line 2289
    iget-object v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 2290
    .line 2291
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v10

    .line 2295
    new-instance v11, Landroid/content/res/AssetManager;

    .line 2296
    .line 2297
    invoke-direct {v11}, Landroid/content/res/AssetManager;-><init>()V

    .line 2298
    .line 2299
    .line 2300
    new-instance v12, Landroid/content/res/Configuration;

    .line 2301
    .line 2302
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 2303
    .line 2304
    .line 2305
    move-result-object v13

    .line 2306
    invoke-direct {v12, v13}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2307
    .line 2308
    .line 2309
    :try_start_9
    invoke-static {v9}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    .line 2310
    .line 2311
    .line 2312
    move-result-object v9
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 2313
    const/4 v13, 0x1

    .line 2314
    new-array v14, v13, [Landroid/content/res/ApkAssets;

    .line 2315
    .line 2316
    const/4 v15, 0x0

    .line 2317
    aput-object v9, v14, v15

    .line 2318
    .line 2319
    invoke-virtual {v11, v14, v15}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 2320
    .line 2321
    .line 2322
    invoke-virtual {v6}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v9

    .line 2326
    invoke-virtual {v12, v9}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 2327
    .line 2328
    .line 2329
    new-instance v9, Landroid/content/res/Resources;

    .line 2330
    .line 2331
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 2332
    .line 2333
    .line 2334
    move-result-object v10

    .line 2335
    invoke-direct {v9, v11, v10, v12}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 2336
    .line 2337
    .line 2338
    iget v10, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 2339
    .line 2340
    if-eqz v10, :cond_61

    .line 2341
    .line 2342
    :try_start_a
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 2343
    .line 2344
    .line 2345
    move-result-object v9

    .line 2346
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2347
    .line 2348
    .line 2349
    move-result-object v9

    .line 2350
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2351
    .line 2352
    .line 2353
    move-result-object v9
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_6

    .line 2354
    goto :goto_3a

    .line 2355
    :catch_6
    :cond_61
    move-object v9, v3

    .line 2356
    :goto_3a
    if-nez v9, :cond_63

    .line 2357
    .line 2358
    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2359
    .line 2360
    if-eqz v9, :cond_62

    .line 2361
    .line 2362
    goto :goto_3b

    .line 2363
    :cond_62
    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2364
    .line 2365
    :cond_63
    :goto_3b
    const/16 v10, 0x3e8

    .line 2366
    .line 2367
    invoke-static {v9, v10}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 2368
    .line 2369
    .line 2370
    move-result-object v9

    .line 2371
    invoke-static {v9, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2372
    .line 2373
    .line 2374
    move-result v9

    .line 2375
    or-int/2addr v7, v9

    .line 2376
    const/4 v10, -0x1

    .line 2377
    add-int/2addr v8, v10

    .line 2378
    goto :goto_39

    .line 2379
    :catch_7
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 2380
    .line 2381
    const-string v1, "Failure to get resources from package archive "

    .line 2382
    .line 2383
    invoke-static {v1, v9}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2384
    .line 2385
    .line 2386
    move-result-object v1

    .line 2387
    const/4 v2, -0x2

    .line 2388
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 2389
    .line 2390
    .line 2391
    throw v0

    .line 2392
    :cond_64
    const/4 v13, 0x1

    .line 2393
    const/4 v15, 0x0

    .line 2394
    if-eqz v7, :cond_65

    .line 2395
    .line 2396
    goto :goto_3c

    .line 2397
    :cond_65
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 2398
    .line 2399
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2400
    .line 2401
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2402
    .line 2403
    .line 2404
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 2405
    .line 2406
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2407
    .line 2408
    .line 2409
    const-string v1, " inconsistent with app label"

    .line 2410
    .line 2411
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2412
    .line 2413
    .line 2414
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2415
    .line 2416
    .line 2417
    move-result-object v1

    .line 2418
    const/16 v2, -0x6e

    .line 2419
    .line 2420
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 2421
    .line 2422
    .line 2423
    throw v0

    .line 2424
    :cond_66
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 2425
    .line 2426
    const-string v1, "Failure to obtain package info from APK files."

    .line 2427
    .line 2428
    const/4 v2, -0x2

    .line 2429
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 2430
    .line 2431
    .line 2432
    throw v0

    .line 2433
    :cond_67
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 2434
    .line 2435
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2436
    .line 2437
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2438
    .line 2439
    .line 2440
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 2441
    .line 2442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2443
    .line 2444
    .line 2445
    const-string v3, " inconsistent with "

    .line 2446
    .line 2447
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    .line 2449
    .line 2450
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2451
    .line 2452
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2453
    .line 2454
    .line 2455
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2456
    .line 2457
    .line 2458
    move-result-object v1

    .line 2459
    const/16 v2, -0x6e

    .line 2460
    .line 2461
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 2462
    .line 2463
    .line 2464
    throw v0

    .line 2465
    :goto_3c
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isUseEmbeddedDex()Z

    .line 2466
    .line 2467
    .line 2468
    move-result v2

    .line 2469
    if-eqz v2, :cond_6a

    .line 2470
    .line 2471
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 2472
    .line 2473
    check-cast v2, Ljava/util/ArrayList;

    .line 2474
    .line 2475
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2476
    .line 2477
    .line 2478
    move-result-object v2

    .line 2479
    :cond_68
    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2480
    .line 2481
    .line 2482
    move-result v4

    .line 2483
    if-eqz v4, :cond_6a

    .line 2484
    .line 2485
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2486
    .line 2487
    .line 2488
    move-result-object v4

    .line 2489
    check-cast v4, Ljava/io/File;

    .line 2490
    .line 2491
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2492
    .line 2493
    .line 2494
    move-result-object v5

    .line 2495
    const-string v6, ".apk"

    .line 2496
    .line 2497
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 2498
    .line 2499
    .line 2500
    move-result v5

    .line 2501
    if-eqz v5, :cond_68

    .line 2502
    .line 2503
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 2504
    .line 2505
    .line 2506
    move-result-object v4

    .line 2507
    invoke-static {v4}, Lcom/android/server/pm/dex/DexManager;->auditUncompressedDexInApk(Ljava/lang/String;)Z

    .line 2508
    .line 2509
    .line 2510
    move-result v4

    .line 2511
    if-eqz v4, :cond_69

    .line 2512
    .line 2513
    goto :goto_3d

    .line 2514
    :cond_69
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 2515
    .line 2516
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2517
    .line 2518
    const-string v4, "Some dex are not uncompressed and aligned correctly for "

    .line 2519
    .line 2520
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2521
    .line 2522
    .line 2523
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2524
    .line 2525
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2526
    .line 2527
    .line 2528
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2529
    .line 2530
    .line 2531
    move-result-object v1

    .line 2532
    const/4 v2, -0x2

    .line 2533
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 2534
    .line 2535
    .line 2536
    throw v0

    .line 2537
    :cond_6a
    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 2538
    .line 2539
    const/16 v3, 0x7d0

    .line 2540
    .line 2541
    if-ne v2, v3, :cond_6b

    .line 2542
    .line 2543
    move v3, v13

    .line 2544
    goto :goto_3e

    .line 2545
    :cond_6b
    move v3, v15

    .line 2546
    :goto_3e
    if-eqz v3, :cond_6c

    .line 2547
    .line 2548
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    .line 2549
    .line 2550
    .line 2551
    move-result v2

    .line 2552
    if-eqz v2, :cond_6c

    .line 2553
    .line 2554
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 2555
    .line 2556
    if-eqz v2, :cond_6c

    .line 2557
    .line 2558
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    .line 2559
    .line 2560
    .line 2561
    move-result v2

    .line 2562
    if-nez v2, :cond_6c

    .line 2563
    .line 2564
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isProfileableByShell()Z

    .line 2565
    .line 2566
    .line 2567
    move-result v2

    .line 2568
    if-nez v2, :cond_6c

    .line 2569
    .line 2570
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 2571
    .line 2572
    invoke-virtual {v2}, Landroid/os/incremental/IncrementalFileStorages;->disallowReadLogs()V

    .line 2573
    .line 2574
    .line 2575
    :cond_6c
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->getTargetSdk()I

    .line 2576
    .line 2577
    .line 2578
    move-result v0

    .line 2579
    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mValidatedTargetSdk:I

    .line 2580
    .line 2581
    return-void

    .line 2582
    :cond_6d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 2583
    .line 2584
    const-string v1, "Existing signatures are inconsistent"

    .line 2585
    .line 2586
    const/4 v2, -0x2

    .line 2587
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 2588
    .line 2589
    .line 2590
    throw v0

    .line 2591
    :cond_6e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 2592
    .line 2593
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    .line 2594
    .line 2595
    .line 2596
    move-result-object v1

    .line 2597
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 2598
    .line 2599
    .line 2600
    move-result-object v2

    .line 2601
    const/16 v3, -0x6e

    .line 2602
    .line 2603
    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 2604
    .line 2605
    .line 2606
    throw v0

    .line 2607
    :cond_6f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 2608
    .line 2609
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2610
    .line 2611
    const-string v3, "Invalid checksum name(s): "

    .line 2612
    .line 2613
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2614
    .line 2615
    .line 2616
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    .line 2617
    .line 2618
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 2619
    .line 2620
    .line 2621
    move-result-object v1

    .line 2622
    const-string v3, ","

    .line 2623
    .line 2624
    invoke-static {v3, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 2625
    .line 2626
    .line 2627
    move-result-object v1

    .line 2628
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    .line 2630
    .line 2631
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2632
    .line 2633
    .line 2634
    move-result-object v1

    .line 2635
    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 2636
    .line 2637
    .line 2638
    throw v0
.end method

.method public final verify()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 6
    .line 7
    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->prepareInheritedFiles()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->parseApkAndExtractNativeLibraries()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->prepareInheritedFiles()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->parseApkAndExtractNativeLibraries()V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->verifyNonStaged()V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :goto_1
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 51
    .line 52
    invoke-static {v2, v1}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 57
    .line 58
    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 62
    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_2
    return-void
.end method

.method public final verifyNonStaged()V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getUnknownSourceAppManager()Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    .line 8
    .line 9
    .line 10
    move-result-object v8

    .line 11
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mUnknownSourceInstallAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v9, 0x0

    .line 19
    if-nez v0, :cond_5

    .line 20
    .line 21
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 24
    .line 25
    iget v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 26
    .line 27
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const-string v4, "PrePackageInstaller"

    .line 34
    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    const/16 v4, 0x3e8

    .line 42
    .line 43
    if-eq v3, v4, :cond_5

    .line 44
    .line 45
    :cond_1
    const-string v4, "com.android.shell"

    .line 46
    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const-string v4, "com.sec.android.app.samsungapps"

    .line 55
    .line 56
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_5

    .line 61
    .line 62
    const-string v4, "com.android.vending"

    .line 63
    .line 64
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->isSideLoadingApp(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    move v0, v2

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iget-object v4, v8, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mASKSManagerHelper:Lcom/samsung/android/server/pm/install/ASKSHelper;

    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    :try_start_0
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-interface {v4, v0, v3}, Landroid/content/pm/IASKSManager;->isTrustedStore(Ljava/lang/String;I)Z

    .line 93
    .line 94
    .line 95
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string v3, "Exception during isTrustedStore: "

    .line 99
    .line 100
    const-string v4, "UnknownSourceAppManager"

    .line 101
    .line 102
    invoke-static {v0, v3, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    move v0, v9

    .line 106
    :goto_0
    xor-int/2addr v0, v2

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    :goto_1
    move v0, v9

    .line 109
    :goto_2
    if-eqz v0, :cond_e

    .line 110
    .line 111
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_6

    .line 120
    .line 121
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    move-object v15, v0

    .line 128
    goto :goto_3

    .line 129
    :cond_6
    const/4 v15, 0x0

    .line 130
    :goto_3
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 131
    .line 132
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 133
    .line 134
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 135
    .line 136
    iget-object v6, v5, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v7, v5, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 141
    .line 142
    iget v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 143
    .line 144
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 145
    .line 146
    .line 147
    move-result v22

    .line 148
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    const-string v14, "Exception during checkUnknownSourcePackage: "

    .line 152
    .line 153
    new-instance v10, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v13, "UnknownSourceAppManager"

    .line 159
    .line 160
    if-eqz v0, :cond_a

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    :try_start_1
    new-instance v12, Landroid/content/pm/PackageParser;

    .line 167
    .line 168
    invoke-direct {v12}, Landroid/content/pm/PackageParser;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v12, v0, v9}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    .line 172
    .line 173
    .line 174
    move-result-object v12

    .line 175
    iget-object v2, v12, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 176
    .line 177
    move v3, v9

    .line 178
    :goto_4
    iget-object v9, v12, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    if-ge v3, v9, :cond_8

    .line 185
    .line 186
    iget-object v9, v12, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    check-cast v9, Landroid/content/pm/PackageParser$Service;

    .line 193
    .line 194
    iget-object v9, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 195
    .line 196
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 197
    .line 198
    if-eqz v9, :cond_7

    .line 199
    .line 200
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_8
    iget-object v3, v12, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 207
    .line 208
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 209
    .line 210
    iget-object v9, v12, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 211
    .line 212
    iget-object v12, v12, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 213
    .line 214
    if-eqz v12, :cond_9

    .line 215
    .line 216
    move-object/from16 v16, v2

    .line 217
    .line 218
    const-string/jumbo v2, "safeInstall_support"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    move-object/from16 v17, v2

    .line 226
    .line 227
    const-string/jumbo v2, "safeInstall_cert"

    .line 228
    .line 229
    .line 230
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    move-object/from16 v2, v17

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_9
    move-object/from16 v16, v2

    .line 238
    .line 239
    const-string v2, "App Meta is null"

    .line 240
    .line 241
    invoke-static {v13, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    .line 243
    .line 244
    const/4 v0, 0x0

    .line 245
    const/4 v2, 0x0

    .line 246
    :goto_5
    move-object/from16 v24, v0

    .line 247
    .line 248
    move-object/from16 v23, v2

    .line 249
    .line 250
    move/from16 v19, v3

    .line 251
    .line 252
    move-object v0, v11

    .line 253
    move-object/from16 v11, v16

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v3, "Exception while parsing "

    .line 259
    .line 260
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    const/4 v5, 0x0

    .line 274
    goto/16 :goto_d

    .line 275
    .line 276
    :cond_a
    const/4 v0, -0x1

    .line 277
    move/from16 v19, v0

    .line 278
    .line 279
    const/4 v0, 0x0

    .line 280
    const/4 v9, 0x0

    .line 281
    const/4 v11, 0x0

    .line 282
    const/16 v23, 0x0

    .line 283
    .line 284
    const/16 v24, 0x0

    .line 285
    .line 286
    :goto_6
    :try_start_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    new-array v12, v2, [Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    new-array v2, v2, [Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    iget-object v3, v4, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 305
    .line 306
    if-eqz v3, :cond_b

    .line 307
    .line 308
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    move-object/from16 v20, v3

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :catch_2
    move-exception v0

    .line 316
    move-object v3, v13

    .line 317
    move-object v2, v14

    .line 318
    goto :goto_b

    .line 319
    :cond_b
    const/16 v20, 0x0

    .line 320
    .line 321
    :goto_7
    iget-object v3, v4, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 322
    .line 323
    if-eqz v3, :cond_c

    .line 324
    .line 325
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    move-object/from16 v21, v3

    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_c
    const/16 v21, 0x0

    .line 333
    .line 334
    :goto_8
    iget-object v3, v8, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mASKSManagerHelper:Lcom/samsung/android/server/pm/install/ASKSHelper;

    .line 335
    .line 336
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 337
    .line 338
    .line 339
    :try_start_3
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    .line 340
    .line 341
    .line 342
    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 343
    move-object v3, v13

    .line 344
    move-object v13, v2

    .line 345
    move-object v2, v14

    .line 346
    move-object v14, v0

    .line 347
    move-object/from16 v16, v6

    .line 348
    .line 349
    move-object/from16 v17, v7

    .line 350
    .line 351
    move-object/from16 v18, v5

    .line 352
    .line 353
    :try_start_4
    invoke-interface/range {v10 .. v24}, Landroid/content/pm/IASKSManager;->checkUnknownSourcePackage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 357
    goto :goto_a

    .line 358
    :catch_3
    move-exception v0

    .line 359
    goto :goto_9

    .line 360
    :catch_4
    move-exception v0

    .line 361
    move-object v3, v13

    .line 362
    move-object v2, v14

    .line 363
    :goto_9
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    const/4 v0, 0x0

    .line 379
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .line 383
    .line 384
    const-string v5, "checkUnknownSourcePackage: "

    .line 385
    .line 386
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 397
    .line 398
    .line 399
    goto :goto_c

    .line 400
    :catch_5
    move-exception v0

    .line 401
    :goto_b
    invoke-static {v0, v2, v3}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    const/4 v0, 0x0

    .line 405
    :goto_c
    move v5, v0

    .line 406
    :goto_d
    const/16 v0, 0x82

    .line 407
    .line 408
    if-ne v5, v0, :cond_d

    .line 409
    .line 410
    const/4 v2, 0x0

    .line 411
    iput-boolean v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mVerificationInProgress:Z

    .line 412
    .line 413
    const-string v0, "Self update is blocked by unknown source package"

    .line 414
    .line 415
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    const/16 v0, -0x73

    .line 419
    .line 420
    const-string v2, "Self update is blocked by unknown source package"

    .line 421
    .line 422
    const/4 v3, 0x0

    .line 423
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 424
    .line 425
    .line 426
    return-void

    .line 427
    :cond_d
    if-eqz v5, :cond_e

    .line 428
    .line 429
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 430
    .line 431
    iget v4, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 432
    .line 433
    iget v7, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 434
    .line 435
    new-instance v0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda0;

    .line 436
    .line 437
    move-object v2, v0

    .line 438
    move-object v3, v8

    .line 439
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;IILandroid/content/Context;I)V

    .line 440
    .line 441
    .line 442
    iget-object v2, v8, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mHandler:Landroid/os/Handler;

    .line 443
    .line 444
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 445
    .line 446
    .line 447
    const/4 v2, 0x0

    .line 448
    iput-boolean v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mVerificationInProgress:Z

    .line 449
    .line 450
    return-void

    .line 451
    :cond_e
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 452
    .line 453
    monitor-enter v2

    .line 454
    :try_start_6
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 455
    .line 456
    if-nez v0, :cond_f

    .line 457
    .line 458
    const/4 v3, 0x1

    .line 459
    iput-boolean v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 460
    .line 461
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 462
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    .line 463
    .line 464
    check-cast v0, Lcom/android/server/pm/PackageInstallerService;

    .line 465
    .line 466
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mSessionVerifier:Lcom/android/server/pm/PackageSessionVerifier;

    .line 467
    .line 468
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    .line 469
    .line 470
    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 471
    .line 472
    .line 473
    iget-object v3, v0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    .line 474
    .line 475
    new-instance v4, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;

    .line 476
    .line 477
    const/4 v5, 0x3

    .line 478
    invoke-direct {v4, v0, v1, v2, v5}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Ljava/lang/Object;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;I)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    .line 483
    .line 484
    return-void

    .line 485
    :catchall_0
    move-exception v0

    .line 486
    goto :goto_e

    .line 487
    :cond_f
    :try_start_7
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 488
    .line 489
    const-string v1, "Session destroyed"

    .line 490
    .line 491
    const/16 v3, -0x6e

    .line 492
    .line 493
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 494
    .line 495
    .line 496
    throw v0

    .line 497
    :goto_e
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 498
    throw v0
.end method

.method public final write(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/io/File;)V
    .locals 11

    .line 4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v1, :cond_0

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_10

    .line 7
    :cond_0
    const-string/jumbo v1, "session"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    const-string/jumbo v1, "sessionId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    const-string/jumbo v1, "userId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    const-string v1, "installerPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 11
    const-string v1, "installerPackageUid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    const-string/jumbo v1, "updateOwnererPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 13
    const-string v1, "installerAttributionTag"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 14
    const-string v1, "installerUid"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    const-string v1, "installInitiatingPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 16
    const-string v1, "installOriginatingPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 17
    const-string v1, "createdMillis"

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-interface {p1, v2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    const-string/jumbo v1, "updatedMillis"

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    invoke-interface {p1, v2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 19
    const-string v1, "committedMillis"

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    invoke-interface {p1, v2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 20
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 21
    const-string/jumbo v3, "sessionStageDir"

    .line 22
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {p1, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 25
    const-string/jumbo v3, "sessionStageCid"

    invoke-static {p1, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 26
    :cond_2
    const-string/jumbo v1, "prepared"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 27
    const-string v1, "committed"

    .line 28
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 29
    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 30
    const-string v1, "destroyed"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 31
    const-string/jumbo v1, "sealed"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 32
    const-string/jumbo v1, "multiPackage"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 33
    const-string/jumbo v1, "stagedSession"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 34
    const-string/jumbo v1, "sessionFlags"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    const-string v1, "isReady"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 36
    const-string v1, "isFailed"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 37
    const-string v1, "isApplied"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 38
    const-string/jumbo v1, "packageSource"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 39
    const-string v1, "errorCode"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    const-string v1, "errorMessage"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 41
    const-string/jumbo v1, "parentSessionId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 42
    const-string/jumbo v1, "mode"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 43
    const-string v1, "installFlags"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    const-string v1, "installLocation"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    const-string/jumbo v1, "sizeBytes"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-interface {p1, v2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    const-string v1, "appPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 47
    const-string v1, "appLabel"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 48
    const-string/jumbo v1, "originatingUri"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 49
    const-string/jumbo v1, "originatingUid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    const-string/jumbo v1, "referrerUri"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 51
    const-string v1, "abiOverride"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 52
    const-string/jumbo v1, "volumeUuid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 53
    const-string v1, "installRason"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    const-string v1, "applicationEnabledSettingPersistent"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 55
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v4

    .line 56
    :goto_0
    const-string v5, "isDataLoader"

    invoke-static {p1, v5, v1}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    if-eqz v1, :cond_4

    .line 57
    const-string v1, "dataLoaderType"

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v5}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v5

    invoke-interface {p1, v2, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    const-string v1, "dataLoaderPackageName"

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 59
    invoke-virtual {v5}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-static {p1, v1, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 61
    const-string v1, "dataLoaderClassName"

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 62
    invoke-virtual {v5}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-static {p1, v1, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 64
    const-string v1, "dataLoaderArguments"

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 65
    invoke-virtual {v5}, Landroid/content/pm/DataLoaderParams;->getArguments()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-static {p1, v1, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 67
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 68
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object v1

    move v5, v4

    .line 69
    :goto_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 70
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 71
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 72
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v3, :cond_5

    const-string v7, "grant-permission"

    goto :goto_2

    .line 73
    :cond_5
    const-string v7, "deny-permission"

    .line 74
    :goto_2
    invoke-interface {p1, v2, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    const-string/jumbo v8, "name"

    invoke-static {p1, v8, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 76
    invoke-interface {p1, v2, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 77
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v5, v4

    :goto_3
    if-ge v5, v3, :cond_7

    .line 79
    const-string/jumbo v6, "whitelisted-restricted-permission"

    invoke-interface {p1, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    const-string/jumbo v8, "name"

    invoke-static {p1, v8, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 81
    invoke-interface {p1, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 82
    :cond_7
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 83
    const-string v3, "auto-revoke-permissions-mode"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    const-string/jumbo v5, "mode"

    invoke-interface {p1, v2, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 87
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "app_icon."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p2, p2, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-nez p2, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 89
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_8

    .line 90
    :cond_8
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p2, p2, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_9

    .line 91
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v7, p2, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    cmp-long p2, v5, v7

    if-eqz p2, :cond_9

    .line 92
    const-string p2, "PackageInstallerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing changed icon "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 94
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {v1, v5, v6, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    :goto_4
    :try_start_3
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object v2, p2

    goto :goto_7

    :catch_0
    move-exception v1

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_7

    :catch_1
    move-exception v1

    move-object p2, v2

    .line 96
    :goto_5
    :try_start_4
    const-string v5, "PackageInstallerSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write icon "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 97
    :goto_6
    :try_start_5
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, p2, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    goto :goto_8

    .line 98
    :goto_7
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 99
    throw p0

    .line 100
    :cond_9
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object p2

    .line 101
    array-length v1, p2

    move v3, v4

    :goto_9
    if-ge v3, v1, :cond_a

    aget v5, p2, v3

    .line 102
    const-string v6, "childSession"

    invoke-interface {p1, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    const-string/jumbo v6, "sessionId"

    invoke-interface {p1, v2, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    const-string v5, "childSession"

    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 105
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object p2

    .line 106
    array-length v1, p2

    move v3, v4

    :goto_a
    if-ge v3, v1, :cond_b

    aget-object v5, p2, v3

    .line 107
    const-string/jumbo v6, "sessionFile"

    invoke-interface {p1, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    const-string v6, "location"

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v7

    invoke-interface {p1, v2, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    const-string/jumbo v6, "name"

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 110
    const-string v6, "lengthBytes"

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getLengthBytes()J

    move-result-wide v7

    invoke-interface {p1, v2, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    const-string/jumbo v6, "metadata"

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getMetadata()[B

    move-result-object v7

    invoke-static {p1, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 112
    const-string/jumbo v6, "signature"

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getSignature()[B

    move-result-object v5

    invoke-static {p1, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 113
    const-string/jumbo v5, "sessionFile"

    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 114
    :cond_b
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move v1, v4

    :goto_b
    if-ge v1, p2, :cond_d

    .line 115
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    .line 117
    iget-object v5, v5, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->mChecksums:[Landroid/content/pm/Checksum;

    .line 118
    array-length v6, v5

    move v7, v4

    :goto_c
    if-ge v7, v6, :cond_c

    aget-object v8, v5, v7

    .line 119
    const-string/jumbo v9, "sessionChecksum"

    invoke-interface {p1, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const-string/jumbo v9, "name"

    invoke-static {p1, v9, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 121
    const-string v9, "checksumKind"

    invoke-virtual {v8}, Landroid/content/pm/Checksum;->getType()I

    move-result v10

    invoke-interface {p1, v2, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    const-string v9, "checksumValue"

    invoke-virtual {v8}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object v8

    invoke-static {p1, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 123
    const-string/jumbo v8, "sessionChecksum"

    invoke-interface {p1, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 124
    :cond_d
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    :goto_d
    if-ge v4, p2, :cond_10

    .line 125
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    .line 127
    iget-object v3, v3, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->mSignature:[B

    if-eqz v3, :cond_f

    .line 128
    array-length v5, v3

    if-nez v5, :cond_e

    goto :goto_e

    .line 129
    :cond_e
    const-string/jumbo v5, "sessionChecksumSignature"

    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    const-string/jumbo v5, "name"

    invoke-static {p1, v5, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 131
    const-string/jumbo v1, "signature"

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 132
    const-string/jumbo v1, "sessionChecksumSignature"

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 133
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    if-eqz p0, :cond_11

    .line 134
    invoke-virtual {p0}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 135
    const-string/jumbo v1, "preVerifiedDomains"

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    const-string v1, "domain"

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 137
    const-string/jumbo p2, "preVerifiedDomains"

    invoke-interface {p1, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    .line 138
    :cond_11
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 139
    const-string/jumbo p0, "session"

    invoke-interface {p1, v2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 140
    :goto_10
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .locals 1

    if-eqz p6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertCanWrite(Z)V

    .line 2
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
