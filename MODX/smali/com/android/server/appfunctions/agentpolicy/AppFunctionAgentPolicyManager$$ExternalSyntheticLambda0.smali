.class public final synthetic Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;

    .line 10
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;->this$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 12
    invoke-static {p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->-$$Nest$mtryScpmRegister(Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)V

    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;

    .line 18
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;->this$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 20
    invoke-static {p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->-$$Nest$mtryScpmRegister(Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)V

    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    const-string v0, "AppFunctionAgentPolicyManager"

    .line 31
    const-string/jumbo v1, "start agent policy loading"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v1, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v1

    .line 43
    const v2, 0x1100004

    .line 46
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 49
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .line 52
    new-instance v3, Ljava/io/InputStreamReader;

    .line 54
    const-string v4, "UTF-8"

    .line 56
    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 59
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v3

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->defaultAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 81
    const/4 v5, 0x1

    .line 82
    invoke-static {v3, v4, v5}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->updateAgentList(Ljava/lang/StringBuilder;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    if-eqz v1, :cond_2

    .line 90
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 93
    goto :goto_6

    .line 94
    :catch_0
    move-exception v1

    .line 95
    goto :goto_5

    .line 96
    :catchall_1
    move-exception v2

    .line 97
    goto :goto_3

    .line 98
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 101
    goto :goto_2

    .line 102
    :catchall_2
    move-exception v2

    .line 103
    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 106
    :goto_2
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 107
    :goto_3
    if-eqz v1, :cond_1

    .line 109
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 112
    goto :goto_4

    .line 113
    :catchall_3
    move-exception v1

    .line 114
    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 117
    :cond_1
    :goto_4
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 118
    :goto_5
    const-string/jumbo v2, "loadDefaultPolicy"

    .line 121
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    :cond_2
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->loadUpdatedAgentPolicy()V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->loadAppliedAgentPolicy()V

    .line 130
    const-string/jumbo p0, "end agent policy loading"

    .line 133
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
