.class public final synthetic Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    .line 3
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallback:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    .line 5
    iget-object v0, v0, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;->mSafeExecuteAppFunctionCallback:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 7
    invoke-virtual {v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->disable()V

    .line 10
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    .line 12
    iget-object v0, v0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mHandler:Landroid/os/Handler;

    .line 14
    iget-object v1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCancellationTimeoutRunnable:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;

    .line 16
    iget-wide v2, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCancellationTimeoutMillis:J

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    return-void
.end method
