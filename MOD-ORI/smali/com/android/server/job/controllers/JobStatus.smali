.class public final Lcom/android/server/job/controllers/JobStatus;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BASIC_PII_FILTERS:Landroid/util/ArrayMap;

.field public static final CONSTRAINT_STORAGE_NOT_LOW:I = 0x8

.field public static final DEBUG:Z

.field public static final MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

.field public static sMessageDigest:Ljava/security/MessageDigest;

.field public static final sNamespaceHashCache:Landroid/util/ArrayMap;


# instance fields
.field public appHasDozeExemption:Z

.field public final batteryName:Ljava/lang/String;

.field public final callingUid:I

.field public changedAuthorities:Landroid/util/ArraySet;

.field public changedUris:Landroid/util/ArraySet;

.field public contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

.field public final earliestRunTimeElapsedMillis:J

.field public enqueueTime:J

.field public executingWork:Ljava/util/ArrayList;

.field public final job:Landroid/app/job/JobInfo;

.field public lastEvaluatedBias:I

.field public final latestRunTimeElapsedMillis:J

.field public final mCanApplyTransportAffinities:Z

.field public mConstraintChangeHistoryIndex:I

.field public final mConstraintStatusHistory:[I

.field public final mConstraintUpdatedTimesElapsed:[J

.field public mCumulativeExecutionTimeMs:J

.field public mDynamicConstraints:I

.field public mExpeditedQuotaApproved:Z

.field public mFilteredDebugTags:[Ljava/lang/String;

.field public mFilteredTraceTag:Ljava/lang/String;

.field public mFirstForceBatchedTimeElapsed:J

.field public final mHasExemptedMediaUrisOnly:Z

.field public mHasMediaBackupExemption:Z

.field public mInternalFlags:I

.field public mIsDowngradedDueToBuggyApp:Z

.field public final mIsProxyJob:Z

.field public mIsUserBgRestricted:Z

.field public mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

.field public final mLastFailedRunTime:J

.field public final mLastSuccessfulRunTime:J

.field public mLoggedBucketMismatch:Z

.field public final mLoggingJobId:J

.field public mMinimumNetworkChunkBytes:J

.field public final mNamespace:Ljava/lang/String;

.field public final mNamespaceHash:Ljava/lang/String;

.field public mNumAppliedFlexibleConstraints:I

.field public mNumDroppedFlexibleConstraints:I

.field public final mNumSystemStops:I

.field public mOriginalLatestRunTimeElapsedMillis:J

.field public mPersistedUtcTimes:Landroid/util/Pair;

.field public mReadyDeadlineSatisfied:Z

.field public mReadyDynamicSatisfied:Z

.field public mReadyNotDozing:Z

.field public mReadyNotRestrictedInBg:Z

.field public mReadyWithinQuota:Z

.field public mReasonReadyToUnready:I

.field public final mRequiredConstraintsOfInterest:I

.field public mSatisfiedConstraintsOfInterest:I

.field public mSystemTraceTag:Ljava/lang/String;

.field public mTotalNetworkDownloadBytes:J

.field public mTotalNetworkUploadBytes:J

.field public mTransportAffinitiesSatisfied:Z

.field public mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

.field public mWakelockTag:Ljava/lang/String;

.field public madeActive:J

.field public madePending:J

.field public network:Landroid/net/Network;

.field public nextPendingWorkId:I

.field public final numFailures:I

.field public overrideState:I

.field public pendingWork:Ljava/util/ArrayList;

.field public prepared:Z

.field public final requiredConstraints:I

.field public satisfiedConstraints:I

.field public serviceProcessName:Ljava/lang/String;

.field public final sourcePackageName:Ljava/lang/String;

.field public final sourceTag:Ljava/lang/String;

.field public final sourceUid:I

.field public final sourceUserId:I

.field public standbyBucket:I

.field public startedAsExpeditedJob:Z

.field public startedAsUserInitiatedJob:Z

.field public startedWithForegroundFlag:Z

.field public startedWithImmediacyPrivilege:Z

.field public trackingControllers:I

.field public uidActive:Z

.field public unpreparedPoint:Ljava/lang/Throwable;

.field public uriPerms:Lcom/android/server/job/GrantedUriPermissions;

.field public whenStandbyDeferred:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    .line 4
    .line 5
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->sNamespaceHashCache:Landroid/util/ArrayMap;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [Landroid/net/Uri;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    .line 26
    .line 27
    new-instance v0, Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->BASIC_PII_FILTERS:Landroid/util/ArrayMap;

    .line 33
    .line 34
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 35
    .line 36
    const-string v2, "[EMAIL]"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    .line 42
    .line 43
    const-string v2, "[PHONE]"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIJJJJJII)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p9

    move-wide/from16 v9, p10

    move-wide/from16 v11, p12

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x0

    .line 2
    iput-object v13, v1, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    const/4 v14, 0x0

    .line 3
    iput v14, v1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 4
    iput v14, v1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 5
    iput v14, v1, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 6
    iput-boolean v14, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 7
    iput-boolean v14, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 8
    iput-boolean v14, v1, Lcom/android/server/job/controllers/JobStatus;->startedWithForegroundFlag:Z

    .line 9
    iput-boolean v14, v1, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    const/4 v15, 0x1

    .line 10
    iput v15, v1, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 11
    iput v14, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 12
    iput v14, v1, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    const/16 v0, 0xa

    .line 13
    new-array v15, v0, [J

    iput-object v15, v1, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    .line 14
    new-array v0, v0, [I

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    const-wide/16 v13, -0x1

    .line 15
    iput-wide v13, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 16
    iput-wide v13, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 17
    iput-wide v13, v1, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    const/4 v13, 0x0

    .line 18
    iput v13, v1, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 19
    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 20
    iput v5, v1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 21
    iput-object v6, v1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    if-nez v6, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_5

    .line 22
    :cond_0
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v6

    goto/16 :goto_5

    .line 23
    :cond_1
    sget-object v13, Lcom/android/server/job/controllers/JobStatus;->sNamespaceHashCache:Landroid/util/ArrayMap;

    monitor-enter v13

    .line 24
    :try_start_0
    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 25
    invoke-virtual {v13, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v13

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    .line 26
    :cond_2
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    sget-object v0, Lcom/android/server/job/controllers/JobStatus;->sMessageDigest:Ljava/security/MessageDigest;

    if-nez v0, :cond_3

    .line 28
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->sMessageDigest:Ljava/security/MessageDigest;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 29
    :cond_3
    :goto_0
    sget-object v0, Lcom/android/server/job/controllers/JobStatus;->sMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 30
    new-instance v13, Ljava/lang/StringBuilder;

    array-length v14, v0

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 31
    array-length v14, v0

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_4

    aget-byte v16, v0, v15

    move-object/from16 v17, v0

    .line 32
    const-string v0, "%02X"

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    move/from16 v18, v14

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v0, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v17

    move/from16 v14, v18

    goto :goto_1

    .line 33
    :cond_4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 34
    :goto_2
    const-string v13, "JobScheduler.JobStatus"

    const-string v14, "Couldn\'t hash input"

    invoke-static {v13, v14, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_5

    .line 35
    const-string/jumbo v0, "failed_namespace_hash"

    goto :goto_5

    .line 36
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 37
    sget-object v14, Lcom/android/server/job/controllers/JobStatus;->sNamespaceHashCache:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 38
    :try_start_2
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/16 v15, 0x80

    if-lt v13, v15, :cond_6

    .line 39
    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    invoke-virtual {v13, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_13

    .line 40
    :cond_6
    :goto_4
    invoke-virtual {v14, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    :goto_5
    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mNamespaceHash:Ljava/lang/String;

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-nez v6, :cond_7

    int-to-long v13, v0

    goto :goto_6

    .line 44
    :cond_7
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->hashCode()I

    move-result v13

    int-to-long v13, v13

    const/16 v15, 0x1f

    shl-long/2addr v13, v15

    int-to-long v7, v0

    or-long/2addr v13, v7

    .line 45
    :goto_6
    iput-wide v13, v1, Lcom/android/server/job/controllers/JobStatus;->mLoggingJobId:J

    const-wide/16 v7, 0x0

    const/4 v0, -0x1

    if-eq v4, v0, :cond_8

    if-eqz v3, :cond_8

    .line 46
    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    invoke-interface {v13, v3, v7, v8, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v13
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    :cond_8
    move v13, v0

    :goto_7
    if-ne v13, v0, :cond_9

    .line 47
    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 48
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 50
    iput-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    goto :goto_8

    .line 51
    :cond_9
    iput v13, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 52
    iput v4, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 53
    iput-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    move-object/from16 v2, p7

    .line 54
    iput-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 55
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 56
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/app/job/JobInfo$Builder;-><init>(Landroid/app/job/JobInfo;)V

    .line 57
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/net/NetworkRequest$Builder;-><init>(Landroid/net/NetworkRequest;)V

    new-instance v2, Landroid/util/Range;

    iget v4, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v13, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v2, v4, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/app/job/JobInfo$Builder;->build(ZZZZ)Landroid/app/job/JobInfo;

    move-result-object v0

    goto :goto_9

    :cond_a
    move-object/from16 v2, p1

    move-object v0, v2

    .line 62
    :goto_9
    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    if-nez v6, :cond_b

    .line 63
    const-string v2, ""

    goto :goto_a

    :cond_b
    const-string v2, "@"

    const-string v3, "@"

    .line 64
    invoke-static {v2, v6, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    :goto_a
    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 66
    invoke-static {v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 68
    :cond_c
    invoke-static {v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_b
    iput-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 71
    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    .line 72
    iput-wide v9, v1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 73
    iput-wide v11, v1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 74
    iput-wide v11, v1, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    move/from16 v2, p8

    .line 75
    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    move/from16 v3, p9

    .line 76
    iput v3, v1, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    .line 77
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getConstraintFlags()I

    move-result v4

    .line 78
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v6

    if-eqz v6, :cond_d

    const/high16 v6, 0x10000000

    or-int/2addr v4, v6

    :cond_d
    cmp-long v6, v9, v7

    if-eqz v6, :cond_e

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    :cond_e
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v11, v6

    if-eqz v6, :cond_f

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v4, v6

    .line 79
    :cond_f
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v6

    if-eqz v6, :cond_10

    const/high16 v6, 0x800000

    or-int/2addr v4, v6

    .line 80
    :cond_10
    iget v6, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 81
    sget-object v7, Lcom/android/server/job/controllers/UidRestrictController;->sIgnoreUids:Landroid/util/ArraySet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const/high16 v6, 0x100000

    or-int/2addr v4, v6

    .line 82
    :cond_11
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v6

    if-eqz v6, :cond_12

    const/high16 v6, 0x4000000

    or-int/2addr v4, v6

    .line 83
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v6

    array-length v7, v6

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v7, :cond_14

    aget-object v8, v6, v13

    .line 84
    sget-object v9, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    :cond_12
    const/4 v13, 0x0

    goto :goto_d

    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_14
    const/4 v13, 0x1

    .line 85
    :goto_d
    iput-boolean v13, v1, Lcom/android/server/job/controllers/JobStatus;->mHasExemptedMediaUrisOnly:Z

    .line 86
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 87
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_15

    const/4 v13, 0x1

    goto :goto_e

    :cond_15
    const/4 v13, 0x0

    :goto_e
    iput-boolean v13, v1, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    not-int v6, v4

    and-int/lit8 v6, v6, 0x7

    if-nez v6, :cond_17

    if-eqz v13, :cond_16

    goto :goto_f

    :cond_16
    const/4 v13, 0x0

    goto :goto_10

    :cond_17
    :goto_f
    const/4 v13, 0x1

    .line 88
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v6

    if-nez v6, :cond_18

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v0

    if-nez v0, :cond_18

    add-int v0, v2, v3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_18

    if-eqz v13, :cond_18

    const/high16 v0, 0x200000

    or-int/2addr v4, v0

    .line 89
    :cond_18
    iput v4, v1, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const v0, -0x6b4ffff1

    and-int/2addr v0, v4

    .line 90
    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    move/from16 v2, p21

    .line 91
    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    const/4 v0, 0x5

    if-ne v5, v0, :cond_19

    const v0, 0x10000007

    .line 93
    invoke-virtual {v1, v0}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    :goto_11
    move-wide/from16 v2, p18

    goto :goto_12

    :cond_19
    const/4 v2, 0x0

    .line 94
    iput-boolean v2, v1, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    goto :goto_11

    .line 95
    :goto_12
    iput-wide v2, v1, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    move-wide/from16 v2, p14

    .line 96
    iput-wide v2, v1, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    move-wide/from16 v2, p16

    .line 97
    iput-wide v2, v1, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    move/from16 v2, p20

    .line 98
    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->updateMediaBackupExemptionStatus()Z

    return-void

    .line 101
    :goto_13
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 102
    :goto_14
    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;JJIIJJJ)V
    .locals 22

    move-object/from16 v0, p1

    .line 114
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 115
    iget v2, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 116
    iget-object v3, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 117
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 118
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 119
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 120
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 121
    iget v14, v0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 122
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move/from16 v20, v14

    move-wide/from16 v14, p8

    move-wide/from16 v16, p10

    move-wide/from16 v18, p12

    .line 123
    invoke-direct/range {v0 .. v21}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIJJJJJII)V

    return-void
.end method

.method public static applyBasicPiiFilters(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/job/controllers/JobStatus;->BASIC_PII_FILTERS:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/android/server/job/controllers/JobStatus;->BASIC_PII_FILTERS:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/util/regex/Pattern;

    .line 18
    .line 19
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-object p0
.end method

.method public static bucketName(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string v0, "Unknown: "

    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string p0, "EXEMPTED"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_1
    const-string p0, "RESTRICTED"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    const-string p0, "NEVER"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_3
    const-string p0, "RARE"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    const-string p0, "FREQUENT"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_5
    const-string p0, "WORKING_SET"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_6
    const-string p0, "ACTIVE"

    .line 30
    .line 31
    return-object p0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/job/controllers/JobStatus;
    .locals 28

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    const-wide v4, 0x757b12c00L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    add-long v4, v0, v2

    .line 38
    .line 39
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v8

    .line 47
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    sub-long v2, v4, v2

    .line 56
    .line 57
    :goto_0
    move-wide/from16 v16, v2

    .line 58
    .line 59
    move-wide/from16 v18, v4

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    add-long/2addr v2, v0

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const-wide/16 v2, 0x0

    .line 75
    .line 76
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_2

    .line 81
    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    add-long/2addr v4, v0

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :goto_2
    if-eqz p2, :cond_3

    .line 95
    .line 96
    move-object/from16 v2, p2

    .line 97
    .line 98
    :goto_3
    move/from16 v3, p3

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    goto :goto_3

    .line 110
    :goto_4
    invoke-static {v3, v2, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(ILjava/lang/String;J)I

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    .line 115
    .line 116
    move-object v6, v0

    .line 117
    const-wide/16 v22, 0x0

    .line 118
    .line 119
    const-wide/16 v24, 0x0

    .line 120
    .line 121
    const/4 v14, 0x0

    .line 122
    const/4 v15, 0x0

    .line 123
    const-wide/16 v20, 0x0

    .line 124
    .line 125
    const/16 v26, 0x0

    .line 126
    .line 127
    const/16 v27, 0x0

    .line 128
    .line 129
    move-object/from16 v7, p0

    .line 130
    .line 131
    move/from16 v8, p1

    .line 132
    .line 133
    move-object/from16 v9, p2

    .line 134
    .line 135
    move/from16 v10, p3

    .line 136
    .line 137
    move-object/from16 v12, p4

    .line 138
    .line 139
    move-object/from16 v13, p5

    .line 140
    .line 141
    invoke-direct/range {v6 .. v27}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIJJJJJII)V

    .line 142
    .line 143
    .line 144
    return-object v0
.end method

.method public static dumpConstraints(ILjava/io/PrintWriter;)V
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1
    const-string v0, " CHARGING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 2
    const-string v0, " BATTERY_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_2

    .line 3
    const-string v0, " STORAGE_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_3

    .line 4
    const-string v0, " TIMING_DELAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p0

    if-eqz v0, :cond_4

    .line 5
    const-string v0, " DEADLINE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_5

    .line 6
    const-string v0, " IDLE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_6

    .line 7
    const-string v0, " CONNECTIVITY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    const/high16 v0, 0x200000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    .line 8
    const-string v0, " FLEXIBILITY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    const/high16 v0, 0x4000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_8

    .line 9
    const-string v0, " CONTENT_TRIGGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    const/high16 v0, 0x2000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_9

    .line 10
    const-string v0, " DEVICE_NOT_DOZING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    const/high16 v0, 0x400000

    and-int/2addr v0, p0

    if-eqz v0, :cond_a

    .line 11
    const-string v0, " BACKGROUND_NOT_RESTRICTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a
    const/high16 v0, 0x800000

    and-int/2addr v0, p0

    if-eqz v0, :cond_b

    .line 12
    const-string v0, " PREFETCH"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_b
    const/high16 v0, 0x1000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_c

    .line 13
    const-string v0, " WITHIN_QUOTA"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_c
    const/high16 v0, 0x100000

    and-int/2addr v0, p0

    if-eqz v0, :cond_d

    .line 14
    const-string v0, " UID_NOT_RESTRICTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_d
    if-eqz p0, :cond_e

    .line 15
    const-string v0, " [0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public static dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 19
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 20
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2
    const/high16 v0, -0x80000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 21
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p3

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 22
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_4
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 23
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_5
    const/high16 v0, 0x10000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 24
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_6
    const/high16 v0, 0x4000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 25
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_7
    const/high16 v0, 0x2000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 26
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_8
    const/high16 v0, 0x1000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 27
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_9
    const/high16 v0, 0x400000

    and-int/2addr p3, v0

    if-eqz p3, :cond_a

    const/16 p3, 0xb

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_a
    return-void
.end method

.method public static dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2
    const-string v0, "#"

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p2, ": #"

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p2, " "

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 4
    const-string/jumbo p2, "x "

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    const-string p2, "URI grants:"

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 8
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {p1, p0}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;)V

    .line 9
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public static dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V
    .locals 3

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 12
    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    .line 13
    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 14
    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 16
    :cond_0
    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 17
    check-cast p3, Lcom/android/server/job/GrantedUriPermissions;

    const-wide v0, 0x10b00000004L

    invoke-virtual {p3, p0, v0, v1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 18
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method


# virtual methods
.method public addDynamicConstraints(I)V
    .locals 2

    .line 1
    const/high16 v0, 0x1000000

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "JobScheduler.JobStatus"

    .line 7
    .line 8
    const-string v1, "Tried to set quota as a dynamic constraint"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const v0, -0x1000001

    .line 14
    .line 15
    .line 16
    and-int/2addr p1, v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const v0, -0x10000001

    .line 24
    .line 25
    .line 26
    and-int/2addr p1, v0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const v0, -0x4000001

    .line 34
    .line 35
    .line 36
    and-int/2addr p1, v0

    .line 37
    :cond_2
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 38
    .line 39
    or-int/2addr p1, v0

    .line 40
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 45
    .line 46
    and-int/2addr v0, p1

    .line 47
    if-ne p1, v0, :cond_3

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 p1, 0x0

    .line 52
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 53
    .line 54
    return-void
.end method

.method public final canRunInDoze()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlags()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    and-int/2addr v0, v1

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    :cond_0
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 32
    .line 33
    const/high16 v0, 0x2000000

    .line 34
    .line 35
    and-int/2addr p0, v0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :cond_2
    :goto_0
    return v1
.end method

.method public final clearTrackingController(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    .line 2
    .line 3
    and-int v1, v0, p1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    not-int p1, p1

    .line 8
    and-int/2addr p1, v0

    .line 9
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final computeSystemTraceTag()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSystemTraceTag:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/16 v1, 0x80

    .line 17
    .line 18
    const-string v2, "*job*<"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ">"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    const-string v2, ":"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_1
    const-string v2, "/"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    const-string v0, "$"

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_3

    .line 102
    .line 103
    const-string v2, "@"

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    :cond_3
    const-string v0, "#"

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSystemTraceTag:Ljava/lang/String;

    .line 130
    .line 131
    return-object v0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;ZJ)V
    .locals 9
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2
    const-string v0, " tag="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3
    const-string v0, "Source: uid="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4
    const-string v0, " user="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 5
    const-string v0, " pkg="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-eqz p2, :cond_19

    .line 6
    const-string v5, "JobInfo:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 8
    const-string v5, "Service: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 10
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    const-string v5, "PERIODIC: interval="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 12
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 13
    const-string v5, " flex="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 14
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 15
    :cond_0
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 16
    const-string v5, "PERSISTED"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 17
    :cond_1
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getBias()I

    move-result v5

    if-eqz v5, :cond_2

    .line 18
    const-string v5, "Bias: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getBias()I

    move-result v5

    invoke-static {v5}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 20
    :cond_2
    const-string v5, "Priority: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 21
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v5

    invoke-static {v5}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v5

    .line 23
    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 24
    const-string v6, " effective="

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 25
    invoke-static {v5}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 26
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 27
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v5

    if-eqz v5, :cond_4

    .line 28
    const-string v5, "Flags: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 29
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 30
    :cond_4
    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    if-eqz v5, :cond_6

    .line 31
    const-string v5, "Internal flags: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 32
    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 34
    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_5

    .line 35
    const-string v5, " HAS_FOREGROUND_EXEMPTION"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 36
    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 37
    :cond_6
    const-string v5, "Requires: charging="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 38
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v5, " batteryNotLow="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 39
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v5, " deviceIdle="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 40
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 41
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 42
    const-string v5, "Trigger content URIs:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v5, v4

    .line 44
    :goto_0
    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_7

    .line 45
    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v6

    aget-object v6, v6, v5

    .line 46
    invoke-virtual {v6}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {v6}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 48
    :cond_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 49
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-ltz v5, :cond_8

    .line 50
    const-string v5, "Trigger update delay: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 51
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 52
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 53
    :cond_8
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-ltz v5, :cond_9

    .line 54
    const-string v5, "Trigger max delay: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 55
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 56
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 57
    :cond_9
    iget-boolean v5, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "Has media backup exemption"

    invoke-virtual {p1, v6, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->println()V

    .line 58
    :cond_a
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 59
    const-string v5, "Extras: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 60
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PersistableBundle;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 61
    :cond_b
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 62
    const-string v5, "Transient extras: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 63
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 64
    :cond_c
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 65
    const-string v5, "Clip data: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 67
    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 69
    :cond_d
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v5, :cond_e

    .line 70
    const-string v5, "Granted URI permissions:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 71
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v5, p1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;)V

    .line 72
    :cond_e
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 73
    const-string v5, "Network type: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 74
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 75
    :cond_f
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_10

    .line 76
    const-string v5, "Network download bytes: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 77
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 78
    :cond_10
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_11

    .line 79
    const-string v5, "Network upload bytes: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 80
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 81
    :cond_11
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_12

    .line 82
    const-string v5, "Minimum network chunk bytes: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 83
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 84
    :cond_12
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-eqz v5, :cond_13

    .line 85
    const-string v5, "Minimum latency: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 86
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 87
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 88
    :cond_13
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-eqz v5, :cond_14

    .line 89
    const-string v5, "Max execution delay: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 90
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 91
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 92
    :cond_14
    const-string v5, "Backoff: policy="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 93
    const-string v5, " initial="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 94
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 95
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 96
    const-string v5, "Has early constraint"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 97
    :cond_15
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 98
    const-string v5, "Has late constraint"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 99
    :cond_16
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 100
    const-string v5, "Trace tag: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 101
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 102
    :cond_17
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getDebugTags()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_18

    .line 103
    const-string v5, "Debug tags: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 104
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getDebugTags()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 105
    :cond_18
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 106
    :cond_19
    const-string v5, "Required constraints:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 107
    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-static {v5, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    .line 108
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 109
    const-string v6, "Dynamic constraints:"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 110
    iget v6, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-static {v6, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    .line 111
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    if-eqz p2, :cond_1f

    .line 112
    const-string p2, "Satisfied constraints:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 113
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-static {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    .line 114
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 115
    const-string p2, "Unsatisfied constraints:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x1000000

    or-int/2addr p2, v5

    .line 116
    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v5, v5

    and-int/2addr p2, v5

    invoke-static {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    .line 117
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 119
    const-string p2, "Num Required Flexible constraints: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 121
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 122
    const-string p2, "Num Dropped Flexible constraints: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 123
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    .line 124
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 125
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 126
    :cond_1a
    const-string p2, "Constraint history:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, v4

    :goto_1
    const/16 v5, 0xa

    if-ge p2, v5, :cond_1c

    .line 128
    iget v6, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    add-int/2addr v6, p2

    rem-int/2addr v6, v5

    .line 129
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    aget-wide v7, v5, v6

    cmp-long v5, v7, v0

    if-nez v5, :cond_1b

    goto :goto_2

    .line 130
    :cond_1b
    invoke-static {v7, v8, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 131
    const-string v5, " ="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 132
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    aget v5, v5, v6

    invoke-static {v5, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    .line 133
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 134
    :cond_1c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 135
    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    if-eqz p2, :cond_1d

    .line 136
    const-string p2, "Doze whitelisted: true"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 137
    :cond_1d
    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eqz p2, :cond_1e

    .line 138
    const-string p2, "Uid: active"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 139
    :cond_1e
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 140
    const-string p2, "Is exempted from app standby"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 141
    :cond_1f
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    if-eqz p2, :cond_28

    .line 142
    const-string p2, "Tracking:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 143
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_20

    const-string p2, " BATTERY"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 144
    :cond_20
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_21

    const-string p2, " CONNECTIVITY"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 145
    :cond_21
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_22

    const-string p2, " CONTENT"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 146
    :cond_22
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_23

    const-string p2, " IDLE"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 147
    :cond_23
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_24

    const-string p2, " STORAGE"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 148
    :cond_24
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr p2, v3

    if-eqz p2, :cond_25

    const-string p2, " TIME"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 149
    :cond_25
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_26

    const-string p2, " QUOTA"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 150
    :cond_26
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_27

    const-string p2, " UID_RESTRICT"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 151
    :cond_27
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 152
    :cond_28
    const-string p2, "Implicit constraints:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 154
    const-string/jumbo p2, "readyNotDozing: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 155
    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 156
    const-string/jumbo p2, "readyNotRestrictedInBg: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 157
    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 158
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p2

    if-nez p2, :cond_29

    const/high16 p2, 0x40000000    # 2.0f

    .line 159
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 160
    const-string/jumbo p2, "readyDeadlineSatisfied: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 161
    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 162
    :cond_29
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p2, :cond_2a

    .line 163
    const-string/jumbo p2, "readyDynamicSatisfied: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 164
    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 165
    :cond_2a
    const-string/jumbo p2, "readyComponentEnabled: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 166
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    if-eqz p2, :cond_2b

    goto :goto_3

    :cond_2b
    move v2, v4

    :goto_3
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 167
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x10

    .line 168
    const-string v2, ")"

    if-eqz p2, :cond_2c

    .line 169
    const-string/jumbo p2, "expeditedQuotaApproved: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 170
    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 171
    const-string p2, " (started as EJ: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 172
    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 173
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 174
    :cond_2c
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getFlags()I

    move-result p2

    and-int/2addr p2, v3

    if-eqz p2, :cond_2d

    .line 175
    const-string/jumbo p2, "userInitiatedApproved: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 177
    const-string p2, " (started as UIJ: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 178
    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 179
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 180
    :cond_2d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 181
    const-string p2, "Started with foreground flag: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 182
    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->startedWithForegroundFlag:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 183
    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    if-eqz p2, :cond_2e

    .line 184
    const-string p2, "User BG restricted"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 185
    :cond_2e
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz p2, :cond_30

    .line 186
    const-string p2, "Changed authorities:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, v4

    .line 188
    :goto_4
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge p2, v2, :cond_2f

    .line 189
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 190
    :cond_2f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 191
    :cond_30
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz p2, :cond_32

    .line 192
    const-string p2, "Changed URIs:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, v4

    .line 194
    :goto_5
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge p2, v2, :cond_31

    .line 195
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 196
    :cond_31
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 197
    :cond_32
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz p2, :cond_33

    .line 198
    const-string p2, "Network: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 199
    :cond_33
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz p2, :cond_34

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_34

    .line 200
    const-string p2, "Pending work:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move p2, v4

    .line 201
    :goto_6
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_34

    .line 202
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-static {p1, v2, p2}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 203
    :cond_34
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz p2, :cond_35

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_35

    .line 204
    const-string p2, "Executing work:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 205
    :goto_7
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v4, p2, :cond_35

    .line 206
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/job/JobWorkItem;

    invoke-static {p1, p2, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 207
    :cond_35
    const-string p2, "Standby bucket: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 208
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-static {p2}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object p2

    .line 209
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 211
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    cmp-long p2, v2, v0

    if-eqz p2, :cond_36

    .line 212
    const-string p2, "Deferred since: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 213
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    invoke-static {v2, v3, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 214
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 215
    :cond_36
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long p2, v2, v0

    if-eqz p2, :cond_37

    .line 216
    const-string p2, "Time since first force batch attempt: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 217
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    invoke-static {v2, v3, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 218
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 219
    :cond_37
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 220
    const-string p2, "Enqueue time: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 221
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v2, v3, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 222
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 223
    const-string p2, "Run time: earliest="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 224
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long p2, v2, v0

    const-string/jumbo v4, "none"

    if-nez p2, :cond_38

    .line 225
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    :cond_38
    sub-long/2addr v2, p3

    .line 226
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 227
    :goto_8
    const-string p2, ", latest="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 228
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long p2, v2, v5

    if-nez p2, :cond_39

    .line 229
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    :cond_39
    sub-long/2addr v2, p3

    .line 230
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 231
    :goto_9
    const-string p2, ", original latest="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 232
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    cmp-long p2, v2, v5

    if-nez p2, :cond_3a

    .line 233
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a

    :cond_3a
    sub-long/2addr v2, p3

    .line 234
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 235
    :goto_a
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 236
    iget-wide p2, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    cmp-long p2, p2, v0

    if-eqz p2, :cond_3b

    .line 237
    const-string p2, "Cumulative execution time="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 238
    iget-wide p2, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 239
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 240
    :cond_3b
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz p2, :cond_3c

    .line 241
    const-string p3, "Num failures: "

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 242
    :cond_3c
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    if-eqz p2, :cond_3d

    .line 243
    const-string p3, "Num system stops: "

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 244
    :cond_3d
    iget-wide p2, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    cmp-long p4, p2, v0

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    if-eqz p4, :cond_3e

    .line 245
    const-string p4, "Last successful run: "

    invoke-virtual {p1, p4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 246
    invoke-static {v2, p2, p3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p2

    .line 247
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 248
    :cond_3e
    iget-wide p2, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    cmp-long p0, p2, v0

    if-eqz p0, :cond_3f

    .line 249
    const-string p0, "Last failed run: "

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 250
    invoke-static {v2, p2, p3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    .line 251
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;ZJ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide v2, 0x10b00000002L

    .line 252
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10500000001L

    .line 253
    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x10900000002L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v9, 0x10500000003L

    .line 255
    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10500000004L

    .line 256
    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10900000005L

    .line 257
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v9, 0x1080000000aL

    const-wide v11, 0x10800000002L

    if-eqz p2, :cond_a

    const-wide v13, 0x10b00000006L

    .line 258
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 259
    iget-object v15, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v15

    const-wide v6, 0x10b00000001L

    invoke-virtual {v15, v1, v6, v7}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 260
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v6

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 261
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v6

    const-wide v11, 0x10300000003L

    invoke-virtual {v1, v11, v12, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 262
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v6

    const-wide v11, 0x10300000004L

    invoke-virtual {v1, v11, v12, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 263
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v6

    const-wide v11, 0x10800000005L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 264
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getBias()I

    move-result v6

    const-wide v11, 0x11100000006L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 265
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v6

    const-wide v11, 0x10500000007L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 266
    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    const-wide v11, 0x10300000018L

    .line 267
    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 268
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v6

    const-wide v11, 0x10800000008L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 269
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v6

    const-wide v11, 0x10800000009L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 270
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v6

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 271
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    .line 272
    :goto_0
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_1

    const-wide v11, 0x20b0000000bL

    .line 273
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 274
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v7

    aget-object v7, v7, v6

    .line 275
    invoke-virtual {v7}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v15

    invoke-virtual {v1, v4, v5, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 276
    invoke-virtual {v7}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 277
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide v4, 0x10900000002L

    invoke-virtual {v1, v4, v5, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_1

    :cond_0
    const-wide v4, 0x10900000002L

    .line 278
    :goto_1
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    const-wide v4, 0x10500000001L

    goto :goto_0

    .line 279
    :cond_1
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 280
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 281
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v4

    const-wide v11, 0x1030000000cL

    .line 282
    invoke-virtual {v1, v11, v12, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 283
    :cond_2
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 284
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 285
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v4

    const-wide v6, 0x1030000000dL

    .line 286
    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 287
    :cond_3
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 288
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    const-wide v5, 0x10b0000000eL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/PersistableBundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 289
    :cond_4
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 290
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    const-wide v5, 0x10b0000000fL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Bundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 291
    :cond_5
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 292
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    const-wide v5, 0x10b00000010L

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/ClipData;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 293
    :cond_6
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v4, :cond_7

    const-wide v5, 0x10b00000011L

    .line 294
    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 295
    :cond_7
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v6, -0x1

    cmp-long v11, v4, v6

    if-eqz v11, :cond_8

    const-wide v11, 0x10300000019L

    .line 296
    invoke-virtual {v1, v11, v12, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 297
    :cond_8
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_9

    const-wide v6, 0x1030000001aL

    .line 298
    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 299
    :cond_9
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v4

    const-wide v6, 0x10300000014L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 300
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v4

    const-wide v6, 0x10300000015L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10b00000016L

    .line 301
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 302
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v6

    const-wide v11, 0x10e00000001L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 303
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 304
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v6

    const-wide v11, 0x10300000002L

    .line 305
    invoke-virtual {v1, v11, v12, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 306
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 307
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v4

    const-wide v5, 0x10800000017L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 308
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v4

    const-wide v5, 0x10800000018L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 309
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_a
    const-wide v4, 0x20e00000007L

    .line 310
    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-static {v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v4, 0x20e0000001fL

    .line 311
    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-static {v1, v4, v5, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    if-eqz p2, :cond_b

    const-wide v4, 0x20e00000008L

    .line 312
    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-static {v1, v4, v5, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    const/high16 v4, 0x1000000

    or-int/2addr v4, v6

    .line 313
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v5, v5

    and-int/2addr v4, v5

    const-wide v5, 0x20e00000009L

    invoke-static {v1, v5, v6, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 314
    iget-boolean v4, v0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x1080000001aL

    .line 315
    iget-boolean v6, v0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 316
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 317
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v4

    const-wide v5, 0x1080000001bL

    .line 318
    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 319
    :cond_b
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const-wide v6, 0x20e0000000bL

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    .line 320
    invoke-virtual {v1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 321
    :cond_c
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v9, 0x2

    and-int/2addr v4, v9

    if-eqz v4, :cond_d

    .line 322
    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 323
    :cond_d
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_e

    .line 324
    invoke-virtual {v1, v6, v7, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 325
    :cond_e
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_f

    const/4 v4, 0x3

    .line 326
    invoke-virtual {v1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 327
    :cond_f
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_10

    .line 328
    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 329
    :cond_10
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_11

    const/4 v4, 0x5

    .line 330
    invoke-virtual {v1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 331
    :cond_11
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_12

    const/4 v4, 0x6

    .line 332
    invoke-virtual {v1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 333
    :cond_12
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_13

    const/4 v4, 0x7

    .line 334
    invoke-virtual {v1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_13
    const-wide v4, 0x10b00000019L    # 5.665728762E-312

    .line 335
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10800000001L

    .line 336
    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {v1, v6, v7, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 337
    iget-boolean v6, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    const-wide v9, 0x10800000002L

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x10800000003L

    .line 338
    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {v1, v6, v7, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 339
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 340
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    .line 341
    :goto_2
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_14

    .line 342
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-wide v6, 0x2090000000cL

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 343
    :cond_14
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    .line 344
    :goto_3
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_15

    .line 345
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    const-wide v6, 0x2090000000dL

    .line 346
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 347
    :cond_15
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 348
    :goto_4
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_16

    .line 349
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobWorkItem;

    const-wide v6, 0x20b0000000fL

    invoke-static {v1, v6, v7, v5}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 350
    :cond_16
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    .line 351
    :goto_5
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_17

    .line 352
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobWorkItem;

    const-wide v6, 0x20b00000010L

    invoke-static {v1, v6, v7, v5}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_17
    const-wide v4, 0x10e00000011L

    .line 353
    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 354
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long v4, p3, v4

    const-wide v6, 0x10300000012L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 355
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    const-wide/16 v16, 0x0

    cmp-long v6, v4, v16

    if-nez v6, :cond_18

    move-wide/from16 v4, v16

    goto :goto_6

    :cond_18
    sub-long v4, p3, v4

    :goto_6
    const-wide v6, 0x1030000001cL

    .line 356
    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 357
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long v6, v4, v16

    if-nez v6, :cond_19

    move-wide/from16 v4, v16

    goto :goto_7

    :cond_19
    sub-long v4, p3, v4

    :goto_7
    const-wide v6, 0x1030000001dL

    .line 358
    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 359
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long v6, v4, v16

    const-wide v9, 0x11200000013L

    if-nez v6, :cond_1a

    const/4 v6, 0x0

    .line 360
    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_8

    :cond_1a
    const/4 v6, 0x0

    sub-long v4, v4, p3

    .line 361
    invoke-virtual {v1, v9, v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 362
    :goto_8
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v4, v7

    const-wide v8, 0x11200000014L

    if-nez v7, :cond_1b

    .line 363
    invoke-virtual {v1, v8, v9, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_9

    :cond_1b
    sub-long v4, v4, p3

    .line 364
    invoke-virtual {v1, v8, v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :goto_9
    const-wide v4, 0x1040000001eL

    .line 365
    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 366
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    add-int/2addr v4, v5

    const-wide v5, 0x10500000015L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10300000016L

    .line 367
    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000017L

    .line 368
    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 369
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/app/job/JobWorkItem;->setWorkId(I)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    and-int/lit8 v0, v0, 0x3

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    and-int/lit8 v1, v9, 0x3

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget v10, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 62
    .line 63
    iget-object v11, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 64
    .line 65
    iget v12, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 66
    .line 67
    const/4 v7, 0x0

    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    move v2, v10

    .line 71
    move-object v3, v11

    .line 72
    move v4, v12

    .line 73
    move v5, v9

    .line 74
    move-object v6, v8

    .line 75
    invoke-static/range {v1 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    move-object v7, v1

    .line 80
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    move v2, v10

    .line 87
    move-object v3, v11

    .line 88
    move v4, v12

    .line 89
    move v5, v9

    .line 90
    move-object v6, v8

    .line 91
    invoke-static/range {v1 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const/4 v7, 0x0

    .line 97
    :cond_3
    :goto_0
    invoke-virtual {p1, v7}, Landroid/app/job/JobWorkItem;->setGrants(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final getEffectivePriority()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/16 v2, 0x190

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 18
    .line 19
    and-int/lit8 v0, v0, 0x4

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0x1f4

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    move v0, v2

    .line 28
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getPriority()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    .line 39
    .line 40
    if-ge v3, v1, :cond_2

    .line 41
    .line 42
    return v0

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    return v0

    .line 50
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_4

    .line 55
    .line 56
    return v2

    .line 57
    :cond_4
    div-int/2addr v3, v1

    .line 58
    const/4 p0, 0x1

    .line 59
    if-eq v3, p0, :cond_6

    .line 60
    .line 61
    if-eq v3, v1, :cond_5

    .line 62
    .line 63
    const/16 p0, 0x64

    .line 64
    .line 65
    return p0

    .line 66
    :cond_5
    const/16 p0, 0xc8

    .line 67
    .line 68
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0

    .line 73
    :cond_6
    const/16 p0, 0x12c

    .line 74
    .line 75
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    return p0
.end method

.method public final getEffectiveStandbyBucket()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 16
    .line 17
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 18
    .line 19
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/server/job/JobSchedulerInternal;->isAppConsideredBuggy(ILjava/lang/String;ILjava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 46
    .line 47
    const/4 v3, 0x6

    .line 48
    if-ne v2, v3, :cond_3

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p0, "/"

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    :goto_0
    const-string p0, "Exempted app "

    .line 102
    .line 103
    const-string v0, " considered buggy"

    .line 104
    .line 105
    const-string v3, "JobScheduler.JobStatus"

    .line 106
    .line 107
    invoke-static {p0, v1, v0, v3}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    return v2

    .line 111
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    .line 112
    .line 113
    if-nez v3, :cond_9

    .line 114
    .line 115
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 116
    .line 117
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_4

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    const/4 v3, 0x5

    .line 125
    const/4 v4, 0x1

    .line 126
    if-eq v2, v3, :cond_5

    .line 127
    .line 128
    const/4 v3, 0x4

    .line 129
    if-eq v2, v3, :cond_5

    .line 130
    .line 131
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    .line 132
    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    :cond_5
    if-eqz v0, :cond_8

    .line 140
    .line 141
    if-ge v2, v4, :cond_8

    .line 142
    .line 143
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsDowngradedDueToBuggyApp:Z

    .line 144
    .line 145
    if-nez v0, :cond_7

    .line 146
    .line 147
    invoke-static {v1}, Landroid/os/UserHandle;->isCore(I)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 154
    .line 155
    :cond_6
    const-string/jumbo v0, "job_scheduler.value_job_quota_reduced_due_to_buggy_uid"

    .line 156
    .line 157
    .line 158
    invoke-static {v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    iput-boolean v4, p0, Lcom/android/server/job/controllers/JobStatus;->mIsDowngradedDueToBuggyApp:Z

    .line 162
    .line 163
    :cond_7
    return v4

    .line 164
    :cond_8
    return v2

    .line 165
    :cond_9
    :goto_1
    const/4 p0, 0x0

    .line 166
    return p0
.end method

.method public final getFilteredDebugTags()[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredDebugTags:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getDebugTagsArraySet()Landroid/util/ArraySet;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    new-array v1, v1, [Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredDebugTags:[Ljava/lang/String;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredDebugTags:[Ljava/lang/String;

    .line 22
    .line 23
    array-length v3, v2

    .line 24
    if-ge v1, v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v3}, Lcom/android/server/job/controllers/JobStatus;->applyBasicPiiFilters(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    aput-object v3, v2, v1

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v2
.end method

.method public final getFilteredTraceTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredTraceTag:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_1
    invoke-static {v0}, Lcom/android/server/job/controllers/JobStatus;->applyBasicPiiFilters(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredTraceTag:Ljava/lang/String;

    .line 21
    .line 22
    return-object v0
.end method

.method public final getFractionRunTime()F
    .locals 10

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 13
    .line 14
    cmp-long v2, v4, v2

    .line 15
    .line 16
    const-wide v6, 0x7fffffffffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 22
    .line 23
    const/high16 p0, 0x3f800000    # 1.0f

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    cmp-long v3, v8, v6

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    return p0

    .line 32
    :cond_0
    const/4 v3, 0x0

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    cmp-long v0, v0, v8

    .line 36
    .line 37
    if-ltz v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move p0, v3

    .line 41
    :goto_0
    return p0

    .line 42
    :cond_2
    cmp-long v2, v8, v6

    .line 43
    .line 44
    if-nez v2, :cond_4

    .line 45
    .line 46
    cmp-long v0, v0, v4

    .line 47
    .line 48
    if-ltz v0, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    move p0, v3

    .line 52
    :goto_1
    return p0

    .line 53
    :cond_4
    cmp-long v2, v0, v4

    .line 54
    .line 55
    if-gtz v2, :cond_5

    .line 56
    .line 57
    return v3

    .line 58
    :cond_5
    cmp-long v2, v0, v8

    .line 59
    .line 60
    if-ltz v2, :cond_6

    .line 61
    .line 62
    return p0

    .line 63
    :cond_6
    sub-long/2addr v0, v4

    .line 64
    long-to-float p0, v0

    .line 65
    sub-long/2addr v8, v4

    .line 66
    long-to-float v0, v8

    .line 67
    div-float/2addr p0, v0

    .line 68
    return p0
.end method

.method public final getNumPreviousAttempts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    .line 4
    .line 5
    add-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public final getNumRequiredFlexibleConstraints()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public final getTimeoutBlamePackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final getTimeoutBlameUserId()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final getTriggerContentMaxDelay()J
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p0, v0, v2

    .line 10
    .line 11
    if-gez p0, :cond_0

    .line 12
    .line 13
    const-wide/32 v0, 0x1d4c0

    .line 14
    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    return-wide v0
.end method

.method public final getTriggerContentUpdateDelay()J
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p0, v0, v2

    .line 10
    .line 11
    if-gez p0, :cond_0

    .line 12
    .line 13
    const-wide/16 v0, 0x2710

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_0
    const-wide/16 v2, 0x1f4

    .line 17
    .line 18
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0
.end method

.method public final getUserVisibleJobSummary()Landroid/app/job/UserVisibleJobSummary;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/app/job/UserVisibleJobSummary;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 24
    .line 25
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 26
    .line 27
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 30
    .line 31
    move-object v1, v0

    .line 32
    invoke-direct/range {v1 .. v7}, Landroid/app/job/UserVisibleJobSummary;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

    .line 36
    .line 37
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

    .line 38
    .line 39
    return-object p0
.end method

.method public final getWakelockTag()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "*job*/"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    .line 24
    .line 25
    return-object p0
.end method

.method public final getWorkCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_1
    add-int/2addr v0, v1

    .line 22
    return v0
.end method

.method public final hasConnectivityConstraint()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    .line 2
    .line 3
    const/high16 v0, 0x10000000

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

.method public final hasConstraint(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 7
    .line 8
    and-int/2addr p0, p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public final hasContentTriggerConstraint()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    .line 2
    .line 3
    const/high16 v0, 0x4000000

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

.method public final hasFlexibilityConstraint()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

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

.method public final isConstraintSatisfied(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final isConstraintsSatisfied(I)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    .line 12
    .line 13
    const v1, -0x7f5ffff1

    .line 14
    .line 15
    .line 16
    and-int/2addr v0, v1

    .line 17
    or-int/2addr p1, v0

    .line 18
    :cond_1
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    .line 19
    .line 20
    and-int/2addr p1, p0

    .line 21
    if-ne p1, p0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v2, 0x0

    .line 25
    :goto_0
    return v2
.end method

.method public final isReady(I)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x4

    .line 21
    if-ne v0, v2, :cond_2

    .line 22
    .line 23
    :cond_1
    return v1

    .line 24
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 25
    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 29
    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_4

    .line 45
    .line 46
    :cond_3
    const/4 v1, 0x1

    .line 47
    :cond_4
    return v1
.end method

.method public final isRequestedExpeditedJob()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getFlags()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    and-int/lit8 p0, p0, 0x10

    .line 8
    .line 9
    if-eqz p0, :cond_0

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

.method public final isUserVisibleJob()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public final matches(IILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 10
    .line 11
    if-ne p2, p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final maybeAddForegroundExemption(Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 19
    .line 20
    and-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;->test(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget p1, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 38
    .line 39
    or-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public final prepareLocked()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Already prepared: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "JobScheduler.JobStatus"

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    and-int/lit8 v1, v6, 0x3

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 54
    .line 55
    const/4 v8, 0x0

    .line 56
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 57
    .line 58
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static/range {v2 .. v8}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_1
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method public final printUniqueId(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, ":"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "#"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 22
    .line 23
    .line 24
    const-string v0, "/"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getId()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public readinessStatusWithConstraint(IZ)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/high16 v2, 0x40000000    # 2.0f

    .line 5
    .line 6
    const/high16 v3, 0x2000000

    .line 7
    .line 8
    const/high16 v4, 0x1000000

    .line 9
    .line 10
    const/high16 v5, 0x400000

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    if-eq p1, v5, :cond_5

    .line 14
    .line 15
    if-eq p1, v4, :cond_4

    .line 16
    .line 17
    if-eq p1, v3, :cond_3

    .line 18
    .line 19
    if-eq p1, v2, :cond_2

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    or-int p2, v0, p1

    .line 24
    .line 25
    :goto_0
    move v0, p2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    not-int p2, p1

    .line 28
    and-int/2addr p2, v0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    and-int v7, v0, p2

    .line 35
    .line 36
    if-ne p2, v7, :cond_1

    .line 37
    .line 38
    move p2, v1

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    move p2, v6

    .line 41
    :goto_2
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 42
    .line 43
    move v7, v6

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 46
    .line 47
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 51
    .line 52
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 56
    .line 57
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 61
    .line 62
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 63
    .line 64
    :goto_3
    const/high16 p2, 0x200000

    .line 65
    .line 66
    if-eq p1, p2, :cond_6

    .line 67
    .line 68
    or-int/2addr v0, p2

    .line 69
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eq p1, v5, :cond_b

    .line 74
    .line 75
    if-eq p1, v4, :cond_a

    .line 76
    .line 77
    if-eq p1, v3, :cond_9

    .line 78
    .line 79
    if-eq p1, v2, :cond_8

    .line 80
    .line 81
    iget p1, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 82
    .line 83
    if-eqz p1, :cond_7

    .line 84
    .line 85
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 86
    .line 87
    and-int/2addr v0, p1

    .line 88
    if-ne p1, v0, :cond_7

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_7
    move v1, v6

    .line 92
    :goto_4
    iput-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_8
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_9
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_a
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_b
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 105
    .line 106
    :goto_5
    return p2
.end method

.method public final setConstraintSatisfied(IJZ)Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    if-ne v0, p4, :cond_1

    .line 12
    .line 13
    return v2

    .line 14
    :cond_1
    sget-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    .line 15
    .line 16
    const-string v3, "JobScheduler.JobStatus"

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    const-string v0, "Constraint "

    .line 21
    .line 22
    const-string v4, " is "

    .line 23
    .line 24
    invoke-static {p1, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez p4, :cond_2

    .line 29
    .line 30
    const-string v4, "NOT "

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const-string v4, ""

    .line 34
    .line 35
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string/jumbo v4, "satisfied for "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_3
    if-nez p4, :cond_4

    .line 59
    .line 60
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    move v0, v1

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    move v0, v2

    .line 71
    :goto_2
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 72
    .line 73
    not-int v5, p1

    .line 74
    and-int/2addr v4, v5

    .line 75
    if-eqz p4, :cond_5

    .line 76
    .line 77
    move v5, p1

    .line 78
    goto :goto_3

    .line 79
    :cond_5
    move v5, v2

    .line 80
    :goto_3
    or-int/2addr v4, v5

    .line 81
    iput v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 82
    .line 83
    const v5, -0x6b4ffff1

    .line 84
    .line 85
    .line 86
    and-int/2addr v5, v4

    .line 87
    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 88
    .line 89
    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 90
    .line 91
    if-eqz v5, :cond_6

    .line 92
    .line 93
    and-int v6, v4, v5

    .line 94
    .line 95
    if-ne v5, v6, :cond_6

    .line 96
    .line 97
    move v5, v1

    .line 98
    goto :goto_4

    .line 99
    :cond_6
    move v5, v2

    .line 100
    :goto_4
    iput-boolean v5, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 101
    .line 102
    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    .line 103
    .line 104
    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    .line 105
    .line 106
    aput-wide p2, v6, v5

    .line 107
    .line 108
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    .line 109
    .line 110
    aput v4, p2, v5

    .line 111
    .line 112
    add-int/2addr v5, v1

    .line 113
    const/16 p2, 0xa

    .line 114
    .line 115
    rem-int/2addr v5, p2

    .line 116
    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    .line 117
    .line 118
    invoke-virtual {p0, p1, p4}, Lcom/android/server/job/controllers/JobStatus;->readinessStatusWithConstraint(IZ)Z

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    if-eqz v0, :cond_12

    .line 123
    .line 124
    if-nez p3, :cond_12

    .line 125
    .line 126
    const/16 p3, 0xc

    .line 127
    .line 128
    iget p4, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    .line 129
    .line 130
    if-eq p1, v1, :cond_10

    .line 131
    .line 132
    const/4 v0, 0x2

    .line 133
    if-eq p1, v0, :cond_f

    .line 134
    .line 135
    const/16 v0, 0x8

    .line 136
    .line 137
    const/4 v4, 0x4

    .line 138
    if-eq p1, v4, :cond_d

    .line 139
    .line 140
    if-eq p1, v0, :cond_c

    .line 141
    .line 142
    const/high16 p3, 0x200000

    .line 143
    .line 144
    if-eq p1, p3, :cond_11

    .line 145
    .line 146
    const/high16 p3, 0x400000

    .line 147
    .line 148
    if-eq p1, p3, :cond_b

    .line 149
    .line 150
    const/high16 p3, 0x800000

    .line 151
    .line 152
    if-eq p1, p3, :cond_a

    .line 153
    .line 154
    const/high16 p3, 0x1000000

    .line 155
    .line 156
    if-eq p1, p3, :cond_9

    .line 157
    .line 158
    const/high16 p2, 0x2000000

    .line 159
    .line 160
    if-eq p1, p2, :cond_8

    .line 161
    .line 162
    const/high16 p2, 0x10000000

    .line 163
    .line 164
    if-eq p1, p2, :cond_7

    .line 165
    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string p3, "Unsupported constraint ("

    .line 169
    .line 170
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p1, ") --stop reason mapping"

    .line 177
    .line 178
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {v3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_7
    const/4 v2, 0x7

    .line 190
    goto :goto_5

    .line 191
    :cond_8
    move v2, v4

    .line 192
    goto :goto_5

    .line 193
    :cond_9
    move v2, p2

    .line 194
    goto :goto_5

    .line 195
    :cond_a
    const/16 v2, 0xf

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_b
    iget-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    .line 199
    .line 200
    if-eqz p1, :cond_8

    .line 201
    .line 202
    const/16 v2, 0xb

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_c
    const/16 v2, 0x9

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_d
    and-int/2addr p1, p4

    .line 209
    if-eqz p1, :cond_e

    .line 210
    .line 211
    move v2, v0

    .line 212
    goto :goto_5

    .line 213
    :cond_e
    move v2, p3

    .line 214
    goto :goto_5

    .line 215
    :cond_f
    and-int/2addr p1, p4

    .line 216
    if-eqz p1, :cond_e

    .line 217
    .line 218
    const/4 v2, 0x5

    .line 219
    goto :goto_5

    .line 220
    :cond_10
    and-int/2addr p1, p4

    .line 221
    if-eqz p1, :cond_e

    .line 222
    .line 223
    const/4 v2, 0x6

    .line 224
    :cond_11
    :goto_5
    iput v2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_12
    if-nez v0, :cond_13

    .line 228
    .line 229
    if-eqz p3, :cond_13

    .line 230
    .line 231
    iput v2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 232
    .line 233
    :cond_13
    :goto_6
    return v1
.end method

.method public final setTrackingController(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    .line 5
    .line 6
    return-void
.end method

.method public final shouldTreatAsExpeditedJob()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

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

.method public final shouldTreatAsUserInitiatedJob()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 10
    .line 11
    and-int/lit8 v0, p0, 0x2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    and-int/lit8 p0, p0, 0x4

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final toShortString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v2, " {"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string/jumbo v1, "}"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_0
    const-string v1, " #"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 43
    .line 44
    .line 45
    const-string v1, "/"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const/16 v1, 0x20

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method public final toShortStringExceptUniqueId()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x20

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    const-string v1, "JobStatus{"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ":"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v3, " "

    .line 27
    .line 28
    invoke-static {v0, v3, v2, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v2, " #"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :goto_0
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 38
    .line 39
    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 40
    .line 41
    .line 42
    const-string v3, "/"

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v3, 0x20

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v3, " u="

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v2, " s="

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 89
    .line 90
    const-wide/16 v4, 0x0

    .line 91
    .line 92
    cmp-long v6, v2, v4

    .line 93
    .line 94
    const-wide v7, 0x7fffffffffffffffL

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    iget-wide v9, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 100
    .line 101
    if-nez v6, :cond_1

    .line 102
    .line 103
    cmp-long v6, v9, v7

    .line 104
    .line 105
    if-eqz v6, :cond_4

    .line 106
    .line 107
    :cond_1
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 108
    .line 109
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 113
    .line 114
    .line 115
    move-result-wide v11

    .line 116
    const-string v6, " TIME="

    .line 117
    .line 118
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    cmp-long v4, v2, v4

    .line 122
    .line 123
    const-string/jumbo v5, "none"

    .line 124
    .line 125
    .line 126
    if-nez v4, :cond_2

    .line 127
    .line 128
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    sub-long/2addr v2, v11

    .line 133
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 134
    .line 135
    .line 136
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    cmp-long v1, v9, v7

    .line 140
    .line 141
    if-nez v1, :cond_3

    .line 142
    .line 143
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_3
    sub-long/2addr v9, v11

    .line 148
    invoke-static {v9, v10, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-eqz v1, :cond_5

    .line 158
    .line 159
    const-string v1, " NET"

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    :cond_5
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_6

    .line 171
    .line 172
    const-string v1, " CHARGING"

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    :cond_6
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 178
    .line 179
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_7

    .line 184
    .line 185
    const-string v1, " BATNOTLOW"

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    :cond_7
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 191
    .line 192
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_8

    .line 197
    .line 198
    const-string v1, " STORENOTLOW"

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    :cond_8
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 204
    .line 205
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_9

    .line 210
    .line 211
    const-string v1, " IDLE"

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    :cond_9
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 217
    .line 218
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_a

    .line 223
    .line 224
    const-string v1, " PERIODIC"

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    :cond_a
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 230
    .line 231
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPersisted()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_b

    .line 236
    .line 237
    const-string v1, " PERSISTED"

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    :cond_b
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 243
    .line 244
    const/high16 v2, 0x2000000

    .line 245
    .line 246
    and-int/2addr v1, v2

    .line 247
    if-nez v1, :cond_c

    .line 248
    .line 249
    const-string v1, " WAIT:DEV_NOT_DOZING"

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    :cond_c
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 255
    .line 256
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    if-eqz v1, :cond_d

    .line 261
    .line 262
    const-string v1, " URIS="

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 268
    .line 269
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    :cond_d
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    .line 281
    .line 282
    if-eqz v1, :cond_e

    .line 283
    .line 284
    const-string v2, " failures="

    .line 285
    .line 286
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    :cond_e
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    .line 293
    .line 294
    if-eqz v1, :cond_f

    .line 295
    .line 296
    const-string v2, " system stops="

    .line 297
    .line 298
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    :cond_f
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 305
    .line 306
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_10

    .line 311
    .line 312
    const-string p0, " READY"

    .line 313
    .line 314
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_10
    const-string v1, " satisfied:0x"

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 324
    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    .line 333
    .line 334
    const/high16 v2, 0x3600000

    .line 335
    .line 336
    or-int/2addr v1, v2

    .line 337
    const-string v2, " unsatisfied:0x"

    .line 338
    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 343
    .line 344
    and-int/2addr p0, v1

    .line 345
    xor-int/2addr p0, v1

    .line 346
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    :goto_3
    const-string/jumbo p0, "}"

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    return-object p0
.end method

.method public final unprepareLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Hasn\'t been prepared: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "JobScheduler.JobStatus"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    const-string v0, "Was already unprepared at "

    .line 29
    .line 30
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 36
    .line 37
    new-instance v0, Ljava/lang/Throwable;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public final updateMediaBackupExemptionStatus()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mHasExemptedMediaUrisOnly:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/16 v3, 0x12c

    .line 42
    .line 43
    if-lt v0, v3, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 46
    .line 47
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 48
    .line 49
    invoke-interface {v0, v3}, Lcom/android/server/job/JobSchedulerInternal;->getCloudMediaProviderPackage(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    move v0, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move v0, v1

    .line 64
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    .line 65
    .line 66
    if-ne v3, v0, :cond_2

    .line 67
    .line 68
    return v1

    .line 69
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    .line 70
    .line 71
    return v2
.end method

.method public final updateNetworkBytesLocked()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    const-wide/16 v4, -0x1

    .line 14
    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    iput-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 26
    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-gez v0, :cond_1

    .line 30
    .line 31
    iput-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 42
    .line 43
    if-eqz v0, :cond_8

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-ge v0, v1, :cond_8

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/app/job/JobWorkItem;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    .line 63
    .line 64
    .line 65
    move-result-wide v6

    .line 66
    cmp-long v1, v6, v4

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    cmp-long v1, v6, v2

    .line 71
    .line 72
    if-lez v1, :cond_3

    .line 73
    .line 74
    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 75
    .line 76
    cmp-long v1, v8, v4

    .line 77
    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    add-long/2addr v8, v6

    .line 81
    iput-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 85
    .line 86
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroid/app/job/JobWorkItem;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    cmp-long v1, v6, v4

    .line 99
    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    cmp-long v1, v6, v2

    .line 103
    .line 104
    if-lez v1, :cond_5

    .line 105
    .line 106
    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 107
    .line 108
    cmp-long v1, v8, v4

    .line 109
    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    add-long/2addr v8, v6

    .line 113
    iput-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 117
    .line 118
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Landroid/app/job/JobWorkItem;

    .line 125
    .line 126
    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    .line 127
    .line 128
    .line 129
    move-result-wide v6

    .line 130
    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    .line 131
    .line 132
    cmp-long v1, v8, v4

    .line 133
    .line 134
    if-nez v1, :cond_6

    .line 135
    .line 136
    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_6
    cmp-long v1, v6, v4

    .line 140
    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 144
    .line 145
    .line 146
    move-result-wide v6

    .line 147
    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    .line 148
    .line 149
    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_8
    return-void
.end method

.method public final writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    const-wide v0, 0x10500000001L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-wide v1, 0x10500000002L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 27
    .line 28
    .line 29
    const-wide v0, 0x10900000003L

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
