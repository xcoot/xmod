.class public final Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mIndex:I

.field public final mScore:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    .line 7
    array-length v0, p2

    .line 8
    new-array v0, v0, [B

    .line 10
    iput-object v0, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    .line 15
    array-length v2, v1

    .line 16
    if-ge v0, v2, :cond_0

    .line 18
    aget-byte v2, p2, v0

    .line 20
    aput-byte v2, v1, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput p1, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    .line 27
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    .line 5
    iget-object p1, p1, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    const/4 v3, -0x1

    .line 11
    if-ge v1, v2, :cond_2

    .line 13
    aget-byte v2, p0, v1

    .line 15
    aget-byte v4, p1, v1

    .line 17
    if-le v2, v4, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    if-ge v2, v4, :cond_1

    .line 23
    move v0, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    :goto_1
    mul-int/2addr v0, v3

    .line 29
    return v0
.end method
