.class public final Lcom/android/server/HermesService;
.super Lcom/samsung/android/service/HermesService/IHermesService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final halAdapter:Lcom/android/server/HermesHalAdapter;

.field public final mContext:Landroid/content/Context;

.field public final mReceiver:Lcom/android/server/HermesService$3;


# direct methods
.method public static -$$Nest$mreportToDiagmon(Lcom/android/server/HermesService;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "1"

    .line 5
    .line 6
    const-string/jumbo v1, "hgi9mdaexj"

    .line 7
    .line 8
    .line 9
    const-string v2, "/data/log/sepunion/hermes/parsed_skeymast.txt"

    .line 10
    .line 11
    new-instance v3, Landroid/content/Intent;

    .line 12
    .line 13
    const-string/jumbo v4, "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/16 v4, 0x20

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    :try_start_0
    new-instance v5, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    const-wide/16 v7, 0x0

    .line 40
    .line 41
    cmp-long v5, v5, v7

    .line 42
    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    new-instance v5, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v6, Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v7, Landroid/os/Bundle;

    .line 56
    .line 57
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v8, Landroid/os/Bundle;

    .line 61
    .line 62
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v9, Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v10, "DiagMon"

    .line 71
    .line 72
    invoke-virtual {v5, v10, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 73
    .line 74
    .line 75
    const-string v10, "CFailLogUpload"

    .line 76
    .line 77
    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 78
    .line 79
    .line 80
    const-string v6, "ServiceID"

    .line 81
    .line 82
    invoke-virtual {v7, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v6, "Ext"

    .line 86
    .line 87
    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    const-string v6, "IntentOnly"

    .line 91
    .line 92
    invoke-virtual {v7, v6, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 93
    .line 94
    .line 95
    const-string v6, "ClientV"

    .line 96
    .line 97
    const-string v7, "1.0.1"

    .line 98
    .line 99
    invoke-virtual {v8, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v6, "UiMode"

    .line 103
    .line 104
    const-string v7, "0"

    .line 105
    .line 106
    invoke-virtual {v8, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v6, "ResultCode"

    .line 110
    .line 111
    const-string v7, "Device Key"

    .line 112
    .line 113
    invoke-virtual {v8, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v6, "WifiOnlyFeature"

    .line 117
    .line 118
    invoke-virtual {v8, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string v6, "EventID"

    .line 122
    .line 123
    invoke-virtual {v8, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v1, "Description"

    .line 127
    .line 128
    const-string v6, "DEVICE KEY DETECTED"

    .line 129
    .line 130
    invoke-virtual {v8, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v1, "IntentOnlyMode"

    .line 134
    .line 135
    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v0, "Agree"

    .line 139
    .line 140
    const-string v1, "D"

    .line 141
    .line 142
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v0, "LogPath"

    .line 146
    .line 147
    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v0, "ServiceName"

    .line 151
    .line 152
    const-string v1, "SAMSUNG KEYMASTER"

    .line 153
    .line 154
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string/jumbo v0, "uploadMO"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    const-string/jumbo v0, "com.sec.android.diagmonagent"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    iget-object p0, p0, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    const-string p0, "HERMES#Service"

    .line 178
    .line 179
    const-string/jumbo v0, "reportToDiagmon done"

    .line 180
    .line 181
    .line 182
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_0
    :try_start_1
    new-instance p0, Lcom/android/server/BigdataException;

    .line 187
    .line 188
    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 189
    .line 190
    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 191
    .line 192
    .line 193
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    :catch_0
    new-instance p0, Lcom/android/server/BigdataException;

    .line 195
    .line 196
    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_SEND_DIAGMON:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 197
    .line 198
    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 199
    .line 200
    .line 201
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "hermes_jni"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/HermesService$3;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/HermesService$3;-><init>(Lcom/android/server/HermesService;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    new-instance v1, Landroid/content/IntentFilter;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "android.intent.action.DATE_CHANGED"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/android/server/HermesHalAdapter;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p1, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 36
    .line 37
    iput-object v0, p1, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 38
    .line 39
    iput-object v0, p1, Lcom/android/server/HermesHalAdapter;->aidlWeaver:Landroid/hardware/weaver/IWeaver;

    .line 40
    .line 41
    iput-object v0, p1, Lcom/android/server/HermesHalAdapter;->hidlWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p1, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p1, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/server/HermesHalAdapter;->getAidlWeaverService()Landroid/hardware/weaver/IWeaver;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p1, Lcom/android/server/HermesHalAdapter;->aidlWeaver:Landroid/hardware/weaver/IWeaver;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final TransmitCollectedDataToServer()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/server/HermesService$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/HermesService$1;-><init>(Lcom/android/server/HermesService;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "Error occurs on TransmitCollectedDataToServer. Err = "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "HERMES#Service"

    .line 31
    .line 32
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getFailureCount(I)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v2, "HERMES#HalAdapter"

    .line 9
    .line 10
    const-string/jumbo v3, "getFailureCount called!."

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    new-array v3, v1, [I

    .line 17
    .line 18
    const/16 v4, -0x64

    .line 19
    .line 20
    aput v4, v3, v0

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getAidlWeaverService()Landroid/hardware/weaver/IWeaver;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iput-object v4, p0, Lcom/android/server/HermesHalAdapter;->aidlWeaver:Landroid/hardware/weaver/IWeaver;

    .line 27
    .line 28
    const v5, 0x186a0

    .line 29
    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    new-array p0, v1, [B

    .line 34
    .line 35
    aput-byte v0, p0, v0

    .line 36
    .line 37
    add-int/2addr p1, v5

    .line 38
    invoke-interface {v4, p1, p0}, Landroid/hardware/weaver/IWeaver;->read(I[B)Landroid/hardware/weaver/WeaverReadResponse;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-wide p0, p0, Landroid/hardware/weaver/WeaverReadResponse;->timeout:J

    .line 43
    .line 44
    long-to-int p0, p0

    .line 45
    aput p0, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/hardware/weaver/V1_0/IWeaver;->getService(Z)Landroid/hardware/weaver/V1_0/IWeaver;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hidlWeaver:Landroid/hardware/weaver/V1_0/IWeaver;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_1
    :try_start_2
    const-string v1, "Does not have permissions to get HIDL weaver service"

    .line 58
    .line 59
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object v1, p0, Lcom/android/server/HermesHalAdapter;->hidlWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hidlWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    const-string/jumbo v1, "supporthidlWeaver"

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    .line 75
    .line 76
    const/16 v2, 0x10

    .line 77
    .line 78
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/HermesHalAdapter;->hidlWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 89
    .line 90
    add-int/2addr p1, v5

    .line 91
    new-instance v2, Lcom/android/server/HermesHalAdapter$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    invoke-direct {v2, v3}, Lcom/android/server/HermesHalAdapter$$ExternalSyntheticLambda0;-><init>([I)V

    .line 94
    .line 95
    .line 96
    check-cast p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;

    .line 97
    .line 98
    invoke-virtual {p0, p1, v1, v2}, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V

    .line 99
    .line 100
    .line 101
    aget p0, v3, v0

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_1
    const-string/jumbo p0, "supportExtensionHal failed"

    .line 105
    .line 106
    .line 107
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    :goto_2
    aget p0, v3, v0

    .line 115
    .line 116
    :goto_3
    return p0
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final hermesCosPatchTest([B)[B
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "HERMES#HalAdapter"

    .line 7
    .line 8
    const-string/jumbo v1, "cosPatchTest called!."

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v1, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->updateCOSpatchTest([B)Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string/jumbo p0, "supportExtensionHal failed"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_1
    const/4 p0, 0x0

    .line 44
    :goto_2
    return-object p0
.end method

.method public final hermesGetSeId()[B
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "HERMES#HalAdapter"

    .line 7
    .line 8
    const-string/jumbo v1, "getSeId called!."

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v1, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    .line 23
    .line 24
    invoke-virtual {v1}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->getSeId()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string/jumbo p0, "supportExtensionHal failed"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_1
    const/4 p0, 0x0

    .line 44
    :goto_2
    return-object p0
.end method

.method public final hermesGetSecureHWInfo()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->GetSecureHWInfo()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final hermesProvisioning()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->Provisioning()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final hermesSecnvmPowerOff()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->SecnvmPowerOff()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final hermesSecnvmPowerOn()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->SecnvmPowerOn()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final hermesSecureHwPowerOff()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "HERMES#HalAdapter"

    .line 7
    .line 8
    const-string/jumbo v1, "secureHwPowerOff called!."

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v1, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    .line 23
    .line 24
    invoke-virtual {v1}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->turnOffSecureHardwarePower()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string/jumbo p0, "supportExtensionHal failed"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_1
    const/4 p0, -0x1

    .line 44
    :goto_2
    return p0
.end method

.method public final hermesSecureHwPowerOn()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "HERMES#HalAdapter"

    .line 7
    .line 8
    const-string/jumbo v1, "secureHwPowerOn called!."

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v1, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    .line 23
    .line 24
    invoke-virtual {v1}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->turnOnSecureHardwarePower()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string/jumbo p0, "supportExtensionHal failed"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_1
    const/4 p0, -0x1

    .line 44
    :goto_2
    return p0
.end method

.method public final hermesSelftest()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->Selftest()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final hermesSelftest2(Ljava/lang/String;)[B
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "HERMES#HalAdapter"

    .line 7
    .line 8
    const-string v1, "Selftest called."

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/server/HermesHalAdapter;->getSehSelftestParameter(Ljava/lang/String;)[Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p0, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 27
    .line 28
    check-cast p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->selftest([Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;)Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iget p1, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    return-object v0
.end method

.method public final hermesSendApdu([B)[B
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "HERMES#HalAdapter"

    .line 7
    .line 8
    const-string/jumbo v1, "sendApdu called!."

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v1, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->sendAPDU([B)Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string/jumbo p0, "supportExtensionHal failed"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_1
    const/4 p0, 0x0

    .line 44
    :goto_2
    return-object p0
.end method

.method public final hermesTerminateService()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->TerminateService()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final hermesUpdateApplet()[B
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "HERMES#HalAdapter"

    .line 7
    .line 8
    const-string v1, "UpdateApplet called."

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v1, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    .line 23
    .line 24
    invoke-virtual {v1}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->updateApplet()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget v1, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    return-object v0
.end method

.method public final hermesUpdateCryptoFW()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->UpdateCryptoFW()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final hermesVerifyProvisioning()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->VerifyProvisioning()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onBootPhase(I)V
    .locals 2

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "HermesService onBootPhase: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "HERMES#Service"

    .line 20
    .line 21
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/HermesService;->TransmitCollectedDataToServer()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    .line 1
    return-void
.end method
