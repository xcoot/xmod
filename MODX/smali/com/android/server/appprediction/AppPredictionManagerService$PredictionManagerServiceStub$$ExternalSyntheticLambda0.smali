.class public final synthetic Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/prediction/AppPredictionSessionId;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    .line 5
    iput-object p2, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    .line 8
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Landroid/app/prediction/AppTargetEvent;

    .line 12
    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 14
    iget-object v1, p1, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 22
    if-nez v1, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v2, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda1;

    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/Object;I)V

    .line 31
    const/4 p0, 0x0

    .line 32
    iget-boolean v0, v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    .line 34
    invoke-virtual {p1, p0, v0, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 37
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    .line 40
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 42
    check-cast p0, Landroid/os/IRemoteCallback;

    .line 44
    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 46
    iget-object v1, p1, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 48
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 54
    if-nez v1, :cond_1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance v2, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda1;

    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/Object;I)V

    .line 63
    const/4 p0, 0x1

    .line 64
    iget-boolean v0, v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    .line 66
    invoke-virtual {p1, p0, v0, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 69
    :goto_1
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
