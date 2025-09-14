.class public final Lcom/android/server/trust/TrustManagerService$4;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->checkNewAgentsForUser(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->checkNewAgentsForUser(I)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0
.end method

.method public final onPackageDisappeared(Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x1

    .line 10
    sub-int/2addr p2, v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ltz p2, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 21
    .line 22
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v4, "Resetting agent "

    .line 37
    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v4, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "TrustManagerService"

    .line 55
    .line 56
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_0

    .line 66
    .line 67
    move v1, v0

    .line 68
    :cond_0
    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 74
    .line 75
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    .line 84
    .line 85
    .line 86
    :cond_3
    return-void
.end method

.method public final onSomePackagesChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
