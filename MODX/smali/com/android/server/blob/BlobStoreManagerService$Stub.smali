.class public final Lcom/android/server/blob/BlobStoreManagerService$Stub;
.super Landroid/app/blob/IBlobStoreManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 3
    invoke-direct {p0}, Landroid/app/blob/IBlobStoreManager$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final abandonSession(JLjava/lang/String;)V
    .locals 5

    .line 1
    long-to-float v0, p1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string/jumbo v2, "sessionId must be positive: "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 20
    const-string/jumbo v0, "packageName must not be null"

    .line 23
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 32
    invoke-static {v0, v1, p3}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 37
    const-string v1, "Abandoned session with id "

    .line 39
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 41
    monitor-enter v2

    .line 42
    :try_start_0
    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->openSessionInternal(ILjava/lang/String;J)Lcom/android/server/blob/BlobStoreSession;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lcom/android/server/blob/BlobStoreSession;->open()V

    .line 49
    invoke-virtual {v3}, Lcom/android/server/blob/BlobStoreSession;->abandon()V

    .line 52
    sget-boolean v3, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 54
    if-eqz v3, :cond_0

    .line 56
    const-string v3, "BlobStore"

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    const-string p1, "; callingUid="

    .line 68
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string p1, ", callingPackage="

    .line 76
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 95
    monitor-exit v2

    .line 96
    return-void

    .line 97
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0
.end method

.method public final acquireLease(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JLjava/lang/String;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "blobHandle must not be null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 10
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 16
    if-eqz p3, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 22
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "Description must be valid; descriptionId="

    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v2, ", description="

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 47
    const-string/jumbo v0, "leaseExpiryTimeMillis must not be negative"

    .line 50
    invoke-static {p4, p5, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    .line 53
    const-string/jumbo v0, "packageName must not be null"

    .line 56
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 61
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 67
    :goto_2
    move-object v3, p3

    .line 68
    goto :goto_3

    .line 69
    :cond_2
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    .line 71
    invoke-static {p3, v0}, Landroid/text/TextUtils;->trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 74
    move-result-object p3

    .line 75
    goto :goto_2

    .line 76
    :goto_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 79
    move-result v6

    .line 80
    iget-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 82
    invoke-static {v6, p3, p6}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    .line 85
    iget-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 87
    invoke-static {v6, p3, p6}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)Z

    .line 90
    move-result p3

    .line 91
    if-eqz p3, :cond_3

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 95
    move-object v1, p1

    .line 96
    move v2, p2

    .line 97
    move-wide v4, p4

    .line 98
    move-object v7, p6

    .line 99
    invoke-static/range {v0 .. v7}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$macquireLeaseInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/LimitExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return-void

    .line 103
    :catch_0
    move-exception p0

    .line 104
    goto :goto_4

    .line 105
    :catch_1
    move-exception p0

    .line 106
    goto :goto_5

    .line 107
    :goto_4
    new-instance p1, Landroid/os/ParcelableException;

    .line 109
    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 112
    throw p1

    .line 113
    :goto_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 115
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 118
    throw p1

    .line 119
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 121
    const-string p1, "Caller not allowed to open blob; callingUid="

    .line 123
    const-string p2, ", callingPackage="

    .line 125
    invoke-static {v6, p1, p2, p6}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p0
.end method

.method public final createSession(Landroid/app/blob/BlobHandle;Ljava/lang/String;)J
    .locals 2

    .line 1
    const-string/jumbo v0, "blobHandle must not be null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 10
    const-string/jumbo v0, "packageName must not be null"

    .line 13
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 22
    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 27
    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 33
    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 35
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mcreateSessionInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)J

    .line 38
    move-result-wide p0
    :try_end_0
    .catch Landroid/os/LimitExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-wide p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Landroid/os/ParcelableException;

    .line 43
    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    throw p1

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 49
    const-string p1, "Caller not allowed to create session; callingUid="

    .line 51
    const-string v1, ", callingPackage="

    .line 53
    invoke-static {v0, p1, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0
.end method

.method public final deleteBlob(J)V
    .locals 3

    .line 1
    const-string/jumbo v0, "deleteBlob"

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService$Stub;->verifyCallerIsSystemUid(Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 9
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;

    .line 20
    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/blob/BlobStoreManagerService;J)V

    .line 23
    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 26
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 29
    monitor-exit v0

    .line 30
    return-void

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

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 4
    iget-object v0, v0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 6
    const-string v1, "BlobStore"

    .line 8
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    .line 17
    invoke-direct {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;-><init>()V

    .line 20
    if-nez p3, :cond_1

    .line 22
    goto/16 :goto_7

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    array-length v2, p3

    .line 26
    if-ge v1, v2, :cond_14

    .line 28
    aget-object v2, p3, v1

    .line 30
    const-string v3, "--all"

    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_12

    .line 38
    const-string v3, "-a"

    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 46
    goto/16 :goto_5

    .line 48
    :cond_2
    const-string v3, "--unredacted"

    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_10

    .line 56
    const-string v3, "-u"

    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_3

    .line 64
    goto/16 :goto_4

    .line 66
    :cond_3
    const-string v3, "--sessions"

    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_4

    .line 74
    iget v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    .line 76
    or-int/2addr v2, p1

    .line 77
    iput v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    .line 79
    goto/16 :goto_6

    .line 81
    :cond_4
    const-string v3, "--blobs"

    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_5

    .line 89
    iget v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    .line 91
    or-int/lit8 v2, v2, 0x2

    .line 93
    iput v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    .line 95
    goto/16 :goto_6

    .line 97
    :cond_5
    const-string v3, "--config"

    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_6

    .line 105
    iget v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    .line 107
    or-int/lit8 v2, v2, 0x4

    .line 109
    iput v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    .line 111
    goto/16 :goto_6

    .line 113
    :cond_6
    const-string v3, "--package"

    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_e

    .line 121
    const-string v3, "-p"

    .line 123
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_7

    .line 129
    goto/16 :goto_3

    .line 131
    :cond_7
    const-string v3, "--uid"

    .line 133
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_8

    .line 139
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    .line 141
    add-int/2addr v1, p1

    .line 142
    const-string/jumbo v3, "uid"

    .line 145
    invoke-static {v3, v1, p3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getIntArgRequired(Ljava/lang/String;I[Ljava/lang/String;)I

    .line 148
    move-result v3

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    goto/16 :goto_6

    .line 158
    :cond_8
    const-string v3, "--user"

    .line 160
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_9

    .line 166
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    .line 168
    add-int/2addr v1, p1

    .line 169
    const-string/jumbo v3, "userId"

    .line 172
    invoke-static {v3, v1, p3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getIntArgRequired(Ljava/lang/String;I[Ljava/lang/String;)I

    .line 175
    move-result v3

    .line 176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    goto :goto_6

    .line 184
    :cond_9
    const-string v3, "--blob"

    .line 186
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result v3

    .line 190
    if-nez v3, :cond_d

    .line 192
    const-string v3, "-b"

    .line 194
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_a

    .line 200
    goto :goto_2

    .line 201
    :cond_a
    const-string v3, "--help"

    .line 203
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    move-result v3

    .line 207
    if-nez v3, :cond_c

    .line 209
    const-string v3, "-h"

    .line 211
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    move-result v2

    .line 215
    if-eqz v2, :cond_b

    .line 217
    goto :goto_1

    .line 218
    :cond_b
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 220
    invoke-static {v1, p3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getLongArgRequired(I[Ljava/lang/String;)J

    .line 223
    move-result-wide v3

    .line 224
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    goto :goto_6

    .line 232
    :cond_c
    :goto_1
    iput-boolean p1, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpHelp:Z

    .line 234
    goto :goto_6

    .line 235
    :cond_d
    :goto_2
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 237
    add-int/2addr v1, p1

    .line 238
    invoke-static {v1, p3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getLongArgRequired(I[Ljava/lang/String;)J

    .line 241
    move-result-wide v3

    .line 242
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 245
    move-result-object v3

    .line 246
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    goto :goto_6

    .line 250
    :cond_e
    :goto_3
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    .line 252
    add-int/2addr v1, p1

    .line 253
    array-length v3, p3

    .line 254
    if-ge v1, v3, :cond_f

    .line 256
    aget-object v3, p3, v1

    .line 258
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    goto :goto_6

    .line 262
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 264
    const-string p1, "Missing packageName"

    .line 266
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 269
    throw p0

    .line 270
    :cond_10
    :goto_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 273
    move-result v2

    .line 274
    const/16 v3, 0x7d0

    .line 276
    if-eq v2, v3, :cond_11

    .line 278
    if-nez v2, :cond_13

    .line 280
    :cond_11
    iput-boolean p1, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUnredacted:Z

    .line 282
    goto :goto_6

    .line 283
    :cond_12
    :goto_5
    iput-boolean p1, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpAll:Z

    .line 285
    :cond_13
    :goto_6
    add-int/2addr v1, p1

    .line 286
    goto/16 :goto_0

    .line 288
    :cond_14
    :goto_7
    new-instance p3, Landroid/util/IndentingPrintWriter;

    .line 290
    const-string v1, "    "

    .line 292
    invoke-direct {p3, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 295
    iget-boolean v1, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpHelp:Z

    .line 297
    if-eqz v1, :cond_15

    .line 299
    const-string/jumbo p0, "dumpsys blob_store [options]:"

    .line 302
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 308
    const-string p0, "--help | -h"

    .line 310
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 313
    const-string p0, "Dump this help text"

    .line 315
    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 318
    const-string p0, "--sessions"

    .line 320
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 323
    const-string p0, "Dump only the sessions info"

    .line 325
    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 328
    const-string p0, "--blobs"

    .line 330
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 333
    const-string p0, "Dump only the committed blobs info"

    .line 335
    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 338
    const-string p0, "--config"

    .line 340
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 343
    const-string p0, "Dump only the config values"

    .line 345
    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 348
    const-string p0, "--package | -p [package-name]"

    .line 350
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 353
    const-string p0, "Dump blobs info associated with the given package"

    .line 355
    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 358
    const-string p0, "--uid | -u [uid]"

    .line 360
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 363
    const-string p0, "Dump blobs info associated with the given uid"

    .line 365
    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 368
    const-string p0, "--user [user-id]"

    .line 370
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 373
    const-string p0, "Dump blobs info in the given user"

    .line 375
    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 378
    const-string p0, "--blob | -b [session-id | blob-id]"

    .line 380
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 383
    const-string p0, "Dump blob info corresponding to the given ID"

    .line 385
    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 388
    const-string p0, "--full | -f"

    .line 390
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 393
    const-string p0, "Dump full unredacted blobs data"

    .line 395
    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 401
    return-void

    .line 402
    :cond_15
    iget-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 404
    iget-object p2, p2, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 406
    monitor-enter p2

    .line 407
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    .line 410
    move-result v1

    .line 411
    if-eqz v1, :cond_16

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    .line 415
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    const-string/jumbo v2, "mCurrentMaxSessionId: "

    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 426
    iget-wide v2, v2, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    .line 428
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 441
    goto :goto_8

    .line 442
    :catchall_0
    move-exception p0

    .line 443
    goto/16 :goto_c

    .line 445
    :cond_16
    :goto_8
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_17

    .line 451
    goto :goto_9

    .line 452
    :cond_17
    iget v1, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    .line 454
    and-int/2addr p1, v1

    .line 455
    if-eqz p1, :cond_18

    .line 457
    :goto_9
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 459
    invoke-static {p1, p3, v0}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mdumpSessionsLocked(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    .line 462
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 465
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    .line 468
    move-result p1

    .line 469
    if-eqz p1, :cond_19

    .line 471
    goto :goto_a

    .line 472
    :cond_19
    iget p1, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    .line 474
    and-int/lit8 p1, p1, 0x2

    .line 476
    if-eqz p1, :cond_1a

    .line 478
    :goto_a
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 480
    invoke-static {p1, p3, v0}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mdumpBlobsLocked(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    .line 483
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 486
    :cond_1a
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    .line 490
    move-result p1

    .line 491
    if-eqz p1, :cond_1b

    .line 493
    goto :goto_b

    .line 494
    :cond_1b
    iget p1, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    .line 496
    and-int/lit8 p1, p1, 0x4

    .line 498
    if-eqz p1, :cond_1c

    .line 500
    :goto_b
    const-string p1, "BlobStore config:"

    .line 502
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 508
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 510
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 512
    sget-boolean p1, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 514
    const-string p1, "XML current version: 6"

    .line 516
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 519
    const-string p1, "Idle job ID: 191934935"

    .line 521
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 524
    new-instance p1, Ljava/lang/StringBuilder;

    .line 526
    const-string p2, "Total bytes per app limit: "

    .line 528
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 534
    move-result-object p2

    .line 535
    invoke-virtual {p2}, Ljava/io/File;->getTotalSpace()J

    .line 538
    move-result-wide v0

    .line 539
    long-to-float p2, v0

    .line 540
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    .line 542
    mul-float/2addr p2, v0

    .line 543
    float-to-long v0, p2

    .line 544
    sget-wide v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 546
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 549
    move-result-wide v0

    .line 550
    const/16 p2, 0x8

    .line 552
    invoke-static {p0, v0, v1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    .line 555
    move-result-object v0

    .line 556
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 562
    move-result-object p1

    .line 563
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 566
    const-string p1, "Device config properties:"

    .line 568
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 574
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    .line 576
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 579
    move-result-object p1

    .line 580
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_IDLE_JOB_PERIOD_MS:J

    .line 582
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 585
    move-result-object v0

    .line 586
    const-string/jumbo v1, "idle_job_period_ms: [cur: "

    .line 589
    const-string v2, ", def: "

    .line 591
    const-string v3, "]"

    .line 593
    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 596
    move-result-object p1

    .line 597
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 600
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    .line 602
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 605
    move-result-object p1

    .line 606
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

    .line 608
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 611
    move-result-object v0

    .line 612
    const-string/jumbo v1, "session_expiry_timeout_ms: [cur: "

    .line 615
    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 618
    move-result-object p1

    .line 619
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 622
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 624
    invoke-static {p0, v0, v1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    .line 627
    move-result-object p1

    .line 628
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 630
    invoke-static {p0, v0, v1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    .line 633
    move-result-object p0

    .line 634
    const-string/jumbo p2, "total_bytes_per_app_limit_floor: [cur: "

    .line 637
    invoke-static {p2, p1, v2, p0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 640
    move-result-object p0

    .line 641
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 644
    sget p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    .line 646
    new-instance p1, Ljava/lang/StringBuilder;

    .line 648
    const-string/jumbo p2, "total_bytes_per_app_limit_fraction: [cur: "

    .line 651
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 657
    const-string p0, ", def: 0.01]"

    .line 659
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    move-result-object p0

    .line 666
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 669
    sget-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 671
    invoke-static {p0, p1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 674
    move-result-object p0

    .line 675
    sget-wide p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 677
    invoke-static {p1, p2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 680
    move-result-object p1

    .line 681
    const-string/jumbo p2, "lease_acquisition_wait_time_ms: [cur: "

    .line 684
    invoke-static {p2, p0, v2, p1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 687
    move-result-object p0

    .line 688
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 691
    sget-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    .line 693
    invoke-static {p0, p1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 696
    move-result-object p0

    .line 697
    sget-wide p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

    .line 699
    invoke-static {p1, p2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 702
    move-result-object p1

    .line 703
    const-string/jumbo p2, "commit_cool_off_duration_ms: [cur: "

    .line 706
    invoke-static {p2, p0, v2, p1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 709
    move-result-object p0

    .line 710
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 713
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    .line 715
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 717
    new-instance p2, Ljava/lang/StringBuilder;

    .line 719
    const-string/jumbo v0, "use_revocable_fd_for_reads: [cur: "

    .line 722
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    move-result-object p0

    .line 741
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 744
    sget-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 746
    invoke-static {p0, p1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 749
    move-result-object p0

    .line 750
    sget-wide p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 752
    invoke-static {p1, p2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 755
    move-result-object p1

    .line 756
    const-string/jumbo p2, "delete_on_last_lease_delay_ms: [cur: "

    .line 759
    invoke-static {p2, p0, v2, p1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 762
    move-result-object p0

    .line 763
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 766
    sget p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    .line 768
    const-string/jumbo p1, "max_active_sessions: [cur: "

    .line 771
    invoke-static {p0, p1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    move-result-object p0

    .line 775
    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_ACTIVE_SESSIONS:I

    .line 777
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 786
    move-result-object p0

    .line 787
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 790
    sget p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    .line 792
    const-string/jumbo p1, "max_committed_blobs: [cur: "

    .line 795
    invoke-static {p0, p1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    move-result-object p0

    .line 799
    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_COMMITTED_BLOBS:I

    .line 801
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 810
    move-result-object p0

    .line 811
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 814
    sget p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    .line 816
    const-string/jumbo p1, "max_leased_blobs: [cur: "

    .line 819
    invoke-static {p0, p1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    move-result-object p0

    .line 823
    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_LEASED_BLOBS:I

    .line 825
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 828
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 834
    move-result-object p0

    .line 835
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 838
    sget p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 840
    const-string/jumbo p1, "max_permitted_pks: [cur: "

    .line 843
    invoke-static {p0, p1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    move-result-object p0

    .line 847
    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 849
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 858
    move-result-object p0

    .line 859
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 862
    sget p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    .line 864
    const-string/jumbo p1, "lease_desc_char_limit: [cur: "

    .line 867
    invoke-static {p0, p1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    move-result-object p0

    .line 871
    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_DESC_CHAR_LIMIT:I

    .line 873
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 876
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 882
    move-result-object p0

    .line 883
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 886
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 889
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 892
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 895
    :cond_1c
    return-void

    .line 896
    :goto_c
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    throw p0
.end method

.method public final getLeaseInfo(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/app/blob/LeaseInfo;
    .locals 4

    .line 1
    const-string/jumbo v0, "blobHandle must not be null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 10
    const-string/jumbo v0, "packageName must not be null"

    .line 13
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 22
    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 27
    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 33
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 35
    const-string v1, "Caller not allowed to access "

    .line 37
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 39
    monitor-enter v2

    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/android/server/blob/BlobMetadata;

    .line 48
    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0, v0, p2}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(ILjava/lang/String;)Z

    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {p0, v0, p2}, Lcom/android/server/blob/BlobMetadata;->getLeaseInfo(ILjava/lang/String;)Landroid/app/blob/LeaseInfo;

    .line 59
    move-result-object p0

    .line 60
    monitor-exit v2

    .line 61
    return-object p0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string p1, "; callingUid="

    .line 76
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string p1, ", callingPackage="

    .line 84
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0

    .line 98
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0

    .line 100
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 102
    const-string p1, "Caller not allowed to open blob; callingUid="

    .line 104
    const-string v1, ", callingPackage="

    .line 106
    invoke-static {v0, p1, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p0
.end method

.method public final getLeasedBlobs(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    const-string/jumbo v0, "packageName must not be null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 13
    invoke-static {v0, v1, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 28
    monitor-enter v2

    .line 29
    :try_start_0
    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda0;

    .line 31
    invoke-direct {v3, v0, p1, v1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 34
    invoke-virtual {p0, v3}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    .line 37
    monitor-exit v2

    .line 38
    return-object v1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final getRemainingLeaseQuotaBytes(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 7
    invoke-static {v0, v1, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->getRemainingLeaseQuotaBytesInternal(ILjava/lang/String;)J

    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method

.method public final handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand;

    .line 3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 19
    move-result-object v4

    .line 20
    move-object v1, p0

    .line 21
    move-object v5, p4

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public final openBlob(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    const-string/jumbo v0, "blobHandle must not be null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 10
    const-string/jumbo v0, "packageName must not be null"

    .line 13
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 22
    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 27
    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 33
    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 35
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mopenBlobInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 38
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 44
    move-result-object p0

    .line 45
    throw p0

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 48
    const-string p1, "Caller not allowed to open blob; callingUid="

    .line 50
    const-string v1, ", callingPackage="

    .line 52
    invoke-static {v0, p1, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0
.end method

.method public final openSession(JLjava/lang/String;)Landroid/app/blob/IBlobStoreSession;
    .locals 3

    .line 1
    long-to-float v0, p1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string/jumbo v2, "sessionId must be positive: "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 20
    const-string/jumbo v0, "packageName must not be null"

    .line 23
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 32
    invoke-static {v0, v1, p3}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 37
    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->openSessionInternal(ILjava/lang/String;J)Lcom/android/server/blob/BlobStoreSession;

    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public final queryBlobsForUser(I)Ljava/util/List;
    .locals 6

    .line 1
    const-string/jumbo v0, "queryBlobsForUser"

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService$Stub;->verifyCallerIsSystemUid(Ljava/lang/String;)V

    .line 7
    const/4 v0, -0x2

    .line 8
    if-ne p1, v0, :cond_0

    .line 10
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 13
    move-result p1

    .line 14
    :cond_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 16
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 22
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    .line 25
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 37
    monitor-enter v1

    .line 38
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    .line 40
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 43
    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;

    .line 45
    invoke-direct {v3, p0, v2, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/ArrayMap;I)V

    .line 48
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;

    .line 50
    invoke-direct {v2, p1, v3, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;-><init>(ILcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;Ljava/util/ArrayList;)V

    .line 53
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 55
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 58
    move-result p1

    .line 59
    const/4 v3, 0x0

    .line 60
    :goto_0
    if-ge v3, p1, :cond_1

    .line 62
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 64
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Landroid/app/blob/BlobHandle;

    .line 70
    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 72
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Lcom/android/server/blob/BlobMetadata;

    .line 78
    invoke-virtual {v2, v4, v5}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    monitor-exit v1

    .line 85
    return-object v0

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method

.method public final releaseAllLeases(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "packageName must not be null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 13
    invoke-static {v0, v1, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 18
    invoke-static {v0, v1, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 24
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 26
    const-string v1, "Release all leases associated with pkg="

    .line 28
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 30
    monitor-enter v2

    .line 31
    :try_start_0
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 33
    new-instance v4, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda8;

    .line 35
    invoke-direct {v4, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 44
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 46
    if-eqz p0, :cond_0

    .line 48
    const-string p0, "BlobStore"

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string p1, ", uid="

    .line 60
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    :goto_0
    monitor-exit v2

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0

    .line 80
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 82
    const-string v1, "Caller not allowed to open blob; callingUid="

    .line 84
    const-string v2, ", callingPackage="

    .line 86
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p0
.end method

.method public final releaseLease(Landroid/app/blob/BlobHandle;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "blobHandle must not be null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 10
    const-string/jumbo v0, "packageName must not be null"

    .line 13
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 22
    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 27
    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 33
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 35
    const-string v1, "Caller not allowed to access "

    .line 37
    const-string v2, "Released lease on "

    .line 39
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 41
    monitor-enter v3

    .line 42
    :try_start_0
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 44
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/android/server/blob/BlobMetadata;

    .line 50
    if-eqz v4, :cond_2

    .line 52
    invoke-virtual {v4, v0, p2}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(ILjava/lang/String;)Z

    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_2

    .line 58
    invoke-virtual {v4, v0, p2}, Lcom/android/server/blob/BlobMetadata;->removeLeasee(ILjava/lang/String;)V

    .line 61
    sget-boolean v1, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 63
    if-eqz v1, :cond_0

    .line 65
    const-string v1, "BlobStore"

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    const-string v2, "; callingUid="

    .line 77
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v0, ", callingPackage="

    .line 85
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p2

    .line 95
    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_1

    .line 101
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata;->hasValidLeases()Z

    .line 104
    move-result p2

    .line 105
    if-nez p2, :cond_1

    .line 107
    iget-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda15;

    .line 111
    invoke-direct {v0, p0, p1, v4}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V

    .line 114
    sget-wide v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 116
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 122
    monitor-exit v3

    .line 123
    return-void

    .line 124
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    const-string p1, "; callingUid="

    .line 136
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string p1, ", callingPackage="

    .line 144
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 157
    throw p0

    .line 158
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    throw p0

    .line 160
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 162
    const-string p1, "Caller not allowed to open blob; callingUid="

    .line 164
    const-string v1, ", callingPackage="

    .line 166
    invoke-static {v0, p1, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object p1

    .line 170
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 173
    throw p0
.end method

.method public final verifyCallerIsSystemUid(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 11
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 13
    const-class v0, Landroid/os/UserManager;

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/os/UserManager;

    .line 21
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 34
    const-string v0, "Only admin user\'s app with system uidare allowed to call #"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p0
.end method

.method public final waitForIdle(Landroid/os/RemoteCallback;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "remoteCallback must not be null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 9
    iget-object v0, v0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "Caller is not allowed to call this; caller="

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    const-string v2, "android.permission.DUMP"

    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 36
    iget-object v0, v0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;

    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method
