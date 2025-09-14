.class public final Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mCallback:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

.field public final mCallerBinder:Landroid/os/IBinder;

.field public final mCancellationSignal:Landroid/os/CancellationSignal;

.field public final mCancellationTimeoutMillis:J

.field public final mCancellationTimeoutRunnable:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;

.field public mDirectServiceVulture:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda1;

.field public final synthetic this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;Landroid/content/Intent;Landroid/os/UserHandle;JLandroid/os/CancellationSignal;Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    .line 5
    .line 6
    iput-object p7, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallback:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCancellationTimeoutMillis:J

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 11
    .line 12
    new-instance p1, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-direct {p1, p2, p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCancellationTimeoutRunnable:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;

    .line 19
    .line 20
    iput-object p8, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallerBinder:Landroid/os/IBinder;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallback:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    .line 9
    .line 10
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1, p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallback:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    .line 9
    .line 10
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1, p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mInterfaceConverter:Ljava/util/function/Function;

    .line 4
    .line 5
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    .line 10
    .line 11
    iget-object p2, p2, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda4;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallback:Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    .line 9
    .line 10
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1, p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final safeUnbind()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCancellationTimeoutRunnable:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mDirectServiceVulture:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallerBinder:Landroid/os/IBinder;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-interface {p0, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    const-string v0, "AppFunctionsServiceCall"

    .line 30
    .line 31
    const-string v1, "Failed to unbind"

    .line 32
    .line 33
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method
