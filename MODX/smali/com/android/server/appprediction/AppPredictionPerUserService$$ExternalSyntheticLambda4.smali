.class public final synthetic Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/prediction/AppPredictionSessionId;

.field public final synthetic f$1:Landroid/app/prediction/IPredictionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    .line 5
    iput-object p2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;->f$1:Landroid/app/prediction/IPredictionCallback;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    .line 8
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;->f$1:Landroid/app/prediction/IPredictionCallback;

    .line 10
    check-cast p1, Landroid/service/appprediction/IPredictionService;

    .line 12
    invoke-interface {p1, v0, p0}, Landroid/service/appprediction/IPredictionService;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    .line 18
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;->f$1:Landroid/app/prediction/IPredictionCallback;

    .line 20
    check-cast p1, Landroid/service/appprediction/IPredictionService;

    .line 22
    invoke-interface {p1, v0, p0}, Landroid/service/appprediction/IPredictionService;->registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
