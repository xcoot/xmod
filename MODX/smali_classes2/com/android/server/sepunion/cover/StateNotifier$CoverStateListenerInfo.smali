.class public final Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/sepunion/cover/StateNotifier;

.field public final token:Landroid/os/IBinder;

.field public final type:I

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    const-string v0, "CoverManager_StateNotifier"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "binderDied : binder = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 36
    .line 37
    iget-object v1, v0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    throw p0

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    throw p0
.end method

.method public final onCoverAttachStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 2
    .line 3
    const-string v1, "CoverManager_StateNotifier"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "onCoverAttachStateChanged : token is null"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    .line 15
    .line 16
    and-int/lit8 p0, p0, 0x2

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverAttachStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    const-string p1, "Failed onCoverAttachStateChanged callback"

    .line 32
    .line 33
    invoke-static {v1, p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public final onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    const-string v1, "CoverManager_StateNotifier"

    if-nez v0, :cond_0

    .line 2
    const-string/jumbo p0, "onCoverSwitchStateChanged : token is null"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 4
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManagerCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverManagerCallback;->coverCallback(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    const-string p1, "Failed onCoverStateChanged coverCallback"

    invoke-static {v1, p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCoverSwitchStateChanged(Z)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    const-string v1, "CoverManager_StateNotifier"

    if-nez v0, :cond_0

    .line 8
    const-string/jumbo p0, "onCoverSwitchStateChanged : token is null"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_0
    iget p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    .line 10
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 11
    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverSwitchStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    const-string p1, "Failed onCoverSwitchStateChanged callback"

    invoke-static {v1, p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
