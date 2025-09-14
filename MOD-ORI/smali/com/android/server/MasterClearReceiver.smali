.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public extraCmd:Ljava/lang/String;

.field public mShowWipeProgress:Z

.field public mWipeEsims:Z

.field public mWipeExternalStorage:Z

.field public requestedTimeArg:Ljava/lang/String;


# direct methods
.method public static -$$Nest$mremoveFirstUseDate(Lcom/android/server/MasterClearReceiver;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "MasterClear"

    .line 5
    .line 6
    const-string v0, "!@[MasterClearReceiver]removeFirstUseDate)"

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "/sys/class/power_supply/sec_auth/fai_expired"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string v1, "/sys/class/power_supply/sec_auth_2nd/fai_expired"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "/sys/class/power_supply/sec_auth/first_use_date"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    const-string v2, "/sys/class/power_supply/sec_auth_2nd/first_use_date"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "/efs/FactoryApp/batt_beginning_date"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    const-string v3, "/efs/FactoryApp/batt_beginning_date_2nd"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    move v4, v3

    .line 58
    :goto_0
    const/4 v5, 0x2

    .line 59
    if-ge v4, v5, :cond_2

    .line 60
    .line 61
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    .line 62
    .line 63
    new-instance v6, Ljava/io/FileReader;

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    check-cast v7, Ljava/lang/String;

    .line 70
    .line 71
    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    .line 76
    .line 77
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v8, "!@[MasterClearReceiver]removeFirstUseDate)faiExpiredStr:"

    .line 87
    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-static {p0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    const-string v7, "0"

    .line 102
    .line 103
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :catch_0
    move-exception v5

    .line 112
    goto :goto_2

    .line 113
    :catchall_0
    move-exception v6

    .line 114
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_1
    move-exception v5

    .line 119
    :try_start_4
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    :goto_1
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 123
    :catch_1
    move-exception v5

    .line 124
    move v6, v3

    .line 125
    :goto_2
    const-string v7, "!@[MasterClearReceiver]removeFirstUseDate)read or parse Exception"

    .line 126
    .line 127
    invoke-static {p0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    :goto_3
    if-nez v6, :cond_0

    .line 134
    .line 135
    const-string v5, "!@[MasterClearReceiver]removeFirstUseDate)skip remove FirstUseDate"

    .line 136
    .line 137
    invoke-static {p0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    goto :goto_8

    .line 141
    :cond_0
    :try_start_5
    new-instance v5, Ljava/io/FileWriter;

    .line 142
    .line 143
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    check-cast v6, Ljava/lang/String;

    .line 148
    .line 149
    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 150
    .line 151
    .line 152
    :try_start_6
    const-string v6, "FF"

    .line 153
    .line 154
    invoke-virtual {v5, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    new-instance v6, Ljava/io/File;

    .line 158
    .line 159
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    check-cast v7, Ljava/lang/String;

    .line 164
    .line 165
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    if-eqz v6, :cond_1

    .line 173
    .line 174
    const-string v6, "!@[MasterClearReceiver]removeFirstUseDate)erase FirstUseDate Success"

    .line 175
    .line 176
    invoke-static {p0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :catchall_2
    move-exception v6

    .line 181
    goto :goto_5

    .line 182
    :cond_1
    :goto_4
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 183
    .line 184
    .line 185
    goto :goto_8

    .line 186
    :catch_2
    move-exception v5

    .line 187
    goto :goto_7

    .line 188
    :goto_5
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 189
    .line 190
    .line 191
    goto :goto_6

    .line 192
    :catchall_3
    move-exception v5

    .line 193
    :try_start_9
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    :goto_6
    throw v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 197
    :goto_7
    const-string v6, "!@[MasterClearReceiver]removeFirstUseDate)write Exception"

    .line 198
    .line 199
    invoke-static {p0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    .line 204
    .line 205
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_2
    return-void
.end method

.method public static -$$Nest$mremoveVZWResetDate(Lcom/android/server/MasterClearReceiver;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "/efs/sec_efs/LastResetDate.txt"

    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string p0, "MasterClear"

    .line 18
    .line 19
    const-string v1, "!@[MasterClearReceiver] removeVZWResetDate: Try to delete VZW Reset Date file"

    .line 20
    .line 21
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method public static -$$Nest$smdeleteOmrDir(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "!@[MasterClearReceiver] Delete OMR path !!! : "

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "MasterClear"

    .line 19
    .line 20
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/server/MasterClearReceiver;->deleteDir(Ljava/io/File;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const-string v0, "!@[MasterClearReceiver] Fail to delete OMR path !!! : "

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mShowWipeProgress:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "!@[MasterClearReceiver] Remove File : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "MasterClear"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    array-length v1, v0

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    if-ge v2, v1, :cond_0

    .line 39
    .line 40
    aget-object v3, v0, v2

    .line 41
    .line 42
    invoke-static {v3}, Lcom/android/server/MasterClearReceiver;->deleteDir(Ljava/io/File;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "!@[MasterClearReceiver] onReceive: intent:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "MasterClear"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string/jumbo v2, "com.google.android.c2dm.intent.RECEIVE"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const-string/jumbo v0, "from"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string/jumbo v2, "google.com"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    const-string p0, "Ignoring master clear request -- not from trusted server."

    .line 50
    .line 51
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    const-string v0, "android.intent.action.MASTER_CLEAR"

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    const-string v0, "The request uses the deprecated Intent#ACTION_MASTER_CLEAR, Intent#ACTION_FACTORY_RESET should be used instead."

    .line 68
    .line 69
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    const-string v0, "android.intent.extra.FORCE_MASTER_CLEAR"

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    const-string v2, "The request uses the deprecated Intent#EXTRA_FORCE_MASTER_CLEAR, Intent#EXTRA_FORCE_FACTORY_RESET should be used instead."

    .line 81
    .line 82
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :cond_2
    const v2, 0x1040356

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-string v3, "android.intent.action.FACTORY_RESET"

    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_3

    .line 109
    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v0, "Re-directing intent to "

    .line 113
    .line 114
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    sget-object p0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 136
    .line 137
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_3
    const-string v2, "android.intent.extra.REASON"

    .line 142
    .line 143
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    const-string v2, "android.intent.extra.SHOW_WIPE_PROGRESS"

    .line 148
    .line 149
    const/4 v3, 0x1

    .line 150
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    iput-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mShowWipeProgress:Z

    .line 155
    .line 156
    const-string/jumbo v2, "shutdown"

    .line 157
    .line 158
    .line 159
    const/4 v11, 0x0

    .line 160
    invoke-virtual {p2, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    const-string v2, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    .line 165
    .line 166
    invoke-virtual {p2, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    iput-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    .line 171
    .line 172
    const-string/jumbo v2, "com.android.internal.intent.extra.WIPE_ESIMS"

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    iput-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    .line 180
    .line 181
    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_5

    .line 186
    .line 187
    const-string v0, "android.intent.extra.FORCE_FACTORY_RESET"

    .line 188
    .line 189
    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_4

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_4
    move v9, v11

    .line 197
    goto :goto_1

    .line 198
    :cond_5
    :goto_0
    move v9, v3

    .line 199
    :goto_1
    const-string/jumbo v0, "keep_memtag_mode"

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    if-nez v7, :cond_6

    .line 207
    .line 208
    const-string p0, "!@[MasterClearReceiver] onReceive: Ignoring FACTORY_RESET request -- reason cannot be null."

    .line 209
    .line 210
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v2, "!@[MasterClearReceiver] onReceive: mShowWipeProgress: "

    .line 217
    .line 218
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mShowWipeProgress:Z

    .line 222
    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v2, "!@[MasterClearReceiver] onReceive: shutdown: "

    .line 236
    .line 237
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    const-string v0, "!@[MasterClearReceiver] onReceive: reason: "

    .line 251
    .line 252
    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string v2, "!@[MasterClearReceiver] onReceive: mWipeExternalStorage: "

    .line 262
    .line 263
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    .line 267
    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string v2, "!@[MasterClearReceiver] onReceive: mWipeEsims: "

    .line 281
    .line 282
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    .line 286
    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    const-string v2, "!@[MasterClearReceiver] onReceive: forceWipe: "

    .line 300
    .line 301
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    const-string v2, "!@[MasterClearReceiver] onReceive: keepMemtagMode: "

    .line 317
    .line 318
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    const-string v0, "EXTRA_COMMAND"

    .line 332
    .line 333
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 338
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    const-string v2, "!@[MasterClearReceiver] onReceive: extraCmd is ["

    .line 342
    .line 343
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 347
    .line 348
    const-string v3, "]"

    .line 349
    .line 350
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 354
    .line 355
    if-nez v0, :cond_7

    .line 356
    .line 357
    const-string v0, "!@[MasterClearReceiver] onReceive: extraCmd is null"

    .line 358
    .line 359
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    :cond_7
    const-string/jumbo v0, "com.android.internal.intent.extra.FDR_REQUEST_TIME"

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 370
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    const-string v2, "!@[MasterClearReceiver] onReceive: requestedTimeArg is ["

    .line 374
    .line 375
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 379
    .line 380
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 384
    .line 385
    if-nez v0, :cond_8

    .line 386
    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 388
    .line 389
    .line 390
    move-result-wide v4

    .line 391
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 392
    .line 393
    const-string/jumbo v2, "yyyy/MM/dd HH:mm:ss.SSS"

    .line 394
    .line 395
    .line 396
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    new-instance v2, Ljava/util/Date;

    .line 400
    .line 401
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 402
    .line 403
    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    const-string/jumbo v5, "requested_time="

    .line 407
    .line 408
    .line 409
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 424
    .line 425
    :cond_8
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 426
    .line 427
    if-eqz v0, :cond_a

    .line 428
    .line 429
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 430
    .line 431
    if-eqz v2, :cond_9

    .line 432
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .line 437
    .line 438
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 439
    .line 440
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v2, "\n--"

    .line 444
    .line 445
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 449
    .line 450
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 458
    .line 459
    goto :goto_2

    .line 460
    :cond_9
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 461
    .line 462
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    const-string v2, "!@[MasterClearReceiver] onReceive: requested time is added to extraCmd, extraCmd is ["

    .line 465
    .line 466
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 470
    .line 471
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    :cond_a
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    if-eqz v0, :cond_c

    .line 479
    .line 480
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    if-nez v2, :cond_c

    .line 485
    .line 486
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 487
    .line 488
    .line 489
    move-result-object p2

    .line 490
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object p2

    .line 494
    const-string v2, "ACTION_FACTORY_RESET received on a non-system user %d, WIPING THE USER!!"

    .line 495
    .line 496
    invoke-static {v1, v2, p2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    new-instance p2, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;

    .line 500
    .line 501
    invoke-direct {p2, p0, p1, v0, v7}, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;ILjava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object p0

    .line 508
    check-cast p0, Ljava/lang/Boolean;

    .line 509
    .line 510
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 511
    .line 512
    .line 513
    move-result p0

    .line 514
    if-nez p0, :cond_b

    .line 515
    .line 516
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 517
    .line 518
    .line 519
    move-result-object p0

    .line 520
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object p0

    .line 524
    const-string p1, "Failed to wipe user %d"

    .line 525
    .line 526
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    :cond_b
    return-void

    .line 530
    :cond_c
    const-string v0, "!@[MasterClearReceiver] onReceive: !!! FACTORY RESET !!!"

    .line 531
    .line 532
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    new-instance v0, Lcom/android/server/MasterClearReceiver$1;

    .line 536
    .line 537
    move-object v3, v0

    .line 538
    move-object v4, p0

    .line 539
    move-object v5, p2

    .line 540
    move-object v6, p1

    .line 541
    invoke-direct/range {v3 .. v10}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;ZZZ)V

    .line 542
    .line 543
    .line 544
    iget-boolean p2, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    .line 545
    .line 546
    if-eqz p2, :cond_d

    .line 547
    .line 548
    const-string p2, "Wiping external storage on async task"

    .line 549
    .line 550
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    new-instance p2, Lcom/android/server/MasterClearReceiver$WipeDataTask;

    .line 554
    .line 555
    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/MasterClearReceiver$WipeDataTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Lcom/android/server/MasterClearReceiver$1;)V

    .line 556
    .line 557
    .line 558
    new-array p0, v11, [Ljava/lang/Void;

    .line 559
    .line 560
    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 561
    .line 562
    .line 563
    goto :goto_3

    .line 564
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    .line 565
    .line 566
    const-string p1, "NOT wiping external storage; starting thread "

    .line 567
    .line 568
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object p1

    .line 575
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object p0

    .line 582
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .line 584
    .line 585
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 586
    .line 587
    .line 588
    :goto_3
    return-void
.end method
