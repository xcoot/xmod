.class public final Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mSciId:Ljava/lang/String;

.field public final mSpellCheckerBindGroups:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/android/server/textservices/TextServicesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->onServiceConnectedInnerLocked(Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    monitor-exit p1

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final onServiceConnectedInnerLocked(Landroid/os/IBinder;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/android/internal/textservice/ISpellCheckerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerService;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    .line 18
    .line 19
    if-ne p0, v1, :cond_2

    .line 20
    .line 21
    iget-boolean p0, v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iput-object p1, v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    iput-boolean p0, v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    .line 30
    .line 31
    :try_start_0
    iget-object p0, v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    const/4 p1, 0x0

    .line 38
    :goto_0
    if-ge p1, p0, :cond_1

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 47
    .line 48
    iget-object v2, v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 49
    .line 50
    iget-object v3, v1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v4, v1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 53
    .line 54
    iget-object v5, v1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    .line 55
    .line 56
    iget v6, v1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mSupportedAttributes:I

    .line 57
    .line 58
    new-instance v7, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;

    .line 59
    .line 60
    invoke-direct {v7, v0, v1}, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;-><init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    .line 61
    .line 62
    .line 63
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;ILcom/android/internal/textservice/ISpellCheckerServiceCallback;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object p0, v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_0
    invoke-virtual {v0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    .line 19
    .line 20
    if-ne p0, v1, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    iput-object p0, v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    iput-boolean p0, v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    .line 27
    .line 28
    :cond_0
    monitor-exit p1

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method
