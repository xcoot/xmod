.class public final Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

.field public final mContext:Landroid/content/Context;

.field public final mKeyStoreLock:Ljava/lang/Object;

.field public final mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public mOperation:I

.field public final mPendingKeystoreAction:Ljava/util/Set;

.field public final mPriority:I

.field public mUserId:I

.field public final mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public final mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;


# direct methods
.method public static -$$Nest$smsplitCertTypeAlias(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "CACERT_KE_"

    .line 2
    .line 3
    const-string v1, "CACERT_"

    .line 4
    .line 5
    const-string v2, "CACERT_CE_"

    .line 6
    .line 7
    const-string v3, "USRCERT_"

    .line 8
    .line 9
    const-string v4, "USRPKEY_"

    .line 10
    .line 11
    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    const/4 v2, 0x5

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    aget-object v2, v0, v1

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    filled-new-array {v2, p0}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p0, 0x0

    .line 44
    :goto_1
    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    .line 17
    .line 18
    const/16 v0, 0xa

    .line 19
    .line 20
    iput v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPriority:I

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 23
    .line 24
    invoke-direct {v0, p2}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 37
    .line 38
    const/4 p1, 0x2

    .line 39
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final execute(II)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mOperation:I

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    .line 4
    .line 5
    iget p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPriority:I

    .line 6
    .line 7
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 8
    .line 9
    .line 10
    iget p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    .line 11
    .line 12
    new-instance p2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p1, 0x0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda2;

    .line 53
    .line 54
    invoke-direct {p1, v1, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    new-array p1, p1, [Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, [Ljava/lang/Integer;

    .line 71
    .line 72
    :goto_1
    if-nez p1, :cond_2

    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    :try_start_0
    iget-object v0, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    .line 93
    .line 94
    iget v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    .line 95
    .line 96
    if-nez v1, :cond_3

    .line 97
    .line 98
    move-object p2, v0

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 115
    .line 116
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 117
    .line 118
    iget v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    .line 119
    .line 120
    if-ne v2, v3, :cond_4

    .line 121
    .line 122
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    :goto_3
    new-instance v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda0;

    .line 127
    .line 128
    invoke-direct {v0, p0, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    check-cast p2, Ljava/util/List;

    .line 136
    .line 137
    new-instance v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;

    .line 138
    .line 139
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;[Ljava/lang/Integer;Ljava/util/List;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-eqz p2, :cond_6

    .line 154
    .line 155
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Landroid/content/pm/UserInfo;

    .line 160
    .line 161
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 170
    .line 171
    iget-object v1, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 172
    .line 173
    iget-boolean v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    .line 174
    .line 175
    invoke-virtual {v1, p2, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_6
    return-void

    .line 180
    :catchall_0
    move-exception p0

    .line 181
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 182
    .line 183
    .line 184
    throw p0
.end method

.method public final executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p1, v2

    .line 7
    .line 8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    const/4 v5, 0x4

    .line 13
    invoke-virtual {p0, v5, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-virtual {p0, v3, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Landroid/content/pm/UserInfo;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const-string/jumbo p2, "systemDisabledList"

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 57
    .line 58
    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-string/jumbo p2, "systemPrevDisabledList"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string/jumbo p2, "userRemovedList"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 77
    .line 78
    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(ILjava/util/List;)Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    new-instance p2, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;

    .line 83
    .line 84
    move-object v0, p2

    .line 85
    move-object v1, p0

    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    return-void
.end method

.method public final executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .locals 8

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p1, v2

    .line 7
    .line 8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    const/4 v5, 0x4

    .line 13
    invoke-virtual {p0, v5, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-virtual {p0, v3, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Landroid/content/pm/UserInfo;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const-string/jumbo p2, "systemDisabledList"

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 57
    .line 58
    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-string/jumbo p2, "systemPrevDisabledList"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string/jumbo p2, "userRemovedList"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    new-instance v5, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v7, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance p2, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;

    .line 87
    .line 88
    move-object v0, p2

    .line 89
    move-object v1, p0

    .line 90
    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    return-void
.end method

.method public final getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;
    .locals 10

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    const/4 p2, -0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 p2, 0x3f2

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p4, p2, p1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(ILjava/lang/String;)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    array-length v2, v0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_1
    if-ge v3, v2, :cond_9

    .line 25
    .line 26
    aget-object v4, v0, v3

    .line 27
    .line 28
    invoke-virtual {p4, p2, v4, p1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(ILjava/lang/String;Ljava/lang/String;)[B

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-nez v5, :cond_2

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_2
    invoke-static {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->toCertificates([B)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_3

    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const/4 v6, 0x1

    .line 51
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_8

    .line 56
    .line 57
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 62
    .line 63
    if-nez v7, :cond_4

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    iget-object v8, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 67
    .line 68
    const/4 v9, 0x3

    .line 69
    invoke-virtual {v8, v7, v9, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-nez v8, :cond_7

    .line 74
    .line 75
    const-string v8, "CACERT_"

    .line 76
    .line 77
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_6

    .line 82
    .line 83
    invoke-virtual {p4, p2, v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->isCertificateEntry(ILjava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_5

    .line 88
    .line 89
    const-string v8, "CACERT_CE_"

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    const-string v8, "CACERT_KE_"

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    move-object v8, p1

    .line 96
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v8, "_#_"

    .line 108
    .line 109
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_9
    return-object v1
.end method

.method public final refreshNativeKeyStoreAsUser(II)V
    .locals 13

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    const-string/jumbo v2, "nativeRemovedList_wifi"

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    const-string/jumbo v2, "nativeRemovedList"

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v2, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 17
    .line 18
    invoke-virtual {v3, p2, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-ne p1, v0, :cond_2

    .line 23
    .line 24
    move v4, p2

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const/16 v4, 0x3f2

    .line 27
    .line 28
    :goto_1
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 29
    .line 30
    invoke-virtual {v5, v4, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(ILjava/util/List;)Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v5

    .line 37
    if-eq p1, v0, :cond_3

    .line 38
    .line 39
    if-eq p1, v1, :cond_3

    .line 40
    .line 41
    :try_start_0
    monitor-exit v5

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-direct {v0, v1, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    .line 50
    .line 51
    .line 52
    const-string v1, "CACERT_"

    .line 53
    .line 54
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    move-object v6, v3

    .line 59
    check-cast v6, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 62
    .line 63
    .line 64
    const-string v1, "USRCERT_"

    .line 65
    .line 66
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getRemovedCertificates(Ljava/lang/String;IILcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 74
    .line 75
    .line 76
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 78
    .line 79
    invoke-virtual {v0, v4, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(ILjava/util/Map;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    const/4 v12, 0x0

    .line 89
    const/4 v9, 0x1

    .line 90
    move-object v7, v0

    .line 91
    move-object v8, p0

    .line 92
    move v10, p1

    .line 93
    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    filled-new-array {p1}, [Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 108
    .line 109
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0, p2, v2, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(ILjava/lang/String;Ljava/util/Collection;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    throw p0
.end method

.method public final rollbackNativeKeyStoreAsUser(II)V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "nativeRemovedList_wifi"

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-ne p1, v1, :cond_1

    .line 10
    .line 11
    const-string/jumbo v0, "nativeRemovedList"

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 17
    .line 18
    invoke-virtual {v2, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-ne p1, v1, :cond_2

    .line 23
    .line 24
    move v1, p2

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const/16 v1, 0x3f2

    .line 27
    .line 28
    :goto_1
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 29
    .line 30
    invoke-virtual {v4, v1, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(ILjava/util/List;)Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    new-instance v5, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v11, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    check-cast v3, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_4

    .line 59
    .line 60
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Ljava/util/Map$Entry;

    .line 65
    .line 66
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 71
    .line 72
    if-eqz v8, :cond_3

    .line 73
    .line 74
    const/4 v9, 0x3

    .line 75
    invoke-virtual {v2, v8, v9, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_3

    .line 80
    .line 81
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    check-cast v9, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    check-cast v7, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v11, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_5

    .line 109
    .line 110
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    check-cast v7, Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_5
    new-instance v12, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    .line 121
    .line 122
    const/4 v10, 0x0

    .line 123
    const/4 v8, 0x0

    .line 124
    move-object v6, v12

    .line 125
    move-object v7, p0

    .line 126
    move v9, p1

    .line 127
    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;)V

    .line 128
    .line 129
    .line 130
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    filled-new-array {p0}, [Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {v12, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v1, v5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(ILjava/util/List;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {v2, p2, v0, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(ILjava/lang/String;Ljava/util/Collection;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method
