.class public final Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;
.super Landroid/app/contextualsearch/IContextualSearchManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mToken:Landroid/app/contextualsearch/CallbackToken;

.field public mTokenHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

.field public final synthetic this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 3
    invoke-direct {p0}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getContextualSearchState(Landroid/os/IBinder;Landroid/app/contextualsearch/IContextualSearchCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/app/contextualsearch/CallbackToken;->getToken()Landroid/os/IBinder;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->invalidateToken()V

    .line 19
    invoke-static {}, Landroid/app/contextualsearch/flags/Flags;->enableTokenRefresh()Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->issueToken()V

    .line 28
    new-instance p1, Landroid/os/Bundle;

    .line 30
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 33
    const-string v0, "android.app.contextualsearch.extra.TOKEN"

    .line 35
    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    new-instance v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;

    .line 42
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;Landroid/os/Bundle;Landroid/app/contextualsearch/IContextualSearchCallback;)V

    .line 45
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 50
    iget-object p1, p1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mLock:Ljava/lang/Object;

    .line 52
    monitor-enter p1

    .line 53
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 55
    iput-object p2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mStateCallback:Landroid/app/contextualsearch/IContextualSearchCallback;

    .line 57
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 60
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0

    .line 70
    :cond_2
    :goto_0
    :try_start_2
    new-instance p0, Landroid/os/ParcelableException;

    .line 72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 74
    const-string v0, "Invalid token"

    .line 76
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 82
    invoke-interface {p2, p0}, Landroid/app/contextualsearch/IContextualSearchCallback;->onError(Landroid/os/ParcelableException;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception p0

    .line 87
    const-string p1, "ContextualSearchManagerService"

    .line 89
    const-string p2, "Could not invoke onError callback"

    .line 91
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :goto_1
    return-void
.end method

.method public final invalidateToken()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0
.end method

.method public final issueToken()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Landroid/app/contextualsearch/CallbackToken;

    .line 4
    invoke-direct {v0}, Landroid/app/contextualsearch/CallbackToken;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    .line 9
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 24
    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    .line 34
    iget-object v2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 36
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    iget-wide v3, v2, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTokenValidDurationMs:J

    .line 39
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :try_start_2
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 43
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    return-void

    .line 45
    :catchall_1
    move-exception v0

    .line 46
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    :try_start_4
    throw v0

    .line 48
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    throw v0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;

    .line 3
    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 18
    return-void
.end method

.method public final startContextualSearch(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 4
    invoke-static {v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$menforcePermission(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 17
    iget-object v1, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 19
    const/4 v2, 0x1

    .line 20
    iput-boolean v2, v1, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    .line 22
    const/4 v2, 0x0

    .line 23
    iput v2, v1, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 25
    iput v2, v1, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 27
    iget-object v2, v1, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 32
    iget-object v1, v1, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 37
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->issueToken()V

    .line 40
    new-instance v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda1;

    .line 42
    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;II)V

    .line 45
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1
.end method
