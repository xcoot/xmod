.class public final synthetic Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;->this$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->scpmAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 8
    .line 9
    const-string v3, "AppFunctionAgentPolicyManager"

    .line 10
    .line 11
    const-string/jumbo v4, "loadScpmAgentPolicy start"

    .line 12
    .line 13
    .line 14
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v4, v1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mScpmToken:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    const-string/jumbo v4, "loadScpmAgentPolicy try to get new token"

    .line 26
    .line 27
    .line 28
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->registerAndGetScpmToken()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iput-object v4, v1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mScpmToken:Ljava/lang/String;

    .line 36
    .line 37
    :cond_0
    iget-object v4, v1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mScpmToken:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    const-string/jumbo p0, "loadScpmAgentPolicy fail due to token error"

    .line 46
    .line 47
    .line 48
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto/16 :goto_8

    .line 52
    .line 53
    :cond_1
    :try_start_0
    iget-object v4, v1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mScpmToken:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, p0, v4}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->getScpmParcelFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 56
    .line 57
    .line 58
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    if-nez p0, :cond_3

    .line 60
    .line 61
    :try_start_1
    const-string/jumbo v1, "loadScpmAgentPolicy pfd is null"

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    if-eqz p0, :cond_6

    .line 68
    .line 69
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    .line 71
    .line 72
    goto/16 :goto_8

    .line 73
    .line 74
    :catch_0
    move-exception p0

    .line 75
    goto/16 :goto_7

    .line 76
    .line 77
    :catchall_0
    move-exception v1

    .line 78
    goto :goto_5

    .line 79
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 80
    .line 81
    .line 82
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    :try_start_4
    new-instance v5, Ljava/io/BufferedReader;

    .line 86
    .line 87
    new-instance v6, Ljava/io/FileReader;

    .line 88
    .line 89
    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    .line 94
    .line 95
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    if-eqz v6, :cond_4

    .line 105
    .line 106
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_1
    move-exception v1

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    iget-object v6, v2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->trustedAgentList:Ljava/util/List;

    .line 113
    .line 114
    check-cast v6, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 117
    .line 118
    .line 119
    iget-object v6, v2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->normalAgentList:Ljava/util/List;

    .line 120
    .line 121
    check-cast v6, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 124
    .line 125
    .line 126
    const/4 v6, 0x0

    .line 127
    invoke-static {v4, v2, v6}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->updateAgentList(Ljava/lang/StringBuilder;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;Z)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v4}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->storeScpmPolicyToFile(Ljava/lang/StringBuilder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 131
    .line 132
    .line 133
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :catch_1
    move-exception v1

    .line 138
    goto :goto_4

    .line 139
    :goto_2
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :catchall_2
    move-exception v2

    .line 144
    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :goto_3
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 148
    :goto_4
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string/jumbo v4, "loadScpmAgentPolicy : "

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :goto_5
    if-eqz p0, :cond_5

    .line 175
    .line 176
    :try_start_a
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 177
    .line 178
    .line 179
    goto :goto_6

    .line 180
    :catchall_3
    move-exception p0

    .line 181
    :try_start_b
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    :cond_5
    :goto_6
    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 185
    :goto_7
    const-string/jumbo v1, "loadScpmAgentPolicy"

    .line 186
    .line 187
    .line 188
    invoke-static {v3, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .line 190
    .line 191
    :cond_6
    :goto_8
    iget-object p0, v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;->this$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->loadUpdatedAgentPolicy()V

    .line 194
    .line 195
    .line 196
    iget-object p0, v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;->this$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->loadAppliedAgentPolicy()V

    .line 199
    .line 200
    .line 201
    iget-object p0, v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$1;->this$0:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 202
    .line 203
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mUpdateMetadataRunnable:Ljava/lang/Runnable;

    .line 204
    .line 205
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 206
    .line 207
    .line 208
    return-void
.end method
