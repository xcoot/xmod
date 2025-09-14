.class public final synthetic Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;->f$0:I

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;->f$0:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;->f$2:I

    .line 11
    .line 12
    check-cast p1, Ljava/util/Map$Entry;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;

    .line 19
    .line 20
    iget v2, v2, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->mKeyphraseId:I

    .line 21
    .line 22
    if-ne v2, v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->mLocale:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->mUserIds:Ljava/util/List;

    .line 45
    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_0

    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 p0, 0x0

    .line 59
    :goto_0
    return p0

    .line 60
    :pswitch_0
    iget v0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;->f$0:I

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 63
    .line 64
    iget p0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;->f$2:I

    .line 65
    .line 66
    check-cast p1, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;

    .line 67
    .line 68
    iget v2, p1, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->mKeyphraseId:I

    .line 69
    .line 70
    if-ne v2, v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p1, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->mLocale:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    iget-object p1, p1, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->mUserIds:Ljava/util/List;

    .line 81
    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_1

    .line 91
    .line 92
    const/4 p0, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    const/4 p0, 0x0

    .line 95
    :goto_1
    return p0

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
