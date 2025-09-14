.class public final Lcom/android/server/backup/UsageStatsBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "usage_stats"

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lcom/android/server/backup/UsageStatsBackupHelper;->mUserId:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 4

    .line 1
    const-string/jumbo v0, "usage_stats"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 17
    .line 18
    new-instance v1, Ljava/io/DataInputStream;

    .line 19
    .line 20
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 21
    .line 22
    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 29
    .line 30
    .line 31
    array-length p2, p2

    .line 32
    add-int/lit8 p2, p2, -0x4

    .line 33
    .line 34
    new-array v2, p2, [B

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3, p2}, Ljava/io/DataInputStream;->read([BII)I

    .line 38
    .line 39
    .line 40
    iget p0, p0, Lcom/android/server/backup/UsageStatsBackupHelper;->mUserId:I

    .line 41
    .line 42
    invoke-virtual {v0, p0, p1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->applyRestoredPayload(ILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :catch_0
    :cond_0
    return-void
.end method

.method public final getBackupPayload(Ljava/lang/String;)[B
    .locals 4

    .line 1
    const-string/jumbo v0, "usage_stats"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 17
    .line 18
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v2, Ljava/io/DataOutputStream;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    iget p0, p0, Lcom/android/server/backup/UsageStatsBackupHelper;->mUserId:I

    .line 33
    .line 34
    invoke-virtual {v0, p0, p1}, Landroid/app/usage/UsageStatsManagerInternal;->getBackupPayload(ILjava/lang/String;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_0
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method
