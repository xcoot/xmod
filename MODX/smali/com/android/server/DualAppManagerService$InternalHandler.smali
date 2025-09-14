.class public final Lcom/android/server/DualAppManagerService$InternalHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DualAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DualAppManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "handleMessage() START "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "DualAppManagerService"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eq v0, v2, :cond_4

    .line 26
    const/4 v2, 0x2

    .line 27
    iget-object p0, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    .line 29
    if-eq v0, v2, :cond_3

    .line 31
    const/4 v2, 0x3

    .line 32
    if-eq v0, v2, :cond_2

    .line 34
    const/4 p0, 0x4

    .line 35
    const/4 v2, 0x0

    .line 36
    const-string/jumbo v3, "component"

    .line 39
    if-eq v0, p0, :cond_1

    .line 41
    const/4 p0, 0x5

    .line 42
    if-eq v0, p0, :cond_0

    .line 44
    goto/16 :goto_1

    .line 46
    :cond_0
    :try_start_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    check-cast p0, Ljava/lang/String;

    .line 50
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 52
    const-string/jumbo v4, "content://com.samsung.android.bbc.bbcagent/updateInputContext"

    .line 55
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    move-result-object v4

    .line 59
    new-instance v5, Landroid/content/ContentValues;

    .line 61
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v0

    .line 68
    const-string/jumbo v6, "newInputContextNotNull"

    .line 71
    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    invoke-virtual {v5, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object p0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0, v4, v5, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p0

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 91
    check-cast p0, Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "content://com.samsung.android.bbc.bbcagent/updateForegroundActivity"

    .line 96
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 99
    move-result-object v0

    .line 100
    new-instance v4, Landroid/content/ContentValues;

    .line 102
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 105
    invoke-virtual {v4, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object p0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0, v0, v4, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-static {}, Lcom/android/server/DualAppManagerService;->updateDAUsage()V

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    invoke-static {}, Lcom/android/server/DualAppManagerService;->updateWhitelistPackages()V

    .line 131
    invoke-static {}, Lcom/android/server/DualAppManagerService;->updateInstalledWhitelistPackages()V

    .line 134
    goto :goto_1

    .line 135
    :cond_4
    new-instance p0, Landroid/content/Intent;

    .line 137
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 140
    const-string/jumbo v0, "com.samsung.android.da.daagent"

    .line 143
    const-string/jumbo v2, "com.samsung.android.da.daagent.service.SwitchLauncherService"

    .line 146
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string/jumbo v0, "defaultLauncher"

    .line 152
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    check-cast v2, Ljava/lang/String;

    .line 156
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    sget-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 161
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 163
    invoke-virtual {v0, p0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    goto :goto_1

    .line 167
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 172
    const-string/jumbo v0, "handleMessage() END"

    .line 175
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object p0

    .line 185
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method
