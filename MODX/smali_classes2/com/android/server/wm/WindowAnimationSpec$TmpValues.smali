.class public final Lcom/android/server/wm/WindowAnimationSpec$TmpValues;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final floats:[F

.field public final transformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/animation/Transformation;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    .line 10
    .line 11
    const/16 v0, 0x9

    .line 12
    .line 13
    new-array v0, v0, [F

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->floats:[F

    .line 16
    .line 17
    return-void
.end method
