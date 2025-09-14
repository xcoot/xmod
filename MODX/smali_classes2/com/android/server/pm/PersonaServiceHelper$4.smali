.class public final Lcom/android/server/pm/PersonaServiceHelper$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$flags:I

.field public final synthetic val$handler:Landroid/os/Handler;

.field public final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$pms:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic val$settings:Lcom/android/server/pm/Settings;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/Settings;Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$handler:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$pms:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$userId:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$settings:Lcom/android/server/pm/Settings;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$context:Landroid/content/Context;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    const-string v0, "PersonaServiceHelper"

    .line 2
    .line 3
    const-string/jumbo v1, "returnCode: "

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "return delete result to caller: "

    .line 7
    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$handler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-direct {v5, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iget-object v6, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    const-string v4, "This app uninstallation is not allowed"

    .line 43
    .line 44
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/4 v4, -0x1

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move v4, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$pms:Lcom/android/server/pm/PackageManagerService;

    .line 52
    .line 53
    iget-object v10, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    .line 54
    .line 55
    iget v6, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$userId:I

    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v7, "deletePackageXForKnox: pkg{"

    .line 63
    .line 64
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string/jumbo v7, "}, user{"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string/jumbo v7, "}, flags{4}"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v5}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 v11, 0x1

    .line 93
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 94
    .line 95
    const-wide/16 v8, -0x1

    .line 96
    .line 97
    const/4 v7, 0x4

    .line 98
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    .line 99
    .line 100
    .line 101
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    .line 103
    .line 104
    const-string v6, "jp.co.mmbi.app"

    .line 105
    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_1

    .line 111
    .line 112
    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$settings:Lcom/android/server/pm/Settings;

    .line 113
    .line 114
    const-string v6, "android.uid.mmbi"

    .line 115
    .line 116
    const/16 v7, 0x2392

    .line 117
    .line 118
    const/4 v8, 0x0

    .line 119
    invoke-virtual {v5, v7, v3, v8, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    .line 121
    .line 122
    :catch_1
    :cond_1
    :goto_0
    if-gez v4, :cond_2

    .line 123
    .line 124
    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    .line 125
    .line 126
    iget v6, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$userId:I

    .line 127
    .line 128
    invoke-static {v6, v5}, Lcom/android/server/pm/PmHook;->uninstallLog(ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    .line 132
    .line 133
    if-eqz v5, :cond_3

    .line 134
    .line 135
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    .line 141
    .line 142
    invoke-interface {v2}, Landroid/content/pm/IPackageDeleteObserver;->hashCode()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    .line 172
    .line 173
    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    .line 174
    .line 175
    invoke-interface {v1, v2, v4}, Landroid/content/pm/IPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :catch_2
    const-string v1, "Observer no longer exists."

    .line 180
    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$context:Landroid/content/Context;

    .line 185
    .line 186
    invoke-static {p0, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 187
    .line 188
    .line 189
    return-void
.end method
