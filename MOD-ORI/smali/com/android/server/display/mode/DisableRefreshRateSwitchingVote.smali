.class public final Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/mode/Vote;


# instance fields
.field public final mDisableRefreshRateSwitching:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    .line 13
    .line 14
    iget-boolean p1, p1, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    .line 15
    .line 16
    if-ne p0, p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v0, v2

    .line 20
    :goto_0
    return v0

    .line 21
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DisableRefreshRateSwitchingVote{ mDisableRefreshRateSwitching="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    .line 9
    .line 10
    const-string v1, " }"

    .line 11
    .line 12
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    iput-boolean p0, p1, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    .line 14
    .line 15
    return-void
.end method
