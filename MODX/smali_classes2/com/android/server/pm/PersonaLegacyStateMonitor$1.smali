.class public final Lcom/android/server/pm/PersonaLegacyStateMonitor$1;
.super Landroid/os/ContainerStateReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaLegacyStateMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 2
    .line 3
    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    .line 4
    .line 5
    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 2
    .line 3
    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 4
    .line 5
    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 2
    .line 3
    sget-object p3, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    .line 4
    .line 5
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 9
    .line 10
    sget-object p3, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    .line 11
    .line 12
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "Sending container removed intent to MDM for user "

    .line 40
    .line 41
    const-string v1, "PersonaManagerService::LegacyStateMonitor"

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    array-length v2, p1

    .line 46
    const/4 v3, 0x0

    .line 47
    :goto_0
    if-ge v3, v2, :cond_1

    .line 48
    .line 49
    aget-object v4, p1, v3

    .line 50
    .line 51
    iget-object v5, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 52
    .line 53
    invoke-static {v5, v4, p2, p3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$msendIntentForRemoveContainer(Lcom/android/server/pm/PersonaLegacyStateMonitor;Ljava/lang/String;II)V

    .line 54
    .line 55
    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v6, " Package is "

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$msendIntentForRemoveContainer(Lcom/android/server/pm/PersonaLegacyStateMonitor;Ljava/lang/String;II)V

    .line 86
    .line 87
    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p0, p2, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    return-void
.end method

.method public final onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mUserManager:Landroid/os/UserManager;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 12
    .line 13
    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    .line 14
    .line 15
    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    and-int/lit8 p3, p3, 0x8

    .line 24
    .line 25
    if-lez p3, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 28
    .line 29
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 30
    .line 31
    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 32
    .line 33
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    and-int/lit8 p3, p3, 0x10

    .line 42
    .line 43
    if-lez p3, :cond_2

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 46
    .line 47
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 48
    .line 49
    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 50
    .line 51
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    and-int/lit8 p3, p3, 0x4

    .line 60
    .line 61
    if-lez p3, :cond_3

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 64
    .line 65
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 66
    .line 67
    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    .line 68
    .line 69
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 74
    .line 75
    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 76
    .line 77
    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public final onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mUserManager:Landroid/os/UserManager;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 12
    .line 13
    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    .line 14
    .line 15
    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    and-int/lit8 p2, p2, 0x8

    .line 24
    .line 25
    if-lez p2, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 28
    .line 29
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 30
    .line 31
    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 32
    .line 33
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    and-int/lit8 p2, p2, 0x10

    .line 42
    .line 43
    if-lez p2, :cond_2

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 46
    .line 47
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 48
    .line 49
    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 50
    .line 51
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    and-int/lit8 p2, p2, 0x4

    .line 60
    .line 61
    if-lez p2, :cond_3

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 64
    .line 65
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 66
    .line 67
    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    .line 68
    .line 69
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_0
    return-void
.end method

.method public final onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 2
    .line 3
    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    .line 4
    .line 5
    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
