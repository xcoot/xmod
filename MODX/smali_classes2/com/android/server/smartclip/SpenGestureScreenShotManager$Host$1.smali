.class public final Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic val$containsTargetSystemWindow:Z

.field public final synthetic val$displayId:I

.field public final synthetic val$height:I

.field public final synthetic val$sourceCrop:Landroid/graphics/Rect;

.field public final synthetic val$targetWindowType:I

.field public final synthetic val$useIdentityTransform:Z

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(IIZLandroid/graphics/Rect;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$displayId:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$targetWindowType:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$containsTargetSystemWindow:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$sourceCrop:Landroid/graphics/Rect;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$width:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$height:I

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$useIdentityTransform:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;

    .line 2
    .line 3
    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$sourceCrop:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$containsTargetSystemWindow:Z

    .line 6
    .line 7
    iget v5, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$width:I

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$displayId:I

    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$targetWindowType:I

    .line 12
    .line 13
    iget v6, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$height:I

    .line 14
    .line 15
    iget-boolean v7, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$useIdentityTransform:Z

    .line 16
    .line 17
    move-object v0, v8

    .line 18
    invoke-direct/range {v0 .. v7}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;-><init>(IIZLandroid/graphics/Rect;IIZ)V

    .line 19
    .line 20
    .line 21
    return-object v8
.end method
