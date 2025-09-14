.class public final synthetic Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/PeopleService$LocalService;

.field public final synthetic f$1:Landroid/content/pm/ParceledListSlice;

.field public final synthetic f$2:Landroid/app/prediction/IPredictionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/PeopleService$LocalService;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/people/PeopleService$LocalService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;->f$1:Landroid/content/pm/ParceledListSlice;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;->f$2:Landroid/app/prediction/IPredictionCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/people/PeopleService$LocalService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;->f$1:Landroid/content/pm/ParceledListSlice;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda5;->f$2:Landroid/app/prediction/IPredictionCallback;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/people/SessionInfo;

    .line 8
    .line 9
    sget v2, Lcom/android/server/people/PeopleService$LocalService;->$r8$clinit:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/people/SessionInfo;->mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/PeopleService$LocalService;Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p1, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/prediction/AppTargetPredictor;Ljava/util/List;Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
