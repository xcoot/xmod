.class public final Lcom/android/server/locksettings/LockSettingsService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 6
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    new-instance v1, Landroid/os/UserHandle;

    .line 5
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    .line 7
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v2

    .line 21
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    const-string v3, "Hiding encryption notification for user %d"

    .line 27
    const-string v4, "LockSettingsService"

    .line 29
    invoke-static {v4, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 34
    const/4 v2, 0x0

    .line 35
    const/16 v3, 0x9

    .line 37
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 40
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 42
    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 52
    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    .line 54
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockIfNecessary(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 63
    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    .line 65
    const/16 v2, 0x4d

    .line 67
    if-eq v1, v2, :cond_1

    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    const-string v0, "Not MaintenanceMode"

    .line 74
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 86
    move-result-object v1

    .line 87
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeListener:Lcom/android/server/locksettings/LockSettingsService$1;

    .line 89
    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerInternal;->addMaintenanceModeLifecycleListener(Lcom/android/server/locksettings/LockSettingsService$1;)V

    .line 92
    const-string v0, "addListener for MaintenanceMode"

    .line 94
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 99
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    .line 101
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;

    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    if-nez p0, :cond_3

    .line 108
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_3

    .line 114
    invoke-virtual {v0, p0}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_3

    .line 120
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 122
    invoke-virtual {v1, p0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 125
    move-result-object p0

    .line 126
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 129
    move-result-object p0

    .line 130
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_3

    .line 136
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 142
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_2

    .line 148
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->UnlockSecureFolderIfAutoDataDecryption(Landroid/content/pm/UserInfo;)V

    .line 151
    goto :goto_1

    .line 152
    :cond_3
    return-void
.end method
