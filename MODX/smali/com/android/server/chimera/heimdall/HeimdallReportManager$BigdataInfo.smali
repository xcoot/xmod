.class public final Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public globalKillCnt:I

.field public memoryUsage:I

.field public packageName:Ljava/lang/String;

.field public realKillCnt:I

.field public specKillCnt:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public static -$$Nest$mtoJsonData(Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "\"pkgName\":\""

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->packageName:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "\",\"version\":\""

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->versionName:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "\",\"memUsage\":\""

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->memoryUsage:I

    .line 30
    int-to-long v1, v1

    .line 31
    const-wide/16 v3, 0x400

    .line 33
    mul-long/2addr v1, v3

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "\",\"specKillCnt\":\""

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->specKillCnt:I

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "\",\"glbKillCnt\":\""

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->globalKillCnt:I

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "\",\"realKillCnt\":\""

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->realKillCnt:I

    .line 64
    const-string v1, "\""

    .line 66
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ","

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    array-length v0, p1

    .line 11
    const/4 v1, 0x6

    .line 12
    if-eq v0, v1, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    aget-object v0, p1, v0

    .line 18
    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->packageName:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    .line 21
    aget-object v0, p1, v0

    .line 23
    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->versionName:Ljava/lang/String;

    .line 25
    const/4 v0, 0x2

    .line 26
    aget-object v0, p1, v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->memoryUsage:I

    .line 34
    const/4 v0, 0x3

    .line 35
    aget-object v0, p1, v0

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->specKillCnt:I

    .line 43
    const/4 v0, 0x4

    .line 44
    aget-object v0, p1, v0

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->globalKillCnt:I

    .line 52
    const/4 v0, 0x5

    .line 53
    aget-object p1, p1, v0

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->realKillCnt:I

    .line 61
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->packageName:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ","

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->versionName:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->memoryUsage:I

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->specKillCnt:I

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->globalKillCnt:I

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->realKillCnt:I

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method
