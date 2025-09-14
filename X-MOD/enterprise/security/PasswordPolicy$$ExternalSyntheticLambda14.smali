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

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 5
    iput p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;->f$1:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 8
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;->f$1:I

    .line 10
    iget-object v1, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 12
    const-string/jumbo v2, "user"

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/os/UserManager;

    .line 21
    sget-object v2, Lcom/android/server/enterprise/security/PasswordPolicy;->BIOMETRIC_AUTHENTICATION_TYPES:[I

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    const/4 v4, 0x2

    .line 25
    if-ge v3, v4, :cond_1

    .line 27
    aget v4, v2, v3

    .line 29
    invoke-virtual {v0, p0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_0

    .line 35
    invoke-virtual {v1, p0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 46
    move-result v5

    .line 47
    iget-object v6, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 49
    new-instance v7, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;

    .line 51
    const/4 v8, 0x1

    .line 52
    invoke-direct {v7, v0, v4, v5, v8}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;III)V

    .line 55
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-static {v7}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 61
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 67
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;->f$1:I

    .line 69
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 71
    const-string v1, "activity"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/app/ActivityManager;

    .line 79
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 82
    move-result-object v0

    .line 83
    const/16 v1, 0xc

    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-interface {v0, v1, v2, p0}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_3

    .line 100
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    move-result-object v1

    .line 104
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_3

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 116
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 118
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 121
    move-result-object v3

    .line 122
    if-eqz v3, :cond_2

    .line 124
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 127
    move-result-object v3

    .line 128
    const-string/jumbo v4, "packageName "

    .line 131
    const-string v5, "PasswordPolicy"

    .line 133
    invoke-static {v4, v3, v5}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz v3, :cond_2

    .line 138
    const-string/jumbo v4, "com.android.settings"

    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_2

    .line 147
    invoke-interface {v0, v4, p0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 150
    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 152
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->removeTask(I)Z

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
