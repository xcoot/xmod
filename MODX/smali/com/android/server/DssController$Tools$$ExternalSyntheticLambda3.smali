.class public final synthetic Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda3;->f$0:F

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda3;->f$0:F

    .line 3
    check-cast p1, Lcom/android/server/DssController$PairConfiguration;

    .line 5
    iget-object v0, p1, Lcom/android/server/DssController$PairConfiguration;->mAppGlobal:Landroid/graphics/Rect;

    .line 7
    iget-object v1, p1, Lcom/android/server/DssController$PairConfiguration;->mAppOverride:Landroid/graphics/Rect;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-eqz v0, :cond_1

    .line 19
    new-instance v1, Landroid/graphics/Rect;

    .line 21
    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 24
    move-object v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    invoke-static {v0, p0}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    .line 32
    iget-object p0, p1, Lcom/android/server/DssController$PairConfiguration;->mBound:Ljava/util/function/Consumer;

    .line 34
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 37
    :cond_2
    return-void
.end method
