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

    .line 3
    iput-object p1, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/android/server/HermesService$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    .line 8
    iget-object v0, v0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 10
    invoke-virtual {v0}, Lcom/android/server/HermesHalAdapter;->getBigdataLog()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "HERMES#Service"

    .line 16
    if-eqz v0, :cond_4

    .line 18
    iget-object p0, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const-string/jumbo v2, "ro.hardware.chipname"

    .line 26
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    const-string/jumbo v3, "ro.hardware"

    .line 33
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v13

    .line 37
    new-instance v14, Ljava/util/StringTokenizer;

    .line 39
    const-string v3, "\r\n"

    .line 41
    invoke-direct {v14, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v3, "Full String : "

    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    :goto_0
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_5

    .line 59
    new-instance v0, Ljava/util/StringTokenizer;

    .line 61
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    const-string v4, "="

    .line 67
    invoke-direct {v0, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_3

    .line 76
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_2

    .line 86
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 89
    move-result-object v11

    .line 90
    iget-object v0, p0, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    .line 92
    const-string v3, "HqmManagerService"

    .line 94
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    move-result-object v0

    .line 98
    move-object v3, v0

    .line 99
    check-cast v3, Landroid/os/SemHqmManager;

    .line 101
    if-eqz v3, :cond_1

    .line 103
    const-string/jumbo v0, "sendToHQM data : "

    .line 106
    invoke-static {v0, v11, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v10, ""

    .line 111
    const-string v12, ""

    .line 113
    const/4 v4, 0x0

    .line 114
    const-string v5, "GPU"

    .line 116
    const-string/jumbo v7, "ph"

    .line 119
    move-object v8, v2

    .line 120
    move-object v9, v13

    .line 121
    invoke-virtual/range {v3 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_0

    .line 127
    const-string/jumbo v0, "sendHWParamToHQM is failed."

    .line 130
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    goto :goto_0

    .line 134
    :cond_1
    const-string v0, "HQM service is not alive, skip sending a data."

    .line 136
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    goto :goto_0

    .line 140
    :cond_2
    const-string v0, "Hermes bigdata has wrong value."

    .line 142
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    const-string v0, "Hermes feature has wrong value."

    .line 148
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    goto :goto_0

    .line 152
    :cond_4
    const-string/jumbo p0, "getBigdataLog is null, skip send bigdata."

    .line 155
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_5
    return-void

    .line 159
    :pswitch_0
    :try_start_0
    const-string/jumbo v0, "ro.soc.model"

    .line 162
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    sget-object v1, Lcom/android/server/HermesBigdataFunction;->CHECK_CHIPSET_LISTS:[Ljava/lang/String;

    .line 168
    const/4 v2, 0x0

    .line 169
    aget-object v1, v1, v2

    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_6

    .line 177
    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->unZipDumpstate()V

    .line 180
    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->parseDumpstate()V

    .line 183
    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->cleanDumpstateFiles()V

    .line 186
    iget-object p0, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    .line 188
    invoke-static {p0}, Lcom/android/server/HermesService;->-$$Nest$mreportToDiagmon(Lcom/android/server/HermesService;)V
    :try_end_0
    .catch Lcom/android/server/BigdataException; {:try_start_0 .. :try_end_0} :catch_2

    .line 191
    :try_start_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 193
    const-wide/16 v0, 0x1

    .line 195
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 198
    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->cleanBigdataLogFiles()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/BigdataException; {:try_start_1 .. :try_end_1} :catch_0

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

    .line 206
    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_INTERRUPTION_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 208
    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

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

    .line 216
    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NOT_SUPPORTED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 218
    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 221
    throw p0
    :try_end_2
    .catch Lcom/android/server/BigdataException; {:try_start_2 .. :try_end_2} :catch_2

    .line 222
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    const-string v1, "Some problem has occured, Err = "

    .line 226
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/server/BigdataException;->getErrCode()I

    .line 232
    move-result v1

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object v0

    .line 240
    const-string v1, "HERMES#Service"

    .line 242
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    :goto_2
    return-void

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
