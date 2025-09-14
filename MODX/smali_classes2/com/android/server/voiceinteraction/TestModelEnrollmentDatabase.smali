.class public final Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/voiceinteraction/IEnrolledModelDb;


# instance fields
.field public final mModelMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase;->mModelMap:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase;->mModelMap:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p1, p3, p2, v1}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;II)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "Using test enrollment database, with enrolled models:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase;->mModelMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase;->mModelMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p3, p2, v1}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;II)V

    .line 3
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda2;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda2;-><init>(I)V

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    return-object p0
.end method

.method public final getKeyphraseSoundModel(ILjava/lang/String;Ljava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 1

    .line 7
    iget-object p0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase;->mModelMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda2;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda2;-><init>(I)V

    .line 11
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    return-object p0
.end method

.method public final updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase;->mModelMap:Ljava/util/Map;

    .line 9
    .line 10
    new-instance v1, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v3}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    check-cast p0, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    return p0
.end method
