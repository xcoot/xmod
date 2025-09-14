.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda218;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/util/ArrayList;Ljava/util/function/Predicate;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda218;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda218;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 5
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda218;->f$1:I

    .line 7
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda218;->f$2:Ljava/util/ArrayList;

    .line 9
    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda218;->f$3:Ljava/util/function/Predicate;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda218;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda218;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda218;->f$1:I

    .line 10
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda218;->f$2:Ljava/util/ArrayList;

    .line 12
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda218;->f$3:Ljava/util/function/Predicate;

    .line 14
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 16
    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v3

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_5

    .line 30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 36
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 38
    invoke-virtual {v0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 41
    move-result-object v5

    .line 42
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 44
    if-ne v6, v1, :cond_1

    .line 46
    iget-object v4, v5, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    iget-object v4, v5, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionBasedAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 53
    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_0

    .line 65
    const/4 v6, 0x0

    .line 66
    :goto_1
    iget-object v7, v5, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v7

    .line 72
    if-ge v6, v7, :cond_4

    .line 74
    iget-object v7, v5, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 82
    iget-object v8, v7, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 84
    if-eqz v8, :cond_2

    .line 86
    invoke-virtual {v7}, Lcom/android/server/devicepolicy/ActiveAdmin;->getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_2
    invoke-interface {p0, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 96
    move-result v8

    .line 97
    if-eqz v8, :cond_3

    .line 99
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    iget-object v6, v5, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionBasedAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 107
    if-eqz v6, :cond_0

    .line 109
    invoke-interface {p0, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_0

    .line 115
    iget-object v4, v5, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionBasedAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 117
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    goto :goto_0

    .line 121
    :cond_5
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda218;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 124
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda218;->f$1:I

    .line 126
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda218;->f$2:Ljava/util/ArrayList;

    .line 128
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda218;->f$3:Ljava/util/function/Predicate;

    .line 130
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 132
    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 135
    move-result-object v3

    .line 136
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    move-result-object v3

    .line 140
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_a

    .line 146
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 152
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 154
    invoke-virtual {v0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 157
    move-result-object v5

    .line 158
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 160
    if-ne v6, v1, :cond_7

    .line 162
    iget-object v4, v5, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    goto :goto_2

    .line 168
    :cond_7
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 171
    move-result v6

    .line 172
    if-eqz v6, :cond_6

    .line 174
    const/4 v6, 0x0

    .line 175
    :goto_3
    iget-object v7, v5, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 180
    move-result v7

    .line 181
    if-ge v6, v7, :cond_6

    .line 183
    iget-object v7, v5, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    move-result-object v7

    .line 189
    check-cast v7, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 191
    iget-object v8, v7, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 193
    if-eqz v8, :cond_8

    .line 195
    invoke-virtual {v7}, Lcom/android/server/devicepolicy/ActiveAdmin;->getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 198
    move-result-object v8

    .line 199
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_8
    invoke-interface {p0, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 205
    move-result v8

    .line 206
    if-eqz v8, :cond_9

    .line 208
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 213
    goto :goto_3

    .line 214
    :cond_a
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
