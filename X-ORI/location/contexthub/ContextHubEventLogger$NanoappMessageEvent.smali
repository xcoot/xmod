.class public final Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
.super Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final message:Landroid/hardware/location/NanoAppMessage;


# direct methods
.method public constructor <init>(JILandroid/hardware/location/NanoAppMessage;Z)V
    .locals 7

    .line 1
    const-wide/16 v4, 0x0

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move v1, p3

    .line 5
    move-wide v2, p1

    .line 6
    move v6, p5

    .line 7
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;-><init>(IJJZ)V

    .line 8
    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;->message:Landroid/hardware/location/NanoAppMessage;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;->timeStampInMs:J

    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->formatDateFromTimestamp(J)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ": NanoappMessageEvent[hubId = "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;->contextHubId:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;->message:Landroid/hardware/location/NanoAppMessage;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppMessage;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ", success = "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-boolean p0, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;->success:Z

    .line 45
    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    const-string/jumbo p0, "true"

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string/jumbo p0, "false"

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/16 p0, 0x5d

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method
