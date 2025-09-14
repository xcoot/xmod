.class public final Lcom/android/server/biometrics/AuthenticationStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEnrollmentNotifications:I

.field public final mModality:I

.field public mRejectedAttempts:I

.field public mTotalAttempts:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 10
    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 11
    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 12
    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    .line 3
    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 4
    iput p3, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 5
    iput p4, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 6
    iput p5, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/biometrics/AuthenticationStats;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/biometrics/AuthenticationStats;

    .line 13
    iget v1, p1, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    .line 15
    iget v3, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    .line 17
    if-ne v3, v1, :cond_2

    .line 19
    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 21
    iget v3, p1, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 23
    if-ne v1, v3, :cond_2

    .line 25
    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 27
    iget v3, p1, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 29
    if-ne v1, v3, :cond_2

    .line 31
    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 33
    iget v3, p1, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 35
    if-ne v1, v3, :cond_2

    .line 37
    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    .line 39
    iget p1, p1, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    .line 41
    if-ne p0, p1, :cond_2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v0, v2

    .line 45
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    iget v3, p0, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 25
    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p0

    .line 31
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    const-string/jumbo v0, "userId: %d, totalAttempts: %d, rejectedAttempts: %d, enrollmentNotifications: %d, modality: %d"

    .line 38
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 45
    move-result p0

    .line 46
    return p0
.end method
