.class public final Lcom/android/server/integrity/parser/RuleIndexRange;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEndIndex:I

.field public final mStartIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/integrity/parser/RuleIndexRange;

    .line 2
    .line 3
    iget v0, p1, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    .line 6
    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    iget p1, p1, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    .line 12
    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "Range{%d, %d}"

    .line 18
    .line 19
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
