.class public final Lcom/android/server/power/PowerHistorian$WakeUpRecord;
.super Lcom/android/server/power/PowerHistorian$Record;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mForegroundPackageName:Ljava/lang/String;

.field public final mGroupId:I

.field public final mIsOn:Z

.field public final mOpPackageName:Ljava/lang/String;

.field public final mReasonInt:I

.field public final mReasonStr:Ljava/lang/String;

.field public final mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/power/PowerHistorian$Record;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p6, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mIsOn:Z

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mUid:I

    .line 7
    .line 8
    iput p2, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mGroupId:I

    .line 9
    .line 10
    iput p5, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mReasonInt:I

    .line 11
    .line 12
    if-eqz p6, :cond_0

    .line 13
    .line 14
    invoke-static {p5}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p5}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    iput-object p1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mReasonStr:Ljava/lang/String;

    .line 24
    .line 25
    const-string p1, ""

    .line 26
    .line 27
    if-nez p3, :cond_1

    .line 28
    .line 29
    move-object p3, p1

    .line 30
    :cond_1
    iput-object p3, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mForegroundPackageName:Ljava/lang/String;

    .line 31
    .line 32
    if-nez p4, :cond_2

    .line 33
    .line 34
    move-object p4, p1

    .line 35
    :cond_2
    iput-object p4, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mOpPackageName:Ljava/lang/String;

    .line 36
    .line 37
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
    iget v1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mUid:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, " %-5s"

    .line 24
    .line 25
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mGroupId:I

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, " %-2s"

    .line 43
    .line 44
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mIsOn:Z

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    const-string v1, "ON"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string v1, "OFF"

    .line 59
    .line 60
    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v2, " %-3s"

    .line 65
    .line 66
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mReasonStr:Ljava/lang/String;

    .line 74
    .line 75
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, " %-40s"

    .line 80
    .line 81
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v2, " "

    .line 91
    .line 92
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mForegroundPackageName:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0
.end method
