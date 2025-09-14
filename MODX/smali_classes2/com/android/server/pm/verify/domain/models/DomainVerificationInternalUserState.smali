.class public final Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEnabledHosts:Landroid/util/ArraySet;

.field public mLinkHandlingAllowed:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 3
    iput p1, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mUserId:I

    .line 4
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(ILandroid/util/ArraySet;Z)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 7
    iput p1, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mUserId:I

    .line 8
    const-class v0, Landroid/annotation/UserIdInt;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/UserIdInt;I)V

    .line 9
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 10
    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 11
    iput-boolean p3, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 18
    .line 19
    iget v2, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mUserId:I

    .line 20
    .line 21
    iget v3, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mUserId:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 26
    .line 27
    iget-object v3, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-boolean p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 36
    .line 37
    iget-boolean p1, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 38
    .line 39
    if-ne p0, p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v0, v1

    .line 43
    :goto_0
    return v0

    .line 44
    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mUserId:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/2addr v0, v1

    .line 7
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 8
    .line 9
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v0

    .line 14
    mul-int/2addr v2, v1

    .line 15
    iget-boolean p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/2addr p0, v2

    .line 22
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DomainVerificationInternalUserState { userId = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mUserId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", enabledHosts = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", linkHandlingAllowed = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 29
    .line 30
    const-string v1, " }"

    .line 31
    .line 32
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
