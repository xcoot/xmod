.class public final Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;
.super Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 5
    .line 6
    return-void
.end method

.method public static rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p0, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public final getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    throw p0
.end method

.method public final getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    throw p0
.end method

.method public final getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    throw p0
.end method

.method public final getUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    throw p0
.end method

.method public final queryValidVerificationPackageNames()Ljava/util/List;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->queryValidVerificationPackageNames()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    throw p0
.end method

.method public final setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method

.method public final setDomainVerificationStatus(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x400

    .line 15
    .line 16
    if-ge p3, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p3, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p2, "Caller is not allowed to set state code "

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I

    .line 52
    .line 53
    .line 54
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return p0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    throw p0
.end method

.method public final setDomainVerificationUserSelection(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;ZI)I
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;ZI)I

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    throw p0
.end method

.method public final setUriRelativeFilterGroups(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setUriRelativeFilterGroups(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method
