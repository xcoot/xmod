.class public final synthetic Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppTargetEvent;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 0

    .line 2
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/content/pm/ParceledListSlice;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/people/SessionInfo;

    .line 11
    .line 12
    sget v0, Lcom/android/server/people/PeopleService$LocalService;->$r8$clinit:I

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/people/SessionInfo;->mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast p0, Landroid/app/prediction/AppTargetEvent;

    .line 24
    .line 25
    check-cast p1, Lcom/android/server/people/SessionInfo;

    .line 26
    .line 27
    sget v0, Lcom/android/server/people/PeopleService$LocalService;->$r8$clinit:I

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/people/SessionInfo;->mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

    .line 30
    .line 31
    iget-object v0, p1, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 32
    .line 33
    new-instance v1, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda1;

    .line 34
    .line 35
    invoke-direct {v1, p1, p0}, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/prediction/AppTargetPredictor;Landroid/app/prediction/AppTargetEvent;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
