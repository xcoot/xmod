.class public final Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Handler : message = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    const-string v2, "ExchangeAccountPolicy"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v0, p1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v4, Landroid/content/ComponentName;

    .line 37
    .line 38
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 39
    .line 40
    const-string/jumbo v5, "com.samsung.android.email.provider.exchange.ExchangeService"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v6, "com.samsung.android.email.provider"

    .line 44
    .line 45
    .line 46
    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v5, "Handler / RESTART_EMAIL_APP : Enabling EAS ExchangeService user "

    .line 50
    .line 51
    invoke-static {p1, v5, v2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4, v1, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 55
    .line 56
    .line 57
    iput-boolean v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    .line 58
    .line 59
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    .line 64
    .line 65
    const-string/jumbo v5, "com.samsung.android.knox.intent.action.EAS_INTENT_INTERNAL"

    .line 66
    .line 67
    .line 68
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    new-instance v6, Landroid/os/UserHandle;

    .line 74
    .line 75
    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 76
    .line 77
    .line 78
    const-string/jumbo p1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v4, v6, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception p1

    .line 91
    :try_start_1
    const-string v4, "Handler / RESTART_EMAIL_APP : fail to restart ExchangeService. "

    .line 92
    .line 93
    invoke-static {v2, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_1
    :goto_2
    iput-boolean v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    .line 102
    .line 103
    :goto_3
    return-void
.end method
