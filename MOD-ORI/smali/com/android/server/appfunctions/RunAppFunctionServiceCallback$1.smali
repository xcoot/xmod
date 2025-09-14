.class public final Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;
.super Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

.field public final synthetic val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onError(Landroid/app/appfunctions/AppFunctionException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->this$0:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onResult(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback$1;->val$serviceUsageCompleteListener:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
