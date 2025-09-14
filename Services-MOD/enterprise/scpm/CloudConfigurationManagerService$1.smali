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

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    .line 16
    invoke-static {p0}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$mtryRegister(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;)V

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    const-string/jumbo v0, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    const-string v0, "CloudConfigurationManagerService"

    .line 33
    if-eqz p1, :cond_1

    .line 35
    const-string/jumbo p1, "receive ACTION_SCPM_POLICY_CLEAR_DATA intent"

    .line 38
    invoke-static {v0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p1, Landroid/os/Handler;

    .line 43
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 46
    new-instance p2, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;

    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-direct {p2, v0, p0}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;-><init>(ILjava/lang/Object;)V

    .line 52
    const-wide/32 v0, 0xea60

    .line 55
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    const-string/jumbo v1, "com.samsung.android.scpm.policy.UPDATE.knox-sdk-mam-configuration"

    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 72
    const-string/jumbo p1, "receive intent: knox-sdk-mam-configuration"

    .line 75
    invoke-static {v0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    .line 80
    const-string/jumbo p1, "knox-sdk-mam-configuration"

    .line 83
    const/4 p2, 0x0

    .line 84
    invoke-static {p0, p1, p2, p2}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$mupdateConfiguration(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    const-string/jumbo p2, "com.samsung.android.scpm.policy.UPDATE.knox-remotecontrol"

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_3

    .line 101
    const-string/jumbo p1, "receive intent: knox-remotecontrol"

    .line 104
    invoke-static {v0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    .line 109
    const-string p1, "RESTRICTION"

    .line 111
    const-string p2, "allowRemoteControlAllowList"

    .line 113
    const-string/jumbo v0, "knox-remotecontrol"

    .line 116
    invoke-static {p0, v0, p1, p2}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$mupdateConfiguration(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_3
    :goto_0
    return-void
.end method
