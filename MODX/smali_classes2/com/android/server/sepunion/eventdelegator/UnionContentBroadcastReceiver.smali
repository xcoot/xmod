.class public final Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->$r8$clinit:I

    .line 2
    .line 3
    const-string v0, "SemDeviceInfoManagerService"

    .line 4
    .line 5
    sput-object v0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, -0x2710

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v3, "android.intent.extra.user_handle"

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_0
    sget-object v3, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v5, "onReceive : "

    .line 30
    .line 31
    .line 32
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v5, ", userId = "

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    const/4 v3, -0x1

    .line 54
    if-ne v1, v3, :cond_1

    .line 55
    .line 56
    const-class v1, Landroid/os/UserManager;

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/os/UserManager;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 83
    .line 84
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 85
    .line 86
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->sendIntentAsUser(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    if-ltz v1, :cond_2

    .line 91
    .line 92
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->sendIntentAsUser(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    if-ne v1, v2, :cond_3

    .line 97
    .line 98
    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->sendIntentAsUser(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_2
    return-void
.end method

.method public final sendIntentAsUser(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 7
    .line 8
    invoke-virtual {v1, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 29
    .line 30
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->sendIntentAction(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/Intent;I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method
