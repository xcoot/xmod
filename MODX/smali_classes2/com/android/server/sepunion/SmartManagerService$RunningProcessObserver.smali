.class public final Lcom/android/server/sepunion/SmartManagerService$RunningProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SmartManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SmartManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SmartManagerService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 2

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/android/server/sepunion/SmartManagerService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    .line 5
    .line 6
    iget-object p3, p3, Lcom/android/server/sepunion/SmartManagerService;->mCheckedAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    check-cast p3, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    sget-object p0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_SWITCH_URI:Landroid/net/Uri;

    .line 27
    .line 28
    const-string p0, "already checked "

    .line 29
    .line 30
    const-string p1, "SmartManagerService"

    .line 31
    .line 32
    invoke-static {p2, p0, p1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object p3, p0, Lcom/android/server/sepunion/SmartManagerService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    .line 37
    .line 38
    iget-object p3, p3, Lcom/android/server/sepunion/SmartManagerService;->mForegroundActivitiesPidMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object p3, p0, Lcom/android/server/sepunion/SmartManagerService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    .line 50
    .line 51
    iget-object p3, p3, Lcom/android/server/sepunion/SmartManagerService;->mCheckedAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    .line 61
    .line 62
    iget-object p3, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    .line 63
    .line 64
    const/16 v0, 0x14

    .line 65
    .line 66
    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    iput v0, p3, Landroid/os/Message;->what:I

    .line 74
    .line 75
    new-instance v0, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string/jumbo v1, "pid"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    const-string/jumbo p1, "uid"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    .line 96
    .line 97
    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessDied(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/sepunion/SmartManagerService;->mForegroundActivitiesPidMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/sepunion/SmartManagerService;->mForegroundActivitiesPidMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService$RunningProcessObserver;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mCheckedAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
