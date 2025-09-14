.class public final synthetic Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDexoptDone(Lcom/android/server/art/model/DexoptResult;)V
    .locals 9

    .line 1
    iget p0, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "bg-dexopt"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x4

    .line 17
    const/16 v1, 0x1e

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz p0, :cond_5

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    move v3, v2

    .line 31
    move v4, v3

    .line 32
    move v5, v4

    .line 33
    move v6, v5

    .line 34
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eqz v7, :cond_4

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    check-cast v7, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 45
    .line 46
    invoke-virtual {v7}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getStatus()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    const/16 v8, 0xa

    .line 51
    .line 52
    if-eq v7, v8, :cond_3

    .line 53
    .line 54
    const/16 v8, 0x14

    .line 55
    .line 56
    if-eq v7, v8, :cond_2

    .line 57
    .line 58
    if-eq v7, v1, :cond_1

    .line 59
    .line 60
    const/16 v8, 0x28

    .line 61
    .line 62
    if-eq v7, v8, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const-string p0, "bg-dexopt dexopted: "

    .line 78
    .line 79
    const-string v7, ", skipped: "

    .line 80
    .line 81
    const-string v8, ", failed: "

    .line 82
    .line 83
    invoke-static {v3, v4, p0, v7, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v3, ", cancelled: "

    .line 91
    .line 92
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const-string v3, "install"

    .line 110
    .line 111
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-eqz p0, :cond_6

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-ne p0, v1, :cond_6

    .line 122
    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v1, "[INSTALL] Dexopt for "

    .line 126
    .line 127
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string p1, " failed"

    .line 148
    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    return-void

    .line 160
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    const/16 p1, 0x1e

    .line 165
    .line 166
    if-ne p0, p1, :cond_9

    .line 167
    .line 168
    const-string p0, "PackageManager"

    .line 169
    .line 170
    const-string p1, "Call saveDexOptLog"

    .line 171
    .line 172
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    const-string/jumbo p1, "rm /data/log/dexoptfail_log"

    .line 176
    .line 177
    .line 178
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    .line 189
    .line 190
    :goto_1
    const-string p1, "logcat -v raw -b main,system -t 3000 -f /data/log/dexoptfail_log"

    .line 191
    .line 192
    const/4 v0, 0x0

    .line 193
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .line 203
    .line 204
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :catchall_0
    move-exception p0

    .line 209
    goto :goto_4

    .line 210
    :catch_1
    move-exception p1

    .line 211
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    .line 213
    .line 214
    if-eqz v0, :cond_7

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :catch_2
    :cond_7
    :goto_3
    const-string p1, "End saveDexOptLog"

    .line 218
    .line 219
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :goto_4
    if-eqz v0, :cond_8

    .line 224
    .line 225
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 226
    .line 227
    .line 228
    :catch_3
    :cond_8
    throw p0

    .line 229
    :cond_9
    :goto_5
    return-void

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
