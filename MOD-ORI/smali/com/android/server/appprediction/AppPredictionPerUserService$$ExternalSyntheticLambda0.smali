.class public final synthetic Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/prediction/AppPredictionSessionId;

.field public final synthetic f$1:Landroid/content/pm/ParceledListSlice;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    iput-object p2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ParceledListSlice;

    iput-object p3, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    iput-object p2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ParceledListSlice;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ParceledListSlice;

    .line 13
    .line 14
    check-cast p1, Landroid/service/appprediction/IPredictionService;

    .line 15
    .line 16
    invoke-interface {p1, v0, v1, p0}, Landroid/service/appprediction/IPredictionService;->notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ParceledListSlice;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Landroid/app/prediction/IPredictionCallback;

    .line 27
    .line 28
    check-cast p1, Landroid/service/appprediction/IPredictionService;

    .line 29
    .line 30
    invoke-interface {p1, v0, v1, p0}, Landroid/service/appprediction/IPredictionService;->sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
