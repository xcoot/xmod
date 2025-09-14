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

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$1:Landroid/app/prediction/AppPredictionSessionId;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/content/pm/ParceledListSlice;

    .line 15
    .line 16
    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 17
    .line 18
    iget-object v2, p1, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v3, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-direct {v3, v0, v1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    iget-boolean v0, v2, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    .line 36
    .line 37
    invoke-virtual {p1, p0, v0, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$1:Landroid/app/prediction/AppPredictionSessionId;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Landroid/app/prediction/IPredictionCallback;

    .line 50
    .line 51
    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 52
    .line 53
    iget-object v2, p1, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 60
    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    new-instance v3, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    invoke-direct {v3, v0, v1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    iget-boolean v0, v2, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    .line 71
    .line 72
    invoke-virtual {p1, p0, v0, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Landroid/app/prediction/AppPredictionContext;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$1:Landroid/app/prediction/AppPredictionSessionId;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Landroid/os/IBinder;

    .line 85
    .line 86
    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 87
    .line 88
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V

    .line 89
    .line 90
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
