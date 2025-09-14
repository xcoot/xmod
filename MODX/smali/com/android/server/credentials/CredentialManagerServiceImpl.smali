.class public final Lcom/android/server/credentials/CredentialManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mInfo:Landroid/credentials/CredentialProviderInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 4
    const-string p1, "CredentialManager"

    .line 6
    const-string p3, "CredentialManagerServiceImpl constructed for: "

    .line 8
    invoke-static {p3, p4, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    invoke-static {p4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerServiceImpl;->newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    .line 19
    monitor-exit p2

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method


# virtual methods
.method public final handlePackageUpdateLocked(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    .line 13
    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 31
    :try_start_0
    iget-object p1, p0, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    .line 33
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerServiceImpl;->newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    const-string v0, "Issue while updating serviceInfo: "

    .line 50
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    const-string p1, "CredentialManager"

    .line 66
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    :goto_0
    return-void
.end method

.method public final initiateProviderSessionForRequestLocked(Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Lcom/android/server/credentials/ProviderSession;
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "CredentialManager"

    .line 8
    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    .line 12
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p2

    .line 19
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/String;

    .line 31
    iget-object v3, p0, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    .line 33
    invoke-virtual {v3, v0}, Landroid/credentials/CredentialProviderInfo;->hasCapability(Ljava/lang/String;)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    .line 42
    if-eqz p1, :cond_3

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    const-string p2, "Service does not have the required capabilities: "

    .line 48
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    .line 53
    invoke-virtual {p0}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_3
    return-object v1

    .line 68
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    .line 70
    if-nez p2, :cond_5

    .line 72
    const-string p0, "Initiating provider session for request but mInfo is null. This shouldn\'t happen"

    .line 74
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-object v1

    .line 78
    :cond_5
    new-instance p2, Lcom/android/server/credentials/RemoteCredentialService;

    .line 80
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 82
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    .line 88
    invoke-virtual {v1}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 95
    move-result-object v1

    .line 96
    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 98
    invoke-direct {p2, v0, v1, v2}, Lcom/android/server/credentials/RemoteCredentialService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 101
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    .line 103
    invoke-virtual {p1, p0, p2}, Lcom/android/server/credentials/RequestSession;->initiateProviderSession(Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderSession;

    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    .line 3
    const-string v1, "CredentialManager"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v2, "newServiceInfoLocked, mInfo not null : "

    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    .line 17
    invoke-virtual {v2}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v2, " , "

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v2, "newServiceInfoLocked, mInfo null, "

    .line 57
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 76
    move-object v1, v0

    .line 77
    check-cast v1, Lcom/android/server/credentials/CredentialManagerService;

    .line 79
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v1

    .line 83
    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 85
    invoke-static {v1, v2}, Lcom/android/server/credentials/CredentialManagerService;->getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 92
    move-result-object v0

    .line 93
    check-cast v1, Ljava/util/HashSet;

    .line 95
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 98
    move-result v1

    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-static {v0, p1, v2, v3, v1}, Landroid/service/credentials/CredentialProviderInfoFactory;->create(Landroid/content/Context;Landroid/content/ComponentName;IZZ)Landroid/credentials/CredentialProviderInfo;

    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    .line 106
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 109
    move-result-object p0

    .line 110
    return-object p0
.end method
