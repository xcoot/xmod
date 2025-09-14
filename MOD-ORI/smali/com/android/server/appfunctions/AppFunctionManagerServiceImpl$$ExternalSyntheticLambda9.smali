.class public final synthetic Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Throwable;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mapExceptionToExecuteAppFunctionResponse(Ljava/lang/Throwable;)Landroid/app/appfunctions/AppFunctionException;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 31
    .line 32
    check-cast p1, Ljava/lang/Void;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getFunctionIdentifier()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget-object v0, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, p0, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-class v0, Landroid/app/appsearch/AppSearchManager;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Landroid/app/appsearch/AppSearchManager;

    .line 71
    .line 72
    sget-object v0, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 73
    .line 74
    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    .line 75
    .line 76
    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v3, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;

    .line 80
    .line 81
    invoke-direct {v3, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1, v1, p0, v0, v3}, Landroid/app/appfunctions/AppFunctionManagerHelper;->isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 85
    .line 86
    .line 87
    return-object v2

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
