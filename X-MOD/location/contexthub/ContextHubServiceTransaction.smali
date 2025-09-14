.class public abstract Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIsComplete:Z

.field public final mMessageSequenceNumber:Ljava/lang/Integer;

.field public final mNanoAppId:Ljava/lang/Long;

.field public final mPackage:Ljava/lang/String;

.field public final mTransactionId:I

.field public final mTransactionType:I


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    .line 10
    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    .line 11
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    .line 12
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:Ljava/lang/Long;

    .line 13
    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    .line 3
    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    .line 4
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:Ljava/lang/Long;

    .line 6
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    .line 17
    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    const/4 p1, 0x5

    .line 18
    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:Ljava/lang/Long;

    .line 20
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public onQueryResponse(ILjava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onTransact()I
.end method

.method public abstract onTransactionComplete(I)V
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v1, v2}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, " ("

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:Ljava/lang/Long;

    .line 23
    if-eqz v1, :cond_0

    .line 25
    const-string v2, "appId = 0x"

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 33
    move-result-wide v1

    .line 34
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", "

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    const-string/jumbo v1, "package = "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:Ljava/lang/Integer;

    .line 59
    if-eqz p0, :cond_1

    .line 61
    const-string v1, ", messageSequenceNumber = "

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    :cond_1
    const-string p0, ")"

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method
