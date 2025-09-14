.class public final Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;
.super Landroid/hardware/contexthub/IContextHubCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final UUID:[B


# instance fields
.field public final mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

.field public final synthetic this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->UUID:[B

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 1
        -0x66t
        0x17t
        0x0t
        -0x73t
        0x6bt
        -0xft
        0x44t
        0x5at
        -0x70t
        0x11t
        0x6dt
        0x21t
        -0x43t
        -0x68t
        0x5bt
        0x6ct
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/contexthub/IContextHubCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "03f1982c8e20e58494a4ff8c9736b1c257dfeb6c"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ContextHubService"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUuid()[B
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->UUID:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleContextHubAsyncEvent(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final handleContextHubMessage(Landroid/hardware/contexthub/ContextHubMessage;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;Landroid/hardware/contexthub/ContextHubMessage;[Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final handleMessageDeliveryStatus(CLandroid/hardware/contexthub/MessageDeliveryStatus;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/chre/flags/Flags;->reliableMessageImplementation()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "IContextHubWrapper"

    .line 22
    .line 23
    const-string/jumbo p1, "handleMessageDeliveryStatus called when the reliableMessageImplementation flag is disabled"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public final handleNanSessionRequest(Landroid/hardware/contexthub/NanSessionRequest;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final handleNanoappInfo([Landroid/hardware/contexthub/NanoappInfo;)V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 3
    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    array-length v2, p1

    .line 10
    move v3, v0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_1

    .line 12
    .line 13
    aget-object v4, p1, v3

    .line 14
    .line 15
    new-instance v11, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v5, v4, Landroid/hardware/contexthub/NanoappInfo;->rpcServices:[Landroid/hardware/contexthub/NanoappRpcService;

    .line 21
    .line 22
    array-length v6, v5

    .line 23
    move v7, v0

    .line 24
    :goto_1
    if-ge v7, v6, :cond_0

    .line 25
    .line 26
    aget-object v8, v5, v7

    .line 27
    .line 28
    new-instance v9, Landroid/hardware/location/NanoAppRpcService;

    .line 29
    .line 30
    iget-wide v12, v8, Landroid/hardware/contexthub/NanoappRpcService;->id:J

    .line 31
    .line 32
    iget v8, v8, Landroid/hardware/contexthub/NanoappRpcService;->version:I

    .line 33
    .line 34
    invoke-direct {v9, v12, v13, v8}, Landroid/hardware/location/NanoAppRpcService;-><init>(JI)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    add-int/lit8 v7, v7, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    new-instance v12, Landroid/hardware/location/NanoAppState;

    .line 44
    .line 45
    iget-wide v6, v4, Landroid/hardware/contexthub/NanoappInfo;->nanoappId:J

    .line 46
    .line 47
    iget v8, v4, Landroid/hardware/contexthub/NanoappInfo;->nanoappVersion:I

    .line 48
    .line 49
    iget-boolean v9, v4, Landroid/hardware/contexthub/NanoappInfo;->enabled:Z

    .line 50
    .line 51
    new-instance v10, Ljava/util/ArrayList;

    .line 52
    .line 53
    iget-object v4, v4, Landroid/hardware/contexthub/NanoappInfo;->permissions:[Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .line 61
    .line 62
    move-object v5, v12

    .line 63
    invoke-direct/range {v5 .. v11}, Landroid/hardware/location/NanoAppState;-><init>(JIZLjava/util/List;Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandler:Landroid/os/Handler;

    .line 75
    .line 76
    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final handleTransactionResult(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;IZ)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
