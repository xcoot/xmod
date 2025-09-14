.class public final Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLoadSuccess:Z

.field public final mSpecMap:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->this$0:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    .line 13
    const-string v1, "Failed to close /system/heimdallddata/spec.txt"

    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    .line 22
    const-string v4, "/system/heimdallddata/spec.txt"

    .line 24
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 26
    invoke-direct {v3, v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 29
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    .line 31
    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    move-result v2

    .line 42
    iput v2, p1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecVersion:I

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_4

    .line 50
    const-string v5, ","

    .line 52
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    array-length v5, v2

    .line 57
    const/4 v6, 0x7

    .line 58
    if-lt v5, v6, :cond_0

    .line 60
    aget-object v5, v2, v0

    .line 62
    new-instance v6, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    .line 64
    invoke-direct {v6, p1, v2}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;-><init>(Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;[Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    .line 69
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Ljava/util/List;

    .line 75
    if-nez v2, :cond_1

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    .line 79
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v6, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    .line 87
    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    move-object v2, v4

    .line 93
    goto/16 :goto_4

    .line 95
    :catch_0
    move-exception p1

    .line 96
    move-object v2, v4

    .line 97
    goto :goto_2

    .line 98
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object v5

    .line 102
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_3

    .line 108
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    .line 114
    iget-object v7, v7, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->procName:Ljava/lang/String;

    .line 116
    iget-object v8, v6, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->procName:Ljava/lang/String;

    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_2

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    const-string v2, "Failed to read spec, process name duplicated: "

    .line 131
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v2, v6, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->procName:Ljava/lang/String;

    .line 136
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 149
    :goto_1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 152
    goto :goto_3

    .line 153
    :catch_1
    invoke-static {v1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 156
    goto :goto_3

    .line 157
    :cond_3
    :try_start_4
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    goto :goto_0

    .line 161
    :cond_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 164
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 167
    const/4 v0, 0x1

    .line 168
    goto :goto_3

    .line 169
    :catchall_1
    move-exception p0

    .line 170
    goto :goto_4

    .line 171
    :catch_2
    move-exception p1

    .line 172
    goto :goto_2

    .line 173
    :catchall_2
    move-exception p0

    .line 174
    move-object v3, v2

    .line 175
    goto :goto_4

    .line 176
    :catch_3
    move-exception p1

    .line 177
    move-object v3, v2

    .line 178
    :goto_2
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    const-string v5, "Failed to read spec from /system/heimdallddata/spec.txt, exception: "

    .line 185
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object p1

    .line 199
    invoke-static {p1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 202
    if-eqz v2, :cond_5

    .line 204
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 207
    :cond_5
    if-eqz v3, :cond_6

    .line 209
    goto :goto_1

    .line 210
    :cond_6
    :goto_3
    iput-boolean v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mLoadSuccess:Z

    .line 212
    return-void

    .line 213
    :goto_4
    if-eqz v2, :cond_7

    .line 215
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 218
    :cond_7
    if-eqz v3, :cond_8

    .line 220
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 223
    goto :goto_5

    .line 224
    :catch_4
    invoke-static {v1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 227
    :cond_8
    :goto_5
    throw p0
.end method


# virtual methods
.method public final getAlwaysRunningSpecKb(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->this$0:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 3
    iget v0, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mAlwaysRunningGlobalQuotaSpec:I

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    .line 7
    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/util/List;

    .line 15
    if-eqz p0, :cond_2

    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 21
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    .line 33
    iget-object v2, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->procName:Ljava/lang/String;

    .line 35
    iget-object v3, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 43
    iget-boolean p0, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreAlwaysRunningSpecKill:Z

    .line 45
    if-eqz p0, :cond_1

    .line 47
    const/4 v0, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget v0, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->alwaysRunningSpecSize:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public final getSpecKb(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->this$0:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 8
    const-string/jumbo v1, "com.sec.android"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 17
    iget-object v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 19
    const-string/jumbo v1, "com.samsung.android"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const v0, 0x7fffffff

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/high16 v0, 0x40000

    .line 35
    :goto_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    .line 37
    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/util/List;

    .line 45
    if-eqz p0, :cond_4

    .line 47
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p0

    .line 51
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_4

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    .line 63
    iget-object v2, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->procName:Ljava/lang/String;

    .line 65
    iget-object v3, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 73
    iget-boolean p0, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreSpecKill:Z

    .line 75
    if-eqz p0, :cond_3

    .line 77
    const/4 v0, 0x0

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    iget v0, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->specSize:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :catch_0
    :cond_4
    :goto_2
    return v0
.end method
