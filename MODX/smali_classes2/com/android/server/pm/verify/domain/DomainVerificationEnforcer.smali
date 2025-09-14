.class public final Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCallback:Lcom/android/server/pm/DomainVerificationConnection;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static assertInternal(I)V
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/16 v0, 0x3e8

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x7d0

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 13
    .line 14
    const-string v1, "Caller "

    .line 15
    .line 16
    const-string v2, " is not allowed to change internal state"

    .line 17
    .line 18
    invoke-static {p0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/16 v0, 0x3e8

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x7d0

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p2, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->isCallerVerifier(I)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const-string v0, "Caller "

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const-string v1, " is not allowed to query domain verification state"

    .line 26
    .line 27
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "android.permission.DUMP"

    .line 32
    .line 33
    invoke-virtual {p0, v1, p2, p1, v0}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    const-string v1, " does not hold android.permission.QUERY_ALL_PACKAGES"

    .line 44
    .line 45
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "android.permission.QUERY_ALL_PACKAGES"

    .line 50
    .line 51
    invoke-virtual {p0, v1, p2, p1, v0}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public final assertApprovedUserSelector(IIILjava/lang/String;)Z
    .locals 4

    .line 1
    if-eq p2, p3, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "Caller is not allowed to edit other users"

    .line 10
    .line 11
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    .line 12
    .line 13
    invoke-virtual {v0, v3, v1, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, "Caller is not allowed to edit user selections"

    .line 23
    .line 24
    const-string v3, "android.permission.UPDATE_DOMAIN_VERIFICATION_USER_SELECTION"

    .line 25
    .line 26
    invoke-virtual {v0, v3, v1, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const-string v1, " does not exist"

    .line 38
    .line 39
    const-string v2, "User "

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    .line 44
    .line 45
    iget-object p2, p2, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    const/4 p2, 0x1

    .line 54
    if-nez p4, :cond_1

    .line 55
    .line 56
    return p2

    .line 57
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/android/server/pm/Computer;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    xor-int/2addr p0, p2

    .line 70
    return p0

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 72
    .line 73
    invoke-static {p3, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 82
    .line 83
    invoke-static {p2, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public final assertApprovedVerifier(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "Caller "

    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    const/16 v2, 0x3e8

    .line 7
    .line 8
    if-eq p1, v2, :cond_4

    .line 9
    .line 10
    const/16 v2, 0x7d0

    .line 11
    .line 12
    if-eq p1, v2, :cond_4

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v4, "android.permission.DOMAIN_VERIFICATION_AGENT"

    .line 21
    .line 22
    invoke-virtual {v3, v4, v2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const-string v5, "android.permission.INTENT_FILTER_VERIFICATION_AGENT"

    .line 32
    .line 33
    invoke-virtual {v3, v5, v2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v0, v4

    .line 41
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    .line 43
    move v4, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 46
    .line 47
    const-string p2, " does not hold android.permission.DOMAIN_VERIFICATION_AGENT"

    .line 48
    .line 49
    invoke-static {p1, v1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    const-string v0, " does not hold android.permission.QUERY_ALL_PACKAGES"

    .line 62
    .line 63
    invoke-static {p1, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v3, "android.permission.QUERY_ALL_PACKAGES"

    .line 68
    .line 69
    invoke-virtual {p0, v3, v2, p1, v0}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-interface {p2, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->isCallerVerifier(I)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    :cond_4
    if-eqz v0, :cond_5

    .line 77
    .line 78
    return-void

    .line 79
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 80
    .line 81
    const-string p2, " is not the approved domain verification agent"

    .line 82
    .line 83
    invoke-static {p1, v1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method
