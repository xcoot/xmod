.class public abstract Lcom/android/server/location/contexthub/ContextHubServiceUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MM/dd HH:mm:ss.SSS"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 16
    .line 17
    return-void
.end method

.method public static createAidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/ContextHubMessage;
    .locals 3

    .line 1
    new-instance v0, Landroid/hardware/contexthub/ContextHubMessage;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/hardware/contexthub/ContextHubMessage;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, v0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    .line 11
    .line 12
    int-to-char p0, p0

    .line 13
    iput-char p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    iput p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iput-object p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    new-array p0, p0, [Ljava/lang/String;

    .line 29
    .line 30
    iput-object p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->permissions:[Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    iput-boolean p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->isReliable:Z

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    iput p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->messageSequenceNumber:I

    .line 43
    .line 44
    return-object v0
.end method

.method public static createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ge v3, v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Ljava/lang/Byte;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    aput-byte v4, v1, v3

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-wide v3, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    .line 33
    .line 34
    iget v0, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    .line 35
    .line 36
    iget-short p0, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    .line 37
    .line 38
    const/4 v5, -0x1

    .line 39
    if-ne p0, v5, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    :cond_1
    invoke-static {v3, v4, v0, v1, v2}, Landroid/hardware/location/NanoAppMessage;->createMessageFromNanoApp(JI[BZ)Landroid/hardware/location/NanoAppMessage;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static formatDateFromTimestamp(J)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static toTransactionResult(I)I
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    return v0

    .line 15
    :cond_1
    const/4 p0, 0x4

    .line 16
    return p0

    .line 17
    :cond_2
    const/4 p0, 0x0

    .line 18
    return p0
.end method
