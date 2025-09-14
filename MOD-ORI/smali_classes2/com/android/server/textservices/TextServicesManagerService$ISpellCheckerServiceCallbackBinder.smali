.class public final Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;
.super Lcom/android/internal/textservice/ISpellCheckerServiceCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBindGroup:Ljava/lang/ref/WeakReference;

.field public final mCallbackLock:Ljava/lang/Object;

.field public mRequest:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerServiceCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mCallbackLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method


# virtual methods
.method public final onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mCallbackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    iput-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    iput-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    iget-object p0, v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter p0

    .line 42
    :try_start_1
    iget-boolean v0, v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    monitor-exit p0

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    :try_start_2
    iget-object v0, v2, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    .line 59
    .line 60
    invoke-interface {v0, p1}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    .line 63
    :catch_0
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 64
    .line 65
    .line 66
    monitor-exit p0

    .line 67
    goto :goto_1

    .line 68
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    throw p1

    .line 70
    :cond_3
    :goto_1
    return-void

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    :goto_2
    :try_start_4
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    throw p0
.end method
