.class public final synthetic Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

.field public final synthetic f$1:Landroid/hardware/contexthub/ContextHubMessage;

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;Landroid/hardware/contexthub/ContextHubMessage;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    .line 6
    iput-object p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/contexthub/ContextHubMessage;

    .line 8
    iput-object p3, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;->f$2:[Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    .line 3
    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/contexthub/ContextHubMessage;

    .line 5
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;->f$2:[Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    .line 9
    iget-char v2, v1, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    .line 11
    int-to-short v3, v2

    .line 12
    sget-object v4, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 14
    iget-wide v5, v1, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    .line 16
    iget v7, v1, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    .line 18
    iget-object v8, v1, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    .line 20
    const v4, 0xffff

    .line 23
    if-ne v2, v4, :cond_0

    .line 25
    const/4 v2, 0x1

    .line 26
    :goto_0
    move v9, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    iget-boolean v10, v1, Landroid/hardware/contexthub/ContextHubMessage;->isReliable:Z

    .line 32
    iget v11, v1, Landroid/hardware/contexthub/ContextHubMessage;->messageSequenceNumber:I

    .line 34
    invoke-static/range {v5 .. v11}, Landroid/hardware/location/NanoAppMessage;->createMessageFromNanoApp(JI[BZZI)Landroid/hardware/location/NanoAppMessage;

    .line 37
    move-result-object v2

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    iget-object v1, v1, Landroid/hardware/contexthub/ContextHubMessage;->permissions:[Ljava/lang/String;

    .line 42
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    .line 61
    return-void
.end method
