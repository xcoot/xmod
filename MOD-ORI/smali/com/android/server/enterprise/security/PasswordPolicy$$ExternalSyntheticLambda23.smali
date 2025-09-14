.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda23;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda23;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/os/Bundle;

    .line 9
    .line 10
    const-string/jumbo v0, "knox.container.proxy.POLICY_ADMIN_LOCK"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :pswitch_0
    check-cast p0, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 19
    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 23
    .line 24
    if-eqz v1, :cond_7

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 27
    .line 28
    if-eqz v1, :cond_7

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 31
    .line 32
    check-cast v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const-string v3, "PasswordPolicy"

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 55
    .line 56
    invoke-virtual {v4, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-gtz v4, :cond_0

    .line 61
    .line 62
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 63
    .line 64
    invoke-virtual {v4, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-lez v2, :cond_1

    .line 69
    .line 70
    :cond_0
    const-string/jumbo v0, "isClearLockAllowed - false due to DO and pwd policy"

    .line 71
    .line 72
    .line 73
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 77
    .line 78
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;

    .line 79
    .line 80
    if-eqz v2, :cond_6

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    move v5, v1

    .line 91
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-ge v5, v6, :cond_6

    .line 96
    .line 97
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Landroid/content/pm/UserInfo;

    .line 102
    .line 103
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_5

    .line 108
    .line 109
    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 110
    .line 111
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    .line 112
    .line 113
    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    if-eqz v7, :cond_3

    .line 118
    .line 119
    iget-object v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 120
    .line 121
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    .line 122
    .line 123
    const/4 v10, 0x1

    .line 124
    invoke-interface {v8, v7, v9, v10}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-gtz v8, :cond_2

    .line 129
    .line 130
    iget-object v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 131
    .line 132
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    .line 133
    .line 134
    invoke-interface {v8, v7, v9, v10}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-lez v8, :cond_3

    .line 139
    .line 140
    :cond_2
    const-string/jumbo v0, "isClearLockAllowed - false due to PO and parent pwd policy"

    .line 141
    .line 142
    .line 143
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 147
    .line 148
    :cond_3
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    .line 149
    .line 150
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    move-object v9, v4

    .line 155
    check-cast v9, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-eqz v8, :cond_5

    .line 162
    .line 163
    if-eqz v7, :cond_5

    .line 164
    .line 165
    iget-object v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 166
    .line 167
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    .line 168
    .line 169
    invoke-virtual {v8, v7, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    if-gtz v8, :cond_4

    .line 174
    .line 175
    iget-object v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 176
    .line 177
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 178
    .line 179
    invoke-virtual {v8, v7, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-lez v6, :cond_5

    .line 184
    .line 185
    :cond_4
    const-string/jumbo v0, "isClearLockAllowed - false due to PO and one lock"

    .line 186
    .line 187
    .line 188
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 192
    .line 193
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(I)I

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    if-lez p0, :cond_7

    .line 201
    .line 202
    const-string/jumbo p0, "isClearLockAllowed - false due to FailedPasswordsForDisable policy"

    .line 203
    .line 204
    .line 205
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 209
    .line 210
    :cond_7
    return-object v0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
