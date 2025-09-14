.class public final synthetic Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/media/SoundDoseRecord;


# direct methods
.method public synthetic constructor <init>(Landroid/media/SoundDoseRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;->f$0:Landroid/media/SoundDoseRecord;

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;->f$0:Landroid/media/SoundDoseRecord;

    .line 3
    check-cast p1, Landroid/media/SoundDoseRecord;

    .line 5
    iget v0, p1, Landroid/media/SoundDoseRecord;->value:F

    .line 7
    iget v1, p0, Landroid/media/SoundDoseRecord;->value:F

    .line 9
    neg-float v1, v1

    .line 10
    cmpl-float v0, v0, v1

    .line 12
    if-nez v0, :cond_0

    .line 14
    iget-wide v0, p1, Landroid/media/SoundDoseRecord;->timestamp:J

    .line 16
    iget-wide v2, p0, Landroid/media/SoundDoseRecord;->timestamp:J

    .line 18
    cmp-long v0, v0, v2

    .line 20
    if-nez v0, :cond_0

    .line 22
    iget v0, p1, Landroid/media/SoundDoseRecord;->averageMel:F

    .line 24
    iget v1, p0, Landroid/media/SoundDoseRecord;->averageMel:F

    .line 26
    cmpl-float v0, v0, v1

    .line 28
    if-nez v0, :cond_0

    .line 30
    iget p1, p1, Landroid/media/SoundDoseRecord;->duration:I

    .line 32
    iget p0, p0, Landroid/media/SoundDoseRecord;->duration:I

    .line 34
    if-ne p1, p0, :cond_0

    .line 36
    const/4 p0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    :goto_0
    return p0
.end method
