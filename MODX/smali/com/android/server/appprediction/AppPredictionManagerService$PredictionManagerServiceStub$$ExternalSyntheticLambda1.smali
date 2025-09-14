.class public final synthetic Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/prediction/AppPredictionSessionId;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda1;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda1;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    .line 5
    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    iget-object v0, p1, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 12
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 18
    if-nez v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda3;

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, p0, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda3;-><init>(Landroid/app/prediction/AppPredictionSessionId;I)V

    .line 27
    const/4 p0, 0x1

    .line 28
    iget-boolean v0, v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    .line 30
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 33
    :goto_0
    return-void

    .line 34
    :pswitch_0
    invoke-virtual {p1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onDestroyPredictionSessionLocked(Landroid/app/prediction/AppPredictionSessionId;)V

    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
