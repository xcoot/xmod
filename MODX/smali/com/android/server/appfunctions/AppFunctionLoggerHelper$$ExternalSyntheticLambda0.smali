.class public final synthetic Lcom/android/server/appfunctions/AppFunctionLoggerHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

.field public final synthetic f$1:Landroid/app/appfunctions/AppFunctionExecutionRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/AppFunctionLoggerHelper;Landroid/app/appfunctions/AppFunctionExecutionRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    .line 6
    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper$$ExternalSyntheticLambda0;->f$1:Landroid/app/appfunctions/AppFunctionExecutionRecord;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    .line 3
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper$$ExternalSyntheticLambda0;->f$1:Landroid/app/appfunctions/AppFunctionExecutionRecord;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v1, "AppFunctionLoggerHelper"

    .line 10
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    .line 12
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 15
    const-string/jumbo v3, "tracking_id"

    .line 18
    const-string v4, "4AD-399-995651"

    .line 20
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string/jumbo v3, "feature"

    .line 26
    const-string v4, "CRRA001"

    .line 28
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string/jumbo v3, "type"

    .line 34
    const-string/jumbo v4, "ev"

    .line 37
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v3, "pkg_name"

    .line 43
    const-string/jumbo v4, "com.android.server.appfunctions"

    .line 46
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->getDimensionMap(Landroid/app/appfunctions/AppFunctionExecutionRecord;)Ljava/util/HashMap;

    .line 52
    move-result-object p0

    .line 53
    sget-boolean v3, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->USER_BUILD:Z

    .line 55
    if-nez v3, :cond_1

    .line 57
    sget-boolean v3, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->SHIP_BUILD:Z

    .line 59
    if-nez v3, :cond_1

    .line 61
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 64
    move-result-object v3

    .line 65
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object v3

    .line 69
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const-string v5, " : "

    .line 75
    if-eqz v4, :cond_0

    .line 77
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/String;

    .line 83
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    move-result-object v6

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    const-string/jumbo v8, "sendSamsungAnalyticsLog key :"

    .line 95
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v4

    .line 111
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception p0

    .line 116
    goto :goto_2

    .line 117
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 120
    move-result-object v3

    .line 121
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 124
    move-result-object v3

    .line 125
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_1

    .line 131
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 140
    move-result-object v6

    .line 141
    check-cast v6, Ljava/lang/String;

    .line 143
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Ljava/lang/String;

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const-string/jumbo v8, "sendSamsungAnalyticsLog dimension key :"

    .line 157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v4

    .line 173
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    goto :goto_1

    .line 177
    :cond_1
    const-string/jumbo v3, "dimension"

    .line 180
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 183
    new-instance p0, Landroid/content/Intent;

    .line 185
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 188
    const-string/jumbo v3, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    .line 191
    invoke-virtual {p0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string/jumbo v3, "com.sec.android.diagmonagent"

    .line 197
    invoke-virtual {p0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 203
    iget-object v0, v0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mContext:Landroid/content/Context;

    .line 205
    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    goto :goto_3

    .line 209
    :goto_2
    const-string/jumbo v0, "sendSamsungAnalyticsLog"

    .line 212
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    :goto_3
    return-void
.end method
