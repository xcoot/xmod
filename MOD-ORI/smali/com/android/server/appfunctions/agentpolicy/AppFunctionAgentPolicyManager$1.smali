.class public final Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;->this$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "com.samsung.android.scpm.policy.UPDATE.cross-app-action-agent-policy"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "AppFunctionAgentPolicyManager"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-boolean p2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->USER_BUILD:Z

    .line 17
    .line 18
    const-string p2, "Cross app action agent policy update"

    .line 19
    .line 20
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;->this$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 24
    .line 25
    iget-object p2, p2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string/jumbo p1, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    sget-boolean p1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->USER_BUILD:Z

    .line 50
    .line 51
    const-string p1, "Cross app action agent policy clear"

    .line 52
    .line 53
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;->this$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 59
    .line 60
    new-instance p2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-direct {p2, v0, p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const-wide/16 v0, 0x3c

    .line 67
    .line 68
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    .line 70
    invoke-interface {p1, p2, v0, v1, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const-string/jumbo p1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;->this$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 90
    .line 91
    new-instance p2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    const/4 v0, 0x2

    .line 94
    invoke-direct {p2, v0, p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_0
    return-void
.end method
