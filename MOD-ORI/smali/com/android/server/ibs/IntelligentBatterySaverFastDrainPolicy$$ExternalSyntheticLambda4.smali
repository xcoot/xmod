.class public final synthetic Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda4;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda4;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda4;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda4;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda4;->f$2:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda4;->f$3:I

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda4;->f$4:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getCustomTime(II)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mStartTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 19
    .line 20
    invoke-static {v3, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getCustomTime(II)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iput-object p0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEndTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    invoke-virtual {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->initAlarm(Z)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    invoke-virtual {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->initAlarm(Z)V

    .line 32
    .line 33
    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Set time from "

    .line 37
    .line 38
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mStartTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, " to "

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEndTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string v0, "IntelligentBatterySaverFastDrainPolicy"

    .line 61
    .line 62
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return-void
.end method
