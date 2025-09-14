.class public final Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappUnloadEvent;
.super Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


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
    const-string v1, ": NanoappUnloadEvent[hubId = "

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
    const-string v1, ", success = "

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-boolean p0, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;->success:Z

    .line 46
    if-eqz p0, :cond_0

    .line 48
    const-string/jumbo p0, "true"

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string/jumbo p0, "false"

    .line 55
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/16 p0, 0x5d

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method
