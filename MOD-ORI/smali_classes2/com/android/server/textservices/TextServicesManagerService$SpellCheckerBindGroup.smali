.class public final Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mConnected:Z

.field public final mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

.field public final mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

.field public final mOnGoingSessionRequests:Ljava/util/ArrayList;

.field public final mPendingSessionRequests:Ljava/util/ArrayList;

.field public mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

.field public final mSpellCheckerBindGroups:Ljava/util/HashMap;

.field public mUnbindCalled:Z

.field public final synthetic this$0:Lcom/android/server/textservices/TextServicesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 5
    .line 6
    const-class p1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    .line 29
    .line 30
    new-instance p1, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;-><init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    .line 36
    .line 37
    iget-object p1, p2, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final cleanLocked()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    return-void

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 44
    .line 45
    if-ne v2, p0, :cond_4

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_4
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    .line 61
    .line 62
    return-void
.end method

.method public final getISpellCheckerSessionOrQueueLocked(Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 24
    .line 25
    iget-object v1, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v2, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    .line 30
    .line 31
    iget v4, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mSupportedAttributes:I

    .line 32
    .line 33
    new-instance v5, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;

    .line 34
    .line 35
    invoke-direct {v5, p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;-><init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    .line 36
    .line 37
    .line 38
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;ILcom/android/internal/textservice/ISpellCheckerServiceCallback;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final removeAllLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Remove the spell checker bind unexpectedly."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    :goto_0
    if-ltz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method
