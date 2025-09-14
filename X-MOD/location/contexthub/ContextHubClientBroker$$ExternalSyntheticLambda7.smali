.class public final synthetic Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

.field public final synthetic f$1:Landroid/hardware/location/NanoAppMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;Landroid/hardware/location/NanoAppMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 6
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;->f$1:Landroid/hardware/location/NanoAppMessage;

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 3
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;->f$1:Landroid/hardware/location/NanoAppMessage;

    .line 5
    check-cast p1, Ljava/lang/Byte;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    .line 13
    move-result p0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendMessageDeliveryStatusToContextHub(BI)V

    .line 21
    return-void
.end method
