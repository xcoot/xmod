.class public final Lcom/android/server/enterprise/security/SecurityPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

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
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.extra.user_handle"

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const-string v1, "action = "

    .line 13
    .line 14
    const-string v2, ", userId = "

    .line 15
    .line 16
    const-string v3, "SecurityPolicy"

    .line 17
    .line 18
    invoke-static {p2, v1, v0, v2, v3}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    iput-boolean v1, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z

    .line 45
    .line 46
    const-class v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 47
    .line 48
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 55
    .line 56
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_1

    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    iget-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_2

    .line 86
    .line 87
    const-string p1, "Saving Device safe mode to true in generic table"

    .line 88
    .line 89
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 93
    .line 94
    invoke-static {p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->-$$Nest$msaveDeviceBootMode(Lcom/android/server/enterprise/security/SecurityPolicy;Z)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    iget-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 99
    .line 100
    iget-object p2, p2, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 101
    .line 102
    const-string/jumbo v1, "deviceBootMode"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    const-string v1, "1"

    .line 112
    .line 113
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_3

    .line 118
    .line 119
    const-string p2, "Sending broadcast: com.samsung.android.knox.intent.action.LAST_BOOT_SAFE_MODE_INTERNAL"

    .line 120
    .line 121
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    new-instance p2, Landroid/content/Intent;

    .line 125
    .line 126
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.LAST_BOOT_SAFE_MODE_INTERNAL"

    .line 127
    .line 128
    .line 129
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const/high16 v1, 0x1000000

    .line 133
    .line 134
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 142
    .line 143
    invoke-static {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->-$$Nest$msaveDeviceBootMode(Lcom/android/server/enterprise/security/SecurityPolicy;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    :cond_3
    :goto_2
    return-void
.end method
