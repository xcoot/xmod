.class public final synthetic Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/admin/PolicyKey;

.field public final synthetic f$1:Ljava/lang/Boolean;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$0:Landroid/app/admin/PolicyKey;

    iput p2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$2:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;II)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$0:Landroid/app/admin/PolicyKey;

    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Boolean;

    iput p3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$0:Landroid/app/admin/PolicyKey;

    .line 9
    .line 10
    iget v3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$2:I

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Boolean;

    .line 13
    .line 14
    instance-of v4, v2, Landroid/app/admin/UserRestrictionPolicyKey;

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    check-cast v2, Landroid/app/admin/UserRestrictionPolicyKey;

    .line 19
    .line 20
    const-class v4, Lcom/android/server/pm/UserManagerInternal;

    .line 21
    .line 22
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/server/pm/UserManagerInternal;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/app/admin/UserRestrictionPolicyKey;->getRestriction()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    move v0, v1

    .line 41
    :cond_0
    invoke-virtual {v4, v3, v2, v0}, Lcom/android/server/pm/UserManagerInternal;->setUserRestriction(ILjava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string/jumbo v1, "policyKey is not of type UserRestrictionPolicyKey, passed in policyKey is: "

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$0:Landroid/app/admin/PolicyKey;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Boolean;

    .line 71
    .line 72
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$2:I

    .line 73
    .line 74
    instance-of v4, v2, Landroid/app/admin/PackagePolicyKey;

    .line 75
    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    check-cast v2, Landroid/app/admin/PackagePolicyKey;

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    move v0, v1

    .line 96
    :cond_2
    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 97
    .line 98
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda31;

    .line 99
    .line 100
    const/4 v3, 0x2

    .line 101
    invoke-direct {v1, v2, v0, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda31;-><init>(Ljava/lang/Object;ZII)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 105
    .line 106
    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 116
    .line 117
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 118
    .line 119
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 120
    .line 121
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 122
    .line 123
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    filled-new-array {v2}, [Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    new-instance v6, Lcom/android/server/pm/PackageManagerInternalBase$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v4, v5, v6, p0}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 142
    .line 143
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    filled-new-array {v2}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v3, v2, p0}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 157
    .line 158
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 159
    .line 160
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 161
    .line 162
    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 164
    .line 165
    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V

    .line 166
    .line 167
    .line 168
    monitor-exit v1

    .line 169
    goto :goto_0

    .line 170
    :catchall_0
    move-exception p0

    .line 171
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 173
    .line 174
    throw p0

    .line 175
    :cond_3
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 176
    .line 177
    return-object p0

    .line 178
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 179
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string/jumbo v1, "policyKey is not of type PackagePolicyKey, passed in policyKey is: "

    .line 183
    .line 184
    .line 185
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$0:Landroid/app/admin/PolicyKey;

    .line 200
    .line 201
    iget-object v3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Boolean;

    .line 202
    .line 203
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$2:I

    .line 204
    .line 205
    instance-of v4, v2, Landroid/app/admin/PackagePolicyKey;

    .line 206
    .line 207
    if-eqz v4, :cond_6

    .line 208
    .line 209
    check-cast v2, Landroid/app/admin/PackagePolicyKey;

    .line 210
    .line 211
    invoke-virtual {v2}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    if-eqz v3, :cond_5

    .line 223
    .line 224
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_5

    .line 229
    .line 230
    move v0, v1

    .line 231
    :cond_5
    invoke-interface {v4, v2, v0, p0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    return-object p0

    .line 240
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 241
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string/jumbo v1, "policyKey is not of type PackagePolicyKey, passed in policyKey is: "

    .line 245
    .line 246
    .line 247
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw p0

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
