.class public final synthetic Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda3;->f$2:I

    .line 6
    .line 7
    check-cast p1, Ljava/util/Map$Entry;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    aget-object v2, v2, v3

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->mLocale:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->mUserIds:Ljava/util/List;

    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_0

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    :cond_0
    return v3
.end method
