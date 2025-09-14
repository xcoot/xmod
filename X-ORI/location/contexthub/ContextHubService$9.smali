.class public final Lcom/android/server/location/contexthub/ContextHubService$9;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;

.field public final synthetic val$contextHubId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubService$9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$9;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$9;->val$contextHubId:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final onQueryResponse$com$android$server$location$contexthub$ContextHubService$9(ILjava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onTransactionComplete$com$android$server$location$contexthub$ContextHubService$10(I)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onQueryResponse(ILjava/util/List;)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/android/server/location/contexthub/ContextHubService$9;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    int-to-byte p1, p1

    .line 7
    const/4 p2, 0x1

    .line 8
    new-array p2, p2, [B

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    aput-byte p1, p2, v0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$9;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 14
    .line 15
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$9;->val$contextHubId:I

    .line 16
    .line 17
    const/4 v0, 0x5

    .line 18
    const/4 v1, -0x1

    .line 19
    invoke-virtual {p1, v0, p0, v1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    .line 20
    .line 21
    .line 22
    :pswitch_0
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransactionComplete(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubService$9;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$9;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$9;->val$contextHubId:I

    .line 10
    .line 11
    int-to-byte p1, p1

    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [B

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-byte p1, v1, v2

    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    const/4 v2, -0x1

    .line 20
    invoke-virtual {v0, p1, p0, v2, v1}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
