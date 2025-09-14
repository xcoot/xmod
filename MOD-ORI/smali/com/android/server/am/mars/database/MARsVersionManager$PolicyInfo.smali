.class public final Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final action:I

.field public final enabled:I

.field public final firstTriggerTime:J

.field public final name:Ljava/lang/String;

.field public final num:I

.field public final repeatTriggerTime:J

.field public final restriction:I

.field public final targetCategory:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->num:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->enabled:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->targetCategory:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->restriction:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->action:I

    .line 15
    .line 16
    iput-wide p7, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->firstTriggerTime:J

    .line 17
    .line 18
    iput-wide p9, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->repeatTriggerTime:J

    .line 19
    .line 20
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
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", num="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->num:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", enabled="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->enabled:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", targetCategory="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->targetCategory:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", restriction="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->restriction:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", action="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->action:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", firstTriggerTime="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-wide v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->firstTriggerTime:J

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", repeatTriggerTime = "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-wide v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->repeatTriggerTime:J

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method
