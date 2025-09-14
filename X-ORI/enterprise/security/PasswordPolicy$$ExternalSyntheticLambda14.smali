.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;->f$1:I

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string/jumbo v2, "user"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/os/UserManager;

    .line 20
    .line 21
    sget-object v2, Lcom/android/server/enterprise/security/PasswordPolicy;->BIOMETRIC_AUTHENTICATION_TYPES:[I

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    const/4 v4, 0x2

    .line 25
    if-ge v3, v4, :cond_1

    .line 26
    .line 27
    aget v4, v2, v3

    .line 28
    .line 29
    invoke-virtual {v0, p0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    iget-object v6, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 48
    .line 49
    new-instance v7, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;

    .line 50
    .line 51
    const/4 v8, 0x1

    .line 52
    invoke-direct {v7, v0, v4, v5, v8}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;III)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {v7}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 66
    .line 67
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;->f$1:I

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    const-string v1, "activity"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/app/ActivityManager;

    .line 78
    .line 79
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/16 v1, 0xc

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-interface {v0, v1, v2, p0}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_3

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_3

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 115
    .line 116
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 117
    .line 118
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    if-eqz v3, :cond_2

    .line 123
    .line 124
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    const-string/jumbo v4, "packageName "

    .line 129
    .line 130
    .line 131
    const-string v5, "PasswordPolicy"

    .line 132
    .line 133
    invoke-static {v4, v3, v5}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    if-eqz v3, :cond_2

    .line 137
    .line 138
    const-string/jumbo v4, "com.android.settings"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_2

    .line 146
    .line 147
    invoke-interface {v0, v4, p0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 151
    .line 152
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->removeTask(I)Z

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    return-void

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
