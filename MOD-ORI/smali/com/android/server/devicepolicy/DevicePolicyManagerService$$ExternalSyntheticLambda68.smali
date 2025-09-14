.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;III)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$1:Landroid/content/ComponentName;

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$2:I

    .line 8
    .line 9
    iput p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$3:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$1:Landroid/content/ComponentName;

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$2:I

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$3:I

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLockedMDM(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const/high16 v5, 0x20000

    .line 20
    .line 21
    const-string/jumbo v6, "semSetPasswordMinimumLength"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->ensureMinimumQuality(ILcom/android/server/devicepolicy/ActiveAdmin;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v4, v4, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 28
    .line 29
    iget v5, v4, Landroid/app/admin/PasswordPolicy;->length:I

    .line 30
    .line 31
    if-eq v5, p0, :cond_0

    .line 32
    .line 33
    iput p0, v4, Landroid/app/admin/PasswordPolicy;->length:I

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordValidityCheckpointLocked(IZ)Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v3, v3, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->logPasswordQualitySetIfSecurityLogEnabled(Landroid/content/ComponentName;IZLandroid/app/admin/PasswordPolicy;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$1:Landroid/content/ComponentName;

    .line 48
    .line 49
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$2:I

    .line 50
    .line 51
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$3:I

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLockedMDM(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const/high16 v5, 0x60000

    .line 59
    .line 60
    const-string/jumbo v6, "semSetPasswordMinimumLowerCase"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->ensureMinimumQuality(ILcom/android/server/devicepolicy/ActiveAdmin;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v4, v4, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 67
    .line 68
    iget v5, v4, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    .line 69
    .line 70
    if-eq v5, p0, :cond_1

    .line 71
    .line 72
    iput p0, v4, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    .line 73
    .line 74
    invoke-virtual {v0, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordValidityCheckpointLocked(IZ)Ljava/util/Set;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2, v3, v3, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->logPasswordQualitySetIfSecurityLogEnabled(Landroid/content/ComponentName;IZLandroid/app/admin/PasswordPolicy;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$1:Landroid/content/ComponentName;

    .line 87
    .line 88
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$2:I

    .line 89
    .line 90
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$3:I

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLockedMDM(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget v4, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    .line 98
    .line 99
    if-eq v4, p0, :cond_2

    .line 100
    .line 101
    iput p0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    .line 102
    .line 103
    invoke-virtual {v0, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordValidityCheckpointLocked(IZ)Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2, v3, v3, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 107
    .line 108
    .line 109
    :cond_2
    return-void

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$1:Landroid/content/ComponentName;

    .line 113
    .line 114
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$2:I

    .line 115
    .line 116
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$3:I

    .line 117
    .line 118
    const/4 v3, 0x0

    .line 119
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLockedMDM(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    iget-object v5, v4, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 124
    .line 125
    iget v6, v5, Landroid/app/admin/PasswordPolicy;->quality:I

    .line 126
    .line 127
    if-eq v6, p0, :cond_3

    .line 128
    .line 129
    iput p0, v5, Landroid/app/admin/PasswordPolicy;->quality:I

    .line 130
    .line 131
    iput v3, v4, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    .line 132
    .line 133
    invoke-virtual {v0, v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetInactivePasswordRequirementsIfRPlus(ILcom/android/server/devicepolicy/ActiveAdmin;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordValidityCheckpointLocked(IZ)Ljava/util/Set;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordQualityCacheForUserGroup(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2, v3, v3, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 143
    .line 144
    .line 145
    :cond_3
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->logPasswordQualitySetIfSecurityLogEnabled(Landroid/content/ComponentName;IZLandroid/app/admin/PasswordPolicy;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$1:Landroid/content/ComponentName;

    .line 152
    .line 153
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$2:I

    .line 154
    .line 155
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$3:I

    .line 156
    .line 157
    const/4 v3, 0x0

    .line 158
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLockedMDM(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    const/high16 v5, 0x60000

    .line 163
    .line 164
    const-string/jumbo v6, "semSetPasswordMinimumUpperCase"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->ensureMinimumQuality(ILcom/android/server/devicepolicy/ActiveAdmin;ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v4, v4, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 171
    .line 172
    iget v5, v4, Landroid/app/admin/PasswordPolicy;->upperCase:I

    .line 173
    .line 174
    if-eq v5, p0, :cond_4

    .line 175
    .line 176
    iput p0, v4, Landroid/app/admin/PasswordPolicy;->upperCase:I

    .line 177
    .line 178
    invoke-virtual {v0, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordValidityCheckpointLocked(IZ)Ljava/util/Set;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v2, v3, v3, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 182
    .line 183
    .line 184
    :cond_4
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->logPasswordQualitySetIfSecurityLogEnabled(Landroid/content/ComponentName;IZLandroid/app/admin/PasswordPolicy;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 189
    .line 190
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$1:Landroid/content/ComponentName;

    .line 191
    .line 192
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$2:I

    .line 193
    .line 194
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda68;->f$3:I

    .line 195
    .line 196
    const/4 v3, 0x0

    .line 197
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLockedMDM(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    const/high16 v5, 0x60000

    .line 202
    .line 203
    const-string/jumbo v6, "semSetPasswordMinimumNonLetter"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->ensureMinimumQuality(ILcom/android/server/devicepolicy/ActiveAdmin;ILjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v4, v4, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 210
    .line 211
    iget v5, v4, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    .line 212
    .line 213
    if-eq v5, p0, :cond_5

    .line 214
    .line 215
    iput p0, v4, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    .line 216
    .line 217
    invoke-virtual {v0, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordValidityCheckpointLocked(IZ)Ljava/util/Set;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v2, v3, v3, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 221
    .line 222
    .line 223
    :cond_5
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->logPasswordQualitySetIfSecurityLogEnabled(Landroid/content/ComponentName;IZLandroid/app/admin/PasswordPolicy;)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
