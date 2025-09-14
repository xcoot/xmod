.class public final Lcom/android/server/pm/PersonaManagerService$2$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/PersonaManagerService$2;

.field public final synthetic val$intent:Landroid/content/Intent;

.field public final synthetic val$managedProfileUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService$2;Landroid/os/UserHandle;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2$1;->this$1:Lcom/android/server/pm/PersonaManagerService$2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2$1;->val$managedProfileUserHandle:Landroid/os/UserHandle;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PersonaManagerService$2$1;->val$intent:Landroid/content/Intent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2$1;->this$1:Lcom/android/server/pm/PersonaManagerService$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$2$1;->val$managedProfileUserHandle:Landroid/os/UserHandle;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2$1;->val$intent:Landroid/content/Intent;

    .line 14
    .line 15
    const-string v2, "com.samsung.android.knox.intent.extra.EXTRA_DO_PO_PACKAGE_NAME"

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualAppId(I)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_0
    iget-object v0, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    new-instance v2, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "cTp"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    iget-object p0, v0, Lcom/android/server/knox/BasicContainerAnalytics;->context:Landroid/content/Context;

    .line 58
    .line 59
    const-string v3, "device_policy"

    .line 60
    .line 61
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 66
    .line 67
    new-instance v3, Landroid/os/UserHandle;

    .line 68
    .line 69
    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v3}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    :goto_0
    const-string/jumbo v3, "pN"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string/jumbo v3, "pV"

    .line 90
    .line 91
    .line 92
    invoke-static {v1, p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string p0, "WORK_PROFILE_CREATED"

    .line 102
    .line 103
    invoke-virtual {v0, v2, p0}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v1, "WORK_PROFILE_CREATED KA failed : "

    .line 110
    .line 111
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const-string v0, "BasicContainerAnalytics"

    .line 122
    .line 123
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :cond_2
    :goto_2
    return-void
.end method
