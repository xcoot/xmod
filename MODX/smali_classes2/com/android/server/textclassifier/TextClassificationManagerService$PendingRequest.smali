.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final mName:Ljava/lang/String;

.field public final mOnServiceFailure:Ljava/lang/Runnable;

.field public final mRequest:Ljava/lang/Runnable;

.field public final mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

.field public final mServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field public final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda11;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mName:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda12;

    .line 7
    .line 8
    const-string v0, "handling pending request"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p2, p1}, Lcom/android/internal/util/FunctionalUtils;->handleExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)Ljava/lang/Runnable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mRequest:Ljava/lang/Runnable;

    .line 18
    .line 19
    new-instance p1, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda12;

    .line 20
    .line 21
    const-string/jumbo p2, "notifying callback of service failure"

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p3, p1}, Lcom/android/internal/util/FunctionalUtils;->handleExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)Ljava/lang/Runnable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;

    .line 32
    .line 33
    iput-object p4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    .line 34
    .line 35
    iput-object p5, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 36
    .line 37
    iput-object p6, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 38
    .line 39
    if-eqz p4, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    :try_start_0
    invoke-interface {p4, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    iput p7, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mUid:I

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    .line 14
    .line 15
    check-cast v1, Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method
