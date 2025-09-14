.class public final Lcom/android/server/wm/FadeAnimationController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# instance fields
.field public final mTransformation:Landroid/view/animation/Transformation;

.field public final synthetic val$animation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/FadeAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    .line 5
    .line 6
    new-instance p1, Landroid/view/animation/Transformation;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/view/animation/Transformation;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/FadeAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/FadeAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    .line 9
    .line 10
    invoke-virtual {v0, p3, p4, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getAlpha()F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    .line 1
    const-wide v0, 0x10b00000001L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-wide v2, 0x10900000001L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getShowWallpaper()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
