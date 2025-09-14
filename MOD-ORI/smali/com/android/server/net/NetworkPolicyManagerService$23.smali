.class public final Lcom/android/server/net/NetworkPolicyManagerService$23;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/ActivityManager$SemProcessListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 3

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 5
    .line 6
    iget-object p3, p3, Lcom/android/server/net/NetworkPolicyManagerService;->mToastCheckedUidMap:Ljava/util/concurrent/ConcurrentHashMap;

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
    const-string v0, "NetworkPolicy"

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    const-string p0, "already checked "

    .line 29
    .line 30
    invoke-static {p2, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 35
    .line 36
    iget-object p3, p3, Lcom/android/server/net/NetworkPolicyManagerService;->mForegroundActivitiesPidMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {p3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 48
    .line 49
    iget-object p3, p3, Lcom/android/server/net/NetworkPolicyManagerService;->mToastCheckedUidMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 59
    .line 60
    iget-object p3, p3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 61
    .line 62
    if-nez p3, :cond_2

    .line 63
    .line 64
    const-string/jumbo p0, "handler is null return"

    .line 65
    .line 66
    .line 67
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    const/16 v0, 0x33

    .line 72
    .line 73
    invoke-virtual {p3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    iput p1, p3, Landroid/os/Message;->arg1:I

    .line 78
    .line 79
    iput p2, p3, Landroid/os/Message;->arg2:I

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 84
    .line 85
    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final onProcessDied(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mForegroundActivitiesPidMap:Ljava/util/concurrent/ConcurrentHashMap;

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
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mForegroundActivitiesPidMap:Ljava/util/concurrent/ConcurrentHashMap;

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
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mToastCheckedUidMap:Ljava/util/concurrent/ConcurrentHashMap;

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
