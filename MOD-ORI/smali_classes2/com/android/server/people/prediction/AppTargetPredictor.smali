.class public Lcom/android/server/people/prediction/AppTargetPredictor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mCallingUserId:I

.field public final mDataManager:Lcom/android/server/people/data/DataManager;

.field public final mPredictionContext:Landroid/app/prediction/AppPredictionContext;

.field public final mUpdatePredictionsMethod:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;Lcom/android/server/people/data/DataManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Ljava/util/function/Consumer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mDataManager:Lcom/android/server/people/data/DataManager;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallingUserId:I

    .line 11
    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getUpdatePredictionsMethod()Ljava/util/function/Consumer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Ljava/util/function/Consumer;

    .line 2
    .line 3
    return-object p0
.end method

.method public predictTargets()V
    .locals 0

    .line 1
    return-void
.end method

.method public reportAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public sortTargets(Ljava/util/List;Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
