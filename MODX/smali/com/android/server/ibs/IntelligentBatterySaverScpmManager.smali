.class public final Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;


# instance fields
.field public final SCPM_URI_V2:Landroid/net/Uri;

.field public final mContext:Landroid/content/Context;

.field public mPolicyControlSwitch:I

.field public mPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string/jumbo v0, "content://com.samsung.android.scpm.policy/"

    .line 7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->SCPM_URI_V2:Landroid/net/Uri;

    .line 13
    const/4 v0, 0x3

    .line 14
    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    .line 16
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;-><init>(Landroid/content/Context;)V

    .line 13
    sput-object v1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p0
.end method


# virtual methods
.method public final parseData(Landroid/os/ParcelFileDescriptor;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "google_app_policy"

    .line 4
    const-string/jumbo v1, "fast_drain_policy"

    .line 7
    const-string v2, "IntelligentBatterySaverScpmManager"

    .line 9
    const-string/jumbo v3, "parseData"

    .line 12
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const/4 v3, 0x0

    .line 16
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    .line 18
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 25
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    .line 27
    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 38
    move-result-object v5

    .line 39
    if-eqz v5, :cond_0

    .line 41
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    move-object v3, p1

    .line 47
    goto/16 :goto_7

    .line 49
    :catch_0
    move-exception p0

    .line 50
    move-object v3, p1

    .line 51
    goto :goto_4

    .line 52
    :cond_0
    new-instance v5, Lorg/json/JSONTokener;

    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    invoke-direct {v5, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v3, Lorg/json/JSONObject;

    .line 63
    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 66
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 69
    move-result v5

    .line 70
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 73
    move-result v3

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    const-string/jumbo v7, "mFastDrainPolicy = "

    .line 82
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    const-string v7, ", mGoogleAppPolicy = "

    .line 90
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v6

    .line 100
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v6, 0x0

    .line 104
    const/4 v7, 0x1

    .line 105
    if-eqz v5, :cond_1

    .line 107
    invoke-virtual {p0, v7, v1}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->saveScpmFeatures(ILjava/lang/String;)V

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {p0, v6, v1}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->saveScpmFeatures(ILjava/lang/String;)V

    .line 114
    :goto_1
    if-eqz v3, :cond_2

    .line 116
    invoke-virtual {p0, v7, v0}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->saveScpmFeatures(ILjava/lang/String;)V

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    invoke-virtual {p0, v6, v0}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->saveScpmFeatures(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 126
    goto :goto_3

    .line 127
    :catch_1
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 134
    goto :goto_6

    .line 135
    :catch_2
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    goto :goto_6

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    goto :goto_7

    .line 142
    :catch_3
    move-exception p0

    .line 143
    goto :goto_4

    .line 144
    :catchall_2
    move-exception p0

    .line 145
    move-object v4, v3

    .line 146
    goto :goto_7

    .line 147
    :catch_4
    move-exception p0

    .line 148
    move-object v4, v3

    .line 149
    :goto_4
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const-string v0, "Unknown exception : "

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object p0

    .line 170
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 173
    if-eqz v3, :cond_3

    .line 175
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 178
    goto :goto_5

    .line 179
    :catch_5
    move-exception p0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    :cond_3
    :goto_5
    if-eqz v4, :cond_4

    .line 185
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 188
    :cond_4
    :goto_6
    return-void

    .line 189
    :goto_7
    if-eqz v3, :cond_5

    .line 191
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 194
    goto :goto_8

    .line 195
    :catch_6
    move-exception p1

    .line 196
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    :cond_5
    :goto_8
    if-eqz v4, :cond_6

    .line 201
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 204
    goto :goto_9

    .line 205
    :catch_7
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    :cond_6
    :goto_9
    throw p0
.end method

.method public final registerScpm()V
    .locals 10

    .line 1
    const-string v0, "android"

    .line 3
    const-string/jumbo v1, "failed to register: rcode = "

    .line 6
    const-string v2, "IntelligentBatterySaverScpmManager"

    .line 8
    const-string/jumbo v3, "registerScpm"

    .line 11
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    move-result-object v3

    .line 20
    const-string/jumbo v4, "com.samsung.android.scpm.policy"

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_1

    .line 30
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    .line 32
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string/jumbo v4, "packageName"

    .line 38
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v4, "appId"

    .line 43
    const-string/jumbo v6, "r8namobmbc"

    .line 46
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v4, "version"

    .line 52
    const-string v6, "1.0.0"

    .line 54
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v4, "receiverPackageName"

    .line 60
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    move-result-object v4

    .line 69
    iget-object v6, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->SCPM_URI_V2:Landroid/net/Uri;

    .line 71
    const-string/jumbo v7, "register"

    .line 74
    invoke-virtual {v4, v6, v7, v0, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    .line 80
    const-string/jumbo v3, "result"

    .line 83
    const/4 v4, 0x1

    .line 84
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 87
    move-result v3

    .line 88
    const-string/jumbo v6, "token"

    .line 91
    const/4 v7, 0x0

    .line 92
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object v6

    .line 96
    const-string/jumbo v7, "rcode"

    .line 99
    const/4 v8, -0x1

    .line 100
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 103
    move-result v7

    .line 104
    const-string/jumbo v8, "rmsg"

    .line 107
    const-string v9, ""

    .line 109
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    if-ne v3, v4, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    .line 117
    const-string/jumbo v1, "ibs_prefs"

    .line 120
    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPref:Landroid/content/SharedPreferences;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 129
    move-result-object p0

    .line 130
    const-string v0, "SCPMToken"

    .line 132
    invoke-interface {p0, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    goto :goto_0

    .line 139
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ", rmsg = "

    .line 149
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object p0

    .line 159
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_0

    .line 163
    :catch_0
    move-exception p0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    const-string/jumbo v1, "cannot register package : "

    .line 169
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-static {p0, v0, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 175
    :cond_1
    :goto_0
    return-void
.end method

.method public final saveScpmFeatures(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v1, "ibs_prefs"

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPref:Landroid/content/SharedPreferences;

    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    return-void
.end method
