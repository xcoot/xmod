.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;->f$1:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;->f$1:Ljava/util/List;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Void;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Throwable;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    if-nez p2, :cond_6

    .line 11
    .line 12
    const-string p2, "Marking session "

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    .line 29
    .line 30
    iput-boolean v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 31
    .line 32
    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 33
    .line 34
    iput v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 35
    .line 36
    const-string v2, ""

    .line 37
    .line 38
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 39
    .line 40
    const-string v2, "PackageInstallerSession"

    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget p2, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 48
    .line 49
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p2, " as applied"

    .line 53
    .line 54
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageInstallerSession;->destroy(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, v0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object p2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 84
    .line 85
    iget-boolean p2, p2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 86
    .line 87
    if-eqz p2, :cond_3

    .line 88
    .line 89
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Ljava/util/concurrent/CompletableFuture;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    .line 110
    .line 111
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->session:Lcom/android/server/pm/PackageInstallerSession;

    .line 112
    .line 113
    if-eq v2, v0, :cond_2

    .line 114
    .line 115
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->extras:Landroid/os/Bundle;

    .line 116
    .line 117
    if-eqz v1, :cond_2

    .line 118
    .line 119
    const-string v2, "android.content.pm.extra.WARNINGS"

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-nez v2, :cond_2

    .line 130
    .line 131
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-eqz p2, :cond_7

    .line 144
    .line 145
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    check-cast p2, Ljava/util/concurrent/CompletableFuture;

    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    check-cast p2, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    .line 156
    .line 157
    iget-object v1, p2, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->extras:Landroid/os/Bundle;

    .line 158
    .line 159
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 160
    .line 161
    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 162
    .line 163
    if-eqz v2, :cond_5

    .line 164
    .line 165
    iget-object v2, p2, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->session:Lcom/android/server/pm/PackageInstallerSession;

    .line 166
    .line 167
    if-ne v2, v0, :cond_5

    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-nez v2, :cond_5

    .line 174
    .line 175
    if-nez v1, :cond_4

    .line 176
    .line 177
    new-instance v1, Landroid/os/Bundle;

    .line 178
    .line 179
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 180
    .line 181
    .line 182
    :cond_4
    const-string v2, "android.content.pm.extra.WARNINGS"

    .line 183
    .line 184
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 185
    .line 186
    .line 187
    :cond_5
    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->session:Lcom/android/server/pm/PackageInstallerSession;

    .line 188
    .line 189
    const-string v2, "Session installed"

    .line 190
    .line 191
    invoke-virtual {p2, v3, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    throw p0

    .line 197
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    check-cast p0, Lcom/android/server/pm/PackageManagerException;

    .line 205
    .line 206
    iget p2, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 207
    .line 208
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-static {p2, v1}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0, p2, v1}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget p2, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 220
    .line 221
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v0, p2, v1, p1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 226
    .line 227
    .line 228
    iget p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 229
    .line 230
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-virtual {v0, p1, p0}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_7
    return-void
.end method
