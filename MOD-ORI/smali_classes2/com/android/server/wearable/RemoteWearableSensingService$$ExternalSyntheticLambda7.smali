.class public final synthetic Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p0, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    .line 9
    .line 10
    invoke-interface {p1}, Landroid/service/wearable/IWearableSensingService;->stopActiveHotwordAudio()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget p0, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    .line 15
    .line 16
    invoke-interface {p1}, Landroid/service/wearable/IWearableSensingService;->onValidatedByHotwordDetectionService()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    sget p0, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    .line 21
    .line 22
    invoke-interface {p1}, Landroid/service/wearable/IWearableSensingService;->killProcess()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
