.class public final synthetic Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallback:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroid/app/appfunctions/IAppFunctionService;

    .line 11
    .line 12
    :try_start_0
    iget-object v2, v1, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mRequestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, v1, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mRequestInternal:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v4, v1, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mCancellationCallback:Landroid/app/appfunctions/ICancellationCallback;

    .line 25
    .line 26
    new-instance v5, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;

    .line 27
    .line 28
    invoke-direct {v5, v1, v0}, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;-><init>(Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v2, v3, v4, v5}, Landroid/app/appfunctions/IAppFunctionService;->executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    iget-object v1, v1, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 37
    .line 38
    new-instance v2, Landroid/app/appfunctions/AppFunctionException;

    .line 39
    .line 40
    const/16 v3, 0xbb8

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v2, v3, p0}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method
