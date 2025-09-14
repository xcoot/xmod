.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 5
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 8
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Landroid/content/pm/UserInfo;

    .line 12
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    .line 14
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_5

    .line 24
    invoke-virtual {v1}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    if-eq v1, v2, :cond_0

    .line 31
    goto/16 :goto_2

    .line 33
    :cond_0
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 35
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    .line 37
    invoke-virtual {v1, p0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_5

    .line 43
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 50
    move-result v2

    .line 51
    if-ne v2, p0, :cond_1

    .line 53
    goto/16 :goto_2

    .line 55
    :cond_1
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 57
    monitor-enter v7

    .line 58
    :try_start_0
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 60
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 67
    move-result v3

    .line 68
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->contains(I)Z

    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_2

    .line 74
    monitor-exit v7

    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 80
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 87
    move-result v1

    .line 88
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Ljava/util/Map;

    .line 94
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object v8

    .line 102
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_4

    .line 108
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 117
    move-result-object v1

    .line 118
    move-object v9, v1

    .line 119
    check-cast v9, Lcom/android/server/devicepolicy/PolicyState;

    .line 121
    iget-object v1, v9, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 123
    iget v1, v1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 125
    and-int/lit8 v1, v1, 0x4

    .line 127
    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {v9}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 136
    move-result-object v1

    .line 137
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 140
    move-result-object v10

    .line 141
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_3

    .line 147
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 156
    move-result-object v2

    .line 157
    move-object v3, v2

    .line 158
    check-cast v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 163
    move-result-object v1

    .line 164
    move-object v4, v1

    .line 165
    check-cast v4, Landroid/app/admin/PolicyValue;

    .line 167
    iget-object v2, v9, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 169
    const/4 v6, 0x0

    .line 170
    move-object v1, v0

    .line 171
    move v5, p0

    .line 172
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 175
    goto :goto_0

    .line 176
    :cond_4
    monitor-exit v7

    .line 177
    goto :goto_2

    .line 178
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    throw p0

    .line 180
    :cond_5
    :goto_2
    return-void

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 183
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 185
    check-cast p0, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 187
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    new-instance v1, Landroid/app/admin/BooleanPolicyValue;

    .line 192
    const/4 v2, 0x0

    .line 193
    invoke-direct {v1, v2}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 196
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    .line 199
    move-result-object v3

    .line 200
    iget-object v1, v3, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    :catch_0
    const/4 v3, -0x1

    .line 203
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    .line 206
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    .line 208
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 211
    move-result-object v1

    .line 212
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 215
    move-result-object v1

    .line 216
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_6

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    move-result-object v3

    .line 226
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 228
    new-instance v4, Landroid/app/admin/BooleanPolicyValue;

    .line 230
    invoke-direct {v4, v2}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 233
    :try_start_2
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 235
    invoke-virtual {v0, p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    .line 238
    move-result-object v5

    .line 239
    iget-object v4, v5, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 241
    :catch_1
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 243
    invoke-virtual {v0, p0, v4, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    .line 246
    goto :goto_3

    .line 247
    :cond_6
    return-void

    .line 248
    nop

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
