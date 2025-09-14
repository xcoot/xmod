.class public final Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

.field public mIntegrityVerificationComplete:Z

.field public mRequiredVerificationComplete:Z

.field public mRequiredVerificationPassed:Z

.field public final mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

.field public mSufficientVerificationComplete:Z

.field public mSufficientVerificationPassed:Z

.field public final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

.field public final mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

.field public final mVerifyingSession:Lcom/android/server/pm/VerifyingSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VerifyingSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mVerifyingSession:Lcom/android/server/pm/VerifyingSession;

    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 19
    .line 20
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 26
    .line 27
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final areAllVerificationsComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final isVerificationComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 18
    .line 19
    return p0
.end method

.method public final setVerifierResponse(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-eq p2, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p2, v0, :cond_0

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_4

    .line 56
    .line 57
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    if-ne p2, v1, :cond_3

    .line 69
    .line 70
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    .line 71
    .line 72
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 73
    .line 74
    :cond_3
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 75
    .line 76
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_4

    .line 86
    .line 87
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 88
    .line 89
    :cond_4
    :goto_1
    return-void
.end method
