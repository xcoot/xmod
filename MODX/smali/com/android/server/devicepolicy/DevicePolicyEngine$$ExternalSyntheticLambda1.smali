.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/android/server/devicepolicy/EnforcingAdmin;

.field public final synthetic f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;III)V
    .locals 0

    .line 1
    iput p7, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 5
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    .line 7
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 9
    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 11
    iput p5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$4:I

    .line 13
    iput p6, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$5:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    .line 10
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 12
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 14
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$4:I

    .line 16
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$5:I

    .line 18
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    move-result-object v5

    .line 24
    const-wide/16 v6, 0x2

    .line 26
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 29
    move-result-object v6

    .line 30
    iget v7, v2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 32
    invoke-virtual {v5, v1, v6, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    .line 35
    move-result-object v5

    .line 36
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_0

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    const-string v0, "Couldn\'t find any receivers that handle ACTION_DEVICE_POLICY_CHANGED in package "

    .line 46
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v0, v2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 51
    const-string v1, "DevicePolicyEngine"

    .line 53
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    .line 59
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 62
    iget-object v3, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 64
    invoke-virtual {v3, v6}, Landroid/app/admin/PolicyKey;->writeToBundle(Landroid/os/Bundle;)V

    .line 67
    iget v2, v2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 69
    const/4 v3, -0x3

    .line 70
    const/4 v7, -0x1

    .line 71
    if-ne v4, v7, :cond_1

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    if-ne v2, v4, :cond_2

    .line 76
    move v3, v7

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    new-instance v7, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda5;

    .line 80
    invoke-direct {v7, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;I)V

    .line 83
    invoke-static {v7}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 86
    move-result-object v7

    .line 87
    check-cast v7, Ljava/lang/Integer;

    .line 89
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 92
    move-result v7

    .line 93
    if-ne v7, v4, :cond_3

    .line 95
    const/4 v3, -0x2

    .line 96
    :cond_3
    :goto_0
    const-string v4, "android.app.admin.extra.POLICY_TARGET_USER_ID"

    .line 98
    invoke-virtual {v6, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v3, "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

    .line 103
    invoke-virtual {v6, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 109
    const/high16 p0, 0x10000000

    .line 111
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v0, v1, p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->maybeSendIntentToAdminReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 121
    :goto_1
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 124
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    .line 126
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 128
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 130
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$4:I

    .line 132
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$5:I

    .line 134
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 139
    move-result-object v5

    .line 140
    const-wide/16 v6, 0x2

    .line 142
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 145
    move-result-object v6

    .line 146
    iget v7, v2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 148
    invoke-virtual {v5, v1, v6, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    .line 151
    move-result-object v5

    .line 152
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 155
    move-result v6

    .line 156
    if-eqz v6, :cond_4

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    .line 160
    const-string v0, "Couldn\'t find any receivers that handle ACTION_DEVICE_POLICY_SET_RESULT in package "

    .line 162
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    iget-object v0, v2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 167
    const-string v1, "DevicePolicyEngine"

    .line 169
    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    goto :goto_3

    .line 173
    :cond_4
    new-instance v6, Landroid/os/Bundle;

    .line 175
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 178
    iget-object v3, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 180
    invoke-virtual {v3, v6}, Landroid/app/admin/PolicyKey;->writeToBundle(Landroid/os/Bundle;)V

    .line 183
    iget v2, v2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 185
    const/4 v3, -0x3

    .line 186
    const/4 v7, -0x1

    .line 187
    if-ne v4, v7, :cond_5

    .line 189
    goto :goto_2

    .line 190
    :cond_5
    if-ne v2, v4, :cond_6

    .line 192
    move v3, v7

    .line 193
    goto :goto_2

    .line 194
    :cond_6
    new-instance v7, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda5;

    .line 196
    invoke-direct {v7, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;I)V

    .line 199
    invoke-static {v7}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 202
    move-result-object v7

    .line 203
    check-cast v7, Ljava/lang/Integer;

    .line 205
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 208
    move-result v7

    .line 209
    if-ne v7, v4, :cond_7

    .line 211
    const/4 v3, -0x2

    .line 212
    :cond_7
    :goto_2
    const-string v4, "android.app.admin.extra.POLICY_TARGET_USER_ID"

    .line 214
    invoke-virtual {v6, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v3, "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

    .line 219
    invoke-virtual {v6, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 225
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 228
    move-result-object p0

    .line 229
    invoke-virtual {v0, v1, p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->maybeSendIntentToAdminReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 232
    :goto_3
    return-void

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
