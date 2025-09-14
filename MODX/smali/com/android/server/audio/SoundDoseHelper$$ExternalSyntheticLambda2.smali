.class public final synthetic Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/SoundDoseHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/SoundDoseHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 3
    check-cast p1, Landroid/media/SoundDoseRecord;

    .line 5
    iget-wide v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-wide v2, p1, Landroid/media/SoundDoseRecord;->timestamp:J

    .line 14
    add-long/2addr v2, v0

    .line 15
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    const-string v0, ","

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget v1, p1, Landroid/media/SoundDoseRecord;->duration:I

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p1, Landroid/media/SoundDoseRecord;->value:F

    .line 33
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    move-result-object v1

    .line 37
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    const-string v2, "%.3f"

    .line 43
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget p1, p1, Landroid/media/SoundDoseRecord;->averageMel:F

    .line 55
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 58
    move-result-object p1

    .line 59
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method
