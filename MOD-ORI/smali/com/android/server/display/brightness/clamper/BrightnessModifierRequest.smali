.class public final Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAwakenFromDozingInAutoBrightness:Z

.field public final mDisplayState:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;->mDisplayState:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;->mAwakenFromDozingInAutoBrightness:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
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
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;

    .line 18
    .line 19
    iget v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;->mDisplayState:I

    .line 20
    .line 21
    iget v3, p1, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;->mDisplayState:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;->mAwakenFromDozingInAutoBrightness:Z

    .line 26
    .line 27
    iget-boolean p1, p1, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;->mAwakenFromDozingInAutoBrightness:Z

    .line 28
    .line 29
    if-ne p0, p1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v0, v1

    .line 33
    :goto_0
    return v0

    .line 34
    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;->mDisplayState:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;->mAwakenFromDozingInAutoBrightness:Z

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method
