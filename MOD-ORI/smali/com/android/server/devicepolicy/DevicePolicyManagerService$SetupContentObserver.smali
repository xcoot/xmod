.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDefaultImeChanged:Landroid/net/Uri;

.field public final mDeviceProvisioned:Landroid/net/Uri;

.field public final mPaired:Landroid/net/Uri;

.field public final mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

.field public final mUserSetupComplete:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "user_setup_complete"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    .line 14
    .line 15
    const-string/jumbo p1, "device_provisioned"

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDeviceProvisioned:Landroid/net/Uri;

    .line 23
    .line 24
    const-string/jumbo p1, "device_paired"

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mPaired:Landroid/net/Uri;

    .line 32
    .line 33
    const-string/jumbo p1, "default_input_method"

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDefaultImeChanged:Landroid/net/Uri;

    .line 41
    .line 42
    new-instance p1, Landroid/util/ArraySet;

    .line 43
    .line 44
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserSetupComplete:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10
    .line 11
    iget-boolean p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIsWatch:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mPaired:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDeviceProvisioned:Landroid/net/Uri;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    monitor-enter p1

    .line 39
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnershipSystemPropertyLocked()V

    .line 42
    .line 43
    .line 44
    monitor-exit p1

    .line 45
    goto :goto_3

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mDefaultImeChanged:Landroid/net/Uri;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    monitor-enter p1

    .line 64
    :try_start_1
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    .line 65
    .line 66
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast p2, Landroid/util/ArraySet;

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->mUserIdsWithPendingChangesByOwner:Ljava/util/Set;

    .line 79
    .line 80
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p0, Landroid/util/ArraySet;

    .line 85
    .line 86
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_1
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 93
    .line 94
    invoke-virtual {p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p2, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 102
    .line 103
    invoke-virtual {p0, p3, v0, v0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 104
    .line 105
    .line 106
    :goto_0
    monitor-exit p1

    .line 107
    goto :goto_3

    .line 108
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    throw p0

    .line 110
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateUserSetupCompleteAndPaired()V

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_3
    return-void
.end method
