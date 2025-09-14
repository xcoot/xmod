.class public final Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final mResultMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x10

    .line 6
    new-array v0, v0, [F

    .line 8
    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    .line 10
    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p2, [F

    .line 3
    check-cast p3, [F

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    .line 8
    array-length v2, v1

    .line 9
    if-ge v0, v2, :cond_0

    .line 11
    aget v2, p2, v0

    .line 13
    aget v3, p3, v0

    .line 15
    invoke-static {v2, v3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 18
    move-result v2

    .line 19
    aput v2, v1, v0

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object v1
.end method
