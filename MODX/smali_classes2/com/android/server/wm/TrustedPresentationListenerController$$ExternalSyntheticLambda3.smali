.class public final synthetic Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[F


# direct methods
.method public synthetic constructor <init>([F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda3;->f$0:[F

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda3;->f$0:[F

    .line 2
    .line 3
    check-cast p1, Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    mul-int/2addr p1, v0

    .line 14
    int-to-float p1, p1

    .line 15
    const/4 v0, 0x0

    .line 16
    aget v1, p0, v0

    .line 17
    .line 18
    add-float/2addr v1, p1

    .line 19
    aput v1, p0, v0

    .line 20
    .line 21
    return-void
.end method
