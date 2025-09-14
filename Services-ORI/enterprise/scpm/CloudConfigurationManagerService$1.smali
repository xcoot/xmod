.class public final Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    .line 15
    .line 16
    invoke-static {p0}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$mtryRegister(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string/jumbo v0, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const-string v0, "CloudConfigurationManagerService"

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const-string/jumbo p1, "receive ACTION_SCPM_POLICY_CLEAR_DATA intent"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Landroid/os/Handler;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance p2, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-direct {p2, v0, p0}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const-wide/32 v0, 0xea60

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string/jumbo v1, "com.samsung.android.scpm.policy.UPDATE.knox-sdk-mam-configuration"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    const-string/jumbo p1, "receive intent: knox-sdk-mam-configuration"

    .line 73
    .line 74
    .line 75
    invoke-static {v0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    .line 79
    .line 80
    const-string/jumbo p1, "knox-sdk-mam-configuration"

    .line 81
    .line 82
    .line 83
    const/4 p2, 0x0

    .line 84
    invoke-static {p0, p1, p2, p2}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$mupdateConfiguration(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string/jumbo p2, "com.samsung.android.scpm.policy.UPDATE.knox-remotecontrol"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    const-string/jumbo p1, "receive intent: knox-remotecontrol"

    .line 102
    .line 103
    .line 104
    invoke-static {v0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    .line 108
    .line 109
    const-string p1, "RESTRICTION"

    .line 110
    .line 111
    const-string p2, "allowRemoteControlAllowList"

    .line 112
    .line 113
    const-string/jumbo v0, "knox-remotecontrol"

    .line 114
    .line 115
    .line 116
    invoke-static {p0, v0, p1, p2}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$mupdateConfiguration(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    :goto_0
    return-void
.end method
