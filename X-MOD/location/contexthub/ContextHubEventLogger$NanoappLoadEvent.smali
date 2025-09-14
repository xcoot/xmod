.class public final Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;
.super Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final nanoappSize:J

.field public final nanoappVersion:I


# direct methods
.method public constructor <init>(JIJIJZ)V
    .locals 8

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p3

    .line 4
    move-wide v2, p1

    .line 5
    move-wide v4, p4

    .line 6
    move/from16 v6, p9

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;-><init>(IJJZ)V

    .line 11
    move v0, p6

    .line 12
    iput v0, v7, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;->nanoappVersion:I

    .line 14
    move-wide v0, p7

    .line 15
    iput-wide v0, v7, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;->nanoappSize:J

    .line 17
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
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;->timeStampInMs:J

    .line 8
    invoke-static {v1, v2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->formatDateFromTimestamp(J)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ": NanoappLoadEvent[hubId = "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;->contextHubId:I

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, ", appId = 0x"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;->nanoappId:J

    .line 32
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, ", appVersion = "

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;->nanoappVersion:I

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", appSize = "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;->nanoappSize:J

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, " bytes, success = "

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-boolean p0, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;->success:Z

    .line 66
    if-eqz p0, :cond_0

    .line 68
    const-string/jumbo p0, "true"

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const-string/jumbo p0, "false"

    .line 75
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/16 p0, 0x5d

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method
