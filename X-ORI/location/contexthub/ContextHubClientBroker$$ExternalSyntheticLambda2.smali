.class public final synthetic Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IIJ)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;->f$0:J

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Landroid/hardware/location/IContextHubClientCallback;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;->f$0:J

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;->f$1:I

    .line 9
    .line 10
    invoke-interface {p1, v0, v1, p0}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppAborted(JI)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;->f$0:J

    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;->f$1:I

    .line 17
    .line 18
    invoke-interface {p1, v0, v1, p0}, Landroid/hardware/location/IContextHubClientCallback;->onClientAuthorizationChanged(JI)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
