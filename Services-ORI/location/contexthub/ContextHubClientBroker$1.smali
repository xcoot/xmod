.class public final Lcom/android/server/location/contexthub/ContextHubClientBroker$1;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onQueryResponse(ILjava/util/List;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const-string p0, "ContextHubClientBroker"

    .line 14
    .line 15
    const-string p1, "Permissions query failed, but still received nanoapp state"

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Landroid/hardware/location/NanoAppState;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppState;->getNanoAppPermissions()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;ZZ)I

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    :goto_1
    return-void
.end method

.method public final onTransactionComplete(I)V
    .locals 0

    .line 1
    return-void
.end method
