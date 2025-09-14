.class public final Lcom/android/server/timezonedetector/OrdinalGenerator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCanonicalizationFunction:Ljava/util/function/Function;

.field public final mKnownIds:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/timezonedetector/OrdinalGenerator;->mKnownIds:Landroid/util/ArraySet;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/timezonedetector/OrdinalGenerator;->mCanonicalizationFunction:Ljava/util/function/Function;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final ordinal(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/OrdinalGenerator;->mCanonicalizationFunction:Ljava/util/function/Function;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/server/timezonedetector/OrdinalGenerator;->mKnownIds:Landroid/util/ArraySet;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/timezonedetector/OrdinalGenerator;->mKnownIds:Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object p0, p0, Lcom/android/server/timezonedetector/OrdinalGenerator;->mKnownIds:Landroid/util/ArraySet;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return v0
.end method
