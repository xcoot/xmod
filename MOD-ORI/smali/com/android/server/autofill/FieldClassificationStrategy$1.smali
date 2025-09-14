.class public final Lcom/android/server/autofill/FieldClassificationStrategy$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/FieldClassificationStrategy;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/FieldClassificationStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "FieldClassificationStrategy"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "onBindingDied(): "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter p1

    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    .line 34
    .line 35
    monitor-exit p1

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "FieldClassificationStrategy"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "onNullBinding(): "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter p1

    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    .line 34
    .line 35
    monitor-exit p1

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 13

    .line 1
    const-string/jumbo v0, "running "

    .line 2
    .line 3
    .line 4
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "FieldClassificationStrategy"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v3, "onServiceConnected(): "

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 34
    .line 35
    invoke-static {p2}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutofillFieldClassificationService;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iput-object p2, v2, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    const-string v2, "FieldClassificationStrategy"

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, " queued commands"

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto/16 :goto_6

    .line 80
    .line 81
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 82
    :goto_1
    if-ge v0, p2, :cond_3

    .line 83
    .line 84
    iget-object v2, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 85
    .line 86
    iget-object v2, v2, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    :try_start_1
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 95
    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    const-string v3, "FieldClassificationStrategy"

    .line 99
    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string/jumbo v5, "running queued command #"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :catch_0
    move-exception v2

    .line 123
    goto :goto_3

    .line 124
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 125
    .line 126
    iget-object v4, v3, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    .line 127
    .line 128
    iget-object v5, v2, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;->f$0:Landroid/os/RemoteCallback;

    .line 129
    .line 130
    iget-object v6, v2, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 131
    .line 132
    iget-object v10, v2, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    .line 133
    .line 134
    iget-object v11, v2, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;->f$6:Landroid/util/ArrayMap;

    .line 135
    .line 136
    iget-object v12, v2, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;->f$7:Landroid/util/ArrayMap;

    .line 137
    .line 138
    iget-object v7, v2, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    .line 139
    .line 140
    iget-object v8, v2, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;->f$3:[Ljava/lang/String;

    .line 141
    .line 142
    iget-object v9, v2, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 143
    .line 144
    invoke-interface/range {v4 .. v12}, Landroid/service/autofill/IAutofillFieldClassificationService;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :goto_3
    :try_start_2
    const-string v3, "FieldClassificationStrategy"

    .line 149
    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string/jumbo v5, "exception calling "

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v5, ": "

    .line 165
    .line 166
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_3
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 183
    .line 184
    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_4
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 189
    .line 190
    if-eqz p0, :cond_5

    .line 191
    .line 192
    const-string p0, "FieldClassificationStrategy"

    .line 193
    .line 194
    const-string/jumbo p1, "no queued commands"

    .line 195
    .line 196
    .line 197
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    :cond_5
    :goto_5
    monitor-exit v1

    .line 201
    return-void

    .line 202
    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "FieldClassificationStrategy"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "onServiceDisconnected(): "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter p1

    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy$1;->this$0:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    .line 34
    .line 35
    monitor-exit p1

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method
