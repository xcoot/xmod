.class public final synthetic Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/trust/TrustManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEscrowTokenActivated(JI)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 19
    .line 20
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 21
    .line 22
    if-ne v2, p3, :cond_1

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 25
    .line 26
    sget-boolean v2, Lcom/android/server/trust/TrustAgentWrapper;->DEBUG:Z

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v3, "onEscrowTokenActivated: "

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, " user: "

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v3, "TrustAgentWrapper"

    .line 50
    .line 51
    invoke-static {v2, p3, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    :try_start_0
    invoke-interface {v1, p1, p2, v2}, Landroid/service/trust/ITrustAgentService;->onTokenStateReceived(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception v1

    .line 64
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    return-void
.end method
