.class public final synthetic Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/app/prediction/AppPredictionSessionId;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$1:Landroid/app/prediction/AppPredictionSessionId;

    iput-object p3, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$1:Landroid/app/prediction/AppPredictionSessionId;

    iput-object p2, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$1:Landroid/app/prediction/AppPredictionSessionId;

    .line 8
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 12
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 14
    check-cast p0, Landroid/content/pm/ParceledListSlice;

    .line 16
    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 18
    iget-object v2, p1, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 20
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 26
    if-nez v2, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v3, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;

    .line 31
    invoke-direct {v3, v0, v1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 34
    const/4 p0, 0x0

    .line 35
    iget-boolean v0, v2, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    .line 37
    invoke-virtual {p1, p0, v0, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 40
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$1:Landroid/app/prediction/AppPredictionSessionId;

    .line 43
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 45
    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 47
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 49
    check-cast p0, Landroid/app/prediction/IPredictionCallback;

    .line 51
    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 53
    iget-object v2, p1, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 55
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 61
    if-nez v2, :cond_1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    new-instance v3, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;

    .line 66
    invoke-direct {v3, v0, v1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    .line 69
    const/4 p0, 0x1

    .line 70
    iget-boolean v0, v2, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    .line 72
    invoke-virtual {p1, p0, v0, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 75
    :goto_1
    return-void

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 78
    check-cast v0, Landroid/app/prediction/AppPredictionContext;

    .line 80
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$1:Landroid/app/prediction/AppPredictionSessionId;

    .line 82
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 84
    check-cast p0, Landroid/os/IBinder;

    .line 86
    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 88
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V

    .line 91
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
