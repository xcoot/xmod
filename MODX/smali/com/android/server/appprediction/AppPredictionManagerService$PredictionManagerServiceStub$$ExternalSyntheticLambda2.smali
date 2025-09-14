.class public final synthetic Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/prediction/AppPredictionSessionId;

.field public final synthetic f$1:Landroid/app/prediction/IPredictionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda2;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    .line 5
    iput-object p2, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda2;->f$1:Landroid/app/prediction/IPredictionCallback;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda2;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    .line 8
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda2;->f$1:Landroid/app/prediction/IPredictionCallback;

    .line 10
    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 12
    invoke-virtual {p1, v0, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda2;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    .line 18
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda2;->f$1:Landroid/app/prediction/IPredictionCallback;

    .line 20
    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 22
    iget-object v1, p1, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 30
    if-nez v1, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v2, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;

    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;I)V

    .line 39
    const/4 v0, 0x0

    .line 40
    iget-boolean v3, v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    .line 42
    invoke-virtual {p1, v0, v3, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 48
    iget-object p1, v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 50
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 53
    :cond_1
    :goto_0
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
