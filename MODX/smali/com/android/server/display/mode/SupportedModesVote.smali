.class public final Lcom/android/server/display/mode/SupportedModesVote;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/mode/Vote;


# instance fields
.field public final mModeIds:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/server/display/mode/SupportedModesVote;->mModeIds:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/android/server/display/mode/SupportedModesVote;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    check-cast p1, Lcom/android/server/display/mode/SupportedModesVote;

    .line 11
    iget-object p0, p0, Lcom/android/server/display/mode/SupportedModesVote;->mModeIds:Ljava/util/List;

    .line 13
    iget-object p1, p1, Lcom/android/server/display/mode/SupportedModesVote;->mModeIds:Ljava/util/List;

    .line 15
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/SupportedModesVote;->mModeIds:Ljava/util/List;

    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "SupportedModesVote{ mModeIds="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/display/mode/SupportedModesVote;->mModeIds:Ljava/util/List;

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, " }"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/display/mode/SupportedModesVote;->mModeIds:Ljava/util/List;

    .line 7
    iput-object p0, p1, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/mode/SupportedModesVote;->mModeIds:Ljava/util/List;

    .line 12
    invoke-interface {v0, p0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 15
    :goto_0
    return-void
.end method
