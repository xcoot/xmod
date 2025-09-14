.class public final Lcom/android/server/HermesService$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/HermesService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/HermesService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/HermesService$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/android/server/HermesService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/HermesHalAdapter;->getBigdataLog()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "HERMES#Service"

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v2, "ro.hardware.chipname"

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string/jumbo v3, "ro.hardware"

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v13

    .line 37
    new-instance v14, Ljava/util/StringTokenizer;

    .line 38
    .line 39
    const-string v3, "\r\n"

    .line 40
    .line 41
    invoke-direct {v14, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v3, "Full String : "

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_0
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    new-instance v0, Ljava/util/StringTokenizer;

    .line 60
    .line 61
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const-string v4, "="

    .line 66
    .line 67
    invoke-direct {v0, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    iget-object v0, p0, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    const-string v3, "HqmManagerService"

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    move-object v3, v0

    .line 99
    check-cast v3, Landroid/os/SemHqmManager;

    .line 100
    .line 101
    if-eqz v3, :cond_1

    .line 102
    .line 103
    const-string/jumbo v0, "sendToHQM data : "

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v11, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v10, ""

    .line 110
    .line 111
    const-string v12, ""

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    const-string v5, "GPU"

    .line 115
    .line 116
    const-string/jumbo v7, "ph"

    .line 117
    .line 118
    .line 119
    move-object v8, v2

    .line 120
    move-object v9, v13

    .line 121
    invoke-virtual/range {v3 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_0

    .line 126
    .line 127
    const-string/jumbo v0, "sendHWParamToHQM is failed."

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_1
    const-string v0, "HQM service is not alive, skip sending a data."

    .line 135
    .line 136
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    const-string v0, "Hermes bigdata has wrong value."

    .line 141
    .line 142
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_3
    const-string v0, "Hermes feature has wrong value."

    .line 147
    .line 148
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_4
    const-string/jumbo p0, "getBigdataLog is null, skip send bigdata."

    .line 153
    .line 154
    .line 155
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    :cond_5
    return-void

    .line 159
    :pswitch_0
    :try_start_0
    const-string/jumbo v0, "ro.soc.model"

    .line 160
    .line 161
    .line 162
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    sget-object v1, Lcom/android/server/HermesBigdataFunction;->CHECK_CHIPSET_LISTS:[Ljava/lang/String;

    .line 167
    .line 168
    const/4 v2, 0x0

    .line 169
    aget-object v1, v1, v2

    .line 170
    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->unZipDumpstate()V

    .line 178
    .line 179
    .line 180
    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->parseDumpstate()V

    .line 181
    .line 182
    .line 183
    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->cleanDumpstateFiles()V

    .line 184
    .line 185
    .line 186
    iget-object p0, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    .line 187
    .line 188
    invoke-static {p0}, Lcom/android/server/HermesService;->-$$Nest$mreportToDiagmon(Lcom/android/server/HermesService;)V
    :try_end_0
    .catch Lcom/android/server/BigdataException; {:try_start_0 .. :try_end_0} :catch_2

    .line 189
    .line 190
    .line 191
    :try_start_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 192
    .line 193
    const-wide/16 v0, 0x1

    .line 194
    .line 195
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 196
    .line 197
    .line 198
    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->cleanBigdataLogFiles()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/BigdataException; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :catch_0
    move-exception p0

    .line 203
    :try_start_2
    throw p0

    .line 204
    :catch_1
    new-instance p0, Lcom/android/server/BigdataException;

    .line 205
    .line 206
    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_INTERRUPTION_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 207
    .line 208
    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 209
    .line 210
    .line 211
    throw p0

    .line 212
    :catch_2
    move-exception p0

    .line 213
    goto :goto_1

    .line 214
    :cond_6
    new-instance p0, Lcom/android/server/BigdataException;

    .line 215
    .line 216
    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NOT_SUPPORTED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 217
    .line 218
    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 219
    .line 220
    .line 221
    throw p0
    :try_end_2
    .catch Lcom/android/server/BigdataException; {:try_start_2 .. :try_end_2} :catch_2

    .line 222
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v1, "Some problem has occured, Err = "

    .line 225
    .line 226
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/android/server/BigdataException;->getErrCode()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    const-string v1, "HERMES#Service"

    .line 241
    .line 242
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    .line 247
    .line 248
    :goto_2
    return-void

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
