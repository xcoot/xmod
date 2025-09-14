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

    .line 4
    const-string p0, "MasterClear"

    .line 6
    const-string v0, "!@[MasterClearReceiver]removeFirstUseDate)"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    const-string v1, "/sys/class/power_supply/sec_auth/fai_expired"

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v1, "/sys/class/power_supply/sec_auth_2nd/fai_expired"

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    const-string v2, "/sys/class/power_supply/sec_auth/first_use_date"

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v2, "/sys/class/power_supply/sec_auth_2nd/first_use_date"

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    const-string v3, "/efs/FactoryApp/batt_beginning_date"

    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v3, "/efs/FactoryApp/batt_beginning_date_2nd"

    .line 53
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const/4 v3, 0x0

    .line 57
    move v4, v3

    .line 58
    :goto_0
    const/4 v5, 0x2

    .line 59
    if-ge v4, v5, :cond_2

    .line 61
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    .line 63
    new-instance v6, Ljava/io/FileReader;

    .line 65
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v7

    .line 69
    check-cast v7, Ljava/lang/String;

    .line 71
    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 80
    move-result-object v6

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    const-string v8, "!@[MasterClearReceiver]removeFirstUseDate)faiExpiredStr:"

    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v7

    .line 98
    invoke-static {p0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v7, "0"

    .line 103
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

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

    .line 117
    goto :goto_1

    .line 118
    :catchall_1
    move-exception v5

    .line 119
    :try_start_4
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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

    .line 127
    invoke-static {p0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    :goto_3
    if-nez v6, :cond_0

    .line 135
    const-string v5, "!@[MasterClearReceiver]removeFirstUseDate)skip remove FirstUseDate"

    .line 137
    invoke-static {p0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    goto :goto_8

    .line 141
    :cond_0
    :try_start_5
    new-instance v5, Ljava/io/FileWriter;

    .line 143
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    move-result-object v6

    .line 147
    check-cast v6, Ljava/lang/String;

    .line 149
    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 152
    :try_start_6
    const-string v6, "FF"

    .line 154
    invoke-virtual {v5, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 157
    new-instance v6, Ljava/io/File;

    .line 159
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    move-result-object v7

    .line 163
    check-cast v7, Ljava/lang/String;

    .line 165
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 171
    move-result v6

    .line 172
    if-eqz v6, :cond_1

    .line 174
    const-string v6, "!@[MasterClearReceiver]removeFirstUseDate)erase FirstUseDate Success"

    .line 176
    invoke-static {p0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

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

    .line 191
    goto :goto_6

    .line 192
    :catchall_3
    move-exception v5

    .line 193
    :try_start_9
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 196
    :goto_6
    throw v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 197
    :goto_7
    const-string v6, "!@[MasterClearReceiver]removeFirstUseDate)write Exception"

    .line 199
    invoke-static {p0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 207
    goto/16 :goto_0

    .line 209
    :cond_2
    return-void
.end method

.method public static -$$Nest$mremoveVZWResetDate(Lcom/android/server/MasterClearReceiver;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string p0, "/efs/sec_efs/LastResetDate.txt"

    .line 6
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 8
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 17
    const-string p0, "MasterClear"

    .line 19
    const-string v1, "!@[MasterClearReceiver] removeVZWResetDate: Try to delete VZW Reset Date file"

    .line 21
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method public static -$$Nest$smdeleteOmrDir(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    const-string v1, "!@[MasterClearReceiver] Delete OMR path !!! : "

    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    const-string v2, "MasterClear"

    .line 20
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {v0}, Lcom/android/server/MasterClearReceiver;->deleteDir(Ljava/io/File;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 29
    const-string v0, "!@[MasterClearReceiver] Fail to delete OMR path !!! : "

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mShowWipeProgress:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "!@[MasterClearReceiver] Remove File : "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "MasterClear"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 35
    move-result-object v0

    .line 36
    array-length v1, v0

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    if-ge v2, v1, :cond_0

    .line 40
    aget-object v3, v0, v2

    .line 42
    invoke-static {v3}, Lcom/android/server/MasterClearReceiver;->deleteDir(Ljava/io/File;)Z

    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

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

    .line 3
    const-string v1, "!@[MasterClearReceiver] onReceive: intent:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "MasterClear"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string/jumbo v2, "com.google.android.c2dm.intent.RECEIVE"

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 33
    const-string/jumbo v0, "from"

    .line 36
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const-string/jumbo v2, "google.com"

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 49
    const-string p0, "Ignoring master clear request -- not from trusted server."

    .line 51
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 55
    :cond_0
    const-string v0, "android.intent.action.MASTER_CLEAR"

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 67
    const-string v0, "The request uses the deprecated Intent#ACTION_MASTER_CLEAR, Intent#ACTION_FACTORY_RESET should be used instead."

    .line 69
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    const-string v0, "android.intent.extra.FORCE_MASTER_CLEAR"

    .line 74
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 80
    const-string v2, "The request uses the deprecated Intent#EXTRA_FORCE_MASTER_CLEAR, Intent#EXTRA_FORCE_FACTORY_RESET should be used instead."

    .line 82
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_2
    const v2, 0x1040356

    .line 88
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v2

    .line 92
    const-string v3, "android.intent.action.FACTORY_RESET"

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_3

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_3

    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    .line 112
    const-string v0, "Re-directing intent to "

    .line 114
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    move-result-object p0

    .line 131
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 135
    sget-object p0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 137
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 140
    return-void

    .line 141
    :cond_3
    const-string v2, "android.intent.extra.REASON"

    .line 143
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object v7

    .line 147
    const-string v2, "android.intent.extra.SHOW_WIPE_PROGRESS"

    .line 149
    const/4 v3, 0x1

    .line 150
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 153
    move-result v2

    .line 154
    iput-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mShowWipeProgress:Z

    .line 156
    const-string/jumbo v2, "shutdown"

    .line 159
    const/4 v11, 0x0

    .line 160
    invoke-virtual {p2, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 163
    move-result v8

    .line 164
    const-string v2, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    .line 166
    invoke-virtual {p2, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 169
    move-result v2

    .line 170
    iput-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    .line 172
    const-string/jumbo v2, "com.android.internal.intent.extra.WIPE_ESIMS"

    .line 175
    invoke-virtual {p2, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 178
    move-result v2

    .line 179
    iput-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    .line 181
    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_5

    .line 187
    const-string v0, "android.intent.extra.FORCE_FACTORY_RESET"

    .line 189
    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_4

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

    .line 202
    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 205
    move-result v10

    .line 206
    if-nez v7, :cond_6

    .line 208
    const-string p0, "!@[MasterClearReceiver] onReceive: Ignoring FACTORY_RESET request -- reason cannot be null."

    .line 210
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 214
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 216
    const-string v2, "!@[MasterClearReceiver] onReceive: mShowWipeProgress: "

    .line 218
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    iget-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mShowWipeProgress:Z

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    .line 235
    const-string v2, "!@[MasterClearReceiver] onReceive: shutdown: "

    .line 237
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v0

    .line 247
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v0, "!@[MasterClearReceiver] onReceive: reason: "

    .line 252
    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    move-result-object v0

    .line 256
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    .line 261
    const-string v2, "!@[MasterClearReceiver] onReceive: mWipeExternalStorage: "

    .line 263
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    iget-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object v0

    .line 275
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    .line 280
    const-string v2, "!@[MasterClearReceiver] onReceive: mWipeEsims: "

    .line 282
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    iget-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object v0

    .line 294
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    .line 299
    const-string v2, "!@[MasterClearReceiver] onReceive: forceWipe: "

    .line 301
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    move-result-object v0

    .line 311
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    .line 316
    const-string v2, "!@[MasterClearReceiver] onReceive: keepMemtagMode: "

    .line 318
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    move-result-object v0

    .line 328
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v0, "EXTRA_COMMAND"

    .line 333
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    move-result-object v0

    .line 337
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    .line 341
    const-string v2, "!@[MasterClearReceiver] onReceive: extraCmd is ["

    .line 343
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 348
    const-string v3, "]"

    .line 350
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 355
    if-nez v0, :cond_7

    .line 357
    const-string v0, "!@[MasterClearReceiver] onReceive: extraCmd is null"

    .line 359
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_7
    const-string/jumbo v0, "com.android.internal.intent.extra.FDR_REQUEST_TIME"

    .line 365
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    move-result-object v0

    .line 369
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    .line 373
    const-string v2, "!@[MasterClearReceiver] onReceive: requestedTimeArg is ["

    .line 375
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 380
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 385
    if-nez v0, :cond_8

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 390
    move-result-wide v4

    .line 391
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 393
    const-string/jumbo v2, "yyyy/MM/dd HH:mm:ss.SSS"

    .line 396
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 399
    new-instance v2, Ljava/util/Date;

    .line 401
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    .line 406
    const-string/jumbo v5, "requested_time="

    .line 409
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    move-result-object v0

    .line 423
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 425
    :cond_8
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 427
    if-eqz v0, :cond_a

    .line 429
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 431
    if-eqz v2, :cond_9

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    .line 435
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 440
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v2, "\n--"

    .line 445
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver;->requestedTimeArg:Ljava/lang/String;

    .line 450
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    move-result-object v0

    .line 457
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 459
    goto :goto_2

    .line 460
    :cond_9
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 462
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 464
    const-string v2, "!@[MasterClearReceiver] onReceive: requested time is added to extraCmd, extraCmd is ["

    .line 466
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;

    .line 471
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_a
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 477
    move-result v0

    .line 478
    if-eqz v0, :cond_c

    .line 480
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 483
    move-result v2

    .line 484
    if-nez v2, :cond_c

    .line 486
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 489
    move-result-object p2

    .line 490
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 493
    move-result-object p2

    .line 494
    const-string v2, "ACTION_FACTORY_RESET received on a non-system user %d, WIPING THE USER!!"

    .line 496
    invoke-static {v1, v2, p2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    new-instance p2, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;

    .line 501
    invoke-direct {p2, p0, p1, v0, v7}, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;ILjava/lang/String;)V

    .line 504
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 507
    move-result-object p0

    .line 508
    check-cast p0, Ljava/lang/Boolean;

    .line 510
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 513
    move-result p0

    .line 514
    if-nez p0, :cond_b

    .line 516
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 519
    move-result-object p0

    .line 520
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 523
    move-result-object p0

    .line 524
    const-string p1, "Failed to wipe user %d"

    .line 526
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    :cond_b
    return-void

    .line 530
    :cond_c
    const-string v0, "!@[MasterClearReceiver] onReceive: !!! FACTORY RESET !!!"

    .line 532
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v0, Lcom/android/server/MasterClearReceiver$1;

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

    .line 544
    iget-boolean p2, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    .line 546
    if-eqz p2, :cond_d

    .line 548
    const-string p2, "Wiping external storage on async task"

    .line 550
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance p2, Lcom/android/server/MasterClearReceiver$WipeDataTask;

    .line 555
    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/MasterClearReceiver$WipeDataTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Lcom/android/server/MasterClearReceiver$1;)V

    .line 558
    new-array p0, v11, [Ljava/lang/Void;

    .line 560
    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 563
    goto :goto_3

    .line 564
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    .line 566
    const-string p1, "NOT wiping external storage; starting thread "

    .line 568
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 574
    move-result-object p1

    .line 575
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    move-result-object p0

    .line 582
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 588
    :goto_3
    return-void
.end method
