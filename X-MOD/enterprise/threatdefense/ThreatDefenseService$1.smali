.class public final Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;
.super Ljava/util/TimerTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    .line 3
    iget-object v1, v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    .line 5
    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    .line 9
    invoke-direct {v1}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;-><init>()V

    .line 12
    iput-object v1, v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    .line 16
    iget-object v0, v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    .line 18
    iget-object v1, v0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    .line 23
    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v2

    .line 31
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3

    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/String;

    .line 49
    sget-boolean v4, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    .line 51
    if-eqz v4, :cond_2

    .line 53
    const-string v4, "KnoxAnalyticsThread"

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v6, "KnoxAnalytics triggered pkg="

    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v5

    .line 72
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_4

    .line 78
    :cond_2
    :goto_0
    if-eqz v3, :cond_1

    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 83
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    if-nez v4, :cond_1

    .line 86
    const/4 v4, 0x0

    .line 87
    :goto_1
    const/4 v5, 0x3

    .line 88
    if-ge v4, v5, :cond_1

    .line 90
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    .line 92
    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Ljava/util/Hashtable;

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Ljava/lang/Long;

    .line 108
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 111
    move-result-wide v5

    .line 112
    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sendKnoxAnalyticsLogs(ILjava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    goto :goto_2

    .line 116
    :catch_0
    move-exception v5

    .line 117
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 120
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    .line 131
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    .line 134
    move-result v1

    .line 135
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    .line 137
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    .line 140
    move-result v3

    .line 141
    add-int/2addr v3, v1

    .line 142
    const-string v1, "ThreatDefenseService"

    .line 144
    const/4 v4, 0x1

    .line 145
    if-ge v3, v4, :cond_4

    .line 147
    sget-boolean p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    .line 149
    if-eqz p0, :cond_5

    .line 151
    const-string p0, "Skip!! No rules"

    .line 153
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    goto :goto_3

    .line 157
    :cond_4
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 160
    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 163
    const-string v0, "Send broadcast"

    .line 165
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Landroid/content/Intent;

    .line 170
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.MTDL_PACKAGE_RULES_REMOVED"

    .line 173
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    :cond_5
    :goto_3
    return-void

    .line 182
    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    throw p0
.end method
