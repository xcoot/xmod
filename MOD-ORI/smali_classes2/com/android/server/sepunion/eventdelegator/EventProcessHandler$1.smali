.class public final Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;
.super Landroid/telephony/PhoneStateListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "onCallStateChanged() state = "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 37
    .line 38
    const-string/jumbo v3, "monitor_call_state"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 48
    .line 49
    const-string/jumbo v2, "monitor_call_state"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 61
    .line 62
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportCallStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    :goto_0
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method
