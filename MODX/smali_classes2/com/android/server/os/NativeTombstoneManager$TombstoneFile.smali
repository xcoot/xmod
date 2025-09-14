.class public final Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAppId:I

.field public mCrashReason:Ljava/lang/String;

.field public final mPfd:Landroid/os/ParcelFileDescriptor;

.field public mPid:I

.field public mProcessName:Ljava/lang/String;

.field public mPurged:Z

.field public final mRetriever:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;

.field public mTimestampMs:J

.field public mUid:I

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;-><init>(Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final matches(Ljava/util/Optional;Ljava/util/Optional;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUserId:I

    .line 24
    .line 25
    if-eq p1, v0, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mAppId:I

    .line 45
    .line 46
    if-eq p1, p0, :cond_2

    .line 47
    .line 48
    return v1

    .line 49
    :cond_2
    const/4 p0, 0x1

    .line 50
    return p0
.end method

.method public final toAppExitInfo()Landroid/app/ApplicationExitInfo;
    .locals 4

    .line 1
    new-instance v0, Landroid/app/ApplicationExitInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/ApplicationExitInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPid(I)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setRealUid(I)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPackageUid(I)V

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setDefiningUid(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mProcessName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 37
    .line 38
    .line 39
    const/16 v2, 0x3e8

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setImportance(I)V

    .line 42
    .line 43
    .line 44
    const-string v2, ""

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setPackageName(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setProcessStateSummary([B)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setPss(J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    .line 59
    .line 60
    .line 61
    iget-wide v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    .line 62
    .line 63
    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mCrashReason:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Landroid/app/ApplicationExitInfo;->setNativeTombstoneRetriever(Landroid/app/IParcelFileDescriptorRetriever;)V

    .line 77
    .line 78
    .line 79
    return-object v0
.end method
