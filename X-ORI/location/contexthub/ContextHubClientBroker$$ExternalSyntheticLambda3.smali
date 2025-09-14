.class public final synthetic Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JII)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 4
    .line 5
    iput-wide p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;->f$1:J

    .line 6
    .line 7
    iput p4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 7
    .line 8
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;->f$1:J

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;->f$2:I

    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    invoke-virtual {v0, v3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v3, "android.hardware.location.extra.NANOAPP_ID"

    .line 18
    .line 19
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string v1, "android.hardware.location.extra.NANOAPP_ABORT_CODE"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 30
    .line 31
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;->f$1:J

    .line 32
    .line 33
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;->f$2:I

    .line 34
    .line 35
    const/4 v3, 0x7

    .line 36
    invoke-virtual {v0, v3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v3, "android.hardware.location.extra.NANOAPP_ID"

    .line 41
    .line 42
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string v1, "android.hardware.location.extra.CLIENT_AUTHORIZATION_STATE"

    .line 46
    .line 47
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
