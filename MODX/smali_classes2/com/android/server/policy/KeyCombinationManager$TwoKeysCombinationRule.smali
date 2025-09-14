.class public abstract Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mKeyCode1:I

.field public final mKeyCode2:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public cancel(Landroid/view/KeyEvent;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 11
    .line 12
    iget v1, p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    .line 13
    .line 14
    iget v3, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    .line 17
    .line 18
    iget p1, p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    .line 19
    .line 20
    if-ne p0, v1, :cond_1

    .line 21
    .line 22
    if-eq v3, p1, :cond_3

    .line 23
    .line 24
    :cond_1
    if-ne p0, p1, :cond_2

    .line 25
    .line 26
    if-ne v3, v1, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move v0, v2

    .line 30
    :cond_3
    :goto_0
    return v0

    .line 31
    :cond_4
    return v2
.end method

.method public abstract execute()V
.end method

.method public getKeyInterceptDelayMs()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x96

    .line 2
    .line 3
    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    .line 6
    .line 7
    add-int/2addr v0, p0

    .line 8
    return v0
.end method

.method public preCondition()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final shouldInterceptKey(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->preCondition()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    .line 12
    .line 13
    if-ne p1, p0, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    .line 7
    .line 8
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " + "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    .line 21
    .line 22
    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
