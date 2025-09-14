.class public final Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SHIP_BUILD:Z

.field public static final USER_BUILD:Z


# instance fields
.field public final SCPM_URI_V2:Landroid/net/Uri;

.field public final appliedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

.field public final defaultAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

.field public final mAppFunctionAgentPolicyCipher:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;

.field public final mContext:Landroid/content/Context;

.field public final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mScpmPolicyUpdateReceiver:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;

.field public mScpmToken:Ljava/lang/String;

.field public final mUpdateMetadataRunnable:Ljava/lang/Runnable;

.field public final scpmAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

.field public final updatedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;


# direct methods
.method public static -$$Nest$mtryScpmRegister(Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "AppFunctionAgentPolicyManager"

    .line 6
    const-string/jumbo v1, "tryScpmRegister mScpmToken : "

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->registerAndGetScpmToken()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    iput-object v2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mScpmToken:Ljava/lang/String;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mScpmToken:Ljava/lang/String;

    .line 22
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    const-string/jumbo v1, "tryScpmRegister"

    .line 37
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "user"

    .line 4
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    sput-boolean v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->USER_BUILD:Z

    .line 12
    const-string/jumbo v0, "ro.product_ship"

    .line 15
    const-string/jumbo v1, "false"

    .line 18
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const-string/jumbo v1, "true"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    sput-boolean v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->SHIP_BUILD:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda3;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string/jumbo v0, "content://com.samsung.android.scpm.policy/"

    .line 7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->SCPM_URI_V2:Landroid/net/Uri;

    .line 13
    new-instance v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 15
    invoke-direct {v0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->defaultAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 20
    new-instance v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 22
    invoke-direct {v0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->updatedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 27
    new-instance v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 29
    invoke-direct {v0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->appliedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 34
    new-instance v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 36
    invoke-direct {v0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->scpmAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 41
    new-instance v0, Ljava/lang/Object;

    .line 43
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mLock:Ljava/lang/Object;

    .line 48
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mScpmToken:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;

    .line 53
    invoke-direct {v0, p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;-><init>(Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)V

    .line 56
    iput-object p1, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 61
    move-result-object v1

    .line 62
    iput-object v1, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 64
    iput-object p2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mUpdateMetadataRunnable:Ljava/lang/Runnable;

    .line 66
    new-instance p2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;

    .line 68
    invoke-direct {p2, p1}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object p2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mAppFunctionAgentPolicyCipher:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;

    .line 73
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    move-result-object p2

    .line 77
    iput-object p2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 79
    new-instance v1, Landroid/content/IntentFilter;

    .line 81
    const-string/jumbo v2, "com.samsung.android.scpm.policy.UPDATE.cross-app-action-agent-policy"

    .line 84
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v2, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v2, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x2

    .line 100
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 103
    new-instance p1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$$ExternalSyntheticLambda0;

    .line 105
    const/4 v0, 0x0

    .line 106
    invoke-direct {p1, v0, p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 109
    invoke-interface {p2, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public static dumpList(Landroid/util/IndentingPrintWriter;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->USER_BUILD:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-boolean v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->SHIP_BUILD:Z

    .line 7
    if-nez v0, :cond_1

    .line 9
    const-string v0, "Trusted List : "

    .line 11
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    iget-object v2, p1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->trustedAgentList:Ljava/util/List;

    .line 18
    check-cast v2, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v2

    .line 24
    const-string v3, "  - "

    .line 26
    if-ge v1, v2, :cond_0

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object v3, p1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->trustedAgentList:Ljava/util/List;

    .line 35
    check-cast v3, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/String;

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string v1, "Normal List : "

    .line 58
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 61
    :goto_1
    iget-object v1, p1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->normalAgentList:Ljava/util/List;

    .line 63
    check-cast v1, Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 68
    move-result v1

    .line 69
    if-ge v0, v1, :cond_1

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v2, p1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->normalAgentList:Ljava/util/List;

    .line 78
    check-cast v2, Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/String;

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    return-void
.end method

.method public static updateAgentList(Ljava/lang/StringBuilder;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;Z)V
    .locals 6

    .line 1
    const-string/jumbo v0, "cross_app_agent_list"

    .line 4
    const-string/jumbo v1, "cross_app_agent_trusted_list"

    .line 7
    const-string/jumbo v2, "policy_version"

    .line 10
    const-string v3, "AppFunctionAgentPolicyManager"

    .line 12
    const-string/jumbo v4, "updateAgentList : "

    .line 15
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    iput-object p0, p1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->policyVersion:Ljava/lang/String;

    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v2, p1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->policyVersion:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :cond_0
    const-string/jumbo p0, "no version element "

    .line 59
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_1

    .line 68
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 71
    move-result-object p0

    .line 72
    iget-object v1, p1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->trustedAgentList:Ljava/util/List;

    .line 74
    invoke-static {p0, v1, p2}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->updateList(Lorg/json/JSONArray;Ljava/util/List;Z)V

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const-string/jumbo p0, "no trusted agent element "

    .line 81
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_1
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_2

    .line 90
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 93
    move-result-object p0

    .line 94
    iget-object p1, p1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->normalAgentList:Ljava/util/List;

    .line 96
    invoke-static {p0, p1, p2}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->updateList(Lorg/json/JSONArray;Ljava/util/List;Z)V

    .line 99
    goto :goto_3

    .line 100
    :cond_2
    const-string/jumbo p0, "no normal agent element "

    .line 103
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_3

    .line 107
    :goto_2
    const-string/jumbo p1, "updateAgentList"

    .line 110
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :goto_3
    return-void
.end method

.method public static updateList(Lorg/json/JSONArray;Ljava/util/List;Z)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 9
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    if-eqz p2, :cond_0

    .line 15
    new-instance v3, Ljava/lang/String;

    .line 17
    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 24
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    goto :goto_2

    .line 28
    :catch_0
    move-exception v2

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_2

    .line 34
    :goto_1
    const-string v3, "AppFunctionAgentPolicyManager"

    .line 36
    const-string/jumbo v4, "updateList"

    .line 39
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6
    const-string v1, "App Function Agent Policy:"

    .line 8
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    const-string v2, "Default Version : "

    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->defaultAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 23
    iget-object v3, v2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->policyVersion:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 35
    invoke-static {p1, v2}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->dumpList(Landroid/util/IndentingPrintWriter;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;)V

    .line 38
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    const-string v2, "Updated Version : "

    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->updatedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 50
    iget-object v3, v2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->policyVersion:Ljava/lang/String;

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 62
    invoke-static {p1, v2}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->dumpList(Landroid/util/IndentingPrintWriter;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    const-string v2, "SCPM Version : "

    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->scpmAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 77
    iget-object v3, v2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->policyVersion:Ljava/lang/String;

    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 89
    invoke-static {p1, v2}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->dumpList(Landroid/util/IndentingPrintWriter;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "Applied Version : "

    .line 99
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->appliedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 104
    iget-object v1, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->policyVersion:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 116
    invoke-static {p1, p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->dumpList(Landroid/util/IndentingPrintWriter;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;)V

    .line 119
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 122
    return-void
.end method

.method public final getScpmParcelFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5

    .line 1
    const-string v0, "AppFunctionAgentPolicyManager"

    .line 3
    const-string/jumbo v1, "getScpmFileDescriptor : code="

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v3, "content://com.samsung.android.scpm.policy/"

    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v3, "/cross-app-action-agent-policy"

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    move-result-object p1

    .line 35
    const-string/jumbo v4, "r"

    .line 38
    invoke-virtual {p1, v2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_1

    .line 44
    new-instance p1, Landroid/os/Bundle;

    .line 46
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string/jumbo v4, "token"

    .line 52
    invoke-virtual {p1, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo p2, "getLastError"

    .line 58
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    move-result-object p0

    .line 64
    const-string v4, "android"

    .line 66
    invoke-virtual {p0, v2, p2, v4, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 69
    move-result-object p0

    .line 70
    if-nez p0, :cond_0

    .line 72
    const-string/jumbo p0, "getScpmFileDescriptor : bundle is null"

    .line 75
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v3

    .line 79
    :catch_0
    move-exception p0

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    const-string/jumbo p2, "rcode"

    .line 89
    const/4 v1, -0x1

    .line 90
    invoke-virtual {p0, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 93
    move-result p2

    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string p2, ", msg="

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo p2, "rmsg"

    .line 105
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 116
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    return-object v3

    .line 120
    :cond_1
    return-object p1

    .line 121
    :goto_0
    const-string/jumbo p1, "getScpmParcelFile"

    .line 124
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    return-object v3
.end method

.method public final isSystemAppOrPrivilegedApp(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "AppFunctionAgentPolicyManager"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 13
    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    .line 17
    move-result p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move p1, v1

    .line 20
    :catch_1
    const-string/jumbo p0, "isSystemAppOrPrivilegedApp package not found"

    .line 23
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    move p0, v1

    .line 27
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo v3, "isSystemAppOrPrivilegedApp isSystemApp : "

    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    const-string v3, ", isPrivilegedApp : "

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-nez p1, :cond_0

    .line 55
    if-eqz p0, :cond_1

    .line 57
    :cond_0
    const/4 v1, 0x1

    .line 58
    :cond_1
    return v1
.end method

.method public final loadAppliedAgentPolicy()V
    .locals 4

    .line 1
    const-string/jumbo v0, "loadAppliedAgentPolicy appliedAgent version : "

    .line 4
    iget-object v1, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string/jumbo v2, "unknown"

    .line 10
    iget-object v3, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->updatedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 12
    iget-object v3, v3, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->policyVersion:Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 20
    iget-object v2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->appliedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 22
    iget-object v3, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->defaultAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 24
    invoke-virtual {v2, v3}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->copyFrom(Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;)V

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->defaultAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 32
    iget-object v2, v2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->policyVersion:Ljava/lang/String;

    .line 34
    iget-object v3, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->updatedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 36
    iget-object v3, v3, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->policyVersion:Ljava/lang/String;

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 41
    move-result v2

    .line 42
    if-lez v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->appliedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 46
    iget-object v3, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->defaultAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 48
    invoke-virtual {v2, v3}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->copyFrom(Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;)V

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->appliedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 54
    iget-object v3, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->updatedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 56
    invoke-virtual {v2, v3}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->copyFrom(Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;)V

    .line 59
    :goto_0
    const-string v2, "AppFunctionAgentPolicyManager"

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->appliedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 68
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->policyVersion:Ljava/lang/String;

    .line 70
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 82
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method

.method public final loadUpdatedAgentPolicy()V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/data/system/"

    .line 5
    const-string/jumbo v2, "updated_agent_policy.json"

    .line 8
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 17
    const-string p0, "AppFunctionAgentPolicyManager"

    .line 19
    const-string/jumbo v0, "loadUpdatedAgentPolicy - no updated file"

    .line 22
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto/16 :goto_b

    .line 29
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 31
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 34
    iget-object v2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mAppFunctionAgentPolicyCipher:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    .line 41
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    :try_start_2
    invoke-virtual {v2, v3, v1}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;->decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 50
    goto :goto_2

    .line 51
    :catch_1
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 57
    goto :goto_0

    .line 58
    :catchall_1
    move-exception v2

    .line 59
    :try_start_5
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 62
    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 63
    :goto_1
    :try_start_6
    const-string v2, "AppFunctionAgentPolicyCipher"

    .line 65
    const-string/jumbo v3, "decrypt"

    .line 68
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 71
    :goto_2
    :try_start_7
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 73
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 80
    :try_start_8
    new-instance v1, Ljava/io/InputStreamReader;

    .line 82
    const-string v2, "UTF-8"

    .line 84
    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 87
    :try_start_9
    new-instance v2, Ljava/io/BufferedReader;

    .line 89
    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 92
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 100
    move-result-object v4

    .line 101
    if-eqz v4, :cond_1

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    goto :goto_3

    .line 107
    :catchall_2
    move-exception p0

    .line 108
    goto :goto_4

    .line 109
    :cond_1
    iget-object v4, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mLock:Ljava/lang/Object;

    .line 111
    monitor-enter v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 112
    :try_start_b
    iget-object v5, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->updatedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 114
    iget-object v6, v5, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->trustedAgentList:Ljava/util/List;

    .line 116
    check-cast v6, Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v5, v5, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->normalAgentList:Ljava/util/List;

    .line 123
    check-cast v5, Ljava/util/ArrayList;

    .line 125
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 128
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->updatedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 130
    const/4 v5, 0x0

    .line 131
    invoke-static {v3, p0, v5}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->updateAgentList(Ljava/lang/StringBuilder;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;Z)V

    .line 134
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 135
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 138
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 141
    :try_start_e
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 144
    goto :goto_c

    .line 145
    :catch_2
    move-exception p0

    .line 146
    goto :goto_a

    .line 147
    :catchall_3
    move-exception p0

    .line 148
    goto :goto_8

    .line 149
    :catchall_4
    move-exception p0

    .line 150
    goto :goto_6

    .line 151
    :catchall_5
    move-exception p0

    .line 152
    :try_start_f
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 153
    :try_start_10
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 154
    :goto_4
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 157
    goto :goto_5

    .line 158
    :catchall_6
    move-exception v2

    .line 159
    :try_start_12
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 162
    :goto_5
    throw p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 163
    :goto_6
    :try_start_13
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 166
    goto :goto_7

    .line 167
    :catchall_7
    move-exception v1

    .line 168
    :try_start_14
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 171
    :goto_7
    throw p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 172
    :goto_8
    :try_start_15
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 175
    goto :goto_9

    .line 176
    :catchall_8
    move-exception v0

    .line 177
    :try_start_16
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 180
    :goto_9
    throw p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2

    .line 181
    :goto_a
    :try_start_17
    const-string v0, "AppFunctionAgentPolicyManager"

    .line 183
    const-string/jumbo v1, "loadUpdatedAgentPolicy"

    .line 186
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    .line 189
    goto :goto_c

    .line 190
    :goto_b
    const-string v0, "AppFunctionAgentPolicyManager"

    .line 192
    const-string/jumbo v1, "loadUpdatedAgentPolicy"

    .line 195
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    :goto_c
    return-void
.end method

.method public final registerAndGetScpmToken()Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "android"

    .line 3
    const-string/jumbo v1, "registerAndGetScpmToken failed to register: rCode = "

    .line 6
    iget-object v2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    move-result-object v2

    .line 12
    const-string/jumbo v3, "com.samsung.android.scpm.policy"

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    const-string v4, "AppFunctionAgentPolicyManager"

    .line 23
    if-eqz v2, :cond_1

    .line 25
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    .line 27
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 30
    const-string/jumbo v5, "packageName"

    .line 33
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v5, "appId"

    .line 38
    const-string/jumbo v6, "ryyegi2x7b"

    .line 41
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v5, "version"

    .line 47
    const-string v6, "1.0.0"

    .line 49
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v5, "receiverPackageName"

    .line 55
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v5, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    move-result-object v5

    .line 64
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->SCPM_URI_V2:Landroid/net/Uri;

    .line 66
    const-string/jumbo v6, "register"

    .line 69
    invoke-virtual {v5, p0, v6, v0, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 72
    move-result-object p0

    .line 73
    if-eqz p0, :cond_2

    .line 75
    const-string/jumbo v0, "result"

    .line 78
    const/4 v2, 0x1

    .line 79
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 82
    move-result v0

    .line 83
    const-string/jumbo v5, "token"

    .line 86
    invoke-virtual {p0, v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v5

    .line 90
    const-string/jumbo v6, "rcode"

    .line 93
    const/4 v7, -0x1

    .line 94
    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 97
    move-result v6

    .line 98
    const-string/jumbo v7, "rmsg"

    .line 101
    const-string v8, ""

    .line 103
    invoke-virtual {p0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    if-ne v0, v2, :cond_0

    .line 109
    const-string/jumbo p0, "registerAndGetScpmToken success to get the token"

    .line 112
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-object v5

    .line 116
    :catch_0
    move-exception p0

    .line 117
    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", rMsg = "

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    return-object v3

    .line 142
    :goto_0
    const-string/jumbo v0, "registerAndGetScpmToken cannot register package"

    .line 145
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    goto :goto_1

    .line 149
    :cond_1
    const-string/jumbo p0, "scpm service is not available"

    .line 152
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2
    :goto_1
    return-object v3
.end method

.method public final storeScpmPolicyToFile(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    const-string v0, "/data/system/"

    .line 3
    iget-object v1, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->updatedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 5
    iget-object v2, v1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->policyVersion:Ljava/lang/String;

    .line 7
    const-string/jumbo v3, "unknown"

    .line 10
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v2

    .line 14
    const-string v3, "AppFunctionAgentPolicyManager"

    .line 16
    if-nez v2, :cond_1

    .line 18
    iget-object v2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->scpmAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 20
    iget-object v2, v2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->policyVersion:Ljava/lang/String;

    .line 22
    iget-object v1, v1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->policyVersion:Ljava/lang/String;

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 27
    move-result v1

    .line 28
    if-lez v1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string/jumbo p0, "storeScpmPolicyToFile ignore"

    .line 34
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    goto/16 :goto_8

    .line 39
    :cond_1
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    new-instance p1, Ljava/io/File;

    .line 54
    const-string/jumbo v2, "updated_agent_policy_temp.json"

    .line 57
    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mAppFunctionAgentPolicyCipher:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 65
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    .line 67
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :try_start_3
    invoke-virtual {p0, v1, v2}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;->encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    goto :goto_3

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 83
    goto :goto_1

    .line 84
    :catchall_2
    move-exception v2

    .line 85
    :try_start_6
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 88
    :goto_1
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 89
    :goto_2
    :try_start_7
    const-string v2, "AppFunctionAgentPolicyCipher"

    .line 91
    const-string/jumbo v4, "encrypt"

    .line 94
    invoke-static {v2, v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :goto_3
    new-instance p0, Ljava/io/File;

    .line 99
    const-string/jumbo v2, "updated_agent_policy.json"

    .line 102
    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_2

    .line 117
    const-string/jumbo v0, "storeScpmPolicyToFile - original file deletion failed"

    .line 120
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    goto :goto_4

    .line 124
    :catchall_3
    move-exception p0

    .line 125
    goto :goto_5

    .line 126
    :cond_2
    :goto_4
    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 129
    move-result p0

    .line 130
    if-nez p0, :cond_3

    .line 132
    const-string/jumbo p0, "storeScpmPolicyToFile - temp file rename failed"

    .line 135
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 138
    :cond_3
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 141
    goto :goto_8

    .line 142
    :catch_0
    move-exception p0

    .line 143
    goto :goto_7

    .line 144
    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 147
    goto :goto_6

    .line 148
    :catchall_4
    move-exception p1

    .line 149
    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 152
    :goto_6
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 153
    :goto_7
    const-string/jumbo p1, "storeScpmPolicyToFile"

    .line 156
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :goto_8
    return-void
.end method
