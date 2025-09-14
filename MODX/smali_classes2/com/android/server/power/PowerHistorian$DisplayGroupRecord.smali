.class public final Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;
.super Lcom/android/server/power/PowerHistorian$Record;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mGroupId:I

.field public final mIsAdded:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/power/PowerHistorian$Record;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mIsAdded:Z

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mGroupId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/android/server/power/PowerHistorian$Record;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mGroupId:I

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v1, "CarLife"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v1, "Dex"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string v1, "Default"

    .line 35
    .line 36
    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, " %-10s"

    .line 41
    .line 42
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean p0, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mIsAdded:Z

    .line 50
    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    const-string p0, "ADD"

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const-string p0, "REMOVE"

    .line 57
    .line 58
    :goto_1
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string v1, " %-7s"

    .line 63
    .line 64
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method
