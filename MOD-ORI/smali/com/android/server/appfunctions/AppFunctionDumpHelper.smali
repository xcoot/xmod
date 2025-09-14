.class public abstract Lcom/android/server/appfunctions/AppFunctionDumpHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static buildAppFunctionMetadataSearchSpec()Landroid/app/appsearch/SearchSpec;
    .locals 4

    .line 1
    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android"

    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterPackageNames([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "AppFunctionRuntimeMetadata"

    .line 17
    .line 18
    filled-new-array {v2}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v2, Landroid/app/appsearch/JoinSpec$Builder;

    .line 31
    .line 32
    const-string v3, "appFunctionStaticMetadataQualifiedId"

    .line 33
    .line 34
    invoke-direct {v2, v3}, Landroid/app/appsearch/JoinSpec$Builder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v3, ""

    .line 38
    .line 39
    invoke-virtual {v2, v3, v0}, Landroid/app/appsearch/JoinSpec$Builder;->setNestedSearch(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/JoinSpec$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/app/appsearch/JoinSpec$Builder;->build()Landroid/app/appsearch/JoinSpec;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v2, Landroid/app/appsearch/SearchSpec$Builder;

    .line 48
    .line 49
    invoke-direct {v2}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    .line 50
    .line 51
    .line 52
    filled-new-array {v1}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v2, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterPackageNames([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "AppFunctionStaticMetadata"

    .line 61
    .line 62
    filled-new-array {v2}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, v0}, Landroid/app/appsearch/SearchSpec$Builder;->setJoinSpec(Landroid/app/appsearch/JoinSpec;)Landroid/app/appsearch/SearchSpec$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method

.method public static dumpAppFunctionMetadata(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/SearchResult;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AppFunctionMetadata for: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string/jumbo v2, "functionId"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 30
    .line 31
    .line 32
    const-string v0, "Static Metadata:"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {p0, v0}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 48
    .line 49
    .line 50
    const-string v0, "Runtime Metadata:"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getJoinedResults()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_0

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getJoinedResults()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroid/app/appsearch/SearchResult;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p0, p1}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const-string p1, "No runtime metadata found."

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public static dumpAppFunctionsState(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V
    .locals 6

    .line 1
    const-class v0, Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/UserManager;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "Couldn\'t retrieve UserManager."

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_5

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "AppFunction state for user "

    .line 40
    .line 41
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, ":"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-class v2, Landroid/app/appsearch/AppSearchManager;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Landroid/app/appsearch/AppSearchManager;

    .line 86
    .line 87
    if-nez v1, :cond_1

    .line 88
    .line 89
    const-string v1, "Couldn\'t retrieve AppSearchManager."

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_1
    :try_start_0
    new-instance v2, Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    .line 97
    .line 98
    new-instance v3, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-direct {v2, v1, v3}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    :try_start_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->buildAppFunctionMetadataSearchSpec()Landroid/app/appsearch/SearchSpec;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v3, v2, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    .line 114
    .line 115
    new-instance v4, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda4;

    .line 116
    .line 117
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v4}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    new-instance v4, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda2;

    .line 125
    .line 126
    invoke-direct {v4, v1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda2;-><init>(Landroid/app/appsearch/SearchSpec;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v4}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v3, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda3;

    .line 134
    .line 135
    invoke-direct {v3, v2}, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/appfunctions/FutureGlobalSearchSession;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v3}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lcom/android/server/appfunctions/FutureSearchResultsImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    .line 148
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->getNextPage()Lcom/android/internal/infra/AndroidFuture;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v3}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Ljava/util/List;

    .line 157
    .line 158
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_3

    .line 167
    .line 168
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    check-cast v5, Landroid/app/appsearch/SearchResult;

    .line 173
    .line 174
    invoke-static {p1, v5}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->dumpAppFunctionMetadata(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/SearchResult;)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :catchall_0
    move-exception v3

    .line 179
    goto :goto_2

    .line 180
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    if-eqz v3, :cond_2

    .line 185
    .line 186
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    .line 188
    .line 189
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 190
    .line 191
    .line 192
    goto :goto_7

    .line 193
    :catch_0
    move-exception v1

    .line 194
    goto :goto_6

    .line 195
    :catchall_1
    move-exception v1

    .line 196
    goto :goto_4

    .line 197
    :goto_2
    if-eqz v1, :cond_4

    .line 198
    .line 199
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :catchall_2
    move-exception v1

    .line 204
    :try_start_6
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 205
    .line 206
    .line 207
    :cond_4
    :goto_3
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 208
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 209
    .line 210
    .line 211
    goto :goto_5

    .line 212
    :catchall_3
    move-exception v2

    .line 213
    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    :goto_5
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 217
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v3, "Failed to dump AppFunction state: "

    .line 220
    .line 221
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :goto_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_5
    return-void
.end method

.method public static writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/app/appsearch/GenericDocument;->getPropertyNames()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "{"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_7

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v4, "\""

    .line 37
    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, "\": ["

    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    instance-of v1, v2, [Landroid/app/appsearch/GenericDocument;

    .line 57
    .line 58
    const-string v3, ", "

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    check-cast v2, [Landroid/app/appsearch/GenericDocument;

    .line 64
    .line 65
    :goto_1
    array-length v1, v2

    .line 66
    if-ge v5, v1, :cond_6

    .line 67
    .line 68
    aget-object v1, v2, v5

    .line 69
    .line 70
    invoke-static {p0, v1}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V

    .line 71
    .line 72
    .line 73
    array-length v1, v2

    .line 74
    add-int/lit8 v1, v1, -0x1

    .line 75
    .line 76
    if-eq v5, v1, :cond_0

    .line 77
    .line 78
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    :goto_2
    if-ge v5, v1, :cond_6

    .line 92
    .line 93
    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    instance-of v7, v6, Ljava/lang/String;

    .line 98
    .line 99
    if-eqz v7, :cond_2

    .line 100
    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_2
    instance-of v7, v6, [B

    .line 121
    .line 122
    if-eqz v7, :cond_3

    .line 123
    .line 124
    check-cast v6, [B

    .line 125
    .line 126
    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_3
    if-eqz v6, :cond_4

    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    :goto_3
    add-int/lit8 v6, v1, -0x1

    .line 144
    .line 145
    if-eq v5, v6, :cond_5

    .line 146
    .line 147
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    const-string v1, "]"

    .line 154
    .line 155
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_7
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 161
    .line 162
    .line 163
    const-string/jumbo p1, "}"

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method
