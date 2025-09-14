.class public final Lcom/android/modules/utils/build/UnboundedSdkLevel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final PREVIOUS_CODENAMES:Landroid/util/SparseArray;

.field private static final sInstance:Lcom/android/modules/utils/build/UnboundedSdkLevel;


# instance fields
.field private final mCodename:Ljava/lang/String;

.field private final mIsReleaseBuild:Z

.field private final mKnownCodenames:Ljava/util/Set;

.field private final mSdkInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 7
    sput-object v0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->PREVIOUS_CODENAMES:Landroid/util/SparseArray;

    .line 9
    const-string v1, "Q"

    .line 11
    filled-new-array {v1}, [Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->setOf([Ljava/lang/String;)Ljava/util/Set;

    .line 18
    move-result-object v2

    .line 19
    const/16 v3, 0x1d

    .line 21
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    const-string v2, "R"

    .line 26
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->setOf([Ljava/lang/String;)Ljava/util/Set;

    .line 33
    move-result-object v3

    .line 34
    const/16 v4, 0x1e

    .line 36
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    const-string v3, "S"

    .line 41
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->setOf([Ljava/lang/String;)Ljava/util/Set;

    .line 48
    move-result-object v4

    .line 49
    const/16 v5, 0x1f

    .line 51
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    const-string v4, "Sv2"

    .line 56
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->setOf([Ljava/lang/String;)Ljava/util/Set;

    .line 63
    move-result-object v1

    .line 64
    const/16 v2, 0x20

    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    new-instance v1, Lcom/android/modules/utils/build/UnboundedSdkLevel;

    .line 71
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_0

    .line 81
    sget-object v0, Landroid/os/Build$VERSION;->KNOWN_CODENAMES:Ljava/util/Set;

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/util/Set;

    .line 90
    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/android/modules/utils/build/UnboundedSdkLevel;-><init>(ILjava/lang/String;Ljava/util/Set;)V

    .line 93
    sput-object v1, Lcom/android/modules/utils/build/UnboundedSdkLevel;->sInstance:Lcom/android/modules/utils/build/UnboundedSdkLevel;

    .line 95
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->mSdkInt:I

    .line 6
    iput-object p2, p0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->mCodename:Ljava/lang/String;

    .line 8
    const-string p1, "REL"

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result p1

    .line 14
    iput-boolean p1, p0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->mIsReleaseBuild:Z

    .line 16
    iput-object p3, p0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    .line 18
    return-void
.end method

.method public static isAtLeast(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->sInstance:Lcom/android/modules/utils/build/UnboundedSdkLevel;

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtLeastInternal(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isAtMost(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->sInstance:Lcom/android/modules/utils/build/UnboundedSdkLevel;

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtMostInternal(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private isCodename(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 11
    move-result p0

    .line 12
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 22
    throw p0
.end method

.method private static varargs setOf([Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastR()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {p0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 14
    array-length v1, p0

    .line 15
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 18
    array-length v1, p0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_1

    .line 22
    aget-object v3, p0, v2

    .line 24
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-object v0
.end method


# virtual methods
.method public isAtLeastInternal(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->removeFingerprint(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    iget-boolean v0, p0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->mIsReleaseBuild:Z

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 11
    invoke-direct {p0, p1}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    iget-object p0, p0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    .line 19
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 25
    return v2

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    const-string v0, "Artifact with a known codename "

    .line 30
    const-string v1, " must be recompiled with a finalized integer version."

    .line 32
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p0

    .line 40
    :cond_1
    iget p0, p0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->mSdkInt:I

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    move-result p1

    .line 46
    if-lt p0, p1, :cond_2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v1, v2

    .line 50
    :goto_0
    return v1

    .line 51
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 57
    iget-object p0, p0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    .line 59
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 62
    move-result p0

    .line 63
    return p0

    .line 64
    :cond_4
    iget p0, p0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->mSdkInt:I

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 69
    move-result p1

    .line 70
    if-lt p0, p1, :cond_5

    .line 72
    goto :goto_1

    .line 73
    :cond_5
    move v1, v2

    .line 74
    :goto_1
    return v1
.end method

.method public isAtMostInternal(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->removeFingerprint(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    iget-boolean v0, p0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->mIsReleaseBuild:Z

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_3

    .line 11
    invoke-direct {p0, p1}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    iget-object p0, p0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    .line 19
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 25
    return v2

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    const-string v0, "Artifact with a known codename "

    .line 30
    const-string v1, " must be recompiled with a finalized integer version."

    .line 32
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p0

    .line 40
    :cond_1
    iget p0, p0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->mSdkInt:I

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    move-result p1

    .line 46
    if-gt p0, p1, :cond_2

    .line 48
    move v1, v2

    .line 49
    :cond_2
    return v1

    .line 50
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_6

    .line 56
    iget-object v0, p0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->mKnownCodenames:Ljava/util/Set;

    .line 58
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 64
    iget-object p0, p0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->mCodename:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_5

    .line 72
    :cond_4
    move v1, v2

    .line 73
    :cond_5
    return v1

    .line 74
    :cond_6
    iget p0, p0, Lcom/android/modules/utils/build/UnboundedSdkLevel;->mSdkInt:I

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 79
    move-result p1

    .line 80
    if-ge p0, p1, :cond_7

    .line 82
    move v1, v2

    .line 83
    :cond_7
    return v1
.end method

.method public removeFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isCodename(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/16 p0, 0x2e

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    .line 12
    move-result p0

    .line 13
    const/4 v0, -0x1

    .line 14
    if-eq p0, v0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    return-object p1
.end method
