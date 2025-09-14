.class public final synthetic Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    .line 2
    .line 3
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;Landroid/telephony/TelephonyManager;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mListenerList:Ljava/util/List;

    .line 14
    .line 15
    check-cast v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    invoke-virtual {p1, p0, v1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method
