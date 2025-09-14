.class public final synthetic Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/people/SessionInfo;

    .line 2
    .line 3
    sget p0, Lcom/android/server/people/PeopleService$LocalService;->$r8$clinit:I

    .line 4
    .line 5
    iget-object p0, p1, Lcom/android/server/people/SessionInfo;->mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/prediction/AppTargetPredictor;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
