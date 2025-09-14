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

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "com.samsung.android.scpm.policy.UPDATE.cross-app-action-agent-policy"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    const-string v1, "AppFunctionAgentPolicyManager"

    .line 14
    if-eqz v0, :cond_0

    .line 16
    sget-boolean p2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->USER_BUILD:Z

    .line 18
    const-string p2, "Cross app action agent policy update"

    .line 20
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;->this$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 25
    iget-object p2, p2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    new-instance v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1$$ExternalSyntheticLambda0;

    .line 29
    invoke-direct {v0, p0, p1}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;Landroid/content/Context;)V

    .line 32
    invoke-interface {p2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string/jumbo p1, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 49
    sget-boolean p1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->USER_BUILD:Z

    .line 51
    const-string p1, "Cross app action agent policy clear"

    .line 53
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p1, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;->this$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 58
    iget-object p1, p1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 60
    new-instance p2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$$ExternalSyntheticLambda0;

    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-direct {p2, v0, p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 66
    const-wide/16 v0, 0x3c

    .line 68
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 70
    invoke-interface {p1, p2, v0, v1, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const-string/jumbo p1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 87
    iget-object p1, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;->this$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 89
    iget-object p1, p1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 91
    new-instance p2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$$ExternalSyntheticLambda0;

    .line 93
    const/4 v0, 0x2

    .line 94
    invoke-direct {p2, v0, p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 97
    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 100
    :cond_2
    :goto_0
    return-void
.end method
