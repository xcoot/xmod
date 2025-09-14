.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/util/List;Ljava/util/function/Predicate;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$2:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$2:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$3:Ljava/lang/Object;

    iput p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$2:I

    .line 10
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$1:Ljava/lang/Object;

    .line 12
    check-cast v2, Ljava/util/List;

    .line 14
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$3:Ljava/lang/Object;

    .line 16
    check-cast p0, Ljava/util/function/Predicate;

    .line 18
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 40
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 42
    if-ne v4, v1, :cond_1

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_0

    .line 58
    invoke-interface {p0, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_0

    .line 64
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v3

    .line 70
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 77
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$1:Ljava/lang/Object;

    .line 79
    check-cast v1, Ljava/lang/String;

    .line 81
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$3:Ljava/lang/Object;

    .line 83
    check-cast v2, Ljava/lang/String;

    .line 85
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$2:I

    .line 87
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 89
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 98
    return-void

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 101
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$1:Ljava/lang/Object;

    .line 103
    check-cast v1, Ljava/lang/String;

    .line 105
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$2:I

    .line 107
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$3:Ljava/lang/Object;

    .line 109
    check-cast p0, Ljava/lang/String;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    const-string/jumbo v3, "default_input_method"

    .line 117
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_4

    .line 123
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 125
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 130
    move-result-object v4

    .line 131
    invoke-static {v4, v3, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 134
    move-result-object v3

    .line 135
    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_3

    .line 141
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mSetupContentObserver:Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;

    .line 143
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object v4

    .line 149
    check-cast v3, Landroid/util/ArraySet;

    .line 151
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 157
    move-result-object v3

    .line 158
    const/4 v4, 0x1

    .line 159
    iput-boolean v4, v3, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 161
    const/4 v3, 0x0

    .line 162
    invoke-virtual {v0, v2, v3, v3, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 165
    :cond_4
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 167
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 172
    move-result-object v3

    .line 173
    invoke-static {v3, v1, p0, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 176
    const-string/jumbo v3, "location_mode"

    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_5

    .line 185
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 188
    move-result p0

    .line 189
    if-eqz p0, :cond_5

    .line 191
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->showLocationSettingsEnabledNotification(Landroid/os/UserHandle;)V

    .line 198
    :cond_5
    return-void

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
