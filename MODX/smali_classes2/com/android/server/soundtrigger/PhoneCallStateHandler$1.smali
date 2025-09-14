.class public final Lcom/android/server/soundtrigger/PhoneCallStateHandler$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$1;->this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAddListenerFailed()V
    .locals 1

    .line 1
    const-string p0, "SoundTriggerPhoneCallStateHandler"

    .line 2
    .line 3
    const-string v0, "Failed to add a telephony listener"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onSubscriptionsChanged()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$1;->this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mListenerList:Ljava/util/List;

    .line 7
    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;

    .line 25
    .line 26
    iget-object v3, v2, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    new-instance v4, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {v4, v2}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mListenerList:Ljava/util/List;

    .line 42
    .line 43
    check-cast v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    monitor-exit v0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v2, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda1;

    .line 73
    .line 74
    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    new-instance v2, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda2;

    .line 82
    .line 83
    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 87
    .line 88
    .line 89
    monitor-exit v0

    .line 90
    :goto_1
    return-void

    .line 91
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method
